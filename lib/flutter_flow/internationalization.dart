import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['en', 'es'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? enText = '',
    String? esText = '',
  }) =>
      [enText, esText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    final language = locale.toString();
    return FFLocalizations.languages().contains(
      language.endsWith('_')
          ? language.substring(0, language.length - 1)
          : language,
    );
  }

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // ClubHubExplore
  {
    'g5clgtm3': {
      'en': 'Club Hub',
      'es': 'Centro del club',
    },
    '9lpwugtj': {
      'en': 'Tap on a clubs card to see their google classroom code',
      'es': '',
    },
    'a096k5d0': {
      'en': '',
      'es': 'Buscar clubes',
    },
    '51mvticf': {
      'en': '  Search Clubs',
      'es': '',
    },
    'q1zmb8ez': {
      'en': 'Academic',
      'es': '',
    },
    'gi46f1ru': {
      'en': 'Athletic',
      'es': '',
    },
    '2kmb9esw': {
      'en': 'Service',
      'es': '',
    },
    'ez842thd': {
      'en': 'Entertainment',
      'es': '',
    },
    'hubfmmt5': {
      'en': 'Publications',
      'es': '',
    },
    'ud198u14': {
      'en': 'ClubHubExplore',
      'es': 'ClubHubExplorar',
    },
  },
  // Schedule
  {
    '0hipbe9o': {
      'en': 'SCHEDULE',
      'es': 'CRONOGRAMA',
    },
    'h8rfhtuw': {
      'en': 'Edit Schedule',
      'es': 'Editar horario',
    },
    'gbfulypy': {
      'en': 'Schedule',
      'es': 'Cronograma',
    },
  },
  // EditSchedule
  {
    'lewcqil4': {
      'en': '         Edit Schedule',
      'es': '         Editar horario',
    },
    'z4ta4d5a': {
      'en': 'Enter Class Name Below ',
      'es': 'Ingrese el nombre de la clase',
    },
    'isk2zk1j': {
      'en': 'Save Changes',
      'es': 'Guardar cambios',
    },
    'pexp63md': {
      'en': 'Schedule',
      'es': 'Cronograma',
    },
  },
  // Support
  {
    'stsf9we8': {
      'en': 'Support',
      'es': 'Apoyo',
    },
    '8s0nue7v': {
      'en': 'How do I sign up for a Club?',
      'es': '¿Cómo me registro en un Club o SLG?',
    },
    '9wj519g7': {
      'en':
          'Click anywhere on the box representing a club to flip it around. This will reveal the google classroom code for the club, you can then sign up for the club by joining their google classroom with that code.',
      'es':
          'Simplemente haga clic en el botón unirse junto a los íconos del club en la pestaña de exploración para agregarlos a sus clubes. (Si no puedes resolver esto, mira el tutorial a continuación)',
    },
    's5qnx4k5': {
      'en': 'How do I find my way around this app?',
      'es': '¿Cómo puedo orientarme en esta aplicación?',
    },
    'r2vhw1c9': {
      'en':
          'A tutorial on how to use the MHS App will be showcased on an episode of Tiger Time. ',
      'es':
          'En el episodio de Tiger Time de esta semana se mostró un tutorial sobre cómo usar la aplicación MHS. ¡Mira el vídeo a continuación para verlo!',
    },
    'hkjfu788': {
      'en': 'Message from us',
      'es': '¿Cómo puedo orientarme en esta aplicación?',
    },
    'yfgbs6mi': {
      'en': 'Schedule',
      'es': 'Cronograma',
    },
  },
  // PickLanguageNew
  {
    'o3c32dkx': {
      'en': 'What language do you want to use?\n\n¿Qué idioma quieres usar?',
      'es': 'What language do you want to use?\n\n¿Qué idioma quieres usar?',
    },
    'vfc3ezx4': {
      'en': 'English',
      'es': 'English',
    },
    'uravd0dz': {
      'en': 'Español',
      'es': 'Español',
    },
    'z8mtdbht': {
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // PickLanguageIn
  {
    'a3v72h1y': {
      'en': 'What language do you want to use?\n\n¿Qué idioma quieres usar?',
      'es': 'What language do you want to use?\n\n¿Qué idioma quieres usar?',
    },
    'r5irtl06': {
      'en': 'English',
      'es': 'English',
    },
    'nk87cd28': {
      'en': 'Español',
      'es': 'Español',
    },
    'huxpu05u': {
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // Settings
  {
    'rqukq0x9': {
      'en': 'Settings',
      'es': 'Ajustes',
    },
    'j44lrfme': {
      'en': '(Tap on the icon to interact)',
      'es': '(Toca el ícono para interactuar)',
    },
    'k85mfpri': {
      'en': 'Light/Dark Mode',
      'es': 'Modo claro/oscuro',
    },
    'bs37tm62': {
      'en': 'Spanish/English Mode',
      'es': 'Modo español/inglés',
    },
    'qz0u8ywd': {
      'en': 'Support',
      'es': 'Apoyo',
    },
    'kw8o1wqu': {
      'en': 'Announcements',
      'es': 'Anuncios',
    },
  },
  // Miscellaneous
  {
    'owkwyr6v': {
      'en': '',
      'es': '',
    },
    'frtb0ac3': {
      'en': '',
      'es': '',
    },
    'k849klk9': {
      'en': '',
      'es': '',
    },
    'ohek0iiu': {
      'en': '',
      'es': '',
    },
    '2wl4ol24': {
      'en': '',
      'es': '',
    },
    'auzcmg7w': {
      'en': '',
      'es': '',
    },
    'e2yqn17q': {
      'en': '',
      'es': '',
    },
    'xguignp6': {
      'en': '',
      'es': '',
    },
    '890ooonv': {
      'en': '',
      'es': '',
    },
    '1izfr20v': {
      'en': '',
      'es': '',
    },
    'cuez3lg8': {
      'en': '',
      'es': '',
    },
    'slqohmq4': {
      'en': '',
      'es': '',
    },
    '40an913d': {
      'en': '',
      'es': '',
    },
    'z80sl2s2': {
      'en': '',
      'es': '',
    },
    'tzguhopo': {
      'en': '',
      'es': '',
    },
    'ga9i7bc5': {
      'en': '',
      'es': '',
    },
    'hgoxo7p7': {
      'en': '',
      'es': '',
    },
    'xvoz1iga': {
      'en': '',
      'es': '',
    },
    'ipm16jfr': {
      'en': '',
      'es': '',
    },
    'q2wja0gm': {
      'en': '',
      'es': '',
    },
    'kt3tf74e': {
      'en': '',
      'es': '',
    },
    'koccxsuy': {
      'en': '',
      'es': '',
    },
    'huxv4elw': {
      'en': '',
      'es': '',
    },
  },
].reduce((a, b) => a..addAll(b));
