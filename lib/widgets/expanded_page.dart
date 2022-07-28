import 'package:flutter/material.dart';

class ExpandedPage extends StatefulWidget {
  const ExpandedPage({Key? key}) : super(key: key);

  static const routeName = '/expandedPage';

  @override
  State<ExpandedPage> createState() => _ExpandedPageState();
}

class _ExpandedPageState extends State<ExpandedPage> {
  final String title = 'Expanded';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    color: Colors.red,
                    child: const Center(
                      child: Text(
                        '1',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                            fontWeight: FontWeight.w900),
                      ),
                    ),
                  ),
                  Container(
                    height: 60,
                    width: 60,
                    color: Colors.blue,
                    child: const Center(
                      child: Text(
                        '2',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                            fontWeight: FontWeight.w900),
                      ),
                    ),
                  ),
                  Container(
                    height: 60,
                    width: 60,
                    color: Colors.green,
                    child: const Center(
                      child: Text(
                        '3',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                            fontWeight: FontWeight.w900),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                children: [
                  Expanded(
                      child: Container(
                    height: 60,
                    width: 60,
                    color: Colors.red,
                    child: const Center(
                      child: Text(
                        '1',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                            fontWeight: FontWeight.w900),
                      ),
                    ),
                  )),
                  Container(
                    height: 60,
                    width: 60,
                    color: Colors.blue,
                    child: const Center(
                      child: Text(
                        '2',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                            fontWeight: FontWeight.w900),
                      ),
                    ),
                  ),
                  Container(
                    height: 60,
                    width: 60,
                    color: Colors.green,
                    child: const Center(
                      child: Text(
                        '3',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                            fontWeight: FontWeight.w900),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    color: Colors.red,
                    child: const Center(
                      child: Text(
                        '1',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                            fontWeight: FontWeight.w900),
                      ),
                    ),
                  ),
                  Expanded(
                      child: Container(
                    height: 60,
                    width: 60,
                    color: Colors.blue,
                    child: const Center(
                      child: Text(
                        '2',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                            fontWeight: FontWeight.w900),
                      ),
                    ),
                  )),
                  Container(
                    height: 60,
                    width: 60,
                    color: Colors.green,
                    child: const Center(
                      child: Text(
                        '3',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                            fontWeight: FontWeight.w900),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    color: Colors.red,
                    child: const Center(
                      child: Text(
                        '1',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                            fontWeight: FontWeight.w900),
                      ),
                    ),
                  ),
                  Container(
                    height: 60,
                    width: 60,
                    color: Colors.blue,
                    child: const Center(
                      child: Text(
                        '2',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                            fontWeight: FontWeight.w900),
                      ),
                    ),
                  ),
                  Expanded(
                      child: Container(
                    height: 60,
                    width: 60,
                    color: Colors.green,
                    child: const Center(
                      child: Text(
                        '3',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                            fontWeight: FontWeight.w900),
                      ),
                    ),
                  ))
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                children: [
                  Expanded(
                      child: Container(
                    height: 60,
                    width: 60,
                    color: Colors.red,
                    child: const Center(
                      child: Text(
                        '1',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                            fontWeight: FontWeight.w900),
                      ),
                    ),
                  )),
                  Expanded(
                      child: Container(
                    height: 60,
                    width: 60,
                    color: Colors.blue,
                    child: const Center(
                      child: Text(
                        '2',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                            fontWeight: FontWeight.w900),
                      ),
                    ),
                  )),
                  Expanded(
                      child: Container(
                    height: 60,
                    width: 60,
                    color: Colors.green,
                    child: const Center(
                      child: Text(
                        '3',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                            fontWeight: FontWeight.w900),
                      ),
                    ),
                  ))
                ],
              ),
            ],
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
