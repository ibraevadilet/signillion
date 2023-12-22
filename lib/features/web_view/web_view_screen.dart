import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:signillion/widgets/custom_app_bar.dart';
import 'package:webview_flutter/webview_flutter.dart';

@RoutePage()
class WebViewScreen extends StatefulWidget {
  final String url;
  final String title;

  const WebViewScreen({
    Key? key,
    required this.title,
    required this.url,
  }) : super(key: key);

  @override
  State<WebViewScreen> createState() => _WebViewScreenState();
}

class _WebViewScreenState extends State<WebViewScreen> {
  late final controller = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..loadRequest(Uri.parse(widget.url));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: widget.title),
      body: WebViewWidget(
        controller: controller,
      ),
    );
  }
}
