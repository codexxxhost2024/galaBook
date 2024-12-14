import '/components/card_display_item/card_display_item_widget.dart';
import '/components/item_map_view/item_map_view_widget.dart';
import '/components/nav_bar/nav_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'explore_widget.dart' show ExploreWidget;
import 'package:flutter/material.dart';

class ExploreModel extends FlutterFlowModel<ExploreWidget> {
  ///  Local state fields for this page.

  bool mapView = false;

  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // Model for itemMapView component.
  late ItemMapViewModel itemMapViewModel1;
  // Model for itemMapView component.
  late ItemMapViewModel itemMapViewModel2;
  // Model for itemMapView component.
  late ItemMapViewModel itemMapViewModel3;
  // Model for itemMapView component.
  late ItemMapViewModel itemMapViewModel4;
  // Model for CardDisplayItem component.
  late CardDisplayItemModel cardDisplayItemModel;
  // Model for navBar component.
  late NavBarModel navBarModel;

  @override
  void initState(BuildContext context) {
    itemMapViewModel1 = createModel(context, () => ItemMapViewModel());
    itemMapViewModel2 = createModel(context, () => ItemMapViewModel());
    itemMapViewModel3 = createModel(context, () => ItemMapViewModel());
    itemMapViewModel4 = createModel(context, () => ItemMapViewModel());
    cardDisplayItemModel = createModel(context, () => CardDisplayItemModel());
    navBarModel = createModel(context, () => NavBarModel());
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    itemMapViewModel1.dispose();
    itemMapViewModel2.dispose();
    itemMapViewModel3.dispose();
    itemMapViewModel4.dispose();
    cardDisplayItemModel.dispose();
    navBarModel.dispose();
  }
}
