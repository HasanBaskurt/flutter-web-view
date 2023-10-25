import 'package:flutter/material.dart';

import 'package:webview_flutter/webview_flutter.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});

  final flutterDevController = WebViewController()
    ..loadRequest(Uri.parse('https://pub.dev'));
  final youtubeController = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..loadRequest(Uri.parse('https://www.youtube.com/@hasanbaskurt2830'));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text(
          'Web View',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueAccent.shade700,
      ),
      body: Container(
        color: Colors.blueAccent.shade100,
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Expanded(
              flex: 5,
              child: Column(
                children: [
                  Expanded(
                    child: ListTile(
                      leading: Icon(
                        Icons.code,
                        color: Colors.blueAccent.shade700,
                        size: 45,
                      ),
                      title: const Text(
                        'Pub Dev',
                        style: TextStyle(fontSize: 30, color: Colors.white),
                      ),
                    ),
                  ),
                  Expanded(
                      flex: 5,
                      child: WebViewWidget(controller: flutterDevController)),
                ],
              ),
            ),
            const Spacer(),
            Expanded(
              flex: 5,
              child: Column(
                children: [
                  Expanded(
                    child: ListTile(
                      leading: Icon(
                        Icons.play_circle_fill,
                        color: Colors.redAccent.shade700,
                        size: 45,
                      ),
                      title: Text(
                        'YouTube',
                        style: TextStyle(
                            fontSize: 30, color: Colors.redAccent.shade700),
                      ),
                    ),
                  ),
                  Expanded(
                      flex: 5,
                      child: WebViewWidget(controller: youtubeController)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
