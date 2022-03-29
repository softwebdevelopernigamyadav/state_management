import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/home_page_provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("State Management demo"),
      ),
      body: SafeArea(
        child: Consumer<HomePageProvider>(
          builder: (context, provider, child) {
            return Column(
              children: [
                TextField(
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(hintText: 'Enter ur age'),
                  onChanged: (val) {
                    provider.checkEligibility(int.parse(val));
                  },
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
