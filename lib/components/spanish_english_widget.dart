import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'spanish_english_model.dart';
export 'spanish_english_model.dart';

class SpanishEnglishWidget extends StatefulWidget {
  const SpanishEnglishWidget({Key? key}) : super(key: key);

  @override
  _SpanishEnglishWidgetState createState() => _SpanishEnglishWidgetState();
}

class _SpanishEnglishWidgetState extends State<SpanishEnglishWidget> {
  late SpanishEnglishModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SpanishEnglishModel());

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

    return Align(
      alignment: AlignmentDirectional(1.00, 0.00),
      child: FlutterFlowIconButton(
        borderColor: FlutterFlowTheme.of(context).primaryText,
        borderRadius: 20.0,
        borderWidth: 1.0,
        buttonSize: 43.0,
        fillColor: Color(0xFFFFB68C),
        icon: Icon(
          Icons.language,
          color: FlutterFlowTheme.of(context).primaryText,
          size: 20.0,
        ),
        onPressed: () async {
          context.pushNamed('PickLanguageIn');
        },
      ),
    );
  }
}
