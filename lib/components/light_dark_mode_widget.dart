import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'light_dark_mode_model.dart';
export 'light_dark_mode_model.dart';

class LightDarkModeWidget extends StatefulWidget {
  const LightDarkModeWidget({Key? key}) : super(key: key);

  @override
  _LightDarkModeWidgetState createState() => _LightDarkModeWidgetState();
}

class _LightDarkModeWidgetState extends State<LightDarkModeWidget> {
  late LightDarkModeModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LightDarkModeModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: 100.0,
      height: 43.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primaryBackground,
      ),
      child: Stack(
        children: [
          if (!(Theme.of(context).brightness == Brightness.dark))
            Align(
              alignment: AlignmentDirectional(-1.00, 0.00),
              child: FlutterFlowIconButton(
                borderColor: FlutterFlowTheme.of(context).primaryText,
                borderRadius: 20.0,
                borderWidth: 1.0,
                buttonSize: 43.0,
                fillColor: Color(0xFFFFB68C),
                icon: Icon(
                  Icons.dark_mode_outlined,
                  color: FlutterFlowTheme.of(context).primaryText,
                  size: 24.0,
                ),
                onPressed: () async {
                  if ((Theme.of(context).brightness == Brightness.dark) !=
                      null) {
                    setDarkModeSetting(context, ThemeMode.dark);
                  }
                },
              ),
            ),
          if (!(Theme.of(context).brightness == Brightness.light))
            Align(
              alignment: AlignmentDirectional(-1.00, 0.00),
              child: FlutterFlowIconButton(
                borderColor: FlutterFlowTheme.of(context).primaryText,
                borderRadius: 20.0,
                borderWidth: 1.0,
                buttonSize: 40.0,
                fillColor: FlutterFlowTheme.of(context).tertiary,
                icon: Icon(
                  Icons.light_mode_outlined,
                  color: FlutterFlowTheme.of(context).primaryText,
                  size: 24.0,
                ),
                onPressed: () async {
                  if ((Theme.of(context).brightness == Brightness.light) !=
                      null) {
                    setDarkModeSetting(context, ThemeMode.light);
                  }
                },
              ),
            ),
        ],
      ),
    );
  }
}
