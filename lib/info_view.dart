import 'package:flutter/material.dart';

class InfoView extends StatefulWidget {
  const InfoView({super.key});

  @override
  State<InfoView> createState() => _InfoViewState();
}

class _InfoViewState extends State<InfoView> with TickerProviderStateMixin {
  List<String> pic = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRp4rN33PyWHKh1AnV91DHPLsB-t-FEAjS2eA&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRp4rN33PyWHKh1AnV91DHPLsB-t-FEAjS2eA&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRp4rN33PyWHKh1AnV91DHPLsB-t-FEAjS2eA&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRp4rN33PyWHKh1AnV91DHPLsB-t-FEAjS2eA&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRp4rN33PyWHKh1AnV91DHPLsB-t-FEAjS2eA&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRp4rN33PyWHKh1AnV91DHPLsB-t-FEAjS2eA&usqp=CAU'
  ];

  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              Container(
                width: double.infinity,
                height: 100,
                color: Colors.red,
              ),
              Container(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: TabBar(
                    controller: _tabController,
                    tabs: [
                      Tab(
                        text: "Places",
                      ),
                      Tab(
                        text: "Inspiration",
                      ),Tab(
                        text: "Emotion",
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 250,
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    Container(
                      height: 200,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: pic.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Stack(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.network(
                                    pic[index],
                                    width: 300,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Positioned(
                                  bottom: 60,
                                  left: 0,
                                  right: 0,
                                  child: Container(
                                    //color: Colors.black.withOpacity(0.5),
                                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                                    child: Text(
                                      'Hand1\n  VietNam, Hanoi',
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.black,
                                      ),
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                    ),

                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),

                    Text(" this is tabbar for likee")

                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}