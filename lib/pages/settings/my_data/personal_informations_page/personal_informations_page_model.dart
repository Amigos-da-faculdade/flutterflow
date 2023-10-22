import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/components/edit_profile_horizontal_component/edit_profile_horizontal_component_widget.dart';
import '/components/pop_up/changes_accont_confirm_component/changes_accont_confirm_component_widget.dart';
import '/components/pop_up/sucess_accont_changes_component/sucess_accont_changes_component_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'personal_informations_page_widget.dart'
    show PersonalInformationsPageWidget;
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

class PersonalInformationsPageModel
    extends FlutterFlowModel<PersonalInformationsPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // Model for EditProfileHorizontalComponent component.
  late EditProfileHorizontalComponentModel editProfileHorizontalComponentModel;
  // State field(s) for nome widget.
  FocusNode? nomeFocusNode;
  TextEditingController? nomeController;
  String? Function(BuildContext, String?)? nomeControllerValidator;
  // State field(s) for cpf widget.
  FocusNode? cpfFocusNode;
  TextEditingController? cpfController;
  final cpfMask = MaskTextInputFormatter(mask: '###.###.###-##');
  String? Function(BuildContext, String?)? cpfControllerValidator;
  // State field(s) for email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailController;
  String? Function(BuildContext, String?)? emailControllerValidator;
  // State field(s) for telefone widget.
  FocusNode? telefoneFocusNode;
  TextEditingController? telefoneController;
  final telefoneMask = MaskTextInputFormatter(mask: '(##) #####-####');
  String? Function(BuildContext, String?)? telefoneControllerValidator;
  // State field(s) for idade widget.
  FocusNode? idadeFocusNode;
  TextEditingController? idadeController;
  String? Function(BuildContext, String?)? idadeControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    editProfileHorizontalComponentModel =
        createModel(context, () => EditProfileHorizontalComponentModel());
  }

  void dispose() {
    unfocusNode.dispose();
    editProfileHorizontalComponentModel.dispose();
    nomeFocusNode?.dispose();
    nomeController?.dispose();

    cpfFocusNode?.dispose();
    cpfController?.dispose();

    emailFocusNode?.dispose();
    emailController?.dispose();

    telefoneFocusNode?.dispose();
    telefoneController?.dispose();

    idadeFocusNode?.dispose();
    idadeController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
