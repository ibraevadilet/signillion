import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_picker/image_picker.dart';
import 'package:signillion/core/formatters/shapes.dart';
import 'package:signillion/core/images/app_images.dart';
import 'package:signillion/routes/mobile_auto_router.gr.dart';
import 'package:signillion/theme/app_colors.dart';
import 'package:signillion/theme/app_text_styles.dart';
import 'package:signillion/widgets/bottom_top_widget.dart';
import 'package:signillion/widgets/spaces.dart';

Future<Widget?> showAddSignatureSheet(BuildContext context) async {
  Widget? resultWidget;
  await showModalBottomSheet(
    isScrollControlled: true,
    context: context,
    shape: AppShapes.bottomNavigatorShape(),
    builder: (context) => Stack(
      alignment: Alignment.topCenter,
      children: [
        Container(
          padding: const EdgeInsets.only(left: 15, right: 10, top: 55),
          decoration: const BoxDecoration(
            color: AppColors.colorBlue0821AE,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          width: context.width,
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            child: SafeArea(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 40),
                  InkWell(
                    onTap: () async {
                      final result = await context.router
                          .push(const DocumentDrawSignatureRoute());

                      resultWidget = result as Widget?;
                      if (result != null) {
                        Navigator.pop(context);
                      }
                    },
                    child: Row(
                      children: [
                        const SizedBox(width: 20),
                        SvgPicture.asset(
                          AppImages.drawIconSvg,
                          width: 30,
                        ),
                        const SizedBox(width: 10),
                        Text(
                          'Draw Signature',
                          style: AppTextStyles.s16W500(
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 15),
                  InkWell(
                    onTap: () async {
                      final result = await context.router
                          .push(const DocumentTypeSignatureRoute());

                      resultWidget = result as Widget?;
                      if (result != null) {
                        Navigator.pop(context);
                      }
                    },
                    child: Row(
                      children: [
                        const SizedBox(width: 23),
                        SvgPicture.asset(
                          AppImages.abcIconSvg,
                          width: 25,
                        ),
                        const SizedBox(width: 10),
                        Text(
                          'Type Signature',
                          style: AppTextStyles.s16W500(
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 15),
                  InkWell(
                    onTap: () async {
                      final ImagePicker picker = ImagePicker();
                      final result =
                          await picker.pickImage(source: ImageSource.gallery);
                      if (result != null) {
                        Image img = Image.file(File(result.path));
                        resultWidget = img;
                        Navigator.pop(context);
                      }
                    },
                    child: Row(
                      children: [
                        const SizedBox(width: 26),
                        SvgPicture.asset(
                          AppImages.uploadIconSvg,
                          width: 16,
                        ),
                        const SizedBox(width: 15),
                        Text(
                          'Upload Signature',
                          style: AppTextStyles.s16W500(
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 15),
                ],
              ),
            ),
          ),
        ),
        const BottomTopWidget(),
        Positioned(
          left: 15,
          top: 25,
          child: Text(
            'Add Signature',
            style: AppTextStyles.s18Wbold(color: Colors.white),
          ),
        ),
      ],
    ),
  );
  return resultWidget;
}
