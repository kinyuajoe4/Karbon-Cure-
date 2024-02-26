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
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'addprojects_model.dart';
export 'addprojects_model.dart';

class AddprojectsWidget extends StatefulWidget {
  const AddprojectsWidget({super.key});

  @override
  State<AddprojectsWidget> createState() => _AddprojectsWidgetState();
}

class _AddprojectsWidgetState extends State<AddprojectsWidget>
    with TickerProviderStateMixin {
  late AddprojectsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = {
    'dropDownOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 40.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 40.ms,
          duration: 600.ms,
          begin: Offset(0.0, 20.0),
          end: Offset(0.0, 0.0),
        ),
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 40.ms,
          duration: 600.ms,
          begin: Offset(1.0, 1.0),
          end: Offset(1.0, 1.0),
        ),
      ],
    ),
    'textFieldOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(0.0, 9.0),
          end: Offset(0.0, 0.0),
        ),
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(1.0, 1.0),
          end: Offset(1.0, 1.0),
        ),
      ],
    ),
    'textFieldOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(0.0, 9.0),
          end: Offset(0.0, 0.0),
        ),
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(1.0, 1.0),
          end: Offset(1.0, 1.0),
        ),
      ],
    ),
    'textFieldOnPageLoadAnimation3': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 60.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 60.ms,
          duration: 600.ms,
          begin: Offset(0.0, 30.0),
          end: Offset(0.0, 0.0),
        ),
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 60.ms,
          duration: 600.ms,
          begin: Offset(1.0, 1.0),
          end: Offset(1.0, 1.0),
        ),
      ],
    ),
    'textFieldOnPageLoadAnimation4': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 60.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 60.ms,
          duration: 600.ms,
          begin: Offset(0.0, 30.0),
          end: Offset(0.0, 0.0),
        ),
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 60.ms,
          duration: 600.ms,
          begin: Offset(1.0, 1.0),
          end: Offset(1.0, 1.0),
        ),
      ],
    ),
    'textFieldOnPageLoadAnimation5': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 60.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 60.ms,
          duration: 600.ms,
          begin: Offset(0.0, 30.0),
          end: Offset(0.0, 0.0),
        ),
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 60.ms,
          duration: 600.ms,
          begin: Offset(1.0, 1.0),
          end: Offset(1.0, 1.0),
        ),
      ],
    ),
    'textFieldOnPageLoadAnimation6': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 60.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 60.ms,
          duration: 600.ms,
          begin: Offset(0.0, 30.0),
          end: Offset(0.0, 0.0),
        ),
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 60.ms,
          duration: 600.ms,
          begin: Offset(1.0, 1.0),
          end: Offset(1.0, 1.0),
        ),
      ],
    ),
    'containerOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(0.0, 90.0),
          end: Offset(0.0, 0.0),
        ),
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(1.0, 1.0),
          end: Offset(1.0, 1.0),
        ),
      ],
    ),
    'containerOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(0.0, 90.0),
          end: Offset(0.0, 0.0),
        ),
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(1.0, 1.0),
          end: Offset(1.0, 1.0),
        ),
      ],
    ),
    'buttonOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.bounceOut,
          delay: 150.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.bounceOut,
          delay: 150.ms,
          duration: 600.ms,
          begin: Offset(0.0, 20.0),
          end: Offset(0.0, 0.0),
        ),
        ScaleEffect(
          curve: Curves.bounceOut,
          delay: 150.ms,
          duration: 600.ms,
          begin: Offset(1.0, 1.0),
          end: Offset(1.0, 1.0),
        ),
      ],
    ),
    'buttonOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.bounceOut,
          delay: 150.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.bounceOut,
          delay: 150.ms,
          duration: 600.ms,
          begin: Offset(0.0, 20.0),
          end: Offset(0.0, 0.0),
        ),
        ScaleEffect(
          curve: Curves.bounceOut,
          delay: 150.ms,
          duration: 600.ms,
          begin: Offset(1.0, 1.0),
          end: Offset(1.0, 1.0),
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AddprojectsModel());

    _model.projectnameController ??= TextEditingController();
    _model.projectnameFocusNode ??= FocusNode();

    _model.howitworksController ??=
        TextEditingController(text: '[Persons name]');
    _model.howitworksFocusNode ??= FocusNode();

    _model.plocationController ??= TextEditingController();

    _model.sumammaryController ??= TextEditingController();
    _model.sumammaryFocusNode ??= FocusNode();

    _model.whtthisproojectController ??= TextEditingController();
    _model.whtthisproojectFocusNode ??= FocusNode();

    _model.lfactController ??= TextEditingController();
    _model.lfactFocusNode ??= FocusNode();

    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Title(
        title: 'addprojects',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: GestureDetector(
          onTap: () => _model.unfocusNode.canRequestFocus
              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
              : FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: SafeArea(
              top: true,
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Divider(
                        thickness: 3.0,
                        indent: 150.0,
                        endIndent: 150.0,
                        color: FlutterFlowTheme.of(context).primaryBackground,
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                        child: Text(
                          'Add Tree Details',
                          style: FlutterFlowTheme.of(context)
                              .headlineSmall
                              .override(
                                fontFamily: 'Outfit',
                                color: FlutterFlowTheme.of(context).success,
                              ),
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 8.0, 0.0, 0.0),
                              child: Text(
                                'Fill out the information below about the Trees you are monitoring.',
                                style: FlutterFlowTheme.of(context)
                                    .bodySmall
                                    .override(
                                      fontFamily: 'Outfit',
                                      color: Color(0xFF0C8D00),
                                    ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                        child: Text(
                          'Upload Tree Pictures',
                          style: FlutterFlowTheme.of(context).bodyMedium,
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 3.0, 0.0, 0.0),
                            child: Container(
                              width: 228.0,
                              height: 207.0,
                              decoration: BoxDecoration(
                                color: Color(0xFFAAE992),
                                image: DecorationImage(
                                  fit: BoxFit.contain,
                                  image: Image.memory(
                                    _model.uploadedLocalFile.bytes ??
                                        Uint8List.fromList([]),
                                  ).image,
                                ),
                                borderRadius: BorderRadius.circular(22.0),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image.network(
                                  _model.uploadedFileUrl,
                                  width: 300.0,
                                  height: 200.0,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                20.0, 0.0, 0.0, 0.0),
                            child: FlutterFlowIconButton(
                              borderColor: Colors.transparent,
                              borderRadius: 30.0,
                              borderWidth: 1.0,
                              buttonSize: 60.0,
                              icon: Icon(
                                Icons.photo_camera_sharp,
                                color: Color(0xFF2EFB26),
                                size: 30.0,
                              ),
                              onPressed: () async {
                                final selectedMedia =
                                    await selectMediaWithSourceBottomSheet(
                                  context: context,
                                  maxWidth: 120.00,
                                  maxHeight: 120.00,
                                  allowPhoto: true,
                                );
                                if (selectedMedia != null &&
                                    selectedMedia.every((m) =>
                                        validateFileFormat(
                                            m.storagePath, context))) {
                                  setState(() => _model.isDataUploading = true);
                                  var selectedUploadedFiles =
                                      <FFUploadedFile>[];

                                  var downloadUrls = <String>[];
                                  try {
                                    showUploadMessage(
                                      context,
                                      'Uploading file...',
                                      showLoading: true,
                                    );
                                    selectedUploadedFiles = selectedMedia
                                        .map((m) => FFUploadedFile(
                                              name:
                                                  m.storagePath.split('/').last,
                                              bytes: m.bytes,
                                              height: m.dimensions?.height,
                                              width: m.dimensions?.width,
                                              blurHash: m.blurHash,
                                            ))
                                        .toList();

                                    downloadUrls = (await Future.wait(
                                      selectedMedia.map(
                                        (m) async => await uploadData(
                                            m.storagePath, m.bytes),
                                      ),
                                    ))
                                        .where((u) => u != null)
                                        .map((u) => u!)
                                        .toList();
                                  } finally {
                                    ScaffoldMessenger.of(context)
                                        .hideCurrentSnackBar();
                                    _model.isDataUploading = false;
                                  }
                                  if (selectedUploadedFiles.length ==
                                          selectedMedia.length &&
                                      downloadUrls.length ==
                                          selectedMedia.length) {
                                    setState(() {
                                      _model.uploadedLocalFile =
                                          selectedUploadedFiles.first;
                                      _model.uploadedFileUrl =
                                          downloadUrls.first;
                                    });
                                    showUploadMessage(context, 'Success!');
                                  } else {
                                    setState(() {});
                                    showUploadMessage(
                                        context, 'Failed to upload data');
                                    return;
                                  }
                                }
                              },
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                        child: Text(
                          'Emails will be sent to:',
                          style: FlutterFlowTheme.of(context).bodyMedium,
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 12.0),
                        child: Text(
                          'Emails will be sent to:',
                          style:
                              FlutterFlowTheme.of(context).titleMedium.override(
                                    fontFamily: 'Outfit',
                                    color: Color(0xFF52DF0E),
                                  ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                        child: FlutterFlowDropDown<String>(
                          controller: _model.dropDownValueController ??=
                              FormFieldController<String>(null),
                          options: [
                            'Indigenous Tree',
                            'Exotic Tree',
                            'Fruit Tree',
                            'Other'
                          ],
                          onChanged: (val) =>
                              setState(() => _model.dropDownValue = val),
                          width: MediaQuery.sizeOf(context).width * 0.9,
                          height: 60.0,
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Outfit',
                                    color: Color(0xFF25E31E),
                                  ),
                          hintText: 'Select Category',
                          icon: Icon(
                            Icons.keyboard_arrow_down_rounded,
                            color: FlutterFlowTheme.of(context).grayLight,
                            size: 15.0,
                          ),
                          fillColor:
                              FlutterFlowTheme.of(context).primaryBackground,
                          elevation: 3.0,
                          borderColor:
                              FlutterFlowTheme.of(context).primaryBackground,
                          borderWidth: 2.0,
                          borderRadius: 8.0,
                          margin: EdgeInsetsDirectional.fromSTEB(
                              20.0, 4.0, 16.0, 4.0),
                          hidesUnderline: true,
                          isSearchable: false,
                          isMultiSelect: false,
                        ).animateOnPageLoad(
                            animationsMap['dropDownOnPageLoadAnimation']!),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                        child: TextFormField(
                          controller: _model.projectnameController,
                          focusNode: _model.projectnameFocusNode,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: 'projectname',
                            labelStyle: FlutterFlowTheme.of(context).bodySmall,
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            filled: true,
                            fillColor:
                                FlutterFlowTheme.of(context).primaryBackground,
                            contentPadding: EdgeInsetsDirectional.fromSTEB(
                                20.0, 24.0, 0.0, 24.0),
                          ),
                          style:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Outfit',
                                    color: Color(0xFF25E31E),
                                    fontWeight: FontWeight.bold,
                                  ),
                          validator: _model.projectnameControllerValidator
                              .asValidator(context),
                        ).animateOnPageLoad(
                            animationsMap['textFieldOnPageLoadAnimation1']!),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                        child: TextFormField(
                          controller: _model.howitworksController,
                          focusNode: _model.howitworksFocusNode,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: 'howitworks',
                            labelStyle: FlutterFlowTheme.of(context).bodySmall,
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            filled: true,
                            fillColor:
                                FlutterFlowTheme.of(context).primaryBackground,
                            contentPadding: EdgeInsetsDirectional.fromSTEB(
                                20.0, 24.0, 0.0, 24.0),
                          ),
                          style:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Outfit',
                                    color: Color(0xFF25E31E),
                                    fontWeight: FontWeight.bold,
                                  ),
                          validator: _model.howitworksControllerValidator
                              .asValidator(context),
                        ).animateOnPageLoad(
                            animationsMap['textFieldOnPageLoadAnimation2']!),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                        child: Autocomplete<String>(
                          initialValue: TextEditingValue(),
                          optionsBuilder: (textEditingValue) {
                            if (textEditingValue.text == '') {
                              return const Iterable<String>.empty();
                            }
                            return [
                              'Cypress',
                              'Moringa',
                              'Maple',
                              'Pine',
                              'Oak ',
                              'Sycamore',
                              'Magnolia',
                              'Cedar',
                              'Elm',
                              'Willow',
                              'Fir',
                              'Tulip',
                              'Hackberry',
                              'Beech',
                              'Birch',
                              'Baobab',
                              'Hickory',
                              'Bottlebrush',
                              'Ovacado',
                              'Palm',
                              'Ponderosa Pine',
                              'Red Pine'
                            ].where((option) {
                              final lowercaseOption = option.toLowerCase();
                              return lowercaseOption.contains(
                                  textEditingValue.text.toLowerCase());
                            });
                          },
                          optionsViewBuilder: (context, onSelected, options) {
                            return AutocompleteOptionsList(
                              textFieldKey: _model.plocationKey,
                              textController: _model.plocationController!,
                              options: options.toList(),
                              onSelected: onSelected,
                              textStyle:
                                  FlutterFlowTheme.of(context).bodyMedium,
                              textHighlightStyle: TextStyle(),
                              elevation: 4.0,
                              optionBackgroundColor:
                                  FlutterFlowTheme.of(context)
                                      .primaryBackground,
                              optionHighlightColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              maxHeight: 200.0,
                            );
                          },
                          onSelected: (String selection) {
                            setState(() =>
                                _model.plocationSelectedOption = selection);
                            FocusScope.of(context).unfocus();
                          },
                          fieldViewBuilder: (
                            context,
                            textEditingController,
                            focusNode,
                            onEditingComplete,
                          ) {
                            _model.plocationFocusNode = focusNode;

                            _model.plocationController = textEditingController;
                            return TextFormField(
                              key: _model.plocationKey,
                              controller: textEditingController,
                              focusNode: focusNode,
                              onEditingComplete: onEditingComplete,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: 'plocation',
                                labelStyle:
                                    FlutterFlowTheme.of(context).bodySmall,
                                hintText: 'eg.Cypres',
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                filled: true,
                                fillColor: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                contentPadding: EdgeInsetsDirectional.fromSTEB(
                                    20.0, 24.0, 0.0, 24.0),
                              ),
                              style: FlutterFlowTheme.of(context).bodyMedium,
                              textAlign: TextAlign.start,
                              validator: _model.plocationControllerValidator
                                  .asValidator(context),
                            );
                          },
                        ).animateOnPageLoad(
                            animationsMap['textFieldOnPageLoadAnimation3']!),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                        child: TextFormField(
                          controller: _model.sumammaryController,
                          focusNode: _model.sumammaryFocusNode,
                          autofillHints: [AutofillHints.organizationName],
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: 'summary',
                            labelStyle: FlutterFlowTheme.of(context).bodySmall,
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            filled: true,
                            fillColor:
                                FlutterFlowTheme.of(context).primaryBackground,
                            contentPadding: EdgeInsetsDirectional.fromSTEB(
                                20.0, 24.0, 0.0, 24.0),
                          ),
                          style: FlutterFlowTheme.of(context).bodyMedium,
                          textAlign: TextAlign.start,
                          keyboardType: TextInputType.multiline,
                          validator: _model.sumammaryControllerValidator
                              .asValidator(context),
                        ).animateOnPageLoad(
                            animationsMap['textFieldOnPageLoadAnimation4']!),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                        child: TextFormField(
                          controller: _model.whtthisproojectController,
                          focusNode: _model.whtthisproojectFocusNode,
                          autofillHints: [AutofillHints.organizationName],
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: 'whythisproject',
                            labelStyle: FlutterFlowTheme.of(context).bodySmall,
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            filled: true,
                            fillColor:
                                FlutterFlowTheme.of(context).primaryBackground,
                            contentPadding: EdgeInsetsDirectional.fromSTEB(
                                20.0, 24.0, 0.0, 24.0),
                          ),
                          style: FlutterFlowTheme.of(context).bodyMedium,
                          textAlign: TextAlign.start,
                          keyboardType: TextInputType.multiline,
                          validator: _model.whtthisproojectControllerValidator
                              .asValidator(context),
                        ).animateOnPageLoad(
                            animationsMap['textFieldOnPageLoadAnimation5']!),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                        child: TextFormField(
                          controller: _model.lfactController,
                          focusNode: _model.lfactFocusNode,
                          autofillHints: [AutofillHints.organizationName],
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: 'locationfact',
                            labelStyle: FlutterFlowTheme.of(context).bodySmall,
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            filled: true,
                            fillColor:
                                FlutterFlowTheme.of(context).primaryBackground,
                            contentPadding: EdgeInsetsDirectional.fromSTEB(
                                20.0, 24.0, 0.0, 24.0),
                          ),
                          style: FlutterFlowTheme.of(context).bodyMedium,
                          textAlign: TextAlign.start,
                          keyboardType: TextInputType.multiline,
                          validator: _model.lfactControllerValidator
                              .asValidator(context),
                        ).animateOnPageLoad(
                            animationsMap['textFieldOnPageLoadAnimation6']!),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            final _datePicked1Date = await showDatePicker(
                              context: context,
                              initialDate: getCurrentTimestamp,
                              firstDate: DateTime(1900),
                              lastDate: getCurrentTimestamp,
                            );

                            if (_datePicked1Date != null) {
                              safeSetState(() {
                                _model.datePicked1 = DateTime(
                                  _datePicked1Date.year,
                                  _datePicked1Date.month,
                                  _datePicked1Date.day,
                                );
                              });
                            }
                          },
                          child: Material(
                            color: Colors.transparent,
                            elevation: 0.0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: Container(
                              width: MediaQuery.sizeOf(context).width * 0.9,
                              height: 60.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                borderRadius: BorderRadius.circular(8.0),
                                border: Border.all(
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  width: 2.0,
                                ),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20.0, 0.0, 0.0, 0.0),
                                          child: Text(
                                            'Date of Planting',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Outfit',
                                                  fontSize: 12.0,
                                                ),
                                          ),
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      20.0, 4.0, 0.0, 0.0),
                                              child: Text(
                                                valueOrDefault<String>(
                                                  dateTimeFormat('yMMMd',
                                                      _model.datePicked1),
                                                  'No date set',
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodySmall
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .success,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(2.0, 4.0, 0.0, 0.0),
                                              child: Text(
                                                dateTimeFormat(
                                                    'jm', _model.datePicked1),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodySmall
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .success,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 8.0, 0.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        FlutterFlowIconButton(
                                          borderColor: Colors.transparent,
                                          borderRadius: 30.0,
                                          buttonSize: 46.0,
                                          icon: Icon(
                                            Icons.date_range_outlined,
                                            color: FlutterFlowTheme.of(context)
                                                .grayLight,
                                            size: 20.0,
                                          ),
                                          onPressed: () {
                                            print('IconButton pressed ...');
                                          },
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ).animateOnPageLoad(
                            animationsMap['containerOnPageLoadAnimation1']!),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            final _datePicked2Date = await showDatePicker(
                              context: context,
                              initialDate: getCurrentTimestamp,
                              firstDate: DateTime(1900),
                              lastDate: DateTime(2050),
                            );

                            if (_datePicked2Date != null) {
                              safeSetState(() {
                                _model.datePicked2 = DateTime(
                                  _datePicked2Date.year,
                                  _datePicked2Date.month,
                                  _datePicked2Date.day,
                                );
                              });
                            }
                          },
                          child: Material(
                            color: Colors.transparent,
                            elevation: 0.0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: Container(
                              width: MediaQuery.sizeOf(context).width * 0.9,
                              height: 60.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                borderRadius: BorderRadius.circular(8.0),
                                border: Border.all(
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  width: 2.0,
                                ),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20.0, 0.0, 0.0, 0.0),
                                          child: Text(
                                            'Planned Next Visit',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Outfit',
                                                  fontSize: 12.0,
                                                ),
                                          ),
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      20.0, 4.0, 0.0, 0.0),
                                              child: Text(
                                                valueOrDefault<String>(
                                                  dateTimeFormat('yMMMd',
                                                      _model.datePicked2),
                                                  'No date set',
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodySmall
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .success,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(2.0, 4.0, 0.0, 0.0),
                                              child: Text(
                                                dateTimeFormat(
                                                    'jm', _model.datePicked2),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodySmall
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .success,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 8.0, 0.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        FlutterFlowIconButton(
                                          borderColor: Colors.transparent,
                                          borderRadius: 30.0,
                                          buttonSize: 46.0,
                                          icon: Icon(
                                            Icons.date_range_outlined,
                                            color: FlutterFlowTheme.of(context)
                                                .grayLight,
                                            size: 20.0,
                                          ),
                                          onPressed: () {
                                            print('IconButton pressed ...');
                                          },
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ).animateOnPageLoad(
                            animationsMap['containerOnPageLoadAnimation2']!),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            0.0, 24.0, 0.0, 20.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            FFButtonWidget(
                              onPressed: () async {
                                context.pop();
                              },
                              text: 'Cancel',
                              options: FFButtonOptions(
                                width: 100.0,
                                height: 50.0,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Outfit',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      fontWeight: FontWeight.w500,
                                    ),
                                elevation: 0.0,
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(40.0),
                              ),
                            ).animateOnPageLoad(
                                animationsMap['buttonOnPageLoadAnimation1']!),
                            FFButtonWidget(
                              onPressed: () async {
                                await ProjectsRecord.collection
                                    .doc()
                                    .set(createProjectsRecordData(
                                      projectName:
                                          _model.projectnameController.text,
                                      locationName:
                                          _model.plocationController.text,
                                      summary: _model.sumammaryController.text,
                                      howItWorks:
                                          _model.howitworksController.text,
                                      whyThisProject:
                                          _model.whtthisproojectController.text,
                                      locationfact: _model.lfactController.text,
                                      leadphoto: _model.uploadedFileUrl,
                                    ));
                                context.safePop();
                              },
                              text: 'Add Trees',
                              options: FFButtonOptions(
                                width: 170.0,
                                height: 50.0,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: Color(0xFF25E31E),
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Outfit',
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                    ),
                                elevation: 3.0,
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(40.0),
                              ),
                            ).animateOnPageLoad(
                                animationsMap['buttonOnPageLoadAnimation2']!),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}
