import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';
import 'package:signillion/core/functions/push_router_func.dart';
import 'package:signillion/features/document_view/presentation/widgets/document_header.dart';

@RoutePage()
class DocumentShareScreen extends StatefulWidget {
  const DocumentShareScreen({super.key});

  @override
  State<DocumentShareScreen> createState() => _DocumentShareScreenState();
}

class _DocumentShareScreenState extends State<DocumentShareScreen> {
  @override
  void initState() {
    Share.share(
      'https://www.supersprint.com/public/img/01-504900-504930-504960-504990-505020.jpg',
    ).then((value) => AppRouting.popFunction());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IgnorePointer(
        child: Container(
          color: Colors.black.withOpacity(0.3),
          child: const DocumentHeader(),
        ),
      ),
    );
  }
}
