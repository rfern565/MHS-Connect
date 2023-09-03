import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_video_player.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'support_model.dart';
export 'support_model.dart';

class SupportWidget extends StatefulWidget {
  const SupportWidget({Key? key}) : super(key: key);

  @override
  _SupportWidgetState createState() => _SupportWidgetState();
}

class _SupportWidgetState extends State<SupportWidget> {
  late SupportModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SupportModel());
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
          child: SingleChildScrollView(
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
                      width: 15.0,
                      thickness: 1.0,
                      color: FlutterFlowTheme.of(context).accent4,
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          context.pushNamed('Profile');
                        },
                        child: Icon(
                          Icons.chevron_left,
                          color: Colors.black,
                          size: 50.0,
                        ),
                      ),
                    ),
                    VerticalDivider(
                      width: 80.0,
                      thickness: 1.0,
                      color: FlutterFlowTheme.of(context).accent4,
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.0, -0.65),
                      child: Text(
                        FFLocalizations.of(context).getText(
                          'stsf9we8' /* Support */,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              fontSize: 25.0,
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                    ),
                  ],
                ),
                Divider(
                  height: 40.0,
                  thickness: 1.0,
                  color: FlutterFlowTheme.of(context).primaryBackground,
                ),
                SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Divider(
                        thickness: 1.0,
                        color: Colors.black,
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            13.0, 10.0, 13.0, 10.0),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            '8s0nue7v' /* How do I sign up for a Club or... */,
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyLarge.override(
                                    fontFamily: 'Readex Pro',
                                    fontWeight: FontWeight.w900,
                                  ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            13.0, 10.0, 13.0, 10.0),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            '9wj519g7' /* Simply click the join button n... */,
                          ),
                          style: FlutterFlowTheme.of(context).bodyMedium,
                        ),
                      ),
                      Divider(
                        height: 30.0,
                        thickness: 1.0,
                        color: Colors.black,
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            13.0, 10.0, 13.0, 10.0),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            'lqr6hu2w' /* Where can I see my clubs? */,
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyLarge.override(
                                    fontFamily: 'Readex Pro',
                                    fontWeight: FontWeight.w900,
                                  ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            13.0, 10.0, 13.0, 10.0),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            'jkatt9v0' /* Simply click on your profile i... */,
                          ),
                          style: FlutterFlowTheme.of(context).bodyMedium,
                        ),
                      ),
                      Divider(
                        height: 30.0,
                        thickness: 1.0,
                        color: Colors.black,
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            13.0, 10.0, 13.0, 10.0),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            's5qnx4k5' /* How do I find my way around th... */,
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyLarge.override(
                                    fontFamily: 'Readex Pro',
                                    fontWeight: FontWeight.w900,
                                  ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            13.0, 10.0, 13.0, 10.0),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            'r2vhw1c9' /* A tutorial on how to use the M... */,
                          ),
                          style: FlutterFlowTheme.of(context).bodyMedium,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            15.0, 0.0, 15.0, 0.0),
                        child: FlutterFlowVideoPlayer(
                          path:
                              'https://assets.mixkit.co/videos/preview/mixkit-forest-stream-in-the-sunlight-529-large.mp4',
                          videoType: VideoType.network,
                          autoPlay: false,
                          looping: true,
                          showControls: true,
                          allowFullScreen: true,
                          allowPlaybackSpeedMenu: false,
                        ),
                      ),
                      Divider(
                        thickness: 1.0,
                        color: Colors.black,
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            13.0, 10.0, 13.0, 10.0),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            'ftiqa3pc' /* If I sign up for a Club or SLG... */,
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyLarge.override(
                                    fontFamily: 'Readex Pro',
                                    fontWeight: FontWeight.w900,
                                  ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            13.0, 10.0, 13.0, 10.0),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            'pj6ukxxl' /* No, you are merely expressing ... */,
                          ),
                          style: FlutterFlowTheme.of(context).bodyMedium,
                        ),
                      ),
                      Divider(
                        thickness: 1.0,
                        color: Colors.black,
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            13.0, 10.0, 13.0, 10.0),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            'ofsgpaek' /* Do I have to apply or audition... */,
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyLarge.override(
                                    fontFamily: 'Readex Pro',
                                    fontWeight: FontWeight.w900,
                                  ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            13.0, 10.0, 13.0, 10.0),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            'lhh4qkrv' /* Most clubs at MHS are open to ... */,
                          ),
                          style: FlutterFlowTheme.of(context).bodyMedium,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
