import 'package:cyy_widget_week/widgets/expanded_page.dart';
import 'package:cyy_widget_week/widgets/safeArea_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Widget of the Week'),
      routes: {
        SafeAreaPage.routeName: (context) => const SafeAreaPage(),
        ExpandedPage.routeName: (context) => const ExpandedPage(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Widget _tile(String name, String description, String routeName) {
    return InkWell(
      onTap: () {},
      child: Card(
        margin: const EdgeInsets.fromLTRB(10.0, 15.0, 15.0, 0.0),
        elevation: 5.0,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
        child: InkWell(
          splashColor: Colors.blue.withAlpha(30),
          onTap: () {
            Navigator.pushNamed(context, routeName);
          },
          child: SizedBox(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 10.0),
                  child: Text(name,
                      style: const TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 20.0,
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 10.0),
                  child: Text(description,
                      style: const TextStyle(
                        fontSize: 16.0,
                        color: Color(0xFF999999),
                      )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        children: [
          _tile('SafeArea', 'SafeArea 工具可以避免讨厌的消息通知栏和不规则的手机屏幕干扰 UI 的正常显示。',
              SafeAreaPage.routeName),
          _tile('Expanded', 'Expanded 将改变发送给行和列的子项的约束，指示它们填补可用的空间。',
              ExpandedPage.routeName),
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
