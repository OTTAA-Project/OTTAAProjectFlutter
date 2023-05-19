// Mocks generated by Mockito 5.3.2 from annotations
// in ottaa_project_flutter/test/providers/home/home_provider_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i6;
import 'dart:ui' as _i8;

import 'package:dio/dio.dart' as _i15;
import 'package:either_dart/either.dart' as _i3;
import 'package:flutter_riverpod/flutter_riverpod.dart' as _i20;
import 'package:mockito/mockito.dart' as _i1;
import 'package:ottaa_project_flutter/application/notifiers/patient_notifier.dart'
    as _i19;
import 'package:ottaa_project_flutter/application/providers/chatgpt_provider.dart'
    as _i18;
import 'package:ottaa_project_flutter/application/providers/tts_provider.dart'
    as _i5;
import 'package:ottaa_project_flutter/application/providers/user_provider.dart'
    as _i22;
import 'package:ottaa_project_flutter/core/abstracts/basic_search.dart' as _i11;
import 'package:ottaa_project_flutter/core/abstracts/user_model.dart' as _i23;
import 'package:ottaa_project_flutter/core/models/group_model.dart' as _i10;
import 'package:ottaa_project_flutter/core/models/learn_token.dart' as _i17;
import 'package:ottaa_project_flutter/core/models/patient_user_model.dart'
    as _i4;
import 'package:ottaa_project_flutter/core/models/phrase_model.dart' as _i9;
import 'package:ottaa_project_flutter/core/models/picto_model.dart' as _i12;
import 'package:ottaa_project_flutter/core/models/picto_predicted_reduced.dart'
    as _i14;
import 'package:ottaa_project_flutter/core/models/voices_model.dart' as _i7;
import 'package:ottaa_project_flutter/core/repositories/repositories.dart'
    as _i2;
import 'package:ottaa_project_flutter/core/use_cases/learn_pictogram.dart'
    as _i16;
import 'package:ottaa_project_flutter/core/use_cases/predict_pictogram.dart'
    as _i13;
import 'package:state_notifier/state_notifier.dart' as _i21;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeTTSRepository_0 extends _i1.SmartFake implements _i2.TTSRepository {
  _FakeTTSRepository_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeEither_1<L, R> extends _i1.SmartFake implements _i3.Either<L, R> {
  _FakeEither_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeServerRepository_2 extends _i1.SmartFake
    implements _i2.ServerRepository {
  _FakeServerRepository_2(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakePatientUserModel_3 extends _i1.SmartFake
    implements _i4.PatientUserModel {
  _FakePatientUserModel_3(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [TTSProvider].
///
/// See the documentation for Mockito's code generation for more information.
class MockTTSProvider extends _i1.Mock implements _i5.TTSProvider {
  MockTTSProvider() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.TTSRepository get tts => (super.noSuchMethod(
        Invocation.getter(#tts),
        returnValue: _FakeTTSRepository_0(
          this,
          Invocation.getter(#tts),
        ),
      ) as _i2.TTSRepository);
  @override
  set speakOperation(_i6.Future<void>? _speakOperation) => super.noSuchMethod(
        Invocation.setter(
          #speakOperation,
          _speakOperation,
        ),
        returnValueForMissingStub: null,
      );
  @override
  bool get hasListeners => (super.noSuchMethod(
        Invocation.getter(#hasListeners),
        returnValue: false,
      ) as bool);
  @override
  _i6.Future<void> speak(String? text) => (super.noSuchMethod(
        Invocation.method(
          #speak,
          [text],
        ),
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);
  @override
  _i6.Future<List<_i7.Voices>> fetchVoices(String? languageCode) =>
      (super.noSuchMethod(
        Invocation.method(
          #fetchVoices,
          [languageCode],
        ),
        returnValue: _i6.Future<List<_i7.Voices>>.value(<_i7.Voices>[]),
      ) as _i6.Future<List<_i7.Voices>>);
  @override
  _i6.Future<void> changeVoiceSpeed(double? speed) => (super.noSuchMethod(
        Invocation.method(
          #changeVoiceSpeed,
          [speed],
        ),
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);
  @override
  _i6.Future<void> changeCustomTTs(bool? value) => (super.noSuchMethod(
        Invocation.method(
          #changeCustomTTs,
          [value],
        ),
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);
  @override
  _i6.Future<void> changeTTSVoice(String? voice) => (super.noSuchMethod(
        Invocation.method(
          #changeTTSVoice,
          [voice],
        ),
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);
  @override
  _i6.Future<void> init() => (super.noSuchMethod(
        Invocation.method(
          #init,
          [],
        ),
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);
  @override
  void addListener(_i8.VoidCallback? listener) => super.noSuchMethod(
        Invocation.method(
          #addListener,
          [listener],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void removeListener(_i8.VoidCallback? listener) => super.noSuchMethod(
        Invocation.method(
          #removeListener,
          [listener],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void dispose() => super.noSuchMethod(
        Invocation.method(
          #dispose,
          [],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void notifyListeners() => super.noSuchMethod(
        Invocation.method(
          #notifyListeners,
          [],
        ),
        returnValueForMissingStub: null,
      );
}

/// A class which mocks [SentencesRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockSentencesRepository extends _i1.Mock
    implements _i2.SentencesRepository {
  MockSentencesRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i6.Future<_i3.Either<String, List<_i9.Phrase>>> fetchSentences({
    required String? language,
    required String? type,
    bool? isFavorite = false,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #fetchSentences,
          [],
          {
            #language: language,
            #type: type,
            #isFavorite: isFavorite,
          },
        ),
        returnValue: _i6.Future<_i3.Either<String, List<_i9.Phrase>>>.value(
            _FakeEither_1<String, List<_i9.Phrase>>(
          this,
          Invocation.method(
            #fetchSentences,
            [],
            {
              #language: language,
              #type: type,
              #isFavorite: isFavorite,
            },
          ),
        )),
      ) as _i6.Future<_i3.Either<String, List<_i9.Phrase>>>);
  @override
  _i6.Future<_i3.Either<String, void>> uploadSentences({
    required String? language,
    required List<_i9.Phrase>? data,
    required String? type,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #uploadSentences,
          [],
          {
            #language: language,
            #data: data,
            #type: type,
          },
        ),
        returnValue: _i6.Future<_i3.Either<String, void>>.value(
            _FakeEither_1<String, void>(
          this,
          Invocation.method(
            #uploadSentences,
            [],
            {
              #language: language,
              #data: data,
              #type: type,
            },
          ),
        )),
      ) as _i6.Future<_i3.Either<String, void>>);
}

/// A class which mocks [GroupsRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockGroupsRepository extends _i1.Mock implements _i2.GroupsRepository {
  MockGroupsRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i6.Future<List<_i10.Group>> getAllGroups({bool? defaultGroups = false}) =>
      (super.noSuchMethod(
        Invocation.method(
          #getAllGroups,
          [],
          {#defaultGroups: defaultGroups},
        ),
        returnValue: _i6.Future<List<_i10.Group>>.value(<_i10.Group>[]),
      ) as _i6.Future<List<_i10.Group>>);
  @override
  _i6.Future<List<_i10.Group>> getDefaultGroups() => (super.noSuchMethod(
        Invocation.method(
          #getDefaultGroups,
          [],
        ),
        returnValue: _i6.Future<List<_i10.Group>>.value(<_i10.Group>[]),
      ) as _i6.Future<List<_i10.Group>>);
  @override
  _i6.Future<void> uploadGroups(
    List<_i10.Group>? data,
    String? type,
    String? language, {
    String? userId,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #uploadGroups,
          [
            data,
            type,
            language,
          ],
          {#userId: userId},
        ),
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);
  @override
  _i6.Future<void> updateGroups(
    _i10.Group? data,
    String? type,
    String? language,
    int? index,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #updateGroups,
          [
            data,
            type,
            language,
            index,
          ],
        ),
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);
  @override
  _i6.Future<List<_i10.Group>> getGroups(_i11.BasicSearch? search) =>
      (super.noSuchMethod(
        Invocation.method(
          #getGroups,
          [search],
        ),
        returnValue: _i6.Future<List<_i10.Group>>.value(<_i10.Group>[]),
      ) as _i6.Future<List<_i10.Group>>);
}

/// A class which mocks [PictogramsRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockPictogramsRepository extends _i1.Mock
    implements _i2.PictogramsRepository {
  MockPictogramsRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i6.Future<List<_i12.Picto>> getAllPictograms() => (super.noSuchMethod(
        Invocation.method(
          #getAllPictograms,
          [],
        ),
        returnValue: _i6.Future<List<_i12.Picto>>.value(<_i12.Picto>[]),
      ) as _i6.Future<List<_i12.Picto>>);
  @override
  _i6.Future<void> uploadPictograms(
    List<_i12.Picto>? data,
    String? language, {
    String? userId,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #uploadPictograms,
          [
            data,
            language,
          ],
          {#userId: userId},
        ),
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);
  @override
  _i6.Future<void> updatePictogram(
    _i12.Picto? pictogram,
    String? language,
    int? index,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #updatePictogram,
          [
            pictogram,
            language,
            index,
          ],
        ),
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);
  @override
  _i6.Future<List<_i12.Picto>> getPictograms(_i11.BasicSearch? search) =>
      (super.noSuchMethod(
        Invocation.method(
          #getPictograms,
          [search],
        ),
        returnValue: _i6.Future<List<_i12.Picto>>.value(<_i12.Picto>[]),
      ) as _i6.Future<List<_i12.Picto>>);
}

/// A class which mocks [PredictPictogram].
///
/// See the documentation for Mockito's code generation for more information.
class MockPredictPictogram extends _i1.Mock implements _i13.PredictPictogram {
  MockPredictPictogram() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.ServerRepository get serverRepository => (super.noSuchMethod(
        Invocation.getter(#serverRepository),
        returnValue: _FakeServerRepository_2(
          this,
          Invocation.getter(#serverRepository),
        ),
      ) as _i2.ServerRepository);
  @override
  set serverRepository(_i2.ServerRepository? _serverRepository) =>
      super.noSuchMethod(
        Invocation.setter(
          #serverRepository,
          _serverRepository,
        ),
        returnValueForMissingStub: null,
      );
  @override
  _i6.Future<_i3.Either<String, List<_i14.PictoPredictedReduced>>> call({
    required String? sentence,
    required String? uid,
    required String? language,
    required String? model,
    required List<String>? groups,
    required Map<String, List<String>>? tags,
    bool? reduced = false,
    int? limit = 10,
    int? chunk = 4,
    _i15.CancelToken? cancelToken,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #call,
          [],
          {
            #sentence: sentence,
            #uid: uid,
            #language: language,
            #model: model,
            #groups: groups,
            #tags: tags,
            #reduced: reduced,
            #limit: limit,
            #chunk: chunk,
            #cancelToken: cancelToken,
          },
        ),
        returnValue: _i6.Future<
                _i3.Either<String, List<_i14.PictoPredictedReduced>>>.value(
            _FakeEither_1<String, List<_i14.PictoPredictedReduced>>(
          this,
          Invocation.method(
            #call,
            [],
            {
              #sentence: sentence,
              #uid: uid,
              #language: language,
              #model: model,
              #groups: groups,
              #tags: tags,
              #reduced: reduced,
              #limit: limit,
              #chunk: chunk,
              #cancelToken: cancelToken,
            },
          ),
        )),
      ) as _i6.Future<_i3.Either<String, List<_i14.PictoPredictedReduced>>>);
}

/// A class which mocks [LearnPictogram].
///
/// See the documentation for Mockito's code generation for more information.
class MockLearnPictogram extends _i1.Mock implements _i16.LearnPictogram {
  MockLearnPictogram() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.ServerRepository get serverRepository => (super.noSuchMethod(
        Invocation.getter(#serverRepository),
        returnValue: _FakeServerRepository_2(
          this,
          Invocation.getter(#serverRepository),
        ),
      ) as _i2.ServerRepository);
  @override
  set serverRepository(_i2.ServerRepository? _serverRepository) =>
      super.noSuchMethod(
        Invocation.setter(
          #serverRepository,
          _serverRepository,
        ),
        returnValueForMissingStub: null,
      );
  @override
  _i6.Future<_i3.Either<String, String>> call({
    String? sentence,
    required String? uid,
    required String? language,
    required String? model,
    required List<_i17.LearnToken>? tokens,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #call,
          [],
          {
            #sentence: sentence,
            #uid: uid,
            #language: language,
            #model: model,
            #tokens: tokens,
          },
        ),
        returnValue: _i6.Future<_i3.Either<String, String>>.value(
            _FakeEither_1<String, String>(
          this,
          Invocation.method(
            #call,
            [],
            {
              #sentence: sentence,
              #uid: uid,
              #language: language,
              #model: model,
              #tokens: tokens,
            },
          ),
        )),
      ) as _i6.Future<_i3.Either<String, String>>);
}

/// A class which mocks [ChatGPTNotifier].
///
/// See the documentation for Mockito's code generation for more information.
class MockChatGPTNotifier extends _i1.Mock implements _i18.ChatGPTNotifier {
  MockChatGPTNotifier() {
    _i1.throwOnMissingStub(this);
  }

  @override
  bool get hasListeners => (super.noSuchMethod(
        Invocation.getter(#hasListeners),
        returnValue: false,
      ) as bool);
  @override
  _i6.Future<String?> generatePhrase(List<_i12.Picto>? pictograms) =>
      (super.noSuchMethod(
        Invocation.method(
          #generatePhrase,
          [pictograms],
        ),
        returnValue: _i6.Future<String?>.value(),
      ) as _i6.Future<String?>);
  @override
  void notify() => super.noSuchMethod(
        Invocation.method(
          #notify,
          [],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void addListener(_i8.VoidCallback? listener) => super.noSuchMethod(
        Invocation.method(
          #addListener,
          [listener],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void removeListener(_i8.VoidCallback? listener) => super.noSuchMethod(
        Invocation.method(
          #removeListener,
          [listener],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void dispose() => super.noSuchMethod(
        Invocation.method(
          #dispose,
          [],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void notifyListeners() => super.noSuchMethod(
        Invocation.method(
          #notifyListeners,
          [],
        ),
        returnValueForMissingStub: null,
      );
}

/// A class which mocks [PatientNotifier].
///
/// See the documentation for Mockito's code generation for more information.
class MockPatientNotifier extends _i1.Mock implements _i19.PatientNotifier {
  @override
  _i4.PatientUserModel get user => (super.noSuchMethod(
        Invocation.getter(#user),
        returnValue: _FakePatientUserModel_3(
          this,
          Invocation.getter(#user),
        ),
        returnValueForMissingStub: _FakePatientUserModel_3(
          this,
          Invocation.getter(#user),
        ),
      ) as _i4.PatientUserModel);
  @override
  set onError(_i20.ErrorListener? _onError) => super.noSuchMethod(
        Invocation.setter(
          #onError,
          _onError,
        ),
        returnValueForMissingStub: null,
      );
  @override
  bool get mounted => (super.noSuchMethod(
        Invocation.getter(#mounted),
        returnValue: false,
        returnValueForMissingStub: false,
      ) as bool);
  @override
  _i6.Stream<_i4.PatientUserModel?> get stream => (super.noSuchMethod(
        Invocation.getter(#stream),
        returnValue: _i6.Stream<_i4.PatientUserModel?>.empty(),
        returnValueForMissingStub: _i6.Stream<_i4.PatientUserModel?>.empty(),
      ) as _i6.Stream<_i4.PatientUserModel?>);
  @override
  set state(_i4.PatientUserModel? value) => super.noSuchMethod(
        Invocation.setter(
          #state,
          value,
        ),
        returnValueForMissingStub: null,
      );
  @override
  bool get hasListeners => (super.noSuchMethod(
        Invocation.getter(#hasListeners),
        returnValue: false,
        returnValueForMissingStub: false,
      ) as bool);
  @override
  void setUser(_i4.PatientUserModel? user) => super.noSuchMethod(
        Invocation.method(
          #setUser,
          [user],
        ),
        returnValueForMissingStub: null,
      );
  @override
  bool updateShouldNotify(
    _i4.PatientUserModel? old,
    _i4.PatientUserModel? current,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #updateShouldNotify,
          [
            old,
            current,
          ],
        ),
        returnValue: false,
        returnValueForMissingStub: false,
      ) as bool);
  @override
  _i20.RemoveListener addListener(
    _i21.Listener<_i4.PatientUserModel?>? listener, {
    bool? fireImmediately = true,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #addListener,
          [listener],
          {#fireImmediately: fireImmediately},
        ),
        returnValue: () {},
        returnValueForMissingStub: () {},
      ) as _i20.RemoveListener);
  @override
  void dispose() => super.noSuchMethod(
        Invocation.method(
          #dispose,
          [],
        ),
        returnValueForMissingStub: null,
      );
}

/// A class which mocks [UserNotifier].
///
/// See the documentation for Mockito's code generation for more information.
class MockUserNotifier extends _i1.Mock implements _i22.UserNotifier {
  @override
  set user(_i23.UserModel? userModel) => super.noSuchMethod(
        Invocation.setter(
          #user,
          userModel,
        ),
        returnValueForMissingStub: null,
      );
  @override
  bool get hasListeners => (super.noSuchMethod(
        Invocation.getter(#hasListeners),
        returnValue: false,
        returnValueForMissingStub: false,
      ) as bool);
  @override
  void setUser(_i23.UserModel? userModel) => super.noSuchMethod(
        Invocation.method(
          #setUser,
          [userModel],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void clearUser() => super.noSuchMethod(
        Invocation.method(
          #clearUser,
          [],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void addListener(_i8.VoidCallback? listener) => super.noSuchMethod(
        Invocation.method(
          #addListener,
          [listener],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void removeListener(_i8.VoidCallback? listener) => super.noSuchMethod(
        Invocation.method(
          #removeListener,
          [listener],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void dispose() => super.noSuchMethod(
        Invocation.method(
          #dispose,
          [],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void notifyListeners() => super.noSuchMethod(
        Invocation.method(
          #notifyListeners,
          [],
        ),
        returnValueForMissingStub: null,
      );
}
