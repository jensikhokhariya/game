import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Page2 extends StatefulWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  bool isvisible = false;

  @override
  Widget build(BuildContext context) {
    String g1 = ModalRoute.of(context)!.settings.arguments as String;
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            WebView(
              javascriptMode: JavascriptMode.unrestricted,
              initialUrl: g1,
              onProgress: (a) {
                if (a == 100) {
                  setState(() {
                    isvisible = false;
                  });
                }
              },
            ),
            Center(
              child: Visibility(
                visible: isvisible,
                child: CircularProgressIndicator(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
