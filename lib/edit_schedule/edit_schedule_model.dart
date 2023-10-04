import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'edit_schedule_widget.dart' show EditScheduleWidget;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EditScheduleModel extends FlutterFlowModel<EditScheduleWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for PeriodOneEnter widget.
  TextEditingController? periodOneEnterController;
  String? Function(BuildContext, String?)? periodOneEnterControllerValidator;
  // State field(s) for PeriodTwoEnter widget.
  TextEditingController? periodTwoEnterController;
  String? Function(BuildContext, String?)? periodTwoEnterControllerValidator;
  // State field(s) for PeriodThreeEnter widget.
  TextEditingController? periodThreeEnterController;
  String? Function(BuildContext, String?)? periodThreeEnterControllerValidator;
  // State field(s) for PeriodFourEnter widget.
  TextEditingController? periodFourEnterController;
  String? Function(BuildContext, String?)? periodFourEnterControllerValidator;
  // State field(s) for PeriodFiveEnter widget.
  TextEditingController? periodFiveEnterController;
  String? Function(BuildContext, String?)? periodFiveEnterControllerValidator;
  // State field(s) for PeriodSixEnter widget.
  TextEditingController? periodSixEnterController;
  String? Function(BuildContext, String?)? periodSixEnterControllerValidator;
  // State field(s) for PeriodSevenEnter widget.
  TextEditingController? periodSevenEnterController;
  String? Function(BuildContext, String?)? periodSevenEnterControllerValidator;
  // State field(s) for PeriodEightEnter widget.
  TextEditingController? periodEightEnterController;
  String? Function(BuildContext, String?)? periodEightEnterControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    periodOneEnterController?.dispose();
    periodTwoEnterController?.dispose();
    periodThreeEnterController?.dispose();
    periodFourEnterController?.dispose();
    periodFiveEnterController?.dispose();
    periodSixEnterController?.dispose();
    periodSevenEnterController?.dispose();
    periodEightEnterController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
