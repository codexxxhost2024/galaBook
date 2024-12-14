import '/components/card_display_item/card_display_item_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'item_map_view_widget.dart' show ItemMapViewWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ItemMapViewModel extends FlutterFlowModel<ItemMapViewWidget> {
  ///  Local state fields for this component.

  bool mapView = false;

  ///  State fields for stateful widgets in this component.

  // Model for CardDisplayItem component.
  late CardDisplayItemModel cardDisplayItemModel1;
  // Model for CardDisplayItem component.
  late CardDisplayItemModel cardDisplayItemModel2;
  // Model for CardDisplayItem component.
  late CardDisplayItemModel cardDisplayItemModel3;

  @override
  void initState(BuildContext context) {
    cardDisplayItemModel1 = createModel(context, () => CardDisplayItemModel());
    cardDisplayItemModel2 = createModel(context, () => CardDisplayItemModel());
    cardDisplayItemModel3 = createModel(context, () => CardDisplayItemModel());
  }

  @override
  void dispose() {
    cardDisplayItemModel1.dispose();
    cardDisplayItemModel2.dispose();
    cardDisplayItemModel3.dispose();
  }
}
