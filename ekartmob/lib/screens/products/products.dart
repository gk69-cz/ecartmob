import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ProductsPage extends StatelessWidget {
  ProductsPage({super.key});

  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
          children: [
          Column(
            children: [
              Text('All Products'),
              SizedBox(
                height: 70,
                width: 380,
                child: TextField(
                  controller: _searchController,
                  decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.search),
                      hintText: 'Search..',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      )),
                ),
              ),
              //items
              
              Padding(
                  padding: const EdgeInsets.only(top: 1.0, left: 17, right: 8),
                  child: Row(children: [
                    Container(
                      height: 270,
                      width: 175,
                      color: Colors.white,
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 3,
                          ),
                          Image(
                              height: 170,
                              width: 220,
                              fit: BoxFit.cover,
                              image: AssetImage('assets/images/shirt1.png')),
                          SizedBox(
                            height: 2,
                          ),
                          Padding(
                            padding: EdgeInsets.all(3.0),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Shirt',
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "Essential men's dress short-sleeves Neck t shirt ",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 13),
                                  ),
                                  SizedBox(
                                    height: 1,
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                      ),
                                      SizedBox(
                                        width: 4,
                                      ),
                                      Text(
                                        '4.9 -2334 ',
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Text(
                                        '12.90',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 17,
                                          color: Colors.green,
                                        ),
                                      ),
                                    ],
                                  )
                                ]),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 9),
                    Container(
                      height: 270,
                      width: 175,
                      color: Colors.white,
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 3,
                          ),
                          Image(
                              height: 170,
                              width: 220,
                              fit: BoxFit.cover,
                              image: AssetImage('assets/images/shirt1.png')),
                          SizedBox(
                            height: 2,
                          ),
                          Padding(
                            padding: EdgeInsets.all(3.0),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Shirt',
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "Essential men's dress short-sleeves Neck t shirt ",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 13),
                                  ),
                                  SizedBox(
                                    height: 1,
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                      ),
                                      SizedBox(
                                        width: 4,
                                      ),
                                      Text(
                                        '4.9 -2334 ',
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Text(
                                        '12.90',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 17,
                                          color: Colors.green,
                                        ),
                                      ),
                                    ],
                                  )
                                ]),
                          ),
                        ],
                      ),
                    ),
                  ])),
              Padding(
                   padding: const EdgeInsets.only(top: 1.0, left: 17, right: 8),              child: Row(children: [
                    Container(
                      height: 270,
                      width: 175,
                      color: Colors.white,
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 3,
                          ),
                          Image(
                              height: 170,
                              width: 220,
                              fit: BoxFit.cover,
                              image: AssetImage('assets/images/shirt1.png')),
                          SizedBox(
                            height: 2,
                          ),
                          Padding(
                            padding: EdgeInsets.all(3.0),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Shirt',
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "Essential men's dress short-sleeves Neck t shirt ",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 13),
                                  ),
                                  SizedBox(
                                    height: 1,
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                      ),
                                      SizedBox(
                                        width: 4,
                                      ),
                                      Text(
                                        '4.9 -2334 ',
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Text(
                                        '12.90',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 17,
                                          color: Colors.green,
                                        ),
                                      ),
                                    ],
                                  )
                                ]),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 7),
                    Container(
                      height: 270,
                      width: 175,
                      color: Colors.white,
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 3,
                          ),
                          Image(
                              height: 170,
                              width: 220,
                              fit: BoxFit.cover,
                              image: AssetImage('assets/images/shirt1.png')),
                          SizedBox(
                            height: 2,
                          ),
                          Padding(
                            padding: EdgeInsets.all(3.0),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Shirt',
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "Essential men's dress short-sleeves Neck t shirt ",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 13),
                                  ),
                                  SizedBox(
                                    height: 1,
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                      ),
                                      SizedBox(
                                        width: 4,
                                      ),
                                      Text(
                                        '4.9 -2334 ',
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Text(
                                        '12.90',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 17,
                                          color: Colors.green,
                                        ),
                                      ),
                                    ],
                                  )
                                ]),
                          ),
                        ],
                      ),
                    ),
                  ])),
              Padding(
                  padding: const EdgeInsets.only(top: 1.0, left: 17, right: 8),
                  child: Row(children: [
                    Container(
                      height: 270,
                      width: 175,
                      color: Colors.white,
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 3,
                          ),
                          Image(
                              height: 170,
                              width: 220,
                              fit: BoxFit.cover,
                              image: AssetImage('assets/images/shirt1.png')),
                          SizedBox(
                            height: 2,
                          ),
                          Padding(
                            padding: EdgeInsets.all(3.0),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Shirt',
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "Essential men's dress short-sleeves Neck t shirt ",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 13),
                                  ),
                                  SizedBox(
                                    height: 1,
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                      ),
                                      SizedBox(
                                        width: 4,
                                      ),
                                      Text(
                                        '4.9 -2334 ',
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Text(
                                        '12.90',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 17,
                                          color: Colors.green,
                                        ),
                                      ),
                                    ],
                                  )
                                ]),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 7),
                    Container(
                      height: 270,
                      width: 175,
                      color: Colors.white,
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 3,
                          ),
                          Image(
                              height: 170,
                              width: 220,
                              fit: BoxFit.cover,
                              image: AssetImage('assets/images/shirt1.png')),
                          SizedBox(
                            height: 2,
                          ),
                          Padding(
                            padding: EdgeInsets.all(3.0),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Shirt',
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "Essential men's dress short-sleeves Neck t shirt ",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 13),
                                  ),
                                  SizedBox(
                                    height: 1,
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                      ),
                                      SizedBox(
                                        width: 4,
                                      ),
                                      Text(
                                        '4.9 -2334 ',
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Text(
                                        '12.90',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 17,
                                          color: Colors.green,
                                        ),
                                      ),
                                    ],
                                  )
                                ]),
                          ),
                        ],
                      ),
                    ),
                  ])),
              Padding(
                   padding: const EdgeInsets.only(top: 1.0, left: 17, right: 8),
                  child: Row(children: [
                    Container(
                      height: 270,
                      width: 175,
                      color: Colors.white,
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 3,
                          ),
                          Image(
                              height: 170,
                              width: 220,
                              fit: BoxFit.cover,
                              image: AssetImage('assets/images/shirt1.png')),
                          SizedBox(
                            height: 2,
                          ),
                          Padding(
                            padding: EdgeInsets.all(3.0),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Shirt',
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "Essential men's dress short-sleeves Neck t shirt ",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 13),
                                  ),
                                  SizedBox(
                                    height: 1,
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                      ),
                                      SizedBox(
                                        width: 4,
                                      ),
                                      Text(
                                        '4.9 -2334 ',
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Text(
                                        '12.90',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 17,
                                          color: Colors.green,
                                        ),
                                      ),
                                    ],
                                  )
                                ]),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 7),
                    Container(
                      height: 270,
                      width: 175,
                      color: Colors.white,
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 3,
                          ),
                          Image(
                              height: 170,
                              width: 220,
                              fit: BoxFit.cover,
                              image: AssetImage('assets/images/shirt1.png')),
                          SizedBox(
                            height: 2,
                          ),
                          Padding(
                            padding: EdgeInsets.all(3.0),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Shirt',
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "Essential men's dress short-sleeves Neck t shirt ",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 13),
                                  ),
                                  SizedBox(
                                    height: 1,
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                      ),
                                      SizedBox(
                                        width: 4,
                                      ),
                                      Text(
                                        '4.9 -2334 ',
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Text(
                                        '12.90',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 17,
                                          color: Colors.green,
                                        ),
                                      ),
                                    ],
                                  )
                                ]),
                          ),
                        ],
                      ),
                    ),
                  ]))
            ],
          ),
  ]));
  }
}
