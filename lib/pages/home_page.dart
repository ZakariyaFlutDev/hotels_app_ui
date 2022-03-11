import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  static const String id = "home_page";

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SingleChildScrollView(
        child: Column(
          children: [

            //#header
            Container(
              height: 300,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/ic_header.jpg"),
                  fit: BoxFit.cover
                )
              ),
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomRight,
                    colors: [
                      Colors.black.withOpacity(0.8),
                      Colors.black.withOpacity(0.6),
                      Colors.black.withOpacity(0.3),
                    ]
                  )
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("What kind of hotel you need ?", style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
                    SizedBox(height: 30,),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 3),
                      margin: EdgeInsets.symmetric(horizontal: 40),
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.white
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(Icons.search, color: Colors.grey,),
                          hintText: "Search for Hotels",
                          hintStyle: TextStyle(color: Colors.grey, fontSize: 18)
                        ),
                      ),
                    ),
                    SizedBox(height: 30,),
                  ],
                ),
              ),
            ),
            SizedBox(height: 30,),

            //#body
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Best Hotels", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey.shade800, fontSize: 20),),
                  SizedBox(height: 30,),
                  Container(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        makeItem(image: "assets/images/ic_hotel1.jpg", title: "Hotel 1"),
                        makeItem(image: "assets/images/ic_hotel2.jpg", title: "Hotel 1"),
                        makeItem(image: "assets/images/ic_hotel3.jpg", title: "Hotel 1"),
                        makeItem(image: "assets/images/ic_hotel4.jpg", title: "Hotel 1"),
                        makeItem(image: "assets/images/ic_hotel5.jpg", title: "Hotel 1"),
                      ],
                    ),
                  ),
                  SizedBox(height: 30,),

                  Text("Luxury Hotels", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey.shade800, fontSize: 20),),
                  SizedBox(height: 30,),
                  Container(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        makeItem(image: "assets/images/ic_hotel3.jpg", title: "Hotel 1"),
                        makeItem(image: "assets/images/ic_hotel5.jpg", title: "Hotel 1"),
                        makeItem(image: "assets/images/ic_hotel1.jpg", title: "Hotel 1"),
                        makeItem(image: "assets/images/ic_hotel2.jpg", title: "Hotel 1"),
                        makeItem(image: "assets/images/ic_hotel4.jpg", title: "Hotel 1"),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget makeItem({image, title}){
    return AspectRatio(
      aspectRatio: 1.4/1,
      child: Container(
        margin: EdgeInsets.only(right: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover
          )
        ),
        child: Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              colors: [
                Colors.black.withOpacity(.8),
                Colors.black.withOpacity(.2),
              ]
            )
          ),
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Text(title, style: TextStyle(color: Colors.white, fontSize: 20),),
          ),
        ),
      ),
    );
  }
}
