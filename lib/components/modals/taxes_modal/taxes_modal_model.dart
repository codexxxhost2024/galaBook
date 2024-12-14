import '/flutter_flow/flutter_flow_util.dart';
import 'taxes_modal_widget.dart' show TaxesModalWidget;
import 'package:flutter/material.dart';

class TaxesModalModel extends FlutterFlowModel<TaxesModalWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tabBarController?.dispose();
  }
}
