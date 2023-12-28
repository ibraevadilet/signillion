import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:signature/signature.dart';
import 'package:signillion/core/images/app_images.dart';
import 'package:signillion/features/pages/edit/edit_page.dart';
import 'package:signillion/theme/app_colors.dart';
import 'package:signillion/theme/app_text_styles.dart';
import 'package:signillion/widgets/app_unfocuser.dart';
import 'package:signillion/widgets/spaces.dart';

class EdiDrawPage extends StatefulWidget {
  const EdiDrawPage({super.key});
  @override
  State<EdiDrawPage> createState() => _EdiDrawPageState();
}

class _EdiDrawPageState extends State<EdiDrawPage> {
  int index = 1;

  late SignatureController controller;

  @override
  void initState() {
    controller = SignatureController(
      penColor: AppColors.colorBlue0821AE,
      penStrokeWidth: 3,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AppUnfocuser(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 70, left: 12, right: 25),
              child: Row(
                children: [
                  const SizedBox(width: 10),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const EditPage(),
                        ),
                      );
                    },
                    child: Text(
                      'Cancel',
                      style: AppTextStyles.s16W500(
                          color: AppColors.colorBlue0821AE),
                    ),
                  ),
                  const Spacer(),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const EditPage(),
                        ),
                      );
                    },
                    child: Text(
                      'Done',
                      style: AppTextStyles.s16W500(
                          color: AppColors.colorBlue0821AE),
                    ),
                  ),
                ],
              ),
            ),
            const Divider(
              thickness: 1.50,
              height: 30,
              color: AppColors.colorGreyD9D9D9,
            ),
            const SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    controller.clear();
                    setState(() {});
                  },
                  child: SvgPicture.asset(AppImages.faIconSvg),
                ),
                const SizedBox(width: 20),
                InkWell(
                  onTap: () {
                    controller.undo();
                    setState(() {});
                  },
                  child: SvgPicture.asset(AppImages.leftIconSvg),
                ),
                const SizedBox(width: 25),
                InkWell(
                  onTap: () {
                    controller.redo();
                    setState(() {});
                  },
                  child: SvgPicture.asset(AppImages.rigIconSvg),
                ),
              ],
            ),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Center(
                child: Container(
                  height: 272,
                  width: context.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: AppColors.color10GreyECECEC,
                  ),
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(5),
                          topRight: Radius.circular(5),
                        ),
                        child: Signature(
                          controller: controller,
                          width: context.width,
                          height: 210,
                          backgroundColor: AppColors.color10GreyECECEC,
                        ),
                      ),
                      Text(
                        '_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _',
                        style: AppTextStyles.s14W400(
                          color: AppColors.colorGrey9A9A9A,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        'Draw your signature here',
                        style: AppTextStyles.s14W500(
                          color: AppColors.color10GreyAAAAAA,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const Spacer(),
            Row(
              children: [
                const Spacer(),
                InkWell(
                  onTap: () {
                    index = 1;
                    setState(() {});
                    controller = SignatureController(
                      penColor: AppColors.colorBlue0821AE,
                      penStrokeWidth: 3,
                    );
                  },
                  child: AnimatedContainer(
                    height: index == 1 ? 45 : 31,
                    width: index == 1 ? 45 : 31,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        5,
                      ),
                      color: AppColors.colorBlue0821AE,
                    ),
                    duration: const Duration(seconds: 0),
                  ),
                ),
                const SizedBox(width: 10),
                InkWell(
                  onTap: () {
                    index = 2;
                    setState(() {});
                    controller = SignatureController(
                      penColor: AppColors.colorGrey474747,
                      penStrokeWidth: 3,
                    );
                  },
                  child: AnimatedContainer(
                    height: index == 2 ? 45 : 31,
                    width: index == 2 ? 45 : 31,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        5,
                      ),
                      color: AppColors.colorGrey474747,
                    ),
                    duration: const Duration(seconds: 0),
                  ),
                ),
                const SizedBox(width: 10),
                InkWell(
                  onTap: () {
                    index = 3;
                    setState(() {});
                    controller = SignatureController(
                      penColor: AppColors.colorGreyD9D9D9,
                      penStrokeWidth: 3,
                    );
                  },
                  child: AnimatedContainer(
                    height: index == 3 ? 45 : 31,
                    width: index == 3 ? 45 : 31,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        5,
                      ),
                      color: AppColors.colorGreyD9D9D9,
                    ),
                    duration: const Duration(seconds: 0),
                  ),
                ),
                const SizedBox(width: 20),
              ],
            ),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
