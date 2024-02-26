import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_autocomplete_options_list.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import 'addprojects_widget.dart' show AddprojectsWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AddprojectsModel extends FlutterFlowModel<AddprojectsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for projectname widget.
  FocusNode? projectnameFocusNode;
  TextEditingController? projectnameController;
  String? Function(BuildContext, String?)? projectnameControllerValidator;
  // State field(s) for howitworks widget.
  FocusNode? howitworksFocusNode;
  TextEditingController? howitworksController;
  String? Function(BuildContext, String?)? howitworksControllerValidator;
  // State field(s) for plocation widget.
  final plocationKey = GlobalKey();
  FocusNode? plocationFocusNode;
  TextEditingController? plocationController;
  String? plocationSelectedOption;
  String? Function(BuildContext, String?)? plocationControllerValidator;
  // State field(s) for sumammary widget.
  FocusNode? sumammaryFocusNode;
  TextEditingController? sumammaryController;
  String? Function(BuildContext, String?)? sumammaryControllerValidator;
  // State field(s) for whtthisprooject widget.
  FocusNode? whtthisproojectFocusNode;
  TextEditingController? whtthisproojectController;
  String? Function(BuildContext, String?)? whtthisproojectControllerValidator;
  // State field(s) for lfact widget.
  FocusNode? lfactFocusNode;
  TextEditingController? lfactController;
  String? Function(BuildContext, String?)? lfactControllerValidator;
  DateTime? datePicked1;
  DateTime? datePicked2;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    projectnameFocusNode?.dispose();
    projectnameController?.dispose();

    howitworksFocusNode?.dispose();
    howitworksController?.dispose();

    plocationFocusNode?.dispose();

    sumammaryFocusNode?.dispose();
    sumammaryController?.dispose();

    whtthisproojectFocusNode?.dispose();
    whtthisproojectController?.dispose();

    lfactFocusNode?.dispose();
    lfactController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
