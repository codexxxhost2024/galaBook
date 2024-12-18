import '/auth/firebase_auth/auth_util.dart';
import '/components/logo_widget.dart';
import '/components/modals/taxes_modal/taxes_modal_widget.dart';
import '/components/nav_bar/nav_bar_widget.dart';
import '/components/profile_setting_detail_items/profile_setting_detail_items_widget.dart';
import '/components/profile_setting_items/profile_setting_items_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'profile_widget.dart' show ProfileWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ProfileModel extends FlutterFlowModel<ProfileWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for logo component.
  late LogoModel logoModel;
  // Model for ProfileSettingItems component.
  late ProfileSettingItemsModel profileSettingItemsModel1;
  // Model for ProfileSettingItems component.
  late ProfileSettingItemsModel profileSettingItemsModel2;
  // Model for ProfileSettingItems component.
  late ProfileSettingItemsModel profileSettingItemsModel3;
  // Model for ProfileSettingItems component.
  late ProfileSettingItemsModel profileSettingItemsModel4;
  // Model for ProfileSettingItems component.
  late ProfileSettingItemsModel profileSettingItemsModel5;
  // Model for ProfileSettingItems component.
  late ProfileSettingItemsModel profileSettingItemsModel6;
  // Model for ProfileSettingItems component.
  late ProfileSettingItemsModel profileSettingItemsModel7;
  // Model for ProfileSettingItems component.
  late ProfileSettingItemsModel profileSettingItemsModel8;
  // Model for ProfileSettingItems component.
  late ProfileSettingItemsModel profileSettingItemsModel9;
  // Model for ProfileSettingItems component.
  late ProfileSettingItemsModel profileSettingItemsModel10;
  // Model for ProfileSettingDetailItems component.
  late ProfileSettingDetailItemsModel profileSettingDetailItemsModel1;
  // Model for ProfileSettingItems component.
  late ProfileSettingItemsModel profileSettingItemsModel11;
  // Model for ProfileSettingItems component.
  late ProfileSettingItemsModel profileSettingItemsModel12;
  // Model for ProfileSettingDetailItems component.
  late ProfileSettingDetailItemsModel profileSettingDetailItemsModel2;
  // Model for ProfileSettingDetailItems component.
  late ProfileSettingDetailItemsModel profileSettingDetailItemsModel3;
  // Model for ProfileSettingItems component.
  late ProfileSettingItemsModel profileSettingItemsModel13;
  // Model for ProfileSettingItems component.
  late ProfileSettingItemsModel profileSettingItemsModel14;
  // Model for ProfileSettingItems component.
  late ProfileSettingItemsModel profileSettingItemsModel15;
  // Model for ProfileSettingItems component.
  late ProfileSettingItemsModel profileSettingItemsModel16;
  // Model for navBar component.
  late NavBarModel navBarModel;

  @override
  void initState(BuildContext context) {
    logoModel = createModel(context, () => LogoModel());
    profileSettingItemsModel1 =
        createModel(context, () => ProfileSettingItemsModel());
    profileSettingItemsModel2 =
        createModel(context, () => ProfileSettingItemsModel());
    profileSettingItemsModel3 =
        createModel(context, () => ProfileSettingItemsModel());
    profileSettingItemsModel4 =
        createModel(context, () => ProfileSettingItemsModel());
    profileSettingItemsModel5 =
        createModel(context, () => ProfileSettingItemsModel());
    profileSettingItemsModel6 =
        createModel(context, () => ProfileSettingItemsModel());
    profileSettingItemsModel7 =
        createModel(context, () => ProfileSettingItemsModel());
    profileSettingItemsModel8 =
        createModel(context, () => ProfileSettingItemsModel());
    profileSettingItemsModel9 =
        createModel(context, () => ProfileSettingItemsModel());
    profileSettingItemsModel10 =
        createModel(context, () => ProfileSettingItemsModel());
    profileSettingDetailItemsModel1 =
        createModel(context, () => ProfileSettingDetailItemsModel());
    profileSettingItemsModel11 =
        createModel(context, () => ProfileSettingItemsModel());
    profileSettingItemsModel12 =
        createModel(context, () => ProfileSettingItemsModel());
    profileSettingDetailItemsModel2 =
        createModel(context, () => ProfileSettingDetailItemsModel());
    profileSettingDetailItemsModel3 =
        createModel(context, () => ProfileSettingDetailItemsModel());
    profileSettingItemsModel13 =
        createModel(context, () => ProfileSettingItemsModel());
    profileSettingItemsModel14 =
        createModel(context, () => ProfileSettingItemsModel());
    profileSettingItemsModel15 =
        createModel(context, () => ProfileSettingItemsModel());
    profileSettingItemsModel16 =
        createModel(context, () => ProfileSettingItemsModel());
    navBarModel = createModel(context, () => NavBarModel());
  }

  @override
  void dispose() {
    logoModel.dispose();
    profileSettingItemsModel1.dispose();
    profileSettingItemsModel2.dispose();
    profileSettingItemsModel3.dispose();
    profileSettingItemsModel4.dispose();
    profileSettingItemsModel5.dispose();
    profileSettingItemsModel6.dispose();
    profileSettingItemsModel7.dispose();
    profileSettingItemsModel8.dispose();
    profileSettingItemsModel9.dispose();
    profileSettingItemsModel10.dispose();
    profileSettingDetailItemsModel1.dispose();
    profileSettingItemsModel11.dispose();
    profileSettingItemsModel12.dispose();
    profileSettingDetailItemsModel2.dispose();
    profileSettingDetailItemsModel3.dispose();
    profileSettingItemsModel13.dispose();
    profileSettingItemsModel14.dispose();
    profileSettingItemsModel15.dispose();
    profileSettingItemsModel16.dispose();
    navBarModel.dispose();
  }
}
