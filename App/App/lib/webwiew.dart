import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewApp extends StatefulWidget {
  const WebViewApp({super.key});

  @override
  State<WebViewApp> createState() => _WebViewAppState();
}

class _WebViewAppState extends State<WebViewApp> {
  late final WebViewController _controller;

  @override
  void initState() {
    super.initState();
    _controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(
        Uri.parse(
            'https://iboard.ssi.com.vn/tradingview/?symbol=ACB&amp;language=vi&amp;interval=D&amp;theme=classic&amp;target=tradingViewStockDetail&amp;autoSave=1&amp;forceTVChart=1&amp;timescaleMarks=1'),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter WebView'),
      ),
      body: Container(
        child: WebViewWidget(
          controller: _controller,
        ),
      ),
    );
  }
}
