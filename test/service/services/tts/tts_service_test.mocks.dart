// Mocks generated by Mockito 5.3.2 from annotations
// in ottaa_project_flutter/test/service/services/tts/tts_service_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i5;
import 'dart:ui' as _i2;

import 'package:mockito/mockito.dart' as _i1;
import 'package:ottaa_project_flutter/application/common/i18n.dart' as _i3;
import 'package:ottaa_project_flutter/application/language/translation_tree.dart'
    as _i4;

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

class _FakeLocale_0 extends _i1.SmartFake implements _i2.Locale {
  _FakeLocale_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeI18N_1 extends _i1.SmartFake implements _i3.I18N {
  _FakeI18N_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [I18N].
///
/// See the documentation for Mockito's code generation for more information.
class MockI18N extends _i1.Mock implements _i3.I18N {
  @override
  Map<String, _i2.Locale> get platformLanguages => (super.noSuchMethod(
        Invocation.getter(#platformLanguages),
        returnValue: <String, _i2.Locale>{},
        returnValueForMissingStub: <String, _i2.Locale>{},
      ) as Map<String, _i2.Locale>);
  @override
  _i2.Locale get locale => (super.noSuchMethod(
        Invocation.getter(#locale),
        returnValue: _FakeLocale_0(
          this,
          Invocation.getter(#locale),
        ),
        returnValueForMissingStub: _FakeLocale_0(
          this,
          Invocation.getter(#locale),
        ),
      ) as _i2.Locale);
  @override
  set locale(_i2.Locale? _locale) => super.noSuchMethod(
        Invocation.setter(
          #locale,
          _locale,
        ),
        returnValueForMissingStub: null,
      );
  @override
  set currentLanguage(_i4.TranslationTree? _currentLanguage) =>
      super.noSuchMethod(
        Invocation.setter(
          #currentLanguage,
          _currentLanguage,
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
  _i5.Future<_i3.I18N> init() => (super.noSuchMethod(
        Invocation.method(
          #init,
          [],
        ),
        returnValue: _i5.Future<_i3.I18N>.value(_FakeI18N_1(
          this,
          Invocation.method(
            #init,
            [],
          ),
        )),
        returnValueForMissingStub: _i5.Future<_i3.I18N>.value(_FakeI18N_1(
          this,
          Invocation.method(
            #init,
            [],
          ),
        )),
      ) as _i5.Future<_i3.I18N>);
  @override
  _i5.Future<_i4.TranslationTree?> loadTranslation(_i2.Locale? locale) =>
      (super.noSuchMethod(
        Invocation.method(
          #loadTranslation,
          [locale],
        ),
        returnValue: _i5.Future<_i4.TranslationTree?>.value(),
        returnValueForMissingStub: _i5.Future<_i4.TranslationTree?>.value(),
      ) as _i5.Future<_i4.TranslationTree?>);
  @override
  _i5.Future<void> changeLanguage(String? languageCode) => (super.noSuchMethod(
        Invocation.method(
          #changeLanguage,
          [languageCode],
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);
  @override
  _i5.Future<void> changeLanguageFromLocale(_i2.Locale? locale) =>
      (super.noSuchMethod(
        Invocation.method(
          #changeLanguageFromLocale,
          [locale],
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);
  @override
  void notify() => super.noSuchMethod(
        Invocation.method(
          #notify,
          [],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void addListener(_i2.VoidCallback? listener) => super.noSuchMethod(
        Invocation.method(
          #addListener,
          [listener],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void removeListener(_i2.VoidCallback? listener) => super.noSuchMethod(
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
