import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'schedule_model.dart';
export 'schedule_model.dart';

class ScheduleWidget extends StatefulWidget {
  const ScheduleWidget({Key? key}) : super(key: key);

  @override
  _ScheduleWidgetState createState() => _ScheduleWidgetState();
}

class _ScheduleWidgetState extends State<ScheduleWidget> {
  late ScheduleModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ScheduleModel());
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
      onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Align(
            alignment: AlignmentDirectional(-0.05, -0.7),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Divider(
                      height: 25.0,
                      thickness: 1.0,
                      color: FlutterFlowTheme.of(context).primaryBackground,
                    ),
                  ],
                ),
                Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        width: 100.0,
                        height: 43.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryBackground,
                        ),
                        child: Stack(
                          children: [
                            if (!(Theme.of(context).brightness ==
                                Brightness.dark))
                              Align(
                                alignment: AlignmentDirectional(-1.0, 0.0),
                                child: FlutterFlowIconButton(
                                  borderColor:
                                      FlutterFlowTheme.of(context).primary,
                                  borderRadius: 20.0,
                                  borderWidth: 1.0,
                                  buttonSize: 43.0,
                                  fillColor:
                                      FlutterFlowTheme.of(context).accent1,
                                  icon: Icon(
                                    Icons.dark_mode_outlined,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    size: 24.0,
                                  ),
                                  onPressed: () async {
                                    if ((Theme.of(context).brightness ==
                                            Brightness.dark) !=
                                        null) {
                                      setDarkModeSetting(
                                          context, ThemeMode.dark);
                                    }
                                  },
                                ),
                              ),
                            if (!(Theme.of(context).brightness ==
                                Brightness.light))
                              Align(
                                alignment: AlignmentDirectional(-1.0, 0.0),
                                child: FlutterFlowIconButton(
                                  borderColor:
                                      FlutterFlowTheme.of(context).primary,
                                  borderRadius: 20.0,
                                  borderWidth: 1.0,
                                  buttonSize: 40.0,
                                  fillColor:
                                      FlutterFlowTheme.of(context).accent1,
                                  icon: Icon(
                                    Icons.light_mode_outlined,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    size: 24.0,
                                  ),
                                  onPressed: () async {
                                    if ((Theme.of(context).brightness ==
                                            Brightness.light) !=
                                        null) {
                                      setDarkModeSetting(
                                          context, ThemeMode.light);
                                    }
                                  },
                                ),
                              ),
                          ],
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            '0hipbe9o' /* SCHEDULE */,
                          ),
                          textAlign: TextAlign.center,
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                        ),
                      ),
                      Container(
                        width: 100.0,
                        height: 43.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryBackground,
                        ),
                        child: Align(
                          alignment: AlignmentDirectional(1.0, 0.0),
                          child: FlutterFlowIconButton(
                            borderColor: FlutterFlowTheme.of(context).primary,
                            borderRadius: 20.0,
                            borderWidth: 1.0,
                            buttonSize: 43.0,
                            fillColor: FlutterFlowTheme.of(context).accent1,
                            icon: Icon(
                              Icons.language,
                              color: FlutterFlowTheme.of(context).primaryText,
                              size: 20.0,
                            ),
                            onPressed: () async {
                              context.pushNamed('PickLanguageIn');
                            },
                          ),
                        ),
                      ),
                    ]
                        .addToStart(SizedBox(width: 38.0))
                        .addToEnd(SizedBox(width: 30.0)),
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        VerticalDivider(
                          width: 355.0,
                          thickness: 1.0,
                          color: FlutterFlowTheme.of(context).accent4,
                        ),
                      ],
                    ),
                  ],
                ),
                Divider(
                  thickness: 1.0,
                  color: FlutterFlowTheme.of(context).primaryBackground,
                ),
                Align(
                  alignment: AlignmentDirectional(0.0, -0.35),
                  child: Text(
                    valueOrDefault<String>(
                      functions.displayDate(FFAppState().DayCount),
                      '0',
                    ),
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Readex Pro',
                          fontSize: 18.0,
                        ),
                  ),
                ),
                Divider(
                  thickness: 1.0,
                  color: FlutterFlowTheme.of(context).primaryBackground,
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Align(
                      alignment: AlignmentDirectional(-1.0, 0.0),
                      child: Container(
                        width: 100.0,
                        height: 20.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryBackground,
                        ),
                        child: Align(
                          alignment: AlignmentDirectional(-1.0, 0.0),
                          child: Text(
                            dateTimeFormat(
                              'jm',
                              dateTimeFromSecondsSinceEpoch(
                                  getCurrentTimestamp.secondsSinceEpoch),
                              locale: FFLocalizations.of(context).languageCode,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  fontSize: 17.0,
                                ),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(1.0, 0.0),
                      child: Container(
                        width: 250.0,
                        height: 20.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryBackground,
                        ),
                        child: Align(
                          alignment: AlignmentDirectional(1.0, 0.0),
                          child: FutureBuilder<ApiCallResponse>(
                            future: ScheduleDayCall.call(),
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
                              final textScheduleDayResponse = snapshot.data!;
                              return Text(
                                (ScheduleDayCall.scheduleDayGet(
                                  textScheduleDayResponse.jsonBody,
                                ) as List)
                                    .map<String>((s) => s.toString())
                                    .toList()[valueOrDefault<int>(
                                  functions.findDay(FFAppState().DayCount),
                                  0,
                                )],
                                textAlign: TextAlign.end,
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      fontSize: 17.0,
                                    ),
                              );
                            },
                          ),
                        ),
                      ),
                    ),
                  ].addToStart(SizedBox(width: 20.0)),
                ),
                Divider(
                  thickness: 1.0,
                  color: FlutterFlowTheme.of(context).primaryBackground,
                ),
                Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          setState(() {
                            FFAppState().DayCount = FFAppState().DayCount + -1;
                          });
                        },
                        child: Icon(
                          Icons.keyboard_arrow_left,
                          color: FlutterFlowTheme.of(context).primaryText,
                          size: 47.0,
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          'assets/images/logo-simple.png',
                          width: 293.0,
                          height: 276.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          setState(() {
                            FFAppState().DayCount = FFAppState().DayCount + 1;
                          });
                        },
                        child: Icon(
                          Icons.keyboard_arrow_right,
                          color: FlutterFlowTheme.of(context).primaryText,
                          size: 47.0,
                        ),
                      ),
                    ],
                  ),
                ),
                ListView(
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        FutureBuilder<ApiCallResponse>(
                          future: ScheduleDayCall.call(),
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
                            final rowScheduleDayResponse = snapshot.data!;
                            return Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                  child: Container(
                                    width: 180.0,
                                    height: 20.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                    ),
                                    child: Align(
                                      alignment:
                                          AlignmentDirectional(-1.0, 0.0),
                                      child: FutureBuilder<ApiCallResponse>(
                                        future: ScheduleDayCall.call(),
                                        builder: (context, snapshot) {
                                          // Customize what your widget looks like when it's loading.
                                          if (!snapshot.hasData) {
                                            return Center(
                                              child: SizedBox(
                                                width: 15.0,
                                                height: 15.0,
                                                child:
                                                    CircularProgressIndicator(
                                                  valueColor:
                                                      AlwaysStoppedAnimation<
                                                          Color>(
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                  ),
                                                ),
                                              ),
                                            );
                                          }
                                          final textScheduleDayResponse =
                                              snapshot.data!;
                                          return Text(
                                            functions
                                                .checkFirstClass(
                                                    (ScheduleDayCall
                                                                .scheduleDayGet(
                                                      textScheduleDayResponse
                                                          .jsonBody,
                                                    ) as List)
                                                            .map<String>((s) =>
                                                                s.toString())
                                                            .toList()[
                                                        functions.findDay(
                                                            FFAppState()
                                                                .DayCount)!],
                                                    FFAppState().PeriodThree,
                                                    FFAppState().PeriodOne)!
                                                .maybeHandleOverflow(
                                                  maxChars: 25,
                                                  replacement: '…',
                                                ),
                                            textAlign: TextAlign.start,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  fontSize: 13.0,
                                                ),
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(1.0, 0.0),
                                  child: Container(
                                    width: 180.0,
                                    height: 20.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                    ),
                                    child: Align(
                                      alignment: AlignmentDirectional(1.0, 0.0),
                                      child: FutureBuilder<ApiCallResponse>(
                                        future: ScheduleDayCall.call(),
                                        builder: (context, snapshot) {
                                          // Customize what your widget looks like when it's loading.
                                          if (!snapshot.hasData) {
                                            return Center(
                                              child: SizedBox(
                                                width: 15.0,
                                                height: 15.0,
                                                child:
                                                    CircularProgressIndicator(
                                                  valueColor:
                                                      AlwaysStoppedAnimation<
                                                          Color>(
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                  ),
                                                ),
                                              ),
                                            );
                                          }
                                          final textScheduleDayResponse =
                                              snapshot.data!;
                                          return Text(
                                            functions.checkFirstClassTime(
                                                (ScheduleDayCall.scheduleDayGet(
                                              textScheduleDayResponse.jsonBody,
                                            ) as List)
                                                        .map<String>(
                                                            (s) => s.toString())
                                                        .toList()[
                                                    functions.findDay(
                                                        FFAppState()
                                                            .DayCount)!])!,
                                            textAlign: TextAlign.end,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  fontSize: 13.0,
                                                ),
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                                ),
                              ].addToStart(SizedBox(width: 15.0)),
                            );
                          },
                        ),
                        Divider(
                          thickness: 1.0,
                          color: FlutterFlowTheme.of(context).primaryBackground,
                        ),
                        FutureBuilder<ApiCallResponse>(
                          future: ScheduleDayCall.call(),
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
                            final rowScheduleDayResponse = snapshot.data!;
                            return Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                  child: Container(
                                    width: 180.0,
                                    height: 20.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                    ),
                                    child: Align(
                                      alignment:
                                          AlignmentDirectional(-1.0, 0.0),
                                      child: FutureBuilder<ApiCallResponse>(
                                        future: ScheduleDayCall.call(),
                                        builder: (context, snapshot) {
                                          // Customize what your widget looks like when it's loading.
                                          if (!snapshot.hasData) {
                                            return Center(
                                              child: SizedBox(
                                                width: 15.0,
                                                height: 15.0,
                                                child:
                                                    CircularProgressIndicator(
                                                  valueColor:
                                                      AlwaysStoppedAnimation<
                                                          Color>(
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                  ),
                                                ),
                                              ),
                                            );
                                          }
                                          final textScheduleDayResponse =
                                              snapshot.data!;
                                          return Text(
                                            functions
                                                .checkSecondClass(
                                                    (ScheduleDayCall
                                                                .scheduleDayGet(
                                                      textScheduleDayResponse
                                                          .jsonBody,
                                                    ) as List)
                                                            .map<String>((s) =>
                                                                s.toString())
                                                            .toList()[
                                                        functions.findDay(
                                                            FFAppState()
                                                                .DayCount)!],
                                                    FFAppState().PeriodFour,
                                                    FFAppState().PeriodTwo)!
                                                .maybeHandleOverflow(
                                                  maxChars: 25,
                                                  replacement: '…',
                                                ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  fontSize: 13.0,
                                                ),
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(1.0, 0.0),
                                  child: Container(
                                    width: 180.0,
                                    height: 20.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                    ),
                                    child: Align(
                                      alignment: AlignmentDirectional(1.0, 0.0),
                                      child: FutureBuilder<ApiCallResponse>(
                                        future: ScheduleDayCall.call(),
                                        builder: (context, snapshot) {
                                          // Customize what your widget looks like when it's loading.
                                          if (!snapshot.hasData) {
                                            return Center(
                                              child: SizedBox(
                                                width: 15.0,
                                                height: 15.0,
                                                child:
                                                    CircularProgressIndicator(
                                                  valueColor:
                                                      AlwaysStoppedAnimation<
                                                          Color>(
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                  ),
                                                ),
                                              ),
                                            );
                                          }
                                          final textScheduleDayResponse =
                                              snapshot.data!;
                                          return Text(
                                            functions.checkSecondClassTime(
                                                (ScheduleDayCall.scheduleDayGet(
                                              textScheduleDayResponse.jsonBody,
                                            ) as List)
                                                        .map<String>(
                                                            (s) => s.toString())
                                                        .toList()[
                                                    functions.findDay(
                                                        FFAppState()
                                                            .DayCount)!])!,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  fontSize: 13.0,
                                                ),
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                                ),
                              ].addToStart(SizedBox(width: 15.0)),
                            );
                          },
                        ),
                        Divider(
                          thickness: 1.0,
                          color: FlutterFlowTheme.of(context).primaryBackground,
                        ),
                        FutureBuilder<ApiCallResponse>(
                          future: ScheduleDayCall.call(),
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
                            final rowScheduleDayResponse = snapshot.data!;
                            return Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                  width: 180.0,
                                  height: 20.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                  ),
                                  child: Align(
                                    alignment: AlignmentDirectional(-1.0, 0.0),
                                    child: FutureBuilder<ApiCallResponse>(
                                      future: ScheduleDayCall.call(),
                                      builder: (context, snapshot) {
                                        // Customize what your widget looks like when it's loading.
                                        if (!snapshot.hasData) {
                                          return Center(
                                            child: SizedBox(
                                              width: 15.0,
                                              height: 15.0,
                                              child: CircularProgressIndicator(
                                                valueColor:
                                                    AlwaysStoppedAnimation<
                                                        Color>(
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                                ),
                                              ),
                                            ),
                                          );
                                        }
                                        final textScheduleDayResponse =
                                            snapshot.data!;
                                        return Text(
                                          functions.checkTiger(
                                              (ScheduleDayCall.scheduleDayGet(
                                                textScheduleDayResponse
                                                    .jsonBody,
                                              ) as List)
                                                      .map<String>(
                                                          (s) => s.toString())
                                                      .toList()[
                                                  functions.findDay(
                                                      FFAppState().DayCount)!],
                                              FFAppState().PeriodThree)!,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                fontSize: 13.0,
                                              ),
                                        );
                                      },
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(1.0, 0.0),
                                  child: Container(
                                    width: 180.0,
                                    height: 20.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                    ),
                                    child: Align(
                                      alignment: AlignmentDirectional(1.0, 0.0),
                                      child: FutureBuilder<ApiCallResponse>(
                                        future: ScheduleDayCall.call(),
                                        builder: (context, snapshot) {
                                          // Customize what your widget looks like when it's loading.
                                          if (!snapshot.hasData) {
                                            return Center(
                                              child: SizedBox(
                                                width: 15.0,
                                                height: 15.0,
                                                child:
                                                    CircularProgressIndicator(
                                                  valueColor:
                                                      AlwaysStoppedAnimation<
                                                          Color>(
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                  ),
                                                ),
                                              ),
                                            );
                                          }
                                          final textScheduleDayResponse =
                                              snapshot.data!;
                                          return Text(
                                            functions.checkTigerTime(
                                                (ScheduleDayCall.scheduleDayGet(
                                              textScheduleDayResponse.jsonBody,
                                            ) as List)
                                                        .map<String>(
                                                            (s) => s.toString())
                                                        .toList()[
                                                    functions.findDay(
                                                        FFAppState()
                                                            .DayCount)!])!,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  fontSize: 13.0,
                                                ),
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                                ),
                              ].addToStart(SizedBox(width: 15.0)),
                            );
                          },
                        ),
                        Divider(
                          thickness: 1.0,
                          color: FlutterFlowTheme.of(context).primaryBackground,
                        ),
                        FutureBuilder<ApiCallResponse>(
                          future: ScheduleDayCall.call(),
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
                            final rowScheduleDayResponse = snapshot.data!;
                            return Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                  child: Container(
                                    width: 180.0,
                                    height: 20.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                    ),
                                    child: Align(
                                      alignment:
                                          AlignmentDirectional(-1.0, 0.0),
                                      child: FutureBuilder<ApiCallResponse>(
                                        future: ScheduleDayCall.call(),
                                        builder: (context, snapshot) {
                                          // Customize what your widget looks like when it's loading.
                                          if (!snapshot.hasData) {
                                            return Center(
                                              child: SizedBox(
                                                width: 15.0,
                                                height: 15.0,
                                                child:
                                                    CircularProgressIndicator(
                                                  valueColor:
                                                      AlwaysStoppedAnimation<
                                                          Color>(
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                  ),
                                                ),
                                              ),
                                            );
                                          }
                                          final textScheduleDayResponse =
                                              snapshot.data!;
                                          return Text(
                                            functions
                                                .checkThirdClass(
                                                    (ScheduleDayCall
                                                                .scheduleDayGet(
                                                      textScheduleDayResponse
                                                          .jsonBody,
                                                    ) as List)
                                                            .map<String>((s) =>
                                                                s.toString())
                                                            .toList()[
                                                        functions.findDay(
                                                            FFAppState()
                                                                .DayCount)!],
                                                    FFAppState().PeriodFive,
                                                    FFAppState().PeriodThree,
                                                    FFAppState().PeriodFour)!
                                                .maybeHandleOverflow(
                                                  maxChars: 25,
                                                  replacement: '…',
                                                ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  fontSize: 13.0,
                                                ),
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(1.0, 0.0),
                                  child: Container(
                                    width: 180.0,
                                    height: 20.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                    ),
                                    child: Align(
                                      alignment: AlignmentDirectional(1.0, 0.0),
                                      child: FutureBuilder<ApiCallResponse>(
                                        future: ScheduleDayCall.call(),
                                        builder: (context, snapshot) {
                                          // Customize what your widget looks like when it's loading.
                                          if (!snapshot.hasData) {
                                            return Center(
                                              child: SizedBox(
                                                width: 15.0,
                                                height: 15.0,
                                                child:
                                                    CircularProgressIndicator(
                                                  valueColor:
                                                      AlwaysStoppedAnimation<
                                                          Color>(
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                  ),
                                                ),
                                              ),
                                            );
                                          }
                                          final textScheduleDayResponse =
                                              snapshot.data!;
                                          return Text(
                                            functions.checkThirdClassTime(
                                                (ScheduleDayCall.scheduleDayGet(
                                              textScheduleDayResponse.jsonBody,
                                            ) as List)
                                                        .map<String>(
                                                            (s) => s.toString())
                                                        .toList()[
                                                    functions.findDay(
                                                        FFAppState()
                                                            .DayCount)!])!,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  fontSize: 13.0,
                                                ),
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                                ),
                              ].addToStart(SizedBox(width: 15.0)),
                            );
                          },
                        ),
                        Divider(
                          thickness: 1.0,
                          color: FlutterFlowTheme.of(context).primaryBackground,
                        ),
                        FutureBuilder<ApiCallResponse>(
                          future: ScheduleDayCall.call(),
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
                            final rowScheduleDayResponse = snapshot.data!;
                            return Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                  child: Container(
                                    width: 210.0,
                                    height: 20.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                    ),
                                    child: Align(
                                      alignment:
                                          AlignmentDirectional(-1.0, 0.0),
                                      child: FutureBuilder<ApiCallResponse>(
                                        future: ScheduleDayCall.call(),
                                        builder: (context, snapshot) {
                                          // Customize what your widget looks like when it's loading.
                                          if (!snapshot.hasData) {
                                            return Center(
                                              child: SizedBox(
                                                width: 15.0,
                                                height: 15.0,
                                                child:
                                                    CircularProgressIndicator(
                                                  valueColor:
                                                      AlwaysStoppedAnimation<
                                                          Color>(
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                  ),
                                                ),
                                              ),
                                            );
                                          }
                                          final textScheduleDayResponse =
                                              snapshot.data!;
                                          return Text(
                                            functions.checkLunch(
                                                (ScheduleDayCall.scheduleDayGet(
                                                  textScheduleDayResponse
                                                      .jsonBody,
                                                ) as List)
                                                        .map<String>(
                                                            (s) => s.toString())
                                                        .toList()[
                                                    functions.findDay(
                                                        FFAppState()
                                                            .DayCount)!],
                                                FFAppState().PeriodFive)!,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  fontSize: 13.0,
                                                ),
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(1.0, 0.0),
                                  child: Container(
                                    width: 150.0,
                                    height: 20.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                    ),
                                    child: Align(
                                      alignment: AlignmentDirectional(1.0, 0.0),
                                      child: FutureBuilder<ApiCallResponse>(
                                        future: ScheduleDayCall.call(),
                                        builder: (context, snapshot) {
                                          // Customize what your widget looks like when it's loading.
                                          if (!snapshot.hasData) {
                                            return Center(
                                              child: SizedBox(
                                                width: 15.0,
                                                height: 15.0,
                                                child:
                                                    CircularProgressIndicator(
                                                  valueColor:
                                                      AlwaysStoppedAnimation<
                                                          Color>(
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                  ),
                                                ),
                                              ),
                                            );
                                          }
                                          final textScheduleDayResponse =
                                              snapshot.data!;
                                          return Text(
                                            functions.checkLunchTime(
                                                (ScheduleDayCall.scheduleDayGet(
                                              textScheduleDayResponse.jsonBody,
                                            ) as List)
                                                        .map<String>(
                                                            (s) => s.toString())
                                                        .toList()[
                                                    functions.findDay(
                                                        FFAppState()
                                                            .DayCount)!])!,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  fontSize: 13.0,
                                                ),
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                                ),
                              ].addToStart(SizedBox(width: 15.0)),
                            );
                          },
                        ),
                        Divider(
                          thickness: 1.0,
                          color: FlutterFlowTheme.of(context).primaryBackground,
                        ),
                        FutureBuilder<ApiCallResponse>(
                          future: ScheduleDayCall.call(),
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
                            final rowScheduleDayResponse = snapshot.data!;
                            return Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                  width: 180.0,
                                  height: 20.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                  ),
                                  child: Align(
                                    alignment: AlignmentDirectional(-1.0, 0.0),
                                    child: FutureBuilder<ApiCallResponse>(
                                      future: ScheduleDayCall.call(),
                                      builder: (context, snapshot) {
                                        // Customize what your widget looks like when it's loading.
                                        if (!snapshot.hasData) {
                                          return Center(
                                            child: SizedBox(
                                              width: 15.0,
                                              height: 15.0,
                                              child: CircularProgressIndicator(
                                                valueColor:
                                                    AlwaysStoppedAnimation<
                                                        Color>(
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                                ),
                                              ),
                                            ),
                                          );
                                        }
                                        final textScheduleDayResponse =
                                            snapshot.data!;
                                        return Text(
                                          functions
                                              .checkFourthClass(
                                                  (ScheduleDayCall
                                                              .scheduleDayGet(
                                                    textScheduleDayResponse
                                                        .jsonBody,
                                                  ) as List)
                                                          .map<String>((s) =>
                                                              s.toString())
                                                          .toList()[
                                                      functions.findDay(
                                                          FFAppState()
                                                              .DayCount)!],
                                                  FFAppState().PeriodSix,
                                                  FFAppState().PeriodFour)!
                                              .maybeHandleOverflow(
                                                maxChars: 25,
                                                replacement: '…',
                                              ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                fontSize: 13.0,
                                              ),
                                        );
                                      },
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(1.0, 0.0),
                                  child: Container(
                                    width: 180.0,
                                    height: 20.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                    ),
                                    child: Align(
                                      alignment: AlignmentDirectional(1.0, 0.0),
                                      child: FutureBuilder<ApiCallResponse>(
                                        future: ScheduleDayCall.call(),
                                        builder: (context, snapshot) {
                                          // Customize what your widget looks like when it's loading.
                                          if (!snapshot.hasData) {
                                            return Center(
                                              child: SizedBox(
                                                width: 15.0,
                                                height: 15.0,
                                                child:
                                                    CircularProgressIndicator(
                                                  valueColor:
                                                      AlwaysStoppedAnimation<
                                                          Color>(
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                  ),
                                                ),
                                              ),
                                            );
                                          }
                                          final textScheduleDayResponse =
                                              snapshot.data!;
                                          return Text(
                                            functions.checkFourthClassTime(
                                                (ScheduleDayCall.scheduleDayGet(
                                              textScheduleDayResponse.jsonBody,
                                            ) as List)
                                                        .map<String>(
                                                            (s) => s.toString())
                                                        .toList()[
                                                    functions.findDay(
                                                        FFAppState()
                                                            .DayCount)!])!,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  fontSize: 13.0,
                                                ),
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                                ),
                              ].addToStart(SizedBox(width: 15.0)),
                            );
                          },
                        ),
                        Divider(
                          thickness: 1.0,
                          color: FlutterFlowTheme.of(context).primaryBackground,
                        ),
                        FutureBuilder<ApiCallResponse>(
                          future: ScheduleDayCall.call(),
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
                            final rowScheduleDayResponse = snapshot.data!;
                            return Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                  width: 180.0,
                                  height: 20.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                  ),
                                  child: Align(
                                    alignment: AlignmentDirectional(-1.0, 0.0),
                                    child: FutureBuilder<ApiCallResponse>(
                                      future: ScheduleDayCall.call(),
                                      builder: (context, snapshot) {
                                        // Customize what your widget looks like when it's loading.
                                        if (!snapshot.hasData) {
                                          return Center(
                                            child: SizedBox(
                                              width: 15.0,
                                              height: 15.0,
                                              child: CircularProgressIndicator(
                                                valueColor:
                                                    AlwaysStoppedAnimation<
                                                        Color>(
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                                ),
                                              ),
                                            ),
                                          );
                                        }
                                        final textScheduleDayResponse =
                                            snapshot.data!;
                                        return Text(
                                          functions
                                              .checkFifthClass(
                                                  (ScheduleDayCall
                                                              .scheduleDayGet(
                                                    textScheduleDayResponse
                                                        .jsonBody,
                                                  ) as List)
                                                          .map<String>((s) =>
                                                              s.toString())
                                                          .toList()[
                                                      functions.findDay(
                                                          FFAppState()
                                                              .DayCount)!],
                                                  FFAppState().PeriodFive,
                                                  FFAppState().PeriodSeven,
                                                  FFAppState().PeriodSix)!
                                              .maybeHandleOverflow(
                                                maxChars: 25,
                                                replacement: '…',
                                              ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                fontSize: 13.0,
                                              ),
                                        );
                                      },
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(1.0, 0.0),
                                  child: Container(
                                    width: 180.0,
                                    height: 20.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                    ),
                                    child: Align(
                                      alignment: AlignmentDirectional(1.0, 0.0),
                                      child: FutureBuilder<ApiCallResponse>(
                                        future: ScheduleDayCall.call(),
                                        builder: (context, snapshot) {
                                          // Customize what your widget looks like when it's loading.
                                          if (!snapshot.hasData) {
                                            return Center(
                                              child: SizedBox(
                                                width: 15.0,
                                                height: 15.0,
                                                child:
                                                    CircularProgressIndicator(
                                                  valueColor:
                                                      AlwaysStoppedAnimation<
                                                          Color>(
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                  ),
                                                ),
                                              ),
                                            );
                                          }
                                          final textScheduleDayResponse =
                                              snapshot.data!;
                                          return Text(
                                            functions.checkSixthClassTime(
                                                (ScheduleDayCall.scheduleDayGet(
                                              textScheduleDayResponse.jsonBody,
                                            ) as List)
                                                        .map<String>(
                                                            (s) => s.toString())
                                                        .toList()[
                                                    functions.findDay(
                                                        FFAppState()
                                                            .DayCount)!])!,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  fontSize: 13.0,
                                                ),
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                                ),
                              ].addToStart(SizedBox(width: 15.0)),
                            );
                          },
                        ),
                        Divider(
                          thickness: 1.0,
                          color: FlutterFlowTheme.of(context).primaryBackground,
                        ),
                        FutureBuilder<ApiCallResponse>(
                          future: ScheduleDayCall.call(),
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
                            final rowScheduleDayResponse = snapshot.data!;
                            return Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                  width: 180.0,
                                  height: 20.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                  ),
                                  child: Align(
                                    alignment: AlignmentDirectional(-1.0, 0.0),
                                    child: FutureBuilder<ApiCallResponse>(
                                      future: ScheduleDayCall.call(),
                                      builder: (context, snapshot) {
                                        // Customize what your widget looks like when it's loading.
                                        if (!snapshot.hasData) {
                                          return Center(
                                            child: SizedBox(
                                              width: 15.0,
                                              height: 15.0,
                                              child: CircularProgressIndicator(
                                                valueColor:
                                                    AlwaysStoppedAnimation<
                                                        Color>(
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                                ),
                                              ),
                                            ),
                                          );
                                        }
                                        final textScheduleDayResponse =
                                            snapshot.data!;
                                        return Text(
                                          functions
                                              .checkSixthClass(
                                                  (ScheduleDayCall
                                                              .scheduleDayGet(
                                                    textScheduleDayResponse
                                                        .jsonBody,
                                                  ) as List)
                                                          .map<String>((s) =>
                                                              s.toString())
                                                          .toList()[
                                                      functions.findDay(
                                                          FFAppState()
                                                              .DayCount)!],
                                                  FFAppState().PeriodSix,
                                                  FFAppState().PeriodEight)!
                                              .maybeHandleOverflow(
                                                maxChars: 25,
                                                replacement: '…',
                                              ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                fontSize: 13.0,
                                              ),
                                        );
                                      },
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 180.0,
                                  height: 20.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                  ),
                                  child: Align(
                                    alignment: AlignmentDirectional(1.0, 0.0),
                                    child: FutureBuilder<ApiCallResponse>(
                                      future: ScheduleDayCall.call(),
                                      builder: (context, snapshot) {
                                        // Customize what your widget looks like when it's loading.
                                        if (!snapshot.hasData) {
                                          return Center(
                                            child: SizedBox(
                                              width: 15.0,
                                              height: 15.0,
                                              child: CircularProgressIndicator(
                                                valueColor:
                                                    AlwaysStoppedAnimation<
                                                        Color>(
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                                ),
                                              ),
                                            ),
                                          );
                                        }
                                        final textScheduleDayResponse =
                                            snapshot.data!;
                                        return Text(
                                          functions.checkSixthClassTime(
                                              (ScheduleDayCall.scheduleDayGet(
                                            textScheduleDayResponse.jsonBody,
                                          ) as List)
                                                      .map<String>(
                                                          (s) => s.toString())
                                                      .toList()[
                                                  functions.findDay(FFAppState()
                                                      .DayCount)!])!,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                fontSize: 13.0,
                                              ),
                                        );
                                      },
                                    ),
                                  ),
                                ),
                              ].addToStart(SizedBox(width: 15.0)),
                            );
                          },
                        ),
                      ],
                    ),
                  ],
                ),
                Divider(
                  height: 20.0,
                  thickness: 0.0,
                  color: FlutterFlowTheme.of(context).accent4,
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    FFButtonWidget(
                      onPressed: () async {
                        context.pushNamed('EditSchedule');
                      },
                      text: FFLocalizations.of(context).getText(
                        'h8rfhtuw' /* Edit Schedule */,
                      ),
                      options: FFButtonOptions(
                        height: 40.0,
                        padding: EdgeInsetsDirectional.fromSTEB(
                            24.0, 0.0, 24.0, 0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).tertiary,
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
                                  fontFamily: 'Readex Pro',
                                  color: Colors.white,
                                ),
                        elevation: 3.0,
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ]
                      .divide(SizedBox(width: 45.0))
                      .addToStart(SizedBox(width: 110.0))
                      .addToEnd(SizedBox(width: 110.0)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
