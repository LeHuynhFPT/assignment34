import 'package:assign34/info_view.dart';
import 'package:assign34/tabbar_view.dart';
import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  var _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return  Container(
      color: Colors.lime,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              "this is appbar",
              style: TextStyle(color: Colors.white,fontSize: 20),

            ),
            backgroundColor: Colors.blue.withOpacity(0.8),
          ),
          body: IndexedStack(
            index: _currentIndex,
            children: [
              TabBarExample(),
              InfoView(),
              Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRp4rN33PyWHKh1AnV91DHPLsB-t-FEAjS2eA&usqp=CAU"),

            ],
          ),
          bottomNavigationBar:
          SalomonBottomBar(
              currentIndex: _currentIndex,
              onTap: (index){
                setState(() {
                  _currentIndex = index;});
              },
              items: [
                SalomonBottomBarItem(icon: Icon(Icons.home), title: Text("home")
                ),
                SalomonBottomBarItem(
                    icon: Icon(Icons.info),
                    title: Text("info page")
                ),
                SalomonBottomBarItem(
                    icon: Icon(Icons.settings),
                    title: Text("Setting")
                )

              ]),
        ),
      ),
    );
  }
}