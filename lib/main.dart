import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  List<SideAreaData> list = [
    SideAreaData(
        title: 'Some Small title for this Tile..',
        reverse: true,
        description:
            'Some Large text that justify above statement with an image in right side that will able be justifying above statement and it\'s to add images in UI for better User Experience',
        imagePath: 'assets/images/landing_01.png'),
    SideAreaData(
        title: 'Some Small title for this Tile..',
        reverse: false,
        description:
            'Some Large text that justify above statement with an image in right side that will able be justifying above statement and it\'s to add images in UI for better User Experience',
        imagePath: 'assets/images/landing_02.png'),
    SideAreaData(
        title: 'Some Small title for this Tile..',
        reverse: true,
        description:
            'Some Large text that justify above statement with an image in right side that will able be justifying above statement and it\'s to add images in UI for better User Experience',
        imagePath: 'assets/images/landing_03.png'),
    SideAreaData(
        title: 'Some Small title for this Tile..',
        reverse: false,
        description:
            'Some Large text that justify above statement with an image in right side that will able be justifying above statement and it\'s to add images in UI for better User Experience',
        imagePath: 'assets/images/landing_04.png'),
    SideAreaData(
        title: 'Some Small title for this Tile..',
        reverse: true,
        description:
            'Some Large text that justify above statement with an image in right side that will able be justifying above statement and it\'s to add images in UI for better User Experience',
        imagePath: 'assets/images/landing_05.png'),
    SideAreaData(
        title: 'Some Small title for this Tile..',
        reverse: false,
        description:
            'Some Large text that justify above statement with an image in right side that will able be justifying above statement and it\'s to add images in UI for better User Experience',
        imagePath: 'assets/images/landing_06.png'),
    SideAreaData(
        title: 'Some Small title for this Tile..',
        reverse: true,
        description:
            'Some Large text that justify above statement with an image in right side that will able be justifying above statement and it\'s to add images in UI for better User Experience',
        imagePath: 'assets/images/landing_07.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 500) {
        return Scaffold(
          appBar: AppBar(
            title: Text('Demo'),
          ),
          body: mainContainer(),
        );
      }
      return Scaffold(
        body: Column(
          children: [
            Card(
              margin: EdgeInsets.only(bottom: 8),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(16.0),
                      bottomRight: Radius.circular(16.0))),
              child: Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 16.0),
                  child: Text('My App Bar',
                      style: TextStyle(color: Colors.black, fontSize: 30)),
                ),
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/main_bg.png'),
                        fit: BoxFit.cover)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if (constraints.maxWidth > 1000)
                      Expanded(
                          child: ListView(
                        children: list.map((data) => data.getView()).toList(),
                      )),
                    Card(
                      margin: EdgeInsets.all(32),
                      child: mainContainer(),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      );
    });
  }

  Widget mainContainer() {
    return Container(
      constraints: BoxConstraints(maxWidth: 500),
      padding: EdgeInsets.all(32),
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Login',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 36,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Icon(
            Icons.person,
            size: 64,
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            decoration: InputDecoration(
                hintText: 'username',
                labelText: 'username',
                prefixIcon: Icon(Icons.person)),
          ),
          TextField(
            decoration: InputDecoration(
                hintText: 'password',
                labelText: 'password',
                prefixIcon: Icon(Icons.vpn_key)),
          ),
          SizedBox(
            height: 20,
          ),
          RaisedButton(
            onPressed: () {
              //Nothing for now
            },
            color: Colors.blue,
            textColor: Colors.white,
            child: Text('Login'),
          ),
          Spacer(),
          RichText(
            text: TextSpan(children: [
              TextSpan(
                  text: 'Don\'t have an account? ',
                  style: TextStyle(
                    color: Colors.black,
                  )),
              TextSpan(
                  text: 'Signup',
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 18,
                      fontWeight: FontWeight.bold))
            ]),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Expanded(child: Container(color: Colors.black, height: 0.8)),
              Text(' Login with '),
              Expanded(child: Container(color: Colors.black, height: 0.8)),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                  tooltip: 'Login with Facebook',
                  icon: Image.asset('assets/images/facebook.png'),
                  iconSize: 40,
                  padding: EdgeInsets.all(4),
                  onPressed: () {}),
              IconButton(
                  tooltip: 'Login with Google',
                  icon: Image.asset('assets/images/google.png'),
                  iconSize: 40,
                  padding: EdgeInsets.all(4),
                  onPressed: () {}),
              IconButton(
                  tooltip: 'Login with Twitter',
                  icon: Image.asset('assets/images/twitter.png'),
                  iconSize: 40,
                  padding: EdgeInsets.all(4),
                  onPressed: () {}),
              IconButton(
                  tooltip: 'Login with Github',
                  icon: Image.asset('assets/images/github.png'),
                  iconSize: 40,
                  padding: EdgeInsets.all(4),
                  onPressed: () {}),
              IconButton(
                  tooltip: 'Login with Linkedin',
                  icon: Image.asset('assets/images/linkedin.png'),
                  iconSize: 40,
                  padding: EdgeInsets.all(4),
                  onPressed: () {}),
            ],
          )
        ],
      ),
    );
  }
}

class SideAreaData {
  final String title;
  final String description;
  final bool reverse;
  final String imagePath;

  SideAreaData({this.title, this.description, this.imagePath, this.reverse});

  Widget getView() {
    return Card(
      elevation: 8.0,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(32))),
      margin: EdgeInsets.symmetric(horizontal: 56, vertical: 64),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: getMainRow(),
      ),
    );
  }

  Widget getMainRow() {
    if (reverse)
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [imageContainer(), textContainer()],
      );
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [textContainer(), imageContainer()],
    );
  }

  Widget imageContainer() {
    return Container(
      constraints: BoxConstraints(maxWidth: 500),
      child: Image.asset(imagePath),
    );
  }

  Widget textContainer() {
    return Container(
      constraints: BoxConstraints(maxWidth: 500),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title,
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold)),
          SizedBox(
            height: 20,
          ),
          Text(
            description,
            style: TextStyle(fontSize: 16, color: Colors.black),
          )
        ],
      ),
    );
  }
}
