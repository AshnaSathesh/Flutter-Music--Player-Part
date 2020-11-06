import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:video_player_app/player.dart';
import 'package:video_player_app/constants.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              child: Stack(
                children: <Widget>[
                  Positioned(
                    child: Container(
                      decoration: BoxDecoration(
                        color: AppColors.bColor,
                        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(75.0)),
                      ),
                      constraints: BoxConstraints(maxHeight: 380),

                    ),
                  ),
                  Column(
                    children: <Widget>[

                      Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Container(
                                    margin: EdgeInsets.fromLTRB(50.0, 60.0, 10.00, 0),
                                    height: 60.0,
                                    width: 60.0,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        image: DecorationImage(image: AssetImage('images/user.png')),
                                        borderRadius: BorderRadius.all(Radius.circular(10.0))

                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0, 60.0, 0, 0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text('Mr.Smith',style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            wordSpacing: 2.0,
                                            fontSize: 18.0
                                        ),),
                                        SizedBox(height: 10.0,),
                                        Text('Basic Subscription',style: TextStyle(
                                            color: Colors.black38,
                                            fontWeight: FontWeight.bold,
                                            wordSpacing: 2.0,
                                            fontSize: 15.0
                                        ),)
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                alignment: Alignment.center,
                                child: Text( 'Upgrade +',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: AppColors.textColor,
                                    wordSpacing: 2.0,
                                    fontSize: 15.0,),
                                ),
                                margin: EdgeInsets.fromLTRB(0, 60.0, 50.0, 0),
                                height: 35.0,
                                width: 90,
                                decoration: BoxDecoration(
                                    color: AppColors.buttonColor,
                                    borderRadius: BorderRadius.all(Radius.circular(10.0))
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                      Container(
                        height: 105.0,
                        child: ListView(

                          scrollDirection: Axis.horizontal,
                          children: <Widget>[

                            Container(
                              alignment: Alignment.center,
                              padding: EdgeInsets.all(10.0),
                              child: Column(
                                  children: <Widget>[
                                    Icon(
                                      Icons.search,
                                      size: 30.0,
                                      color: AppColors.mainColor,
                                    ),
                                    SizedBox(height: 8.0,),
                                    Text( 'Search',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: AppColors.mainColor,
                                        wordSpacing: 2.0,
                                        fontSize: 15.0,),
                                    ),
                                  ]

                              ),
                              margin: EdgeInsets.fromLTRB(50.0, 25.0,0, 0),
                              height: 80.0,
                              width: 90.0,
                              decoration: BoxDecoration(
                                  color: AppColors.buttonColor,
                                  borderRadius: BorderRadius.all(Radius.circular(10.0))
                              ),

                            ),
                            SizedBox(width: 10.0,),
                            Container(
                              alignment: Alignment.center,
                              padding: EdgeInsets.all(10.0),
                              child: Column(
                                  children: <Widget>[
                                    Icon(
                                      Icons.tv,
                                      size: 30.0,
                                      color: AppColors.mainColor,
                                    ),
                                    SizedBox(height: 8.0,),
                                    Text( 'TV Shows',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: AppColors.mainColor,
                                        wordSpacing: 2.0,
                                        fontSize: 15.0,),
                                    ),
                                  ]

                              ),
                              margin: EdgeInsets.fromLTRB(0, 25.0,0, 0),
                              height: 80.0,
                              width: 90.0,
                              decoration: BoxDecoration(
                                  color: AppColors.buttonColor,
                                  borderRadius: BorderRadius.all(Radius.circular(10.0))
                              ),

                            ),
                            SizedBox(width: 10.0,),
                            Container(
                              alignment: Alignment.center,
                              padding: EdgeInsets.all(10.0),
                              child: Column(
                                  children: <Widget>[
                                    Icon(
                                      Icons.local_movies,
                                      size: 30.0,
                                      color: AppColors.mainColor,
                                    ),
                                    SizedBox(height: 8.0,),
                                    Text( 'Movies',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: AppColors.mainColor,
                                        wordSpacing: 2.0,
                                        fontSize: 15.0,),
                                    ),
                                  ]

                              ),
                              margin: EdgeInsets.fromLTRB(0, 25.0,0, 0),
                              height: 80.0,
                              width: 90.0,
                              decoration: BoxDecoration(
                                  color: AppColors.buttonColor,
                                  borderRadius: BorderRadius.all(Radius.circular(10.0))
                              ),

                            ),
                            SizedBox(width: 10.0,),
                            Container(
                              alignment: Alignment.center,
                              padding: EdgeInsets.all(10.0),
                              child: Column(
                                  children: <Widget>[
                                    Icon(
                                      Icons.directions_run,
                                      size: 30.0,
                                      color: AppColors.mainColor,
                                    ),
                                    SizedBox(height: 8.0,),
                                    Text( 'Sports',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: AppColors.mainColor,
                                        wordSpacing: 2.0,
                                        fontSize: 15.0,),
                                    ),
                                  ]

                              ),
                              margin: EdgeInsets.fromLTRB(0, 25.0,0, 0),
                              height: 80.0,
                              width: 90.0,
                              decoration: BoxDecoration(
                                  color: AppColors.buttonColor,
                                  borderRadius: BorderRadius.all(Radius.circular(10.0))
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.fromLTRB(50.0, 20.0, 0, 0),
                        child: Text('Continue Watching',style: TextStyle(
                          color: Colors.black,
                          wordSpacing: 2.0,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),),
                      ),
                      Row(
                        children: <Widget>[
                          Container(
                            child: Stack(
                              children: <Widget>[
                                Positioned(
                                  top: 20.0,
                                  left: 50.0,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        image: DecorationImage(image: AssetImage('images/dark.jpg')),
                                        borderRadius: BorderRadius.all(Radius.circular(10.0))
                                    ),
                                    constraints: BoxConstraints(maxWidth: 160.0,maxHeight: 160.0),
                                  ),
                                ),
                                Positioned(
                                  top: 110.0,
                                  left: 70.0,
                                  child: Container(
                                    height: 70.0,
                                    width: 140.0,
                                    decoration: BoxDecoration(
                                        color: AppColors.mainColor,
                                        borderRadius: BorderRadius.all(Radius.circular(10.0),)
                                    ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(8.0, 2.0, 0, 0),
                                          child: Text('Dark',
                                            style: TextStyle(
                                              color: AppColors.bColor,
                                              wordSpacing: 2.0,
                                              fontSize: 15.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(8.0,0, 0, 0),
                                          child: Container(
                                            height: 3.0,
                                            width: 110.0,
                                            decoration: BoxDecoration(
                                              color: Colors.purple,
                                              borderRadius: BorderRadius.all(Radius.circular(5.0)),
                                            ),
                                            child: Stack(
                                              children: <Widget>[
                                                Container(
                                                  height: 3.0,
                                                  width: 30.0,
                                                  decoration: BoxDecoration(
                                                    color: Colors.pinkAccent,
                                                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(8.0, 2.0, 0, 0),
                                          child: Container(
                                            child: Text('S01 E07',style: TextStyle(
                                              color: AppColors.buttonColor,
                                              wordSpacing: 2.0,
                                              fontSize: 15.0,
                                              fontWeight: FontWeight.bold,
                                            ),),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  child: Container(
                                    margin: EdgeInsets.fromLTRB(0, 215.0, 0, 0),
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.all(Radius.circular(10.0))
                                    ),
                                    constraints: BoxConstraints(maxWidth: 220.0,maxHeight: 2.0),
                                  ),
                                ),
                                Positioned(
                                  top: 150.0,
                                  left: 150.0,
                                  child: FloatingActionButton(
                                    child: Icon( Icons.play_arrow),
                                    backgroundColor: Colors.pinkAccent,
                                    onPressed: (){
                                      Navigator.push(context,
                                          MaterialPageRoute(
                                            builder: (context) => LocalAudio(),
                                          )
                                      );
                                    },
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            child: Stack(
                              children: <Widget>[
                                Positioned(
                                  top: 16.0,
                                  left: 10.0,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        image: DecorationImage(image: AssetImage('images/friends.jpg')),
                                        borderRadius: BorderRadius.all(Radius.circular(10.0))
                                    ),
                                    constraints: BoxConstraints(maxWidth: 160.0,maxHeight: 160.0),
                                  ),
                                ),
                                Positioned(
                                  top:106.0,
                                  left: 30.0,
                                  child: Container(
                                    height: 70.0,
                                    width: 140.0,
                                    decoration: BoxDecoration(
                                        color: AppColors.mainColor,
                                        borderRadius: BorderRadius.all(Radius.circular(10.0),)
                                    ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(8.0, 2.0, 0, 0),
                                          child: Text('Friends',
                                            style: TextStyle(
                                              color: AppColors.bColor,
                                              wordSpacing: 2.0,
                                              fontSize: 15.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(8.0,0, 0, 0),
                                          child: Container(
                                            height: 3.0,
                                            width: 110.0,
                                            decoration: BoxDecoration(
                                              color: Colors.purple,
                                              borderRadius: BorderRadius.all(Radius.circular(5.0)),
                                            ),
                                            child: Stack(
                                              children: <Widget>[
                                                Container(
                                                  height: 3.0,
                                                  width: 70.0,
                                                  decoration: BoxDecoration(
                                                    color: Colors.pinkAccent,
                                                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(8.0, 2.0, 0, 0),
                                          child: Container(
                                            child: Text('S09 E12',style: TextStyle(
                                              color: AppColors.buttonColor,
                                              wordSpacing: 2.0,
                                              fontSize: 15.0,
                                              fontWeight: FontWeight.bold,
                                            ),),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  child: Container(
                                    margin: EdgeInsets.fromLTRB(0, 206.0, 0, 0),
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.all(Radius.circular(10.0))
                                    ),
                                    constraints: BoxConstraints(maxWidth: 180.0,maxHeight: 2.0),
                                  ),
                                ),
                                Positioned(
                                  top: 146.0,
                                  left: 90.0,
                                  child: FlatButton(
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(50.0))),
                                    child: Icon( Icons.play_arrow,color: Colors.white,),
                                    color: Colors.pinkAccent,
                                    onPressed: () {
                                      showDialog(
                                          context: context,
                                          builder: (context) {
                                            return AlertDialog(
                                              title: Text('Oops!'),
                                              content: Text('For further watching, please subscribe.'),
                                              actions: <Widget>[
                                                FlatButton(
                                                  child: Text('Close'),
                                                  onPressed: () {
                                                    Navigator.of(context).pop();
                                                  },
                                                ),
                                              ],
                                            );
                                          }
                                      );
                                    },
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                          margin: EdgeInsets.fromLTRB(50.0, 0, 0, 0),
                          child: Text('Top Now',style: TextStyle(
                            color: Colors.black,
                            wordSpacing: 2.0,
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                          )
                      ),
                      Container(
                        height: 100.0,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            Container(
                              height: 60.0,
                              width: 157.0,
                              margin: EdgeInsets.fromLTRB(50.0,10.0,0,0),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  image: DecorationImage(image: AssetImage('images/thebigbangtheory.jpg')),
                                  borderRadius: BorderRadius.all(Radius.circular(10.0))
                              ),
                            ),
                            Container(
                              height: 60.0,
                              width: 157.0,
                              margin: EdgeInsets.fromLTRB(10.0,10.0,0,0),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  image: DecorationImage(image: AssetImage('images/caffeeandkareem.jpg')),
                                  borderRadius: BorderRadius.all(Radius.circular(10.0))
                              ),
                            ),
                            Container(
                              height: 60.0,
                              width: 157.0,
                              margin: EdgeInsets.fromLTRB(10.0,10.0,0,0),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  image: DecorationImage(image: AssetImage('images/toyboy.jpg')),
                                  borderRadius: BorderRadius.all(Radius.circular(10.0))
                              ),
                            ),

                          ],
                        ),),
                    ],
                  ),
                ],
              )
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex : _currentIndex,
        type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
        items:[
          BottomNavigationBarItem(
            icon: Icon(Icons.home,color: AppColors.textColor,),
            title: Text('Home',style: TextStyle(color: AppColors.textColor,),),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person,color: AppColors.textColor,),
            title: Text('Profile',style: TextStyle(color: AppColors.textColor,),),

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border,color: AppColors.textColor,),
            title: Text('Favourite',style: TextStyle(color: AppColors.textColor,),),

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings,color: AppColors.textColor,),
            title: Text('Settings',style: TextStyle(color: AppColors.textColor,),),

          ),

        ],
          onTap: (index){
            setState(() {
              _currentIndex = index;
            });
          }
      ),
    );
  }
}


