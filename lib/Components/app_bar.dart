import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      //automaticallyImplyLeading: false,
      backgroundColor: Colors.white,
      iconTheme: IconThemeData(
        color: Colors.black,
      ),
      title: const Text(
        'Investment PRO',
        style: TextStyle(color: Colors.black),
      ),
      elevation: 0, //Shadow

      actions: [
        Padding(
            padding: EdgeInsets.only(right: 60),
            child: ButtonBar(
              children: <Widget>[
                TextButton(
                  child: Text(
                    'Login',
                    style: TextStyle(color: Color(0xFF023AFF)),
                  ),
                  onPressed: () {/** */},
                ),
                Padding(
                  padding: EdgeInsets.only(right: 20),
                ),
                TextButton(
                  child: Text(
                    'Sign up',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Color(0xFF023AFF)),
                    padding: MaterialStateProperty.all(
                        EdgeInsets.symmetric(vertical: 10, horizontal: 30)),
                  ),
                  onPressed: () {/** */},
                ),
              ],
            )),
        Padding(
          padding: EdgeInsets.only(right: 18),
          //child: Icon(Icons.perm_identity),
          child: IconButton(
            icon: Icon(Icons.perm_identity),
            onPressed: () {},
          ),
        ),
        Padding(
          padding: EdgeInsets.only(right: 50),
          //child: Icon(Icons.tune_rounded),
          child: IconButton(
            icon: Icon(Icons.tune_rounded),
            onPressed: () {},
          ),
        ),
      ],
      actionsIconTheme: IconThemeData(size: 25.0, color: Colors.black),
    );
  }
}
