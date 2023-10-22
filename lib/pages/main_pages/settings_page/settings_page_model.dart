import '/components/config_component/config_component_widget.dart';
import '/components/nav_bar/nav_bar2/nav_bar2_widget.dart';
import '/components/profile_vertical_component/profile_vertical_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'settings_page_widget.dart' show SettingsPageWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SettingsPageModel extends FlutterFlowModel<SettingsPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for ProfileVerticalComponent component.
  late ProfileVerticalComponentModel profileVerticalComponentModel;
  // Model for ConfigComponent component.
  late ConfigComponentModel configComponentModel;
  // Model for NavBar2 component.
  late NavBar2Model navBar2Model;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    profileVerticalComponentModel =
        createModel(context, () => ProfileVerticalComponentModel());
    configComponentModel = createModel(context, () => ConfigComponentModel());
    navBar2Model = createModel(context, () => NavBar2Model());
  }

  void dispose() {
    unfocusNode.dispose();
    profileVerticalComponentModel.dispose();
    configComponentModel.dispose();
    navBar2Model.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
