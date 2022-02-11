import 'dart:convert';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:ottaa_project_flutter/app/data/models/pict_model.dart';
import 'package:ottaa_project_flutter/app/global_controllers/local_file_controller.dart';
import 'package:ottaa_project_flutter/app/global_controllers/shared_pref_client.dart';

class PictsService {
  final _sharedPref = SharedPrefClient();
  final _fileController = LocalFileController();
  final databaseRef = FirebaseDatabase.instance.reference();

  Future<List<Pict>> getAll() async {
    final fileExists = await _sharedPref.getPictosFile();
    print('the result is for file');
    print(fileExists);

    /// updated one for loading the pictos...
    /// check if data exists online or not
    final User? auth = FirebaseAuth.instance.currentUser;
    final ref = databaseRef.child('PictsExistsOnFirebase/${auth!.uid}/');
    late bool result;
    final res = await ref.get();
    final a = res.exists;
    print(res);
    print(res.exists);
    print('result is ');
    // print(jsonDecode(res.value.toString()));
    result = a;
    if (result) {
      /// it means file does exists online
      /// now check if you are on phone or web
      if (kIsWeb) {
        /// it means the system is on web
        final User? auth = FirebaseAuth.instance.currentUser;
        final ref = databaseRef.child('Picto/${auth!.uid}/');
        final res = await ref.get();
        final data = res.value['data'];
        final da =
            (jsonDecode(data) as List).map((e) => Pict.fromJson(e)).toList();
        print('from web bitches');
        return da;
      } else {
        /// it means the system is mobile
        if (fileExists) {
          ///it means teh file exists
          print('from file bitches');
          return _fileController.readPictoFromFile();
        } else {
          ///it means teh file does not exists
          ///we will create the file here and return the data
          final User? auth = FirebaseAuth.instance.currentUser;
          final ref = databaseRef.child('Picto/${auth!.uid}/');
          final res = await ref.get();
          final data = res.value['data'];
          await _fileController.writePictoToFile(data: data);
          await _sharedPref.setPictosFile();
          final da =
              (jsonDecode(data) as List).map((e) => Pict.fromJson(e)).toList();
          print('from online bitches');
          return da;
        }
      }
    } else {
      if (fileExists) {
        ///it means teh file exists
        print('from file bitches');
        return _fileController.readPictoFromFile();
      } else {
        /// if does not exists just load the basic one from the assets
        final String pictsString =
            await rootBundle.loadString('assets/pictos.json');

        return (jsonDecode(pictsString) as List)
            .map((e) => Pict.fromJson(e))
            .toList();
      }
    }
  }
}
