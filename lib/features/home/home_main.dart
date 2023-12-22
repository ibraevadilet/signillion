import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:signillion/core/images/app_images.dart';
import 'package:signillion/theme/app_colors.dart';
import 'package:signillion/theme/app_text_styles.dart';
import 'package:signillion/widgets/spaces.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          BottomButtomItem(
            isSelected: true,
            right: true,
            title: 'Documents',
            onTap: () {},
          ),
          BottomButtomItem(
            title: 'Tasks',
            onTap: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
            child: Row(
              children: [
                CardWidget(
                  isSelected: true,
                  count: 3,
                  title: 'Waiting for',
                  subTitle: 'Me',
                  onTap: () {},
                ),
                CardWidget(
                  isSelected: false,
                  count: 5,
                  title: 'Drafts',
                  subTitle: '',
                  onTap: () {},
                ),
                CardWidget(
                  isSelected: false,
                  count: 7,
                  title: 'Signed',
                  subTitle: '',
                  onTap: () {},
                ),
              ],
            ),
          ),
          const SizedBox(height: 12),
          Expanded(
            child: ListView.separated(
              itemCount: 11,
              separatorBuilder: (context, index) => const Divider(
                thickness: 2,
                color: AppColors.colorGreyD9D9D9,
              ),
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  children: [
                    SvgPicture.asset(
                      AppImages.docMainSvg,
                    ),
                    const SizedBox(width: 22),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'CR7 Agreement',
                          style: AppTextStyles.s16WBold(),
                        ),
                        Text(
                          'Jan 30, 2023 at 10:15PM',
                          style: AppTextStyles.s14Wbold(
                            color: Colors.black.withOpacity(0.52),
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    SvgPicture.asset(AppImages.moreIconSvg)
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class BottomButtomItem extends StatelessWidget {
  const BottomButtomItem({
    super.key,
    this.right = false,
    this.isSelected = false,
    required this.title,
    required this.onTap,
  });

  final bool right;
  final bool isSelected;
  final String title;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: IntrinsicHeight(
        child: InkWell(
          onTap: onTap,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                width: 1,
                color: AppColors.colorGreyD9D9D9,
              ),
              borderRadius: right
                  ? const BorderRadius.only(
                      topRight: Radius.circular(12),
                    )
                  : const BorderRadius.only(
                      topLeft: Radius.circular(12),
                    ),
            ),
            child: Column(
              children: [
                const SizedBox(height: 12),
                const Icon(Icons.add),
                const SizedBox(height: 12),
                const Divider(height: 1, thickness: 1),
                const SizedBox(height: 16),
                SvgPicture.asset(
                  AppImages.docMainSvg,
                  height: 30,
                  color: isSelected ? AppColors.colorBlue0821AE : null,
                ),
                const SizedBox(height: 12),
                Text(
                  title,
                  style: AppTextStyles.s14W400(
                    color: isSelected ? AppColors.colorBlue0821AE : null,
                  ),
                ),
                SizedBox(height: context.hasBottomPadding ? 40 : 12),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CardWidget extends StatelessWidget {
  const CardWidget({
    super.key,
    required this.isSelected,
    required this.count,
    required this.title,
    required this.subTitle,
    required this.onTap,
  });

  final bool isSelected;
  final int count;
  final String title;
  final String subTitle;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Card(
          color: isSelected
              ? AppColors.colorBlueDDE8FD
              : AppColors.colorGreyEAEAEA,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Column(
              children: [
                Text(
                  count.toString(),
                  style: AppTextStyles.s60W900(
                      color: AppColors.color100Blue0921B0),
                ),
                Text(
                  title,
                  style: AppTextStyles.s16WBold(),
                  textAlign: TextAlign.center,
                ),
                Text(
                  subTitle,
                  style: AppTextStyles.s16WBold(),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
