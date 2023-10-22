import '/components/dark_light_switch_component/dark_light_switch_component_widget.dart';
import '/components/logout_confirm_component/logout_confirm_component_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'config_component_widget.dart' show ConfigComponentWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ConfigComponentModel extends FlutterFlowModel<ConfigComponentWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for DarkLightSwitchComponent component.
  late DarkLightSwitchComponentModel darkLightSwitchComponentModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    darkLightSwitchComponentModel =
        createModel(context, () => DarkLightSwitchComponentModel());
  }

  void dispose() {
    darkLightSwitchComponentModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
