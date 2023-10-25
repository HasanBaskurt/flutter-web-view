import 'package:flutter/material.dart';
import 'package:web_view_project/home.dart';

void main() => runApp(const WebViewProject());

class WebViewProject extends StatelessWidget {
  const WebViewProject({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Material App', home: HomeView());
  }
}
