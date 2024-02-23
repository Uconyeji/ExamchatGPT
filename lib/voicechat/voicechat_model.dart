import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'voicechat_widget.dart' show VoicechatWidget;
import 'package:flutter/material.dart';

class VoicechatModel extends FlutterFlowModel<VoicechatWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextPrompt widget.
  FocusNode? textPromptFocusNode;
  TextEditingController? textPromptController;
  String? Function(BuildContext, String?)? textPromptControllerValidator;
  // Stores action output result for [Backend Call - Create Document] action in IconButton widget.
  MessagesRecord? apiRespon;
  // Stores action output result for [Backend Call - API (createChatCompletion)] action in IconButton widget.
  ApiCallResponse? apiResponse;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    textPromptFocusNode?.dispose();
    textPromptController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
