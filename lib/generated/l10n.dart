// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Dota 2 heroes`
  String get app_name {
    return Intl.message(
      'Dota 2 heroes',
      name: 'app_name',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get nav_menu_home {
    return Intl.message(
      'Home',
      name: 'nav_menu_home',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get nav_menu_settings {
    return Intl.message(
      'Settings',
      name: 'nav_menu_settings',
      desc: '',
      args: [],
    );
  }

  /// `Change theme to`
  String get change_theme {
    return Intl.message(
      'Change theme to',
      name: 'change_theme',
      desc: '',
      args: [],
    );
  }

  /// `Dark`
  String get dark_theme {
    return Intl.message(
      'Dark',
      name: 'dark_theme',
      desc: '',
      args: [],
    );
  }

  /// `Light`
  String get light_theme {
    return Intl.message(
      'Light',
      name: 'light_theme',
      desc: '',
      args: [],
    );
  }

  /// `Support`
  String get support {
    return Intl.message(
      'Support',
      name: 'support',
      desc: '',
      args: [],
    );
  }

  /// `Internet connection error`
  String get internet_error {
    return Intl.message(
      'Internet connection error',
      name: 'internet_error',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
