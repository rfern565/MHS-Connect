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
    '5ol92xf0': {
      'en': 'Your Account',
      'es': 'Su cuenta',
    },
    'a096k5d0': {
      'en': '  Search Clubs',
      'es': 'Buscar clubes',
    },
    'pg5ua92d': {
      'en': 'All Clubs',
      'es': 'Todos los clubes',
    },
    'ybbfmiur': {
      'en': 'Academic',
      'es': 'Académico',
    },
    'fwoi7r55': {
      'en': 'Athletic',
      'es': 'Atlético',
    },
    'tskdlqz2': {
      'en': 'Entertainment',
      'es': 'Entretenimiento',
    },
    '96mcm6ii': {
      'en': 'Service',
      'es': 'Servicio',
    },
    '89gnoizs': {
      'en': 'Publications',
      'es': 'Publicaciones',
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
  // Announcements
  {
    '77nlp9hn': {
      'en': 'General MHS Announcements',
      'es': 'Anuncios generales de MHS',
    },
    'dg8rko81': {
      'en':
          'Welcome back to MHS for the 2023-2023 school year! We hope you had a great summer! See email sent via student square for more information.\n\nFirst Day of School:\n8:00am - 9th Grade Assemby (McLain)\n9:00am - 11th Grade Assembly (McLain)\n10:00am - 12th Grade Assembly (McLain)\n11:00am - 10th grade Assembly (McLain)\n\n12:00am - Abridged School Day \n(See schedule part of app or email)',
      'es':
          '¡Bienvenidos de nuevo a MHS para el año escolar 2023-2023! ¡Esperamos que hayas tenido un gran verano! Consulte el correo electrónico enviado a través de Student Square para obtener más información.\n\nPrimer dia de escuela:\n8:00 am - Asamblea de noveno grado (McLain)\n9:00 am - Asamblea de grado 11 (McLain)\n10:00 am - Asamblea de grado 12 (McLain)\n11:00 am - Asamblea de 10° grado (McLain)\n\n12:00 am - Día escolar abreviado\n(Ver programación en parte de la aplicación o correo electrónico)',
    },
    '9ku1yu17': {
      'en':
          'Thank you for downloading the MHS App! If you have suggestions for the app please let us know in the google form that will be coming out in your class google classroom later this year.',
      'es':
          '¡Gracias por descargar la aplicación MHS! Si tiene sugerencias para la aplicación, háganoslo saber en el formulario de Google que aparecerá en el aula de Google de su clase a finales de este año.',
    },
    'swdl6c4l': {
      'en': 'Announcements',
      'es': 'Anuncios',
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
  // Profile
  {
    'i2e4g63p': {
      'en': 'Ryan F.',
      'es': 'ryan f.',
    },
    'bny1t3rn': {
      'en': 'rfernandez@student.mamkschools.org',
      'es': 'rfernandez@student.mamkschools.org',
    },
    '5z3lb3pd': {
      'en': 'Your Account',
      'es': 'Su cuenta',
    },
    'hc9ci6kv': {
      'en': 'Joined Clubs',
      'es': 'Clubes unidos',
    },
    'x0t16mvu': {
      'en': 'Club Schedule',
      'es': 'Horario del club',
    },
    '9n4lxfwd': {
      'en': 'App Settings',
      'es': 'Ajustes de Aplicacion',
    },
    'fr413ig3': {
      'en': 'Notifications                                   ',
      'es': 'Notificaciones',
    },
    'czrd589x': {
      'en': 'Support',
      'es': 'Apoyo',
    },
    'lgo4po9y': {
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // Support
  {
    'stsf9we8': {
      'en': 'Support',
      'es': 'Apoyo',
    },
    '8s0nue7v': {
      'en': 'How do I sign up for a Club or SLG?',
      'es': '¿Cómo me registro en un Club o SLG?',
    },
    '9wj519g7': {
      'en':
          'Simply click the join button next to club icons in the explore tab to add them to your clubs. (If you can\'t figure this out please watch the tutorial below)',
      'es':
          'Simplemente haga clic en el botón unirse junto a los íconos del club en la pestaña de exploración para agregarlos a sus clubes. (Si no puedes resolver esto, mira el tutorial a continuación)',
    },
    'lqr6hu2w': {
      'en': 'Where can I see my clubs?',
      'es': '¿Dónde puedo ver mis palos?',
    },
    'jkatt9v0': {
      'en':
          'Simply click on your profile icon and then go to the \"My Clubs\" tab. (If you can\'t figure this out please watch the tutorial below)',
      'es':
          'Simplemente haga clic en el icono de su perfil y luego vaya a la pestaña \"Mis clubes\". (Si no puedes resolver esto, mira el tutorial a continuación)',
    },
    's5qnx4k5': {
      'en': 'How do I find my way around this app?',
      'es': '¿Cómo puedo orientarme en esta aplicación?',
    },
    'r2vhw1c9': {
      'en':
          'A tutorial on how to use the MHS App has been showcased on this weeks episode of Tiger Time. Watch the video below to view!',
      'es':
          'En el episodio de Tiger Time de esta semana se mostró un tutorial sobre cómo usar la aplicación MHS. ¡Mira el vídeo a continuación para verlo!',
    },
    'ftiqa3pc': {
      'en': 'If I sign up for a Club or SLG am I commiting myself in any way?',
      'es': '¿Si me inscribo en un Club o SLG me comprometo de alguna manera?',
    },
    'pj6ukxxl': {
      'en':
          'No, you are merely expressing interest in the club. Club leaders will contact you when the club beomes active to invite you to meetings.',
      'es':
          'No, simplemente estás expresando interés en el club. Los líderes del club se comunicarán con usted cuando el club entre en actividad para invitarlo a las reuniones.',
    },
    'ofsgpaek': {
      'en': 'Do I have to apply or audition to get into any clubs?',
      'es':
          '¿Tengo que presentar una solicitud o hacer una audición para ingresar a algún club?',
    },
    'lhh4qkrv': {
      'en':
          'Most clubs at MHS are open to everyone. There are some special clubs where involvment is by audition or application, but they are the exception.',
      'es':
          'La mayoría de los clubes de MHS están abiertos a todos. Hay algunos clubes especiales donde la participación se realiza mediante audición o solicitud, pero son la excepción.',
    },
    'yfgbs6mi': {
      'en': 'Schedule',
      'es': 'Cronograma',
    },
  },
  // JoinedClubs
  {
    'khnuudve': {
      'en': 'Joined Clubs',
      'es': 'Clubes unidos',
    },
    'bvqhfhh7': {
      'en': 'Schedule',
      'es': 'Cronograma',
    },
  },
  // ClubSchedule
  {
    'gpjsrqsd': {
      'en': 'Club Schedule',
      'es': 'Horario del club',
    },
    'q2hm43dh': {
      'en': 'Schedule',
      'es': 'Cronograma',
    },
  },
  // SignUp
  {
    'gv4c2unz': {
      'en': 'School Email',
      'es': 'Correo electrónico de la escuela',
    },
    '1af0ih24': {
      'en': 'Full Name',
      'es': 'Nombre completo',
    },
    'gp3zmmsx': {
      'en': 'Password',
      'es': 'Contraseña',
    },
    '402dc0zo': {
      'en': 'Confirm Password',
      'es': 'confirmar Contraseña',
    },
    '1a7eki70': {
      'en': 'Or',
      'es': 'O',
    },
    'r0dhmyjs': {
      'en': 'Already have an account?  ',
      'es': '¿Ya tienes una cuenta?',
    },
    'lp3a1r9s': {
      'en': 'Login Here',
      'es': 'Entre aquí',
    },
    'febk5hbq': {
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // Login
  {
    'yh21le6n': {
      'en': 'School Email',
      'es': 'Correo electrónico de la escuela',
    },
    'sorcgf3w': {
      'en': 'Password',
      'es': 'Contraseña',
    },
    '9z6z7lrj': {
      'en': 'Forgot your password?',
      'es': '¿Olvidaste tu contraseña?',
    },
    '7o2snlyo': {
      'en': 'Sign In',
      'es': 'Iniciar sesión',
    },
    'ncd29z5g': {
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // PickGrade
  {
    'hecs3bru': {
      'en': 'What grade are you in?',
      'es': '¿En que grado estás?',
    },
    '6lxzdsd1': {
      'en': 'Freshmen',
      'es': 'Estudiantes de primer año',
    },
    'kpp7x7ph': {
      'en': 'Sophmore',
      'es': 'estudiante de segundo año',
    },
    'gnxekg37': {
      'en': 'Junior',
      'es': 'Júnior',
    },
    '32oshm0n': {
      'en': 'Senior',
      'es': 'Sénior',
    },
    '4pws4vwc': {
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // NotificationSelect
  {
    'cdexr5z9': {
      'en': 'Notifications',
      'es': 'Notificaciones',
    },
    '683detpu': {
      'en': 'Turn on notifications to get the most out of the MHS app',
      'es':
          'Active las notificaciones para aprovechar al máximo la aplicación MHS',
    },
    'e79chbxw': {
      'en': 'Allow Notifications',
      'es': 'Permitir notificaciones',
    },
    'z5449m3m': {
      'en': 'Maybe Later',
      'es': 'Quizas mas tarde',
    },
    '3ic5s76x': {
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // SuccessfulAccCreation
  {
    'x6kr9un3': {
      'en': 'Congratulations!',
      'es': '¡Felicidades!',
    },
    'dpravxvu': {
      'en': 'Your account as been successfully created!',
      'es': '¡Su cuenta ha sido creada exitosamente!',
    },
    'u3tj1uiy': {
      'en': 'Continue',
      'es': 'Continuar',
    },
    '5d706jqf': {
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // ForgotPassword
  {
    'xvws7ppd': {
      'en': 'Reset Password',
      'es': 'Restablecer la contraseña',
    },
    'fucmqjf8': {
      'en':
          'Please enter your email. And we\'ll send you a link to reset your password.',
      'es':
          'Por favor introduzca su correo electrónico. Y le enviaremos un enlace para restablecer su contraseña.',
    },
    '84eccug9': {
      'en': 'School Email',
      'es': 'Correo electrónico de la escuela',
    },
    'zammmzq4': {
      'en': 'Send',
      'es': 'Enviar',
    },
    '9zmyzveb': {
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // ReenterPassword
  {
    'hx86ppmg': {
      'en': 'Change Your Password',
      'es': 'Cambia tu contraseña',
    },
    'o78om3z5': {
      'en': 'Code sent to your email',
      'es': 'Código enviado a tu correo electrónico.',
    },
    '64xwegc6': {
      'en': 'New password',
      'es': 'Nueva contraseña',
    },
    '5xbg5hly': {
      'en': 'Re-enter new password',
      'es': 're-ingrese nueva contraseña',
    },
    'oyy5ndke': {
      'en': 'Reset Password',
      'es': 'Restablecer la contraseña',
    },
    '12sq6lp7': {
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // PasswordChanged
  {
    'un4jenqd': {
      'en': 'Password Changed',
      'es': 'Contraseña cambiada',
    },
    'ko4ufbic': {
      'en': 'Congratulations, your password has been successfully changed.',
      'es': 'Felicitaciones, su contraseña ha sido cambiada exitosamente.',
    },
    'cl3nvx18': {
      'en': 'Back to Login',
      'es': 'Atrás para iniciar sesión',
    },
    'x9mhpcx2': {
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // ClubHubNotYet
  {
    'b5h054i2': {
      'en': 'ClubHub Coming Soon...',
      'es': 'ClubHub próximamente...',
    },
    '324ojm5f': {
      'en': 'Home',
      'es': 'Hogar',
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
  // Miscellaneous
  {
    'piibau9l': {
      'en':
          'Turning on Notifications allows us to notify you directly if there are any important alerts regarding MHS Connect.',
      'es':
          'Activar Notificaciones nos permite notificarle directamente si hay alertas importantes relacionadas con MHS Connect.',
    },
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
