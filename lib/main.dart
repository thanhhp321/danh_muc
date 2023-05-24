import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> items = [
      'Household',
      'Grocery',
      'Liquor',
      'Maker',
      'Place',
    ];
    List<String> thucan = [
      'Ginger',
      'Garlic ',
      'Red Onions',
      'Apple',
      'Banana',
    ];
    List<String> hoaqua = [
      'Carrot',
      'Mango',
      'Grapes',
      'Orange',
      'Cherry',
    ];
    List<String> itemanh = [
      'https://cdn-icons-png.flaticon.com/512/3079/3079188.png',
      'https://cdn-icons-png.flaticon.com/512/1261/1261052.png',
      'https://cdn-icons-png.flaticon.com/512/4135/4135168.png',
      'https://cdn-icons-png.flaticon.com/512/3019/3019817.png',
      'https://cdn-icons-png.flaticon.com/512/535/535239.png',
    ];
    List<String> giavi = [
      'https://cdn-icons-png.flaticon.com/512/3944/3944338.png',
      'https://cdn-icons-png.flaticon.com/512/4139/4139325.png',
      'https://cdn-icons-png.flaticon.com/512/2923/2923183.png',
      'https://cdn-icons-png.flaticon.com/512/415/415682.png',
      'https://cdn-icons-png.flaticon.com/512/2909/2909761.png',
    ];
    List<String> linkhq = [
      'https://cdn-icons-png.flaticon.com/512/3136/3136973.png',
      'https://cdn-icons-png.flaticon.com/512/3137/3137152.png',
      'https://cdn-icons-png.flaticon.com/512/1412/1412542.png',
      'https://cdn-icons-png.flaticon.com/512/3137/3137032.png',
      'https://cdn-icons-png.flaticon.com/512/3137/3137038.png',
    ];
    List<String> giatien = [
      'RS.690.00',
      'RS.380.00',
      'RS.260.00',
      'RS.100.00',
      'RS.230.00',
    ];
    List<String> giatienhq = [
      'RS.700.00',
      'RS.200.00',
      'RS.100.00',
      'RS.300.00',
      'RS.400.00',
    ];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          backgroundColor: Colors.green[300],
          centerTitle: true,
          title: Text('Kells', style: TextStyle(fontSize: 22)),
          actions: [
            IconButton(onPressed: null, icon: Icon(Icons.filter_alt_outlined)),
            IconButton(onPressed: null, icon: Icon(Icons.search_outlined)),
            IconButton(
                onPressed: null, icon: Icon(Icons.notifications_none_outlined))
          ],
        ),
        body: SingleChildScrollView(
            child: Padding(
          padding: EdgeInsets.all(8),
          child: Column(
            children: [
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'All Categories',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    TextButton(
                        onPressed: null,
                        child: Text(
                          'View All >',
                          style:
                              TextStyle(fontSize: 15, color: Colors.green[200]),
                        )),
                  ],
                ),
              ),
              Container(
                height: 150,
                width: double.infinity,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: items.length,
                    itemBuilder: (BuildContext context, index) {
                      return Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(9),
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 45,
                              child: Image.network(
                                itemanh[index],
                                width: 50,
                                height: 50,
                              ),
                            ),
                          ),
                          Container(
                            width: 100,
                            child: Center(
                              child: Text(
                                items[index],
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                          ),
                        ],
                      );
                    }),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Nexus Member Deals',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    TextButton(
                        onPressed: null,
                        child: Text(
                          'View All >',
                          style:
                              TextStyle(fontSize: 15, color: Colors.green[200]),
                        )),
                  ],
                ),
              ),
              Container(
                height: 180,
                width: double.infinity,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: thucan.length,
                  itemBuilder: (BuildContext context, index) {
                    return Stack(
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(7),
                              child: Card(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(),
                                child: Padding(
                                  padding: const EdgeInsets.all(26.0),
                                  child: Image.network(
                                    giavi[index],
                                    width: 50,
                                    height: 50,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: 100,
                              child: Row(
                                children: [
                                  Center(
                                    child: Text(
                                      thucan[index],
                                      style: TextStyle(fontSize: 16),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 100,
                              child: Row(
                                children: [
                                  Center(
                                    child: Text(
                                      giatien[index],
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        Positioned(
                          bottom: 85,
                          right: 20,
                          child: SizedBox(
                            height: 10,
                            width: 20,
                            child: IconButton(
                              icon: Icon(
                                Icons.favorite_border,
                                size: 20,
                              ),
                              onPressed: () {},
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Keells Deals',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    TextButton(
                        onPressed: null,
                        child: Text(
                          'View All >',
                          style:
                              TextStyle(fontSize: 15, color: Colors.green[200]),
                        )),
                  ],
                ),
              ),
              Container(
                height: 225,
                width: double.infinity,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: hoaqua.length,
                  itemBuilder: (BuildContext context, index) {
                    return Stack(
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(7),
                              child: Card(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(),
                                child: Padding(
                                  padding: const EdgeInsets.all(26.0),
                                  child: Image.network(
                                    linkhq[index],
                                    width: 50,
                                    height: 50,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: 100,
                              child: Row(
                                children: [
                                  Center(
                                    child: Text(
                                      hoaqua[index],
                                      style: TextStyle(fontSize: 16),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 100,
                              child: Row(
                                children: [
                                  Center(
                                    child: Text(
                                      giatienhq[index],
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        Positioned(
                          bottom: 130,
                          right: 20,
                          child: SizedBox(
                            height: 10,
                            width: 20,
                            child: IconButton(
                              icon: Icon(
                                Icons.favorite_border,
                                size: 20,
                              ),
                              onPressed: () {},
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
              BottomNavigationBar(
                backgroundColor: Colors.white,
                items: const <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    icon: Icon(Icons.store),
                    label: 'Store',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.shopping_bag_rounded),
                    label: 'My cart',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.favorite_border_outlined),
                    label: 'Favorite',
                  ),
                ],
              ),
            ],
          ),
        )),
      ),
    );
  }
}