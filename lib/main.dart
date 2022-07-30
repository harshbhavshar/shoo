import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: homePage(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
    );
  }
}

class homePage extends StatefulWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  //reuseble Widgets
  txt(String data, FontWeight fwidth, double fsize) {
    return Text(
      data,
      style: TextStyle(
        fontWeight: fwidth,
        fontSize: fsize,
      ),
    );
  }

  model() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 5),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
            borderRadius: BorderRadius.circular(10),
            color: Color(0xffFFFFFF)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              Icons.add_circle,
              size: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.network(
                "http://cheapniceshoes4sale.com/6799-large_default/nike-training-shoes-women-Nike-Air-Max-TR180-Mens-Training-Shoes-Flint-Silver-Volt-Black-sku-23973007.jpg",
                height: 130,
                width: 100,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: txt("₹5095.00", FontWeight.bold, 20),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: txt("Dowl Co", FontWeight.normal, 15),
            ),
          ],
        ),
      ),
    );
  }

  sizebox(double hight) {
    return SizedBox(
      height: hight,
    );
  }
  card(String data1,String data2,String data3,String data4,){
    return Column(
      children: [
        sizebox(25),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Row(
                  children: [
                  Icon(Icons.pin_drop,size: 20,),
                    txt(data1, FontWeight.bold, 20),
                  ],
                ),
                txt(data2, FontWeight.normal,15),
              ],
            ),
            Column(
              children: [
                txt(data3, FontWeight.normal,15),
                txt(data4,FontWeight.normal,15),
              ],
            ),

          ],
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.shopping_bag_outlined),
          )
        ],
      ),
      drawer: Drawer(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              width: size.width,
              height: size.height / 2.5,
              color: Color(0xffD6FE78),
              child: Column(
                children: [
                  sizebox(30),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        prefixIcon: Icon(Icons.search),
                        hintText: "Search",
                      ),
                    ),
                  ),
                  sizebox(20),
                  Padding(
                    padding: const EdgeInsets.only(left: 18.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        txt("Latest Model", FontWeight.bold, 20),
                        Row(
                          children: [
                            Text("Show more"),
                            Icon(Icons.arrow_right),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
           Container(
             transform: Matrix4.translationValues(0, -150.0, 0.0),
             child: SingleChildScrollView(
               scrollDirection: Axis.horizontal,
               child: Padding(
                 padding: const EdgeInsets.only(left: 18.0),
                 child: Row(
                   children: [
                     model(),
                     model(),
                     model(),
                     model(),
                     model(),
                     model(),
                     model(),
                   ],
                 ),
               ),
             ),
           ),
           Padding(
             padding: const EdgeInsets.all(18.0),
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Container(
                   transform: Matrix4.translationValues(0, -100.0, 0.0),
                   child:txt("Latest Model",FontWeight.bold,20),
                 ),
                 Container(
                   transform: Matrix4.translationValues(0, -80.0, 0.0),
                   width: size.width,
                   height: 1,
                   color: Colors.black,
                 ),
                 Container(
                   transform: Matrix4.translationValues(0, -80.0, 0.0),
                   child:  Column(
                     children: [
                       card("Sport Land","Rating","Mumbai","4.9"),
                       card("Sport Land","Rating","Mumbai","4.2"),
                     ],
                   ),
                 )
               ],
             ),
           )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor : Colors.black,
        unselectedItemColor: Colors.black,
        items: [
        BottomNavigationBarItem(icon: Icon(Icons.grid_view),label: "Home",),
        BottomNavigationBarItem(icon: Icon(Icons.pie_chart),label: "My Account",),
        BottomNavigationBarItem(icon: Icon(Icons.surround_sound_outlined),label: "My Account",),
        BottomNavigationBarItem(icon: Icon(Icons.person_outline),label: "My Account",),
      ],
      ),
    );
  }
}
