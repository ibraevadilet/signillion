import 'package:flutter/material.dart';
import 'package:signillion/theme/app_colors.dart';
import 'package:signillion/theme/app_text_styles.dart';
import 'package:signillion/widgets/app_unfocuser.dart';
import 'package:signillion/widgets/list_documents_item_widget.dart';

class DocumetDateilsPage extends StatefulWidget {
  const DocumetDateilsPage({super.key});
  @override
  State<DocumetDateilsPage> createState() => _DocumetDateilsPageState();
}

class _DocumetDateilsPageState extends State<DocumetDateilsPage> {
  @override
  Widget build(BuildContext context) {
    return AppUnfocuser(
      child: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 20, bottom: 10),
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(
                    Icons.arrow_back_ios_new_rounded,
                    color: AppColors.colorBlue0821AE,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 10),
                child: ListDocumentsItem(
                  heightIcon: 35,
                  top: 0,
                  title: 'Sales Agreement',
                  mb: '1,2 Mb',
                  isActiveButton: true,
                  bottom: 10,
                ),
              ),
              const Divider(
                thickness: 1,
                color: AppColors.colorGreyD9D9D9,
              ),
              const SizedBox(height: 5),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      'Signers',
                      style: AppTextStyles.s16WBold(
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const SizedBox(height: 5),
                  Row(
                    children: [
                      const SizedBox(width: 20),
                      const CircleAvatar(
                        radius: 8,
                        backgroundColor: AppColors.color3EAE8F,
                      ),
                      const SizedBox(width: 10),
                      Text(
                        'ivan.borisov@gmail.com',
                        style: AppTextStyles.s15W400(
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 5),
                  Row(
                    children: [
                      const SizedBox(width: 20),
                      const CircleAvatar(
                        radius: 8,
                        backgroundColor: AppColors.color3EAE8F,
                      ),
                      const SizedBox(width: 10),
                      Text(
                        'denis.borisov@gmail.com',
                        style: AppTextStyles.s15W400(
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  const Divider(
                    thickness: 1,
                    height: 20,
                    color: AppColors.colorGreyD9D9D9,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
