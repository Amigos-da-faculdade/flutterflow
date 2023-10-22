import '/components/coupons_component/coupons_component_widget.dart';
import '/components/profile_horizontal_component/profile_horizontal_component_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'coupons_page_widget.dart' show CouponsPageWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CouponsPageModel extends FlutterFlowModel<CouponsPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for ProfileHorizontalComponent component.
  late ProfileHorizontalComponentModel profileHorizontalComponentModel;
  // Model for CouponsComponent component.
  late CouponsComponentModel couponsComponentModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    profileHorizontalComponentModel =
        createModel(context, () => ProfileHorizontalComponentModel());
    couponsComponentModel = createModel(context, () => CouponsComponentModel());
  }

  void dispose() {
    unfocusNode.dispose();
    profileHorizontalComponentModel.dispose();
    couponsComponentModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
