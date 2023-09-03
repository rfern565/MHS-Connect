import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'joined_clubs_model.dart';
export 'joined_clubs_model.dart';

class JoinedClubsWidget extends StatefulWidget {
  const JoinedClubsWidget({Key? key}) : super(key: key);

  @override
  _JoinedClubsWidgetState createState() => _JoinedClubsWidgetState();
}

class _JoinedClubsWidgetState extends State<JoinedClubsWidget> {
  late JoinedClubsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => JoinedClubsModel());
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
                      width: 35.0,
                      thickness: 1.0,
                      color: FlutterFlowTheme.of(context).accent4,
                    ),
                    Align(
                      alignment: AlignmentDirectional(-0.05, -0.65),
                      child: Text(
                        FFLocalizations.of(context).getText(
                          'khnuudve' /* Joined Clubs */,
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
