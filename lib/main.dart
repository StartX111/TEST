import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Flutter Instagram',
    home: Instagram(),
  ));
}

class Instagram extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading:
        IconButton(
          iconSize: 50,
          icon: Icon(Icons.keyboard_arrow_left, color: Colors.white),
          tooltip: 'Navigation menu',
          onPressed: null,
        ),
        title: Column(
          children: <Widget>[
            Text('GRIDDINANICS_UA',
                style: TextStyle(fontSize: 15, color: Color(0xFF919191))),
            Text('Posts'),
          ],
        ),
        actions: [
//          IconButton(
//            icon: Icon(Icons.search),
//            tooltip: 'Search',
//            onPressed: null,
//          ),
        ],
      ),
      // body is the majority of the screen.
      body: Center(
        child: Post(),
      ),
    );
  }
}

class Post extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            child: PostCarousel(),
          ),
        ],
      ),
    );
  }
}

class PostCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: <Widget>[
        Container(
          child: Image(
            image: AssetImage('assets/images/image01.png'),
          ),
        ),
        Container(
          color: Colors.black,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                child: PostAction(),
              ),
              Container(
                child: PostCrouselState(),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Icon(
                    Icons.turned_in_not,
                    color: Colors.white,
                    size: 35,
                  ),
                ),
              )

            ],
          ),
        )
      ],
    ));
  }
}

class PostAction extends StatefulWidget {
  @override
  _PostActionState createState() => _PostActionState();
}

class _PostActionState extends State<PostAction> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        IconButton(
          iconSize: 35,
          icon: Icon(Icons.favorite_border, color: Colors.white),
          tooltip: null,
          onPressed: null,
        ),
        IconButton(
          iconSize: 35,
          icon: Icon(Icons.comment, color: Colors.white),
          tooltip: null,
          onPressed: null,
        ),
        IconButton(
          iconSize: 35,
          icon: Icon(Icons.send, color: Colors.white),
          tooltip: null,
          onPressed: null,
        ),
      ],
    );
  }
}

class PostCrouselState extends StatefulWidget {
  @override
  _PostCrouselStateState createState() => _PostCrouselStateState();
}

class _PostCrouselStateState extends State<PostCrouselState> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      child: Row(

        children: <Widget>[
          Container(
              child: Icon(
                Icons.lens,
                color: Colors.blue,
                size: 10,
              )
          ),
          Container(
              child: Icon(
                Icons.lens,
                color: Colors.white,
                size: 10,
              )
          )
        ],
      ),
    );
  }
}
