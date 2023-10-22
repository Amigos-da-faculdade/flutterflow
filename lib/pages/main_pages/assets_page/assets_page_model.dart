import '/backend/supabase/supabase.dart';
import '/components/nav_bar/nav_bar2/nav_bar2_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'assets_page_widget.dart' show AssetsPageWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AssetsPageModel extends FlutterFlowModel<AssetsPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for NavBar2 component.
  late NavBar2Model navBar2Model;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    navBar2Model = createModel(context, () => NavBar2Model());
  }

  void dispose() {
    unfocusNode.dispose();
    navBar2Model.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
