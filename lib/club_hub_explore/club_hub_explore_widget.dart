import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_checkbox_group.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flip_card/flip_card.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'club_hub_explore_model.dart';
export 'club_hub_explore_model.dart';

class ClubHubExploreWidget extends StatefulWidget {
  const ClubHubExploreWidget({Key? key}) : super(key: key);

  @override
  _ClubHubExploreWidgetState createState() => _ClubHubExploreWidgetState();
}

class _ClubHubExploreWidgetState extends State<ClubHubExploreWidget> {
  late ClubHubExploreModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ClubHubExploreModel());

    _model.textController ??= TextEditingController();
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Divider(
                        height: 35.0,
                        thickness: 1.0,
                        color: FlutterFlowTheme.of(context).primaryBackground,
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          VerticalDivider(
                            width: 130.0,
                            thickness: 1.0,
                            color: FlutterFlowTheme.of(context).accent4,
                          ),
                          Align(
                            alignment: AlignmentDirectional(0.00, 0.00),
                            child: Text(
                              FFLocalizations.of(context).getText(
                                'g5clgtm3' /* Club Hub */,
                              ),
                              textAlign: TextAlign.start,
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    fontSize: 25.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                            ),
                          ),
                          SizedBox(
                            height: 0.0,
                            child: VerticalDivider(
                              width: 40.0,
                              thickness: 1.0,
                              color: FlutterFlowTheme.of(context).accent4,
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(1.00, 0.00),
                            child: FlutterFlowIconButton(
                              borderColor:
                                  FlutterFlowTheme.of(context).primaryText,
                              borderRadius: 20.0,
                              borderWidth: 1.0,
                              buttonSize: 42.0,
                              fillColor: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              icon: Icon(
                                Icons.settings,
                                color: FlutterFlowTheme.of(context).primaryText,
                                size: 25.0,
                              ),
                              onPressed: () async {
                                context.pushNamed('Settings');
                              },
                            ),
                          ),
                        ],
                      ),
                      Divider(
                        height: 15.0,
                        thickness: 1.0,
                        color: FlutterFlowTheme.of(context).primaryBackground,
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            10.0, 0.0, 10.0, 0.0),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            '9lpwugtj' /* Tap on a clubs card to see the... */,
                          ),
                          textAlign: TextAlign.center,
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    fontSize: 12.0,
                                  ),
                        ),
                      ),
                      Divider(
                        height: 15.0,
                        thickness: 1.0,
                        color: FlutterFlowTheme.of(context).primaryBackground,
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            15.0, 0.0, 15.0, 0.0),
                        child: TextFormField(
                          controller: _model.textController,
                          onChanged: (_) => EasyDebounce.debounce(
                            '_model.textController',
                            Duration(milliseconds: 2000),
                            () async {
                              setState(() {
                                FFAppState().ClubSearch =
                                    _model.textController.text;
                              });
                            },
                          ),
                          onFieldSubmitted: (_) async {
                            setState(() {
                              FFAppState().ClubSearch =
                                  _model.textController.text;
                            });
                          },
                          autofocus: true,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelStyle:
                                FlutterFlowTheme.of(context).labelMedium,
                            hintText: FFLocalizations.of(context).getText(
                              '51mvticf' /*   Search Clubs */,
                            ),
                            hintStyle: FlutterFlowTheme.of(context).labelMedium,
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).primaryText,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).tertiary,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).error,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).error,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            suffixIcon: _model.textController!.text.isNotEmpty
                                ? InkWell(
                                    onTap: () async {
                                      _model.textController?.clear();
                                      setState(() {
                                        FFAppState().ClubSearch =
                                            _model.textController.text;
                                      });
                                      setState(() {});
                                    },
                                    child: Icon(
                                      Icons.clear,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      size: 20.0,
                                    ),
                                  )
                                : null,
                          ),
                          style: FlutterFlowTheme.of(context).bodyMedium,
                          validator: _model.textControllerValidator
                              .asValidator(context),
                        ),
                      ),
                      Divider(
                        height: 25.0,
                        thickness: 1.0,
                        color: FlutterFlowTheme.of(context).primaryBackground,
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10.0, 0.0, 0.0, 0.0),
                              child: FlutterFlowCheckboxGroup(
                                options: [
                                  FFLocalizations.of(context).getText(
                                    'q1zmb8ez' /* Academic */,
                                  )
                                ],
                                onChanged: (val) => setState(
                                    () => _model.academicBoxValues = val),
                                controller:
                                    _model.academicBoxValueController ??=
                                        FormFieldController<List<String>>(
                                  [],
                                ),
                                activeColor:
                                    FlutterFlowTheme.of(context).primary,
                                checkColor: FlutterFlowTheme.of(context).info,
                                checkboxBorderColor:
                                    FlutterFlowTheme.of(context).secondaryText,
                                textStyle:
                                    FlutterFlowTheme.of(context).bodyMedium,
                                checkboxBorderRadius:
                                    BorderRadius.circular(4.0),
                                initialized: _model.academicBoxValues != null,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10.0, 0.0, 0.0, 0.0),
                              child: FlutterFlowCheckboxGroup(
                                options: [
                                  FFLocalizations.of(context).getText(
                                    'gi46f1ru' /* Athletic */,
                                  )
                                ],
                                onChanged: (val) => setState(
                                    () => _model.athleticBoxValues = val),
                                controller:
                                    _model.athleticBoxValueController ??=
                                        FormFieldController<List<String>>(
                                  [],
                                ),
                                activeColor:
                                    FlutterFlowTheme.of(context).primary,
                                checkColor: FlutterFlowTheme.of(context).info,
                                checkboxBorderColor:
                                    FlutterFlowTheme.of(context).secondaryText,
                                textStyle:
                                    FlutterFlowTheme.of(context).bodyMedium,
                                checkboxBorderRadius:
                                    BorderRadius.circular(4.0),
                                initialized: _model.athleticBoxValues != null,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10.0, 0.0, 0.0, 0.0),
                              child: FlutterFlowCheckboxGroup(
                                options: [
                                  FFLocalizations.of(context).getText(
                                    '2kmb9esw' /* Service */,
                                  )
                                ],
                                onChanged: (val) => setState(
                                    () => _model.serviceBoxValues = val),
                                controller: _model.serviceBoxValueController ??=
                                    FormFieldController<List<String>>(
                                  [],
                                ),
                                activeColor:
                                    FlutterFlowTheme.of(context).primary,
                                checkColor: FlutterFlowTheme.of(context).info,
                                checkboxBorderColor:
                                    FlutterFlowTheme.of(context).secondaryText,
                                textStyle:
                                    FlutterFlowTheme.of(context).bodyMedium,
                                checkboxBorderRadius:
                                    BorderRadius.circular(4.0),
                                initialized: _model.serviceBoxValues != null,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10.0, 0.0, 0.0, 0.0),
                              child: FlutterFlowCheckboxGroup(
                                options: [
                                  FFLocalizations.of(context).getText(
                                    'ez842thd' /* Entertainment */,
                                  )
                                ],
                                onChanged: (val) => setState(
                                    () => _model.entertainmentBoxValues = val),
                                controller:
                                    _model.entertainmentBoxValueController ??=
                                        FormFieldController<List<String>>(
                                  [],
                                ),
                                activeColor:
                                    FlutterFlowTheme.of(context).primary,
                                checkColor: FlutterFlowTheme.of(context).info,
                                checkboxBorderColor:
                                    FlutterFlowTheme.of(context).secondaryText,
                                textStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      fontSize: 13.0,
                                    ),
                                unselectedTextStyle:
                                    FlutterFlowTheme.of(context).bodyMedium,
                                checkboxBorderRadius:
                                    BorderRadius.circular(4.0),
                                initialized:
                                    _model.entertainmentBoxValues != null,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10.0, 0.0, 0.0, 0.0),
                              child: FlutterFlowCheckboxGroup(
                                options: [
                                  FFLocalizations.of(context).getText(
                                    'hubfmmt5' /* Publications */,
                                  )
                                ],
                                onChanged: (val) => setState(
                                    () => _model.publicationsBoxValues = val),
                                controller:
                                    _model.publicationsBoxValueController ??=
                                        FormFieldController<List<String>>(
                                  [],
                                ),
                                activeColor:
                                    FlutterFlowTheme.of(context).primary,
                                checkColor: FlutterFlowTheme.of(context).info,
                                checkboxBorderColor:
                                    FlutterFlowTheme.of(context).secondaryText,
                                textStyle:
                                    FlutterFlowTheme.of(context).bodyMedium,
                                checkboxBorderRadius:
                                    BorderRadius.circular(4.0),
                                initialized:
                                    _model.publicationsBoxValues != null,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10.0, 0.0, 0.0, 0.0),
                              child: FlutterFlowCheckboxGroup(
                                options: [],
                                onChanged: (val) => setState(
                                    () => _model.checkboxGroupValues = val),
                                controller:
                                    _model.checkboxGroupValueController ??=
                                        FormFieldController<List<String>>(
                                  [],
                                ),
                                activeColor: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                checkColor: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                checkboxBorderColor:
                                    FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                textStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                    ),
                                checkboxBorderRadius:
                                    BorderRadius.circular(4.0),
                                initialized: _model.checkboxGroupValues != null,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                FutureBuilder<ApiCallResponse>(
                  future: ClubHubDataCall.call(),
                  builder: (context, snapshot) {
                    // Customize what your widget looks like when it's loading.
                    if (!snapshot.hasData) {
                      return Center(
                        child: SizedBox(
                          width: 15.0,
                          height: 15.0,
                          child: CircularProgressIndicator(
                            valueColor: AlwaysStoppedAnimation<Color>(
                              FlutterFlowTheme.of(context).primary,
                            ),
                          ),
                        ),
                      );
                    }
                    final columnClubHubDataResponse = snapshot.data!;
                    return Builder(
                      builder: (context) {
                        final clubs = ClubHubDataCall.getAll(
                              columnClubHubDataResponse.jsonBody,
                            )
                                ?.where((e) =>
                                    (functions.isNull(
                                            _model.academicBoxValues?.toList())!
                                        ? true
                                        : _model.academicBoxValues!
                                            .contains(getJsonField(
                                            e,
                                            r'''$.Type''',
                                          ).toString())) &&
                                    (functions.isNull(
                                            _model.athleticBoxValues?.toList())!
                                        ? true
                                        : _model.athleticBoxValues!
                                            .contains(getJsonField(
                                            e,
                                            r'''$.Type''',
                                          ).toString())) &&
                                    (functions.isNull(
                                            _model.serviceBoxValues?.toList())!
                                        ? true
                                        : _model.serviceBoxValues!
                                            .contains(getJsonField(
                                            e,
                                            r'''$.Type''',
                                          ).toString())) &&
                                    (functions.isNull(_model
                                            .entertainmentBoxValues
                                            ?.toList())!
                                        ? true
                                        : _model.entertainmentBoxValues!
                                            .contains(getJsonField(
                                            e,
                                            r'''$.Type''',
                                          ).toString())) &&
                                    (functions.isNull(_model
                                            .publicationsBoxValues
                                            ?.toList())!
                                        ? true
                                        : _model.publicationsBoxValues!
                                            .contains(getJsonField(
                                            e,
                                            r'''$.Type''',
                                          ).toString())) &&
                                    (functions.isNullString(
                                            FFAppState().ClubSearch)!
                                        ? true
                                        : functions.stringMatchCheck(
                                            FFAppState().ClubSearch,
                                            getJsonField(
                                              e,
                                              r'''$.ClubName''',
                                            ).toString())!))
                                .toList()
                                ?.toList() ??
                            [];
                        return SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: List.generate(clubs.length, (clubsIndex) {
                              final clubsItem = clubs[clubsIndex];
                              return FlipCard(
                                fill: Fill.fillBack,
                                direction: FlipDirection.HORIZONTAL,
                                speed: 400,
                                front: Container(
                                  width: 325.0,
                                  height: 205.0,
                                  decoration: BoxDecoration(
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
                                    borderRadius: BorderRadius.circular(12.0),
                                    border: Border.all(
                                      color:
                                          FlutterFlowTheme.of(context).tertiary,
                                    ),
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Align(
                                        alignment:
                                            AlignmentDirectional(0.00, 0.00),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  3.0, 5.0, 3.0, 0.0),
                                          child: Text(
                                            valueOrDefault<String>(
                                              getJsonField(
                                                clubsItem,
                                                r'''$.ClubName''',
                                              ).toString(),
                                              'No Club Name Found',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  fontSize: 15.0,
                                                ),
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            AlignmentDirectional(0.00, 0.00),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  3.0, 8.0, 3.0, 0.0),
                                          child: Text(
                                            'Type: ${getJsonField(
                                              clubsItem,
                                              r'''$.Type''',
                                            ).toString()}',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  fontSize: 12.0,
                                                ),
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            AlignmentDirectional(0.00, 0.00),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  3.0, 11.0, 3.0, 0.0),
                                          child: Text(
                                            valueOrDefault<String>(
                                              getJsonField(
                                                clubsItem,
                                                r'''$.ClubDescription''',
                                              ).toString(),
                                              'No Club Description found',
                                            ),
                                            textAlign: TextAlign.center,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  fontSize: 12.0,
                                                ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                back: Container(
                                  width: 285.0,
                                  height: 205.0,
                                  decoration: BoxDecoration(
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
                                    borderRadius: BorderRadius.circular(12.0),
                                    border: Border.all(
                                      color:
                                          FlutterFlowTheme.of(context).tertiary,
                                    ),
                                  ),
                                  child: Align(
                                    alignment: AlignmentDirectional(0.00, 0.00),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          3.0, 0.0, 3.0, 0.0),
                                      child: Text(
                                        valueOrDefault<String>(
                                          getJsonField(
                                            clubsItem,
                                            r'''$.ClassroomCode''',
                                          ).toString(),
                                          'No Google Classroom code available for this club yet.',
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                            ),
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            })
                                .divide(SizedBox(height: 30.0))
                                .addToStart(SizedBox(height: 30.0))
                                .addToEnd(SizedBox(height: 20.0)),
                          ),
                        );
                      },
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
