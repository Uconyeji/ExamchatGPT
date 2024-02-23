import '/flutter_flow/flutter_flow_util.dart';
import 'imagechat_widget.dart' show ImagechatWidget;
import 'package:flutter/material.dart';

class ImagechatModel extends FlutterFlowModel<ImagechatWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for inputMessage widget.
  FocusNode? inputMessageFocusNode;
  TextEditingController? inputMessageController;
  String? Function(BuildContext, String?)? inputMessageControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    inputMessageFocusNode?.dispose();
    inputMessageController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
