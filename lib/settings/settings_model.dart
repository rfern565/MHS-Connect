import '/components/light_dark_mode_widget.dart';
import '/components/spanish_english_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'settings_widget.dart' show SettingsWidget;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SettingsModel extends FlutterFlowModel<SettingsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for LightDarkMode component.
  late LightDarkModeModel lightDarkModeModel;
  // Model for SpanishEnglish component.
  late SpanishEnglishModel spanishEnglishModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    lightDarkModeModel = createModel(context, () => LightDarkModeModel());
    spanishEnglishModel = createModel(context, () => SpanishEnglishModel());
  }

  void dispose() {
    unfocusNode.dispose();
    lightDarkModeModel.dispose();
    spanishEnglishModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
