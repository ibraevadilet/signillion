import 'package:flutter/material.dart';
import 'package:signillion/core/formatters/shapes.dart';
import 'package:signillion/core/functions/push_router_func.dart';
import 'package:signillion/core/images/app_images.dart';
import 'package:signillion/routes/mobile_auto_router.gr.dart';
import 'package:signillion/theme/app_colors.dart';
import 'package:signillion/widgets/bottom_top_widget.dart';
import 'package:signillion/widgets/document_settings_padding_dateil.dart';
import 'package:signillion/widgets/list_documents_item_widget.dart';
import 'package:signillion/widgets/spaces.dart';

Future<void> showDocumentSettingsSheet(BuildContext context) async {
  await showModalBottomSheet(
    isScrollControlled: true,
    context: context,
    shape: AppShapes.bottomNavigatorShape(),
    builder: (context) => Stack(
      alignment: Alignment.topCenter,
      children: [
        Container(
          padding: const EdgeInsets.only(left: 15, right: 10, top: 25),
          decoration: const BoxDecoration(
            color: AppColors.colorBlue0821AE,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          width: context.width,
          child: DraggableScrollableSheet(
            maxChildSize: 0.8,
            minChildSize: 0.4,
            initialChildSize: 0.8,
            expand: false,
            builder: (BuildContext context, ScrollController scrollController) {
              return Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: SingleChildScrollView(
                  physics: const ClampingScrollPhysics(),
                  controller: scrollController,
                  child: Column(
                    children: [
                      const ListDocumentsItem(
                        isActive: false,
                      ),
                      const Divider(
                        thickness: 2,
                        color: AppColors.colorGreyD9D9D9,
                      ),
                      Column(
                        children: [
                          DocumentSettingsPaddingDateil(
                            title: 'Invite to Sign',
                            icon: AppImages.userAddIconSvg,
                            onTap: () {
                              AppRouting.pushFunction(
                                const InviteToSingRoute(),
                              );
                            },
                          ),
                          DocumentSettingsPaddingDateil(
                            title: 'Email a copy',
                            icon: AppImages.messageIconSvg,
                            onTap: () {
                              AppRouting.pushFunction(const EmailACopyRoute());
                            },
                          ),
                          DocumentSettingsPaddingDateil(
                            title: 'Edit',
                            icon: AppImages.editIconSvg,
                            onTap: () {
                              AppRouting.pushFunction(
                                const DocumentEditMainRoute(),
                              );
                            },
                          ),
                          DocumentSettingsPaddingDateil(
                            title: 'Share',
                            icon: AppImages.shareIconSvg,
                            onTap: () {
                              AppRouting.pushFunction(
                                const DocumentShareRoute(),
                              );
                            },
                          ),
                          DocumentSettingsPaddingDateil(
                            title: 'Document details',
                            icon: AppImages.documentsDateilIconSvg,
                            onTap: () {
                              AppRouting.pushFunction(
                                const DocumetDateilRoute(),
                              );
                            },
                          ),
                          DocumentSettingsPaddingDateil(
                            title: 'Download',
                            icon: AppImages.dowlandIconSvg,
                            onTap: () {},
                          ),
                          DocumentSettingsPaddingDateil(
                            title: 'Print',
                            icon: AppImages.printIconSvg,
                            onTap: () {},
                          ),
                          DocumentSettingsPaddingDateil(
                            widthText: 13,
                            left: 27,
                            widthIcon: 18,
                            title: 'Archive',
                            icon: AppImages.bookIconSvg,
                            onTap: () {
                              AppRouting.pushAndPopUntilFunction(
                                HiddenDrawerRoute(initScreen: 4),
                              );
                            },
                          ),
                          DocumentSettingsPaddingDateil(
                            widthText: 13,
                            left: 28,
                            widthIcon: 16,
                            title: 'Make a Template',
                            icon: AppImages.makeIconSvg,
                            onTap: () {},
                          ),
                          DocumentSettingsPaddingDateil(
                            widthText: 13,
                            left: 27,
                            title: 'Move',
                            icon: AppImages.moveIconSvg,
                            onTap: () {
                              AppRouting.pushFunction(
                                const DocumentMoveToRoute(),
                              );
                            },
                          ),
                        ],
                      ),
                      const Divider(
                        thickness: 2,
                        color: AppColors.colorGreyD9D9D9,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          DocumentSettingsPaddingDateil(
                            top: 15,
                            title: 'History',
                            icon: AppImages.timeIconSvg,
                            onTap: () {
                              AppRouting.pushFunction(const HistoryRoute());
                            },
                          ),
                          DocumentSettingsPaddingDateil(
                            title: 'Rename',
                            icon: AppImages.terminalIconSvg,
                            onTap: () {},
                          ),
                          DocumentSettingsPaddingDateil(
                            widthIcon: 27,
                            title: 'Duplicate',
                            icon: AppImages.folderIconSvg,
                            onTap: () {
                              AppRouting.pushFunction(const DuplicateRoute());
                            },
                          ),
                          DocumentSettingsPaddingDateil(
                            widthText: 13,
                            left: 28.50,
                            widthIcon: 18,
                            title: 'Delete',
                            icon: AppImages.deleteIconSvg,
                            onTap: () {
                              AppRouting.pushFunction(const DeleteRoute());
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
        const BottomTopWidget(),
      ],
    ),
  );
}
