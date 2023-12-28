import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:signature/signature.dart';
import 'package:signillion/features/document_view/presentation/document_edit_screens/widgets/cancel_done_widgets.dart';
import 'package:signillion/theme/app_colors.dart';
import 'package:signillion/theme/app_text_styles.dart';
import 'package:signillion/widgets/app_unfocuser.dart';
import 'package:signillion/widgets/custom_text_fields_Two.dart';
import 'package:signillion/widgets/spaces.dart';
import 'package:widgets_to_image/widgets_to_image.dart';

@RoutePage()
class DocumentTypeSignatureScreen extends StatefulWidget {
  const DocumentTypeSignatureScreen({super.key});
  @override
  State<DocumentTypeSignatureScreen> createState() =>
      _DocumentTypeSignatureScreenState();
}

class _DocumentTypeSignatureScreenState
    extends State<DocumentTypeSignatureScreen> {
  int index = 1;

  SignatureController controller = SignatureController(
    penColor: AppColors.colorBlue0821AE,
    penStrokeWidth: 3,
  );

  final TextEditingController controllerOne = TextEditingController();
  WidgetsToImageController imageController = WidgetsToImageController();
  String titel = '';
  Image? img;

  @override
  Widget build(BuildContext context) {
    return AppUnfocuser(
      child: Scaffold(
        body: Column(
          children: [
            CancelDoneWidgets(
              onDone: () async {
                final bytes = await imageController.capture();
                if (bytes != null) {
                  img = Image.memory(bytes);
                  Navigator.of(context).pop(img);
                } else {
                  Navigator.pop(context);
                }
              },
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: CustomTextFieldTwo(
                maxLines: 1,
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
                    child: titel.length > 10
                        ? FittedBox(
                            child: WidgetsToImage(
                              controller: imageController,
                              child: Text(
                                titel,
                                style: GoogleFonts.sacramento(
                                  fontSize: 40,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          )
                        : WidgetsToImage(
                            controller: imageController,
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
