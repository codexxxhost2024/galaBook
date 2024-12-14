import '/components/modals/taxes_modal/taxes_modal_widget.dart';
import '/components/nav_bar/nav_bar_widget.dart';
import '/components/profile_setting_detail_items/profile_setting_detail_items_widget.dart';
import '/components/profile_setting_items/profile_setting_items_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'profile_model.dart';
export 'profile_model.dart';

class ProfileWidget extends StatefulWidget {
  const ProfileWidget({super.key});

  @override
  State<ProfileWidget> createState() => _ProfileWidgetState();
}

class _ProfileWidgetState extends State<ProfileWidget> {
  late ProfileModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProfileModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    child: Stack(
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: SingleChildScrollView(
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          24.0, 0.0, 24.0, 0.0),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                        ),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Expanded(
                                              child: Text(
                                                'Profile',
                                                maxLines: 1,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .displayMedium
                                                        .override(
                                                          fontFamily: 'SFPRO',
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts: false,
                                                        ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          24.0, 0.0, 24.0, 0.0),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                        ),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Flexible(
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                children: [
                                                  Container(
                                                    width: 50.0,
                                                    height: 50.0,
                                                    clipBehavior:
                                                        Clip.antiAlias,
                                                    decoration: BoxDecoration(
                                                      shape: BoxShape.circle,
                                                    ),
                                                    child: Image.network(
                                                      'https://picsum.photos/seed/495/600',
                                                      fit: BoxFit.contain,
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  16.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Expanded(
                                                                child: Text(
                                                                  'Lawrence',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'SFPRO',
                                                                        letterSpacing:
                                                                            0.0,
                                                                        useGoogleFonts:
                                                                            false,
                                                                      ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Expanded(
                                                                child: Text(
                                                                  'Show profile',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'SFPRO',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        useGoogleFonts:
                                                                            false,
                                                                      ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ].divide(SizedBox(
                                                            height: 8.0)),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            FlutterFlowIconButton(
                                              borderRadius: 10.0,
                                              borderWidth: 1.0,
                                              buttonSize: 40.0,
                                              icon: Icon(
                                                FFIcons.kchevronRight,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                size: 20.0,
                                              ),
                                              onPressed: () {
                                                print('IconButton pressed ...');
                                              },
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          24.0, 0.0, 24.0, 0.0),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          boxShadow: [
                                            BoxShadow(
                                              blurRadius: 20.0,
                                              color: Color(0x33000000),
                                              offset: Offset(
                                                0.0,
                                                10.0,
                                              ),
                                              spreadRadius: 4.0,
                                            )
                                          ],
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                          border: Border.all(
                                            color: FlutterFlowTheme.of(context)
                                                .neutral05,
                                          ),
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.all(24.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Expanded(
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment
                                                          .stretch,
                                                  children: [
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Expanded(
                                                          child: Text(
                                                            'Your Place, Your Space',
                                                            maxLines: 2,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .titleMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'SFPRO',
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts:
                                                                      false,
                                                                ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Expanded(
                                                          child: Text(
                                                            'Apartment Rentals Made Simple!',
                                                            maxLines: 2,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .titleSmall
                                                                .override(
                                                                  fontFamily:
                                                                      'SFPRO',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts:
                                                                      false,
                                                                ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ].divide(
                                                      SizedBox(height: 12.0)),
                                                ),
                                              ),
                                              ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(0.0),
                                                child: Image.asset(
                                                  'assets/images/Slice_1.png',
                                                  width: 100.0,
                                                  height: 70.0,
                                                  fit: BoxFit.contain,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          24.0, 0.0, 24.0, 0.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Expanded(
                                                child: Text(
                                                  'Account setting',
                                                  maxLines: 1,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .headlineMedium
                                                      .override(
                                                        fontFamily: 'SFPRO',
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts: false,
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          wrapWithModel(
                                            model: _model
                                                .profileSettingItemsModel1,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: ProfileSettingItemsWidget(
                                              icon: Icon(
                                                FFIcons.kuserCircle,
                                              ),
                                              title: 'Personal information',
                                              activeDivider: false,
                                            ),
                                          ),
                                          wrapWithModel(
                                            model: _model
                                                .profileSettingItemsModel2,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: ProfileSettingItemsWidget(
                                              icon: Icon(
                                                FFIcons.kcash,
                                              ),
                                              title: 'Payments and payouts',
                                              activeDivider: false,
                                            ),
                                          ),
                                          InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              await showModalBottomSheet(
                                                isScrollControlled: true,
                                                backgroundColor:
                                                    Colors.transparent,
                                                enableDrag: false,
                                                context: context,
                                                builder: (context) {
                                                  return GestureDetector(
                                                    onTap: () {
                                                      FocusScope.of(context)
                                                          .unfocus();
                                                      FocusManager
                                                          .instance.primaryFocus
                                                          ?.unfocus();
                                                    },
                                                    child: Padding(
                                                      padding: MediaQuery
                                                          .viewInsetsOf(
                                                              context),
                                                      child: TaxesModalWidget(),
                                                    ),
                                                  );
                                                },
                                              ).then((value) =>
                                                  safeSetState(() {}));
                                            },
                                            child: wrapWithModel(
                                              model: _model
                                                  .profileSettingItemsModel3,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: ProfileSettingItemsWidget(
                                                icon: Icon(
                                                  FFIcons.kfile,
                                                ),
                                                title: 'Taxes',
                                              ),
                                            ),
                                          ),
                                          wrapWithModel(
                                            model: _model
                                                .profileSettingItemsModel4,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: ProfileSettingItemsWidget(
                                              icon: Icon(
                                                FFIcons.kshield,
                                              ),
                                              title: 'Login & security',
                                              activeDivider: false,
                                            ),
                                          ),
                                          wrapWithModel(
                                            model: _model
                                                .profileSettingItemsModel5,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: ProfileSettingItemsWidget(
                                              icon: Icon(
                                                Icons.translate,
                                              ),
                                              title: 'Translation',
                                              activeDivider: false,
                                            ),
                                          ),
                                          wrapWithModel(
                                            model: _model
                                                .profileSettingItemsModel6,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: ProfileSettingItemsWidget(
                                              icon: Icon(
                                                FFIcons.kbell,
                                              ),
                                              title: 'Notifications',
                                              activeDivider: false,
                                            ),
                                          ),
                                          wrapWithModel(
                                            model: _model
                                                .profileSettingItemsModel7,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: ProfileSettingItemsWidget(
                                              icon: Icon(
                                                FFIcons.klock,
                                              ),
                                              title: 'Privacy and sharing',
                                              activeDivider: false,
                                            ),
                                          ),
                                        ].divide(SizedBox(height: 8.0)),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          24.0, 0.0, 24.0, 0.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Expanded(
                                                child: Text(
                                                  'Housting',
                                                  maxLines: 1,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .headlineMedium
                                                      .override(
                                                        fontFamily: 'SFPRO',
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts: false,
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          wrapWithModel(
                                            model: _model
                                                .profileSettingItemsModel8,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: ProfileSettingItemsWidget(
                                              icon: Icon(
                                                FFIcons.khomePlus,
                                              ),
                                              title: 'List your space',
                                              activeDivider: false,
                                            ),
                                          ),
                                          wrapWithModel(
                                            model: _model
                                                .profileSettingItemsModel9,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: ProfileSettingItemsWidget(
                                              icon: Icon(
                                                FFIcons.kship,
                                              ),
                                              title: 'Host and experience',
                                              activeDivider: false,
                                            ),
                                          ),
                                          wrapWithModel(
                                            model: _model
                                                .profileSettingItemsModel10,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: ProfileSettingItemsWidget(
                                              icon: Icon(
                                                FFIcons.kcash,
                                              ),
                                              title: 'Payments and payouts',
                                              activeDivider: false,
                                            ),
                                          ),
                                        ].divide(SizedBox(height: 8.0)),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          24.0, 0.0, 24.0, 0.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Expanded(
                                                child: Text(
                                                  'Referrals & credits',
                                                  maxLines: 1,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .headlineMedium
                                                      .override(
                                                        fontFamily: 'SFPRO',
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts: false,
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          wrapWithModel(
                                            model: _model
                                                .profileSettingDetailItemsModel1,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child:
                                                ProfileSettingDetailItemsWidget(
                                              icon: Icon(
                                                FFIcons.khomeStats,
                                              ),
                                              title: 'Refer a Host',
                                              detail:
                                                  'Earn \$15 for every new host your refer',
                                            ),
                                          ),
                                        ].divide(SizedBox(height: 8.0)),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          24.0, 0.0, 24.0, 0.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Expanded(
                                                child: Text(
                                                  'Gala CSR',
                                                  maxLines: 1,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .headlineMedium
                                                      .override(
                                                        fontFamily: 'SFPRO',
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts: false,
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          wrapWithModel(
                                            model: _model
                                                .profileSettingItemsModel11,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: ProfileSettingItemsWidget(
                                              icon: Icon(
                                                Icons
                                                    .record_voice_over_outlined,
                                              ),
                                              title: 'Aitek VoiceMode',
                                              activeDivider: false,
                                            ),
                                          ),
                                        ].divide(SizedBox(height: 8.0)),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          24.0, 0.0, 24.0, 0.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Expanded(
                                                child: Text(
                                                  'Gala Support',
                                                  maxLines: 1,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .headlineMedium
                                                      .override(
                                                        fontFamily: 'SFPRO',
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts: false,
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          wrapWithModel(
                                            model: _model
                                                .profileSettingItemsModel12,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: ProfileSettingItemsWidget(
                                              icon: Icon(
                                                Icons.map_outlined,
                                              ),
                                              title:
                                                  'How Appartment Rental works',
                                              activeDivider: false,
                                            ),
                                          ),
                                          wrapWithModel(
                                            model: _model
                                                .profileSettingDetailItemsModel2,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child:
                                                ProfileSettingDetailItemsWidget(
                                              icon: Icon(
                                                FFIcons.kshieldQuestion,
                                              ),
                                              title: 'Safety Center',
                                              detail:
                                                  'Get the support, tools, and information you need to be safe.',
                                            ),
                                          ),
                                          wrapWithModel(
                                            model: _model
                                                .profileSettingDetailItemsModel3,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child:
                                                ProfileSettingDetailItemsWidget(
                                              icon: Icon(
                                                Icons.support_agent_rounded,
                                              ),
                                              title:
                                                  'Contact Neighborhood Support',
                                              detail:
                                                  'Let our team know about concerns related to home sharing activiity in your area. ',
                                            ),
                                          ),
                                          wrapWithModel(
                                            model: _model
                                                .profileSettingItemsModel13,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: ProfileSettingItemsWidget(
                                              icon: Icon(
                                                FFIcons.khelp,
                                              ),
                                              title: 'Get help',
                                              activeDivider: false,
                                            ),
                                          ),
                                          wrapWithModel(
                                            model: _model
                                                .profileSettingItemsModel14,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: ProfileSettingItemsWidget(
                                              icon: Icon(
                                                Icons.edit_outlined,
                                              ),
                                              title: 'Give us feedback ',
                                              activeDivider: true,
                                            ),
                                          ),
                                        ].divide(SizedBox(height: 8.0)),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          24.0, 0.0, 24.0, 0.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Expanded(
                                                child: Text(
                                                  'Legal',
                                                  maxLines: 1,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .headlineMedium
                                                      .override(
                                                        fontFamily: 'SFPRO',
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts: false,
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          wrapWithModel(
                                            model: _model
                                                .profileSettingItemsModel15,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: ProfileSettingItemsWidget(
                                              icon: Icon(
                                                FFIcons.kbook,
                                              ),
                                              title: 'Terms of Service',
                                            ),
                                          ),
                                          wrapWithModel(
                                            model: _model
                                                .profileSettingItemsModel16,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: ProfileSettingItemsWidget(
                                              icon: Icon(
                                                FFIcons.kbook,
                                              ),
                                              title: 'Privacy Policy',
                                              activeDivider: true,
                                            ),
                                          ),
                                        ].divide(SizedBox(height: 8.0)),
                                      ),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            24.0, 8.0, 24.0, 8.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Container(
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                              ),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 8.0, 8.0, 8.0),
                                                child: Text(
                                                  'Log out',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .headlineLarge
                                                      .override(
                                                        fontFamily: 'SFPRO',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        letterSpacing: 0.0,
                                                        decoration:
                                                            TextDecoration
                                                                .underline,
                                                        useGoogleFonts: false,
                                                      ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          24.0, 0.0, 24.0, 24.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Text(
                                            'VERSION 14 JUly 2023',
                                            style: FlutterFlowTheme.of(context)
                                                .labelMedium
                                                .override(
                                                  fontFamily: 'SFPRO',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  letterSpacing: 0.0,
                                                  useGoogleFonts: false,
                                                ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ]
                                      .divide(SizedBox(height: 40.0))
                                      .addToStart(SizedBox(height: 50.0)),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.0, 1.0),
                          child: wrapWithModel(
                            model: _model.navBarModel,
                            updateCallback: () => safeSetState(() {}),
                            updateOnChange: true,
                            child: NavBarWidget(
                              activePageName: 'Profile',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
