import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:signillion/core/functions/push_router_func.dart';
import 'package:signillion/core/images/app_images.dart';
import 'package:signillion/features/document_view/presentation/widgets/document_header.dart';
import 'package:signillion/routes/mobile_auto_router.gr.dart';
import 'package:signillion/theme/app_colors.dart';
import 'package:signillion/theme/app_text_styles.dart';
import 'package:signillion/widgets/app_unfocuser.dart';
import 'package:signillion/widgets/bottom_top_widget.dart';
import 'package:signillion/widgets/spaces.dart';

@RoutePage()
class DuplicateScreen extends StatefulWidget {
  const DuplicateScreen({super.key});
  @override
  State<DuplicateScreen> createState() => _DuplicateScreenState();
}

class _DuplicateScreenState extends State<DuplicateScreen> {
  @override
  Widget build(BuildContext context) {
    return AppUnfocuser(
      child: Scaffold(
        body: IgnorePointer(
          child: Container(
            color: Colors.black.withOpacity(0.3),
            child: const DocumentHeader(),
          ),
        ),
        bottomSheet: BottomSheet(
          enableDrag: false,
          backgroundColor: Colors.black.withOpacity(0.3),
          onClosing: () {},
          builder: (context) => SafeArea(
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Container(
                  decoration: const BoxDecoration(
                    color: AppColors.colorBlue0821AE,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  width: context.width,
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 15, right: 10, top: 25),
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const SizedBox(height: 10),
                          Center(
                            child: Text(
                              'Are you sure to duplicate?',
                              style: AppTextStyles.s18Wbold(
                                color: AppColors.colorGrey474747,
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                          InkWell(
                            onTap: () {
                              AppRouting.pushAndPopUntilFunction(
                                HiddenDrawerRoute(initScreen: 1),
                              );
                            },
                            child: Row(
                              children: [
                                const SizedBox(width: 20),
                                SvgPicture.asset(
                                  AppImages.trIconSvg,
                                  width: 30,
                                ),
                                const SizedBox(width: 10),
                                Text(
                                  'Yes',
                                  style: AppTextStyles.s20W400(
                                    color: AppColors.colorGrey474747,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Divider(
                            thickness: 1.50,
                            height: 20,
                            indent: 50,
                            endIndent: 10,
                            color: AppColors.colorGreyD9D9D9,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Row(
                              children: [
                                const SizedBox(width: 20),
                                SvgPicture.asset(
                                  AppImages.faIconSvg,
                                  width: 30,
                                ),
                                const SizedBox(width: 10),
                                Text(
                                  'No',
                                  style: AppTextStyles.s20W400(
                                    color: AppColors.colorGrey474747,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 40),
                        ],
                      ),
                    ),
                  ),
                ),
                const BottomTopWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
