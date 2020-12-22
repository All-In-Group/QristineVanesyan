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
// ignore_for_file: avoid_redundant_argument_values

class S {
  S();
  
  static S current;
  
  static const AppLocalizationDelegate delegate =
    AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false) ? locale.languageCode : locale.toString();
    final localeName = Intl.canonicalizedLocale(name); 
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      S.current = S();
      
      return S.current;
    });
  } 

  static S of(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `dfghj`
  String get appTitle {
    return Intl.message(
      'dfghj',
      name: 'appTitle',
      desc: '',
      args: [],
    );
  }

  /// `Welcome`
  String get welcome {
    return Intl.message(
      'Welcome',
      name: 'welcome',
      desc: '',
      args: [],
    );
  }

  /// `Sign-In to Continue !`
  String get continue1 {
    return Intl.message(
      'Sign-In to Continue !',
      name: 'continue1',
      desc: '',
      args: [],
    );
  }

  /// `Email or Username`
  String get email {
    return Intl.message(
      'Email or Username',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password {
    return Intl.message(
      'Password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Forgot password ?`
  String get forgot {
    return Intl.message(
      'Forgot password ?',
      name: 'forgot',
      desc: '',
      args: [],
    );
  }

  /// `Sign In`
  String get signin {
    return Intl.message(
      'Sign In',
      name: 'signin',
      desc: '',
      args: [],
    );
  }

  /// `Sign-in using Google`
  String get google {
    return Intl.message(
      'Sign-in using Google',
      name: 'google',
      desc: '',
      args: [],
    );
  }

  /// `Sign-in using Facebook`
  String get facebook {
    return Intl.message(
      'Sign-in using Facebook',
      name: 'facebook',
      desc: '',
      args: [],
    );
  }

  /// `Sign-in using Github`
  String get github {
    return Intl.message(
      'Sign-in using Github',
      name: 'github',
      desc: '',
      args: [],
    );
  }

  /// `Sign-in using LinkedIn`
  String get linkedin {
    return Intl.message(
      'Sign-in using LinkedIn',
      name: 'linkedin',
      desc: '',
      args: [],
    );
  }

  /// `Don't have an account?`
  String get account {
    return Intl.message(
      'Don\'t have an account?',
      name: 'account',
      desc: '',
      args: [],
    );
  }

  /// `Sign up Now!`
  String get signup {
    return Intl.message(
      'Sign up Now!',
      name: 'signup',
      desc: '',
      args: [],
    );
  }

  /// `Interest`
  String get Interest {
    return Intl.message(
      'Interest',
      name: 'Interest',
      desc: '',
      args: [],
    );
  }

  /// `Todo/Done`
  String get TodoDone {
    return Intl.message(
      'Todo/Done',
      name: 'TodoDone',
      desc: '',
      args: [],
    );
  }

  /// `Offline Articles`
  String get OfflineArticles {
    return Intl.message(
      'Offline Articles',
      name: 'OfflineArticles',
      desc: '',
      args: [],
    );
  }

  /// `Rate us`
  String get RateUs {
    return Intl.message(
      'Rate us',
      name: 'RateUs',
      desc: '',
      args: [],
    );
  }

  /// `Support`
  String get Support {
    return Intl.message(
      'Support',
      name: 'Support',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get Settings {
    return Intl.message(
      'Settings',
      name: 'Settings',
      desc: '',
      args: [],
    );
  }

  /// `Log-out`
  String get LogOut {
    return Intl.message(
      'Log-out',
      name: 'LogOut',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get Home {
    return Intl.message(
      'Home',
      name: 'Home',
      desc: '',
      args: [],
    );
  }

  /// `Quiz`
  String get Quiz {
    return Intl.message(
      'Quiz',
      name: 'Quiz',
      desc: '',
      args: [],
    );
  }

  /// `Topics`
  String get Topics {
    return Intl.message(
      'Topics',
      name: 'Topics',
      desc: '',
      args: [],
    );
  }

  /// `Feed`
  String get Feed {
    return Intl.message(
      'Feed',
      name: 'Feed',
      desc: '',
      args: [],
    );
  }

  /// `Recent`
  String get Recent {
    return Intl.message(
      'Recent',
      name: 'Recent',
      desc: '',
      args: [],
    );
  }

  /// `Popular`
  String get Popular {
    return Intl.message(
      'Popular',
      name: 'Popular',
      desc: '',
      args: [],
    );
  }

  /// `All`
  String get All {
    return Intl.message(
      'All',
      name: 'All',
      desc: '',
      args: [],
    );
  }

  /// `Interview`
  String get Interview {
    return Intl.message(
      'Interview',
      name: 'Interview',
      desc: '',
      args: [],
    );
  }

  /// `Question`
  String get Question {
    return Intl.message(
      'Question',
      name: 'Question',
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
      Locale.fromSubtags(languageCode: 'ru', countryCode: 'RU'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    if (locale != null) {
      for (var supportedLocale in supportedLocales) {
        if (supportedLocale.languageCode == locale.languageCode) {
          return true;
        }
      }
    }
    return false;
  }
}