import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:signature/signature.dart';
import 'package:signillion/features/pages/edit/edit_page.dart';
import 'package:signillion/theme/app_colors.dart';
import 'package:signillion/theme/app_text_styles.dart';
import 'package:signillion/widgets/app_unfocuser.dart';
import 'package:signillion/widgets/custom_text_fields_Two.dart';
import 'package:signillion/widgets/spaces.dart';

class EdiTypePage extends StatefulWidget {
  const EdiTypePage({super.key});
  @override
  State<EdiTypePage> createState() => _EdiTypePageState();
}

class _EdiTypePageState extends State<EdiTypePage> {
  int index = 1;

  SignatureController controller = SignatureController(
    penColor: AppColors.colorBlue0821AE,
    penStrokeWidth: 3,
  );

  final TextEditingController controllerOne = TextEditingController();
  String titel = '';

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
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: CustomTextFieldTwo(
                onChanged: (val) {
                  titel = val;
                  setState(() {});
                },
                controller: controllerOne,
                fillColor: AppColors.colorGreyEAEAEA,
                isFilled: true,
                widthBorder: 0,
                hintText: 'Type your name',
                hintStyle: AppTextStyles.s16W400(
                  color: Colors.black.withOpacity(0.60),
                ),
              ),
            ),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                height: 154,
                width: context.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: AppColors.color10GreyECECEC,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: FittedBox(
                      child: Text(
                        titel,
                        style: GoogleFonts.sacramento(
                          fontSize: 40,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
