import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'NavBar.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'loginpage.dart';

// void main() {
//   runApp(MaterialApp(
//     home: MyApp(),
//   ));
// }

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.lightGreen),
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int index = 2;
  @override
  Widget build(BuildContext context) {
    final items = <Widget>[
      Icon(Icons.home, size: 30),
      Icon(Icons.search, size: 30),
      Icon(Icons.favorite, size: 30),
      Icon(Icons.settings, size: 30),
      Icon(Icons.person, size: 30),
    ];

    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: const Icon(Icons.exit_to_app),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LoginPage()));
            },
          ),
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {},
          )
        ],

        centerTitle: true,
        //toolbarHeight: 150,
        //toolbarOpacity: 0.5,
        title: Image.asset(
          "assets/images/photo1.png",
          height: 50,
          width: 80,
        ),

        // body: Center()
      ),
      //drawer: NavBar(),
      body: CustomScrollView(
        slivers: <Widget>[
          const SliverAppBar(
            //leading: Icon(Icons.menu),
            backgroundColor: Colors.white,
            expandedHeight: 200,
            collapsedHeight: 100,
            flexibleSpace: ImageSlideshow(
              width: double.infinity,
              height: 250,
              initialPage: 0,
              indicatorColor: Colors.white,
              isLoop: true,
              indicatorBackgroundColor: Colors.grey,
              autoPlayInterval: 5000,
              children: [
                Image(
                  image: AssetImage(
                    './assets/images/7.jpg',
                  ),
                  fit: BoxFit.cover,
                ),
                Image(
                  image: AssetImage('./assets/images/3.png'),
                  fit: BoxFit.cover,
                ),
                Image(
                  image: AssetImage('./assets/images/9.jpg'),
                  fit: BoxFit.cover,
                ),
                Image(
                  image: AssetImage('./assets/images/4.png'),
                  fit: BoxFit.cover,
                )
              ],
            ),
            floating: true,
          ),
          const SliverAppBar(
            backgroundColor: Color.fromARGB(255, 198, 185, 43),
            expandedHeight: 30,
            title: Text(
              'Nikon',
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
            floating: true,
          ),
          SliverAppBar(
            expandedHeight: 200,
            backgroundColor: Color.fromARGB(255, 198, 185, 43),
            flexibleSpace: FlexibleSpaceBar(
              background: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    child: Card(
                      child: Stack(
                        children: [
                          Container(
                            child: Positioned(
                              child: Image(
                                  image: AssetImage('./assets/images/3.png')),
                            ),
                          ),
                          Positioned(bottom: 20, child: Text('Nikon D5600')),
                          Positioned(
                              bottom: 0,
                              child: Text(
                                'Rs. 68,000',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ))
                        ],
                      ),
                    ),
                  ),
                  Container(
                    child: Card(
                      child: Stack(
                        children: [
                          Container(
                            child: Positioned(
                              child: Image(
                                  image: AssetImage('./assets/images/4.png')),
                            ),
                          ),
                          Positioned(bottom: 20, child: Text('D5300')),
                          Positioned(
                              bottom: 0,
                              child: Text(
                                'Rs. 53,000',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ))
                        ],
                      ),
                    ),
                  ),
                  Container(
                    child: Card(
                      child: Stack(
                        children: [
                          Container(
                            child: Positioned(
                              child: Image(
                                image: AssetImage('./assets/images/5.jpg'),
                                height: 167,
                                width: 167,
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 20,
                            child: Text('Nikon D90'),
                          ),
                          Positioned(
                              bottom: 0,
                              child: Text(
                                'Rs. 58950',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ))
                        ],
                      ),
                    ),
                  ),
                  Container(
                    child: Card(
                      child: Stack(
                        children: [
                          Container(
                            child: Positioned(
                              child: Image(
                                image: AssetImage('./assets/images/6.jpg'),
                              ),
                            ),
                          ),
                          Positioned(bottom: 20, child: Text('Nikon Z6')),
                          Positioned(
                              bottom: 0,
                              child: Text(
                                'Rs. 2,45,000',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ))
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverAppBar(
            backgroundColor: Color.fromARGB(255, 198, 185, 43),
            expandedHeight: 30,
            title: Text(
              'Canon',
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
            floating: true,
          ),
          SliverAppBar(
            expandedHeight: 200,
            backgroundColor: Color.fromARGB(255, 198, 185, 43),
            flexibleSpace: FlexibleSpaceBar(
              background: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    child: Card(
                      child: Stack(
                        children: [
                          Container(
                            child: Positioned(
                              child: Image(
                                  image: AssetImage('./assets/images/7.jpg')),
                            ),
                          ),
                          Positioned(
                              bottom: 20,
                              child: Text(
                                'Canon EOS 1Dx',
                                style: TextStyle(color: Colors.white),
                              )),
                          Positioned(
                              bottom: 0,
                              child: Text(
                                'Rs. 739,100',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ))
                        ],
                      ),
                    ),
                  ),
                  Container(
                    child: Card(
                      child: Stack(
                        children: [
                          Container(
                            child: Positioned(
                              child: Image(
                                  image: AssetImage('./assets/images/8.jpg')),
                            ),
                          ),
                          Positioned(
                              bottom: 20, child: Text('Canon EOS 1500D')),
                          Positioned(
                              bottom: 0,
                              child: Text(
                                'Rs. 67,990',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ))
                        ],
                      ),
                    ),
                  ),
                  Container(
                    child: Card(
                      child: Stack(
                        children: [
                          Container(
                            child: Positioned(
                              child: Image(
                                image: AssetImage('./assets/images/9.jpg'),
                                // height: 167,
                                // width: 167,
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 20,
                            child: Text('Canon EOS 60D',
                                style: TextStyle(color: Colors.white)),
                          ),
                          Positioned(
                              bottom: 0,
                              child: Text(
                                'Rs. 90000',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ))
                        ],
                      ),
                    ),
                  ),
                  Container(
                    child: Card(
                      child: Stack(
                        children: [
                          Container(
                            child: Positioned(
                              child: Image(
                                image: AssetImage('./assets/images/10.jpg'),
                              ),
                            ),
                          ),
                          Positioned(
                              bottom: 20,
                              child: Text('Canon EOS 7D',
                                  style: TextStyle(color: Colors.white))),
                          Positioned(
                              bottom: 0,
                              child: Text(
                                'Rs. 1,20,000',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ))
                        ],
                      ),
                    ),
                  ),
                  Container(
                    child: Card(
                      child: Stack(
                        children: [
                          Container(
                            child: Positioned(
                              child: Image(
                                image: AssetImage('./assets/images/11.jpg'),
                              ),
                            ),
                          ),
                          Positioned(
                              bottom: 20,
                              child: Text('Canon EOS 1d',
                                  style: TextStyle(color: Colors.white))),
                          Positioned(
                              bottom: 0,
                              child: Text(
                                'Rs. 740000',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ))
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      // drawer: NavBar(),
      // appBar: AppBar(
      //   actions: [
      //     IconButton(
      //       icon: const Icon(Icons.shopping_cart),
      //       onPressed: () {},
      //     ),
      //     IconButton(
      //       icon: const Icon(Icons.notifications),
      //       onPressed: () {},
      //     )
      //   ],

      //   centerTitle: true,
      //   //toolbarHeight: 150,
      //   //toolbarOpacity: 0.5,
      //   title: Image.asset(
      //     "assets/images/photo1.png",
      //     height: 50,
      //     width: 80,
      //   ),

      //   //body: Center()
      // ),
      bottomNavigationBar: CurvedNavigationBar(
          buttonBackgroundColor: Colors.transparent,
          backgroundColor: Colors.transparent,
          color: Colors.lightGreen,
          height: 50,
          index: index,
          items: items),
    );
  }
}
