import 'dart:math';

import 'package:flutter/material.dart';
import 'package:ui_test/Pages/Details.dart';
import 'package:ui_test/Reuse_widgets/customappBar.dart';
import 'package:flappy_search_bar/flappy_search_bar.dart';
import 'package:ui_test/Pages/Shoes.dart';

class NewArrival extends StatefulWidget {

  @override
  _NewArrivalState createState() => _NewArrivalState();
}

class _NewArrivalState extends State<NewArrival> {




  @override
  Widget build(BuildContext context) {

    Future<List<Shoes>> _getALlPosts(String text) async {
      await Future.delayed(Duration(seconds: text.length == 4 ? 10 : 1));
      //if (isReplay) return [Shoes("Replaying !", "Replaying body")];
      if (text.length == 5) throw Error();
      if (text.length == 6) return [];
      List<Shoes> posts = [];

      var random = new Random();
      for (int i = 0; i < 10; i++) {
        posts.add(Shoes("$text $i", "body random number : ${random.nextInt(100)}"));
      }
      return posts;
    }

    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          automaticallyImplyLeading: false,
          leading: Icon(
            Icons.menu,
            color: Colors.black54,
          ),
          title: Column(
            children: <Widget>[
              CustomAppBar(),
            ],
          ),
          actions: [
            Padding(
                padding: EdgeInsets.only(right: 20.0),
                child: GestureDetector(
                  onTap: () {},
                  child: Icon(
                    Icons.blur_linear,
                    size: 26.0,
                    color: Colors.black54,
                  ),
                )
            ),
        ],

      ),
      body: SafeArea(
        child: Column(

          children: [
            SizedBox(height: 20,),
            Container(
              //alignment: Alignment.center,
              margin: const EdgeInsets.only(left:20,right: 20),

              height: 60,
              width: MediaQuery.of(context).size.width-40,
              padding: EdgeInsets.all(22.0),
              decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.all(Radius.circular(20.0)),

              ),


              child: TextField(style: TextStyle(fontSize: 16,),
                decoration: InputDecoration(

                    labelText: 'search name',
                    icon: new Icon(Icons.search,color: Colors.black54,),
                    //hintText: "search name",
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent)
                    )

                ),
              ),

            ),
            SizedBox(height: 20,),
            Expanded(child: ListView(

              children: [
                SizedBox(height: 60,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                          builder: (BuildContext context) => new Details())),
                      child: Container(
                        width: MediaQuery.of(context).size.width-40,
                        height: MediaQuery.of(context).size.width-20,
                        margin: EdgeInsets.only(right: 5.0),
                        child: Stack(
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                width: MediaQuery.of(context).size.width-20,
                                height: MediaQuery.of(context).size.width-20,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(30.0),
                                  child: Image(
                                    image: NetworkImage('https://images.pexels.com/photos/19090/pexels-photo.jpg?auto=compress&cs=tinysrgb&dpr=1&w=500'),//NetworkImage('https://www.aquasoft.net/blog/en/files/2015/07/european-destinations.jpg'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
//              Align(
//                alignment: Alignment.topLeft,
//                child: Image.asset(
//                  image,
//                  width: 110,
//                  height: 110,
//                ),
//              ),
                            Positioned(
                              bottom: 15,
                              left: 10,
                              child: Container(

                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Women running Shoes",style: TextStyle(color: Colors.white),),
                                    Text("React Escape Run",style: TextStyle(fontSize: 22,color: Colors.white),),
                                    //Text(new String.fromCharCodes(new Runes('\u0024'))),
                                    Text(new String.fromCharCodes(new Runes('\u0024'))+" 135",style: TextStyle(fontSize: 24,color: Colors.teal)),

                                  ],
                                  //

                                )
                              ),
                            ),
                            Positioned(
                              bottom: 45,
                              right: 35,
                              child: Container(

                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Icon(Icons.shopping_cart,color: Colors.white,)
                                    ],
                                    //

                                  )
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () => Navigator.of(context).pushReplacement(new MaterialPageRoute(
                          builder: (BuildContext context) => new Details())),

                      child: Container(
                        width: MediaQuery.of(context).size.width-40,
                        height: MediaQuery.of(context).size.width-20,
                        margin: EdgeInsets.only(right: 5.0),
                        child: Stack(
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                width: MediaQuery.of(context).size.width-20,
                                height: MediaQuery.of(context).size.width-20,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(30.0),
                                  child: Image(
                                    image: AssetImage('assets/images/uiti.jpg'),//NetworkImage('https://www.aquasoft.net/blog/en/files/2015/07/european-destinations.jpg'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
//              Align(
//                alignment: Alignment.topLeft,
//                child: Image.asset(
//                  image,
//                  width: 110,
//                  height: 110,
//                ),
//              ),
                            Positioned(
                              bottom: 15,
                              left: 10,
                              child: Container(

                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Women running Shoes",style: TextStyle(color: Colors.white),),
                                      Text("React Escape Run",style: TextStyle(fontSize: 22,color: Colors.white),),
                                      //Text(new String.fromCharCodes(new Runes('\u0024'))),
                                      Text(new String.fromCharCodes(new Runes('\u0024'))+" 135",style: TextStyle(fontSize: 24,color: Colors.teal)),

                                    ],
                                    //

                                  )
                              ),
                            ),
                            Positioned(
                              bottom: 45,
                              right: 35,
                              child: Container(

                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Icon(Icons.shopping_cart,color: Colors.white,)
                                    ],
                                    //

                                  )
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              ],
            )),
            //SizedBox(height: 60,),



          ],
        ),
      )
    );
  }
}
