import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:signillion/core/images/app_images.dart';
import 'package:signillion/features/document_view/presentation/document_edit_screens/widgets/edit_bottom_item_widget.dart';
import 'package:signillion/features/document_view/presentation/document_edit_screens/widgets/show_done_edit_sheet.dart';
import 'package:signillion/features/document_view/presentation/document_edit_screens/widgets/show_select_signature_sheet.dart';
import 'package:signillion/features/document_view/presentation/widgets/document_header.dart';
import 'package:signillion/theme/app_colors.dart';
import 'package:signillion/widgets/resizeble_widget.dart';

@RoutePage()
class DocumentEditMainScreen extends StatefulWidget {
  const DocumentEditMainScreen({super.key});

  @override
  State<DocumentEditMainScreen> createState() => _DocumentEditMainScreenState();
}

class _DocumentEditMainScreenState extends State<DocumentEditMainScreen> {
  Widget? resizebleWidget;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          DocumentHeader(
            onTap: () async {
              await showDoneEditSheet(context);
            },
          ),
          if (resizebleWidget != null)
            ResizebleWidget(
              child: resizebleWidget!,
              onDelete: () {
                setState(() {
                  resizebleWidget = null;
                });
              },
            ),
        ],
      ),
      bottomNavigationBar: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Divider(
              thickness: 1.50,
              height: 30,
              color: AppColors.colorGreyD9D9D9,
            ),
            Row(
              children: [
                const SizedBox(width: 23),
                EditBottomItemWidget(
                  onTap: () async {
                    final reslut = await showSelectSignatureSheet(context);
                    if (reslut != null) {
                      if (resizebleWidget == null) {
                        setState(() {
                          resizebleWidget = reslut;
                        });
                      }
                    }
                  },
                  title: 'Signature',
                  icon: AppImages.kaIconSvg,
                ),
                const SizedBox(width: 11),
                EditBottomItemWidget(
                  onTap: () {},
                  icon: AppImages.aaIconSvg,
                  widthIcon: 30,
                  title: 'Initials',
                  height: 13,
                ),
                const SizedBox(width: 11),
                EditBottomItemWidget(
                  onTap: () {},
                  icon: AppImages.smsTIconSvg,
                  title: 'Text',
                ),
                const SizedBox(width: 11),
                EditBottomItemWidget(
                  onTap: () {},
                  icon: AppImages.chIconSvg,
                  title: 'Date',
                ),
                const SizedBox(width: 12),
                EditBottomItemWidget(
                  onTap: () {},
                  icon: AppImages.btIconSvg,
                  widthIcon: 13.50,
                  title: 'Stamp',
                ),
              ],
            ),
            const SizedBox(height: 17),
          ],
        ),
      ),
    );
  }
}
