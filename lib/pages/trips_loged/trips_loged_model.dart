import '/components/modals/no_trip_booked_modal/no_trip_booked_modal_widget.dart';
import '/components/nav_bar/nav_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'trips_loged_widget.dart' show TripsLogedWidget;
import 'package:flutter/material.dart';

class TripsLogedModel extends FlutterFlowModel<TripsLogedWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for RatingBar widget.
  double? ratingBarValue;
  // Model for NoTripBookedModal component.
  late NoTripBookedModalModel noTripBookedModalModel;
  // Model for navBar component.
  late NavBarModel navBarModel;

  @override
  void initState(BuildContext context) {
    noTripBookedModalModel =
        createModel(context, () => NoTripBookedModalModel());
    navBarModel = createModel(context, () => NavBarModel());
  }

  @override
  void dispose() {
    noTripBookedModalModel.dispose();
    navBarModel.dispose();
  }
}
