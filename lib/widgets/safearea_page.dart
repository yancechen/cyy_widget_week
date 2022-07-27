import 'package:flutter/material.dart';

/// 安全区域：SafeArea
class SafeAreaPage extends StatefulWidget {
  const SafeAreaPage({Key? key}) : super(key: key);

  static const routeName = '/safeAreaPage';

  @override
  State<SafeAreaPage> createState() => _SafeAreaPageState();
}

class _SafeAreaPageState extends State<SafeAreaPage> {
  final String title = 'SafeArea';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// 使用SafeArea来包裹你的Widget可以保证不会被刘海屏遮挡
        body: const SafeArea(
          child: Text(
            'This is some text',
            style: TextStyle(fontSize: 18.0),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Icon(Icons.arrow_back),
        ));
  }
}
