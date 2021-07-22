import 'dart:math';

import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:ui_test/Pages/newArrival.dart';
import 'package:ui_test/Reuse_widgets/customappBar.dart';
import 'package:flappy_search_bar/flappy_search_bar.dart';
import 'package:ui_test/Pages/Shoes.dart';

class Details extends StatefulWidget {

  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {




  @override
  Widget build(BuildContext context) {

    int _selectedIndex = 0;
    List<int> _sizes = [
      67,45,45,45,45
    ];

    Widget _buildIcon(int index){
      return GestureDetector(
        onTap: () {
          setState(() {
            _selectedIndex = index;
          });
        },
        child:Container(
          height: 40.0,
          width: 40.0,
          decoration: BoxDecoration(color: _selectedIndex == index ? Colors.deepOrangeAccent : Colors.black12, borderRadius: BorderRadius.circular(8.0)),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(_sizes[index].toString(), style: TextStyle(color: _selectedIndex == index ?Colors.black : Colors.black26),),
          ),
        ),
      );
    }


    return Scaffold(

        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(

              children: [
                Stack(
                  children: <Widget>[
                    Container(
                      height: MediaQuery.of(context).size.width-100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black26,
                                offset: Offset(0.0, 2.0),
                                blurRadius: 6.0

                            )
                          ]
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30.0),
                        child: Carousel(
                          images: [
//                          AssetImage('assets/images/sliderimagea.jpg'),
//                          AssetImage('assets/images/sliderimageb.png'),
//                          AssetImage('assets/images/sliderimagec.jpg'),
//                          AssetImage('assets/images/sliderimaged.jpg'),
                       NetworkImage('https://images.unsplash.com/photo-1542291026-7eec264c27ff?ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8c2hvZXN8ZW58MHx8MHx8&ixlib=rb-1.2.1&w=1000&q=80'),
                        NetworkImage('https://images.unsplash.com/photo-1460353581641-37baddab0fa2?ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8c2hvZXN8ZW58MHx8MHx8&ixlib=rb-1.2.1&w=1000&q=80'),
                        NetworkImage('https://media.istockphoto.com/photos/sport-shoes-on-isolated-white-background-picture-id956501428?k=6&m=956501428&s=612x612&w=0&h=cBcBHYySQGpV5kHPbcXUnpXrgqXrNs0s7cahHBCDsbA='),
                        NetworkImage('https://rukminim1.flixcart.com/image/714/857/jpinjbk0/shoe/8/h/4/ar4840-010-9-lotto-black-original-imaewa2sjfnjh6up.jpeg?q=50'),
                            //fit: BoxFit.cover,
                          ],
                          autoplay: true,
                          indicatorBgPadding: 1.0,
                          dotSize: 5.0,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 40.0),

                      child:Row(
                        children: <Widget>[
                          IconButton(
                              icon: Icon(Icons.arrow_back_ios),
                              iconSize: 30.0,
                              color: Colors.white,
                              onPressed: () => Navigator.of(context).pushReplacement(new MaterialPageRoute(
                                  builder: (BuildContext context) => new NewArrival())),
                          ),
//
                        ],
                      ),



                    ),
                    Positioned(
                      right: 30.0,
                      top: 40.0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Icon(Icons.star_border, size: 26)

                        ],
                      ),

                    ),

//
                  ],

                ),
                SizedBox(height: 20,),
                //Text("sdfssdfsdf"),

              ],
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Stack(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("Women Running Shoes"),
                              Text("React Scape Run",style: TextStyle(fontSize: 24),)
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(new String.fromCharCodes(new Runes('\u0024'))+" 135",style: TextStyle(fontSize: 30,color: Colors.deepOrangeAccent,fontWeight: FontWeight.w600),),
                            ],
                          ),

                        ],
                      ),
                      SizedBox(height: 20,),
                      Text("Select Size",style: TextStyle(fontSize: 18),),
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: _sizes
                            .asMap()
                            .entries
                            .map(
                              (MapEntry map) => _buildIcon(map.key),
                        )
                            .toList(),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width-40,
                        margin: EdgeInsets.all(25),
                        child: FlatButton(

                          child: Text('Find In Store', style: TextStyle(fontSize: 20.0),),
                          color: Colors.black12,
                          textColor: Colors.black,
                          onPressed: () {},
                        ),
                      ),
                      SizedBox(height: 20,),
                      Text("dfgdfg dgdfgdfg dfgdfgdfg dfgdfgdfgdf dfgdfgdfgdf dfgdfgdgdfg dfdgdgd dgdfgdfg dgdfgdfgdf dfgdfgdfg dfgdfgdfg dgdfgdfg dgdfgdfgf",style: TextStyle(color: Colors.grey),)
                    ],
                  ),
                ],

              ),
            ),

          ],

        ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        tooltip: 'Increment',
        backgroundColor: Colors.grey,
        child: Icon(Icons.shopping_cart),
      ),

    );
  }
}
