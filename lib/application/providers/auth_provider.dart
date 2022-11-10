import 'package:either_dart/either.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';
import 'package:ottaa_project_flutter/application/database/sql_database.dart';
import 'package:ottaa_project_flutter/application/notifiers/loading_notifier.dart';
import 'package:ottaa_project_flutter/core/enums/sign_in_types.dart';
import 'package:ottaa_project_flutter/core/models/user_model.dart';
import 'dart:async';

import 'package:ottaa_project_flutter/core/repositories/auth_repository.dart';

class AuthProvider extends ChangeNotifier {
  final LoadingNotifier _loadingNotifier;

  final databaseRef = FirebaseDatabase.instance.ref();

  final AuthRepository _authService;

  AuthProvider(this._loadingNotifier, this._authService);

  Future<void> logout() async {
    await _authService.logout();
    notifyListeners();
  }

  Future<Either<String, UserModel>> signIn(SignInType type) async {
    _loadingNotifier.showLoading();

    Either<String, UserModel> result = await _authService.signIn(type);

    if (result.isRight) await SqlDatabase.db.setUser(result.right);

    _loadingNotifier.hideLoading();

    return result;
  }
}

final authProvider = ChangeNotifierProvider<AuthProvider>((ref) {
  final loadingNotifier = ref.watch(loadingProvider.notifier);

  final AuthRepository authService = GetIt.I.get<AuthRepository>();

  return AuthProvider(loadingNotifier, authService);
});
