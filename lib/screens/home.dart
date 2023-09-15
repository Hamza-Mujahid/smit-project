import 'package:flutter/material.dart';
import 'package:smit_project/screens/cartScreen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  navigateToCart(context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => CartScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF2A4BA0),
        title: const Text(
          "Hey, Hamza",
          style: TextStyle(color: Colors.white),
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.shopping_basket,
              color: Colors.white,
            ),
            onPressed: () {
              navigateToCart(context);
            },
          )
        ],
        bottom: AppBar(
          backgroundColor: Color(0xFF2A4BA0),
          title: const SizedBox(
            width: double.infinity,
            // color: Color(0xff153075),
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                    fillColor: Color(0xff153075),
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                    ),
                    contentPadding: EdgeInsets.all(16),
                    hintText: 'Search Products or store',
                    hintStyle: TextStyle(color: Color(0xff8891A5)),
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  verticalDirection: VerticalDirection.down,
                  children: [
                    Column(
                      children: [
                        Text("Delivery to"),
                        Text("Green Way 3000, Sylhet")
                      ],
                    ),
                    Column(
                      children: [
                        Text("Delivery to"),
                        Text("Green Way 3000, Sylhet")
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ListTile(
            leading: Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),
          Text("Home screen")
        ],
      ),
    );
  }
}
