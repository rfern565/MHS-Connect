import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_checkbox_group.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'club_hub_explore_widget.dart' show ClubHubExploreWidget;
import 'package:flip_card/flip_card.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ClubHubExploreModel extends FlutterFlowModel<ClubHubExploreWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // State field(s) for AcademicBox widget.
  List<String>? academicBoxValues;
  FormFieldController<List<String>>? academicBoxValueController;
  // State field(s) for AthleticBox widget.
  List<String>? athleticBoxValues;
  FormFieldController<List<String>>? athleticBoxValueController;
  // State field(s) for ServiceBox widget.
  List<String>? serviceBoxValues;
  FormFieldController<List<String>>? serviceBoxValueController;
  // State field(s) for EntertainmentBox widget.
  List<String>? entertainmentBoxValues;
  FormFieldController<List<String>>? entertainmentBoxValueController;
  // State field(s) for PublicationsBox widget.
  List<String>? publicationsBoxValues;
  FormFieldController<List<String>>? publicationsBoxValueController;
  // State field(s) for CheckboxGroup widget.
  List<String>? checkboxGroupValues;
  FormFieldController<List<String>>? checkboxGroupValueController;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    textController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
