import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:signillion/theme/app_colors.dart';
import 'package:signillion/theme/app_text_styles.dart';
import 'package:signillion/widgets/bottom_buttons/bottom_buttons.dart';
import 'package:signillion/widgets/list_documents_item_widget.dart';

class Documents extends StatefulWidget {
  const Documents({super.key});
  @override
  State<Documents> createState() => _DocumentsState();
}

class _DocumentsState extends State<Documents> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomButtons(
        isLeftActive: true,
      ),
      body: DefaultTabController(
        length: 2,
        child: Column(
          children: [
            const SizedBox(height: 12),
            Center(
              child: Container(
                height: 45,
                width: 360,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: AppColors.colorGreyfromARGB,
                  boxShadow: const [
                    BoxShadow(
                      offset: Offset(0, 6),
                      color: AppColors.colorGrey9A9A9A,
                      blurRadius: 10,
                      inset: true,
                    ),
                  ],
                ),
                child: TabBar(
                  indicatorSize: TabBarIndicatorSize.tab,
                  labelColor: Colors.black,
                  labelStyle: AppTextStyles.s16W500(),
                  unselectedLabelColor: Colors.black,
                  unselectedLabelStyle: AppTextStyles.s16W500(),
                  indicator: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  tabs: const [
                    Tab(
                      text: 'My documents',
                    ),
                    Tab(
                      text: 'Shared',
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  ListView.separated(
                    itemCount: 4,
                    separatorBuilder: (context, index) => const Divider(
                      thickness: 2,
                      color: AppColors.colorGreyD9D9D9,
                    ),
                    itemBuilder: (context, index) => const ListDocumentsItem(),
                  ),
                  ListView.separated(
                    itemCount: 6,
                    separatorBuilder: (context, index) => const Divider(
                      thickness: 2,
                      color: AppColors.colorGreyD9D9D9,
                    ),
                    itemBuilder: (context, index) => const ListDocumentsItem(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
