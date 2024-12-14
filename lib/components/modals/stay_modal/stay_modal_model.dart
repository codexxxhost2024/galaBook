import '/components/modals/guests_modal/guests_modal_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'stay_modal_widget.dart' show StayModalWidget;
import 'package:flutter/material.dart';

class StayModalModel extends FlutterFlowModel<StayModalWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for GuestsModal component.
  late GuestsModalModel guestsModalModel;

  @override
  void initState(BuildContext context) {
    guestsModalModel = createModel(context, () => GuestsModalModel());
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    guestsModalModel.dispose();
  }
}
