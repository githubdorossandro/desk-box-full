import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'temp_model.dart';
export 'temp_model.dart';

/// <!DOCTYPE html>
/// <html lang="pt-br">
/// <head>
///   <meta charset="UTF-8">
///   <meta name="viewport" content="width=device-width, initial-scale=1">
///   <title>DeskBox - Em breve</title>
///   <style>
///     body {
///       margin: 0;
///       padding: 0;
///       background: #0F0F0F;
///       color: #FFFFFF;
///       font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
///       display: flex;
///       align-items: center;
///       justify-content: center;
///       height: 100vh;
///       text-align: center;
///       background: linear-gradient(to bottom, #0F0F0F, #1A1A1A);
///     }
///
///     .container {
///       max-width: 600px;
///       padding: 20px;
///       border-radius: 20px;
///       background-color: #2A2A2A;
///       box-shadow: 0 4px 12px rgba(0,0,0,0.3);
///     }
///
///     h1 {
///       font-size: 2.5rem;
///       margin-bottom: 20px;
///       color: #EB8B04;
///     }
///
///     p {
///       font-size: 1.2rem;
///       line-height: 1.6;
///       color: #CCCCCC;
///     }
///
///     .logo {
///       width: 150px;
///       margin-bottom: 30px;
///     }
///   </style>
/// </head>
/// <body>
///   <div class="container">
///     <img src="https://deskbox.com.br/logo.svg" alt="Logo DeskBox"
/// class="logo">
///     <h1>Estamos quase lá!</h1>
///     <p>
///       Em breve, aqui nascerá uma plataforma com <strong>soluções
/// inovadoras</strong>,<br>
///       baseadas em <strong>dados</strong>, <strong>processos</strong> e
/// <strong>pessoas</strong>.<br><br>
///       A revolução digital da sua equipe começa com a DeskBox.
///
/// </p>
///   </div>
/// </body>
/// </html>
class TempWidget extends StatefulWidget {
  const TempWidget({super.key});

  static String routeName = 'temp';
  static String routePath = 'temp';

  @override
  State<TempWidget> createState() => _TempWidgetState();
}

class _TempWidgetState extends State<TempWidget> {
  late TempModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TempModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0x000F0F0F),
        body: SafeArea(
          top: true,
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(24.0, 24.0, 24.0, 24.0),
            child: Container(
              width: MediaQuery.sizeOf(context).width * 1.0,
              height: MediaQuery.sizeOf(context).height * 1.0,
              decoration: BoxDecoration(
                color: Color(0x000F0F0F),
              ),
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(5.0, 5.0, 5.0, 5.0),
                      child: Material(
                        color: Colors.transparent,
                        elevation: 12.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Container(
                          width: 600.0,
                          height: 400.0,
                          decoration: BoxDecoration(
                            color: Color(0xC114181B),
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(16.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/images/DeskBox_logo_fundoescuro_orgizontal.png',
                                  height: 100.0,
                                  fit: BoxFit.fitWidth,
                                ),
                                Text(
                                  'Estamos quase lá!',
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .headlineMedium
                                      .override(
                                        fontFamily: 'Inter Tight',
                                        color: Color(0xFFEB8B04),
                                        fontSize: 32.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                                Text(
                                  'Soluções inovadoras baseadas em dados, processos e pessoas.\n\nA revolução digital da sua equipe começa com a DeskBox.',
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyLarge
                                      .override(
                                        fontFamily: 'Inter',
                                        color: Color(0xFFCCCCCC),
                                        fontSize: 18.0,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ].divide(SizedBox(height: 24.0)),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
