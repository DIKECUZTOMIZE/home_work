import 'package:flutter/material.dart';

class InstagramAppPage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: page1AppBar(),
        body: Page1Body(),
      );
}

PreferredSizeWidget page1AppBar() => AppBar(
      backgroundColor: Colors.white,
      centerTitle: true,
      title: Row(
        children: [
          Expanded(child: Text('Instagram')),
          Icon(Icons.favorite_border),
          SizedBox(
            width: 15,
          ),
          Icon(Icons.message_outlined)
        ],
      ),
    );

class Page1Body extends StatelessWidget {
  List<Map<String, dynamic>> storyData = [
    {'name': 'sanjit', 'storyImg': 'assets/images/whatapp/bg_abstrac.jpeg'},
    {'name': 'putu', 'storyImg': 'assets/images/whatapp/bg_animal.jpeg'},
    {'name': 'ball', 'storyImg': 'assets/images/whatapp/bg_classic.jpg'},
    {'name': 'sumi', 'storyImg': 'assets/images/whatapp/bg_naturea.jpg'},
    {'name': 'Salu', 'storyImg': 'assets/images/whatapp/bg_whatapp.webp'},
    {'name': 'Salu', 'storyImg': 'assets/images/whatapp/bg_whatapp.webp'},
  ];

  @override
  Widget build(BuildContext context) => ListView(
        children: [
          SizedBox(
            height: 90,
            width: 200,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: storyData.length,
                itemBuilder: (context, index) => Row(
                      children: [
                        SizedBox(
                          width: 11,
                        ),


                        Column(
                          children: [
                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      image: AssetImage(
                                          storyData[index]['storyImg']),
                                      fit: BoxFit.cover)),
                            ),
                            Text(storyData[index]['name'])
                          ],
                        ),
                      ],
                    )),
          ),
          SizedBox(
            height: 900,
            width: double.infinity,
            child: ListView.builder(
                itemCount: 4,
                itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/whatapp/bg_whatapp.webp'),
                                      fit: BoxFit.cover,
                                    )),
                              ),

                              SizedBox(
                                width: 10,
                              ),
                              
                              Expanded(
                                child: Text(
                                  storyData[index]['name'],
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              
                              Icon(Icons.more_vert)
                            ],
                          ),

                          SizedBox(
                            height: 10,
                          ),

                          Container(
                              height: 400,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    image: AssetImage(
                                        storyData[index]['storyImg']),
                                    fit: BoxFit.cover),
                              )),

                          SizedBox(
                            height: 10,
                          ),

                          Row(
                            children: [
                              Expanded(
                                flex: 7,
                                child: Row(
                                  children: [
                                    Icon(Icons.favorite_border),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Icon(
                                      Icons.chat_bubble_outline,
                                      size: 20,
                                    ),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Icon(
                                      Icons.share_outlined,
                                      size: 20,
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                  flex: 1, child: Icon(Icons.bookmark_border))
                            ],
                          ),

                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    )),
          ),
        ],
      );
}
