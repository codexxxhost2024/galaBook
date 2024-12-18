import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'logo_model.dart';
export 'logo_model.dart';

class LogoWidget extends StatefulWidget {
  const LogoWidget({super.key});

  @override
  State<LogoWidget> createState() => _LogoWidgetState();
}

class _LogoWidgetState extends State<LogoWidget> {
  late LogoModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LogoModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 2.0, 0.0),
            child: Icon(
              FFIcons.kbrandGoogle,
              color: FlutterFlowTheme.of(context).primary,
              size: 44.0,
            ),
          ),
          GradientText(
            'ala',
            style: FlutterFlowTheme.of(context).displaySmall.override(
                  fontFamily: 'SFPRO',
                  color: FlutterFlowTheme.of(context).accent4,
                  fontSize: 45.0,
                  letterSpacing: 0.0,
                  useGoogleFonts: false,
                ),
            colors: [FlutterFlowTheme.of(context).primary, Color(0xFF3954D2)],
            gradientDirection: GradientDirection.ltr,
            gradientType: GradientType.linear,
          ),
        ],
      ),
    );
  }
}
