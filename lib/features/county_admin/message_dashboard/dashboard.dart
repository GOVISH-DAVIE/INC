import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:webview_flutter/webview_flutter.dart';

class MessageDashboard extends StatefulWidget {
  const MessageDashboard({super.key});

  @override
  State<MessageDashboard> createState() => _CountyDashboardState();
}

class _CountyDashboardState extends State<MessageDashboard> {
  int _progress = 0;

  late WebViewController controller;
  @override
  void initState() {
    // TODO: implement initState
    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int progress) {
            // Update loading bar.
            setState(() {
              _progress = progress;
            });
          },
          onPageStarted: (String url) {},
          onPageFinished: (String url) {},
          onHttpError: (HttpResponseError error) {},
          onWebResourceError: (WebResourceError error) {},
          onNavigationRequest: (NavigationRequest request) {
            if (request.url.startsWith('https://www.youtube.com/')) {
              return NavigationDecision.prevent;
            }
            return NavigationDecision.navigate;
          },
        ),
      )
      ..loadRequest(Uri.parse(
          'https://metabase.cabinex.co.ke:3000/public/dashboard/000cfe9c-282e-4421-a42d-978c3354b2fb'));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Messages Dashboard ",
          style: Theme.of(context)
              .textTheme
              .headlineMedium
              ?.copyWith(fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          _progress < 100
              ? LinearProgressIndicator(value: _progress / 100)
              : const SizedBox.shrink(),
          Expanded(child: WebViewWidget(controller: controller)),
        ],
      ),
    );
  }
}
