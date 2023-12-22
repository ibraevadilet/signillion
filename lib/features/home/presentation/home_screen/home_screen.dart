import 'package:flutter/material.dart';
import 'package:signillion/features/home/presentation/home_screen/widgets/card_widget.dart';
import 'package:signillion/theme/app_colors.dart';
import 'package:signillion/widgets/bottom_buttons/bottom_buttons.dart';
import 'package:signillion/widgets/list_documents_item_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomButtons(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
            child: Row(
              children: [
                CardWidget(
                  isSelected: index == 1,
                  count: 3,
                  title: 'Waiting for',
                  subTitle: 'Me',
                  onTap: () {
                    setState(() {
                      index = 1;
                    });
                  },
                ),
                CardWidget(
                  isSelected: index == 2,
                  count: 5,
                  title: 'Drafts',
                  subTitle: '',
                  onTap: () {
                    setState(() {
                      index = 2;
                    });
                  },
                ),
                CardWidget(
                  isSelected: index == 3,
                  count: 7,
                  title: 'Signed',
                  subTitle: '',
                  onTap: () {
                    setState(() {
                      index = 3;
                    });
                  },
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
              itemBuilder: (context, index) => const ListDocumentsItem(),
            ),
          ),
        ],
      ),
    );
  }
}
