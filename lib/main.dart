import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'detail_charts.dart';


/*
resource of increment button
https://stackoverflow.com/questions/63558583/counter-widget-in-flutter
* */

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Desgin El M7al",
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final String defaultImage = 'https://www.woolha.com/media/2020/03/eevee.png';
  int chartsCount;
  List charts;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Color(0xff512DA8),
        backgroundColor: Color(0xff6F35A5),
        title: Text(
          "All Charts",
          style: TextStyle(
            color: Color(0xffFFFFFF),
            fontSize: 25,
          ),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
          //itemCount: (this.chartsCount == null) ? 0 : this.chartsCount,
          itemBuilder: (BuildContext context, int position) {
        return Card(
            color: Colors.grey[300],
            shape: RoundedRectangleBorder(
              side: BorderSide(color: Colors.white70, width: 1),
              borderRadius: BorderRadius.circular(10),
            ),
            margin: EdgeInsets.fromLTRB(10, 10, 10, 20.0),
            elevation: 10.0,
            shadowColor: Color(0xffB3E5FC),
            child: Container(
                child: Column(
              children: <Widget>[
                ListTile(
                  onTap: () {
                    MaterialPageRoute route =
                        MaterialPageRoute(builder: (_) => DetailCharts());
                    Navigator.push(context, route);
                  },
                  leading: CircleAvatar(
                    radius: 30.0,
                    child: ClipOval(
                      child: Image.network(
                        defaultImage,
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                    backgroundColor: Colors.transparent,
                  ),
                  title: Text(
                    "Lorem Ipsum ",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20, color: Color(0xff212121)),
                  ),
                  subtitle: Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
                    " Ut enim ad minim veniamt.",
                    style: TextStyle(
                      //color: Color(0xff757575),
                      color: Color(0xff212121),
                      fontSize: 15,
                    ),
                  ),

                  /*
                  trailing: Row(
                      children: <Widget>[
                    Icon(Icons.flight),
                    Icon(Icons.flight_land)
                  ]),
                   */
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    FlatButton.icon(
                      onPressed: () {
                        MaterialPageRoute route =
                            MaterialPageRoute(builder: (_) => DetailCharts());
                        Navigator.push(context, route);
                      },
                      icon :Icon(
                        MaterialIcons.details,
                        //FontAwesome5Solid.dice_one ,
                        size: 18,
                        color: Color(0xff6F35A5),
                      ),
                      /*
                      icon: Icon(
                        Icons.details_sharp ,
                        size: 18,
                        color: Color(0xff212121),
                      ),
                       */
                      label: Text(
                        "Details",
                        style: TextStyle(
                          color: Color(0xff6F35A5),
                          fontSize: 18,
                        ),
                      ),
                    ),
                    /*
                    FlatButton(
                      color: Colors.transparent,
                      onPressed: () {
                      MaterialPageRoute route =
                            MaterialPageRoute(builder: (_) => DetailCharts());
                      Navigator.push(context, route);
                      },
                      child: Text(
                        "Details" ,
                        style: TextStyle(
                          color: Color(0xff212121) ,
                          fontSize: 18,
                          
                        ),
                      ),

                    ),
                    
                    */
                  ],
                ),
              ],
            )));
      }),

      /*
      Card(

          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
        color: Color(0xffFFFFFF),
        elevation: 2.0,
          child: ListTile(
            onTap: () {
              MaterialPageRoute route = MaterialPageRoute(
                  builder: (_) => DetailCharts());
              Navigator.push(context, route);
            },
            leading: CircleAvatar(
              backgroundImage: NetworkImage(defaultImage),
            ),
            title: Text("Lorem Ipsum"),
            subtitle: Text("Lorem Ipsum "
                "Lorem ipsum dolor sit amet, "
                "consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
                " Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."),
          )
      ),

      */

      /*
      Card(
        color: Colors.grey[900],
        shape: RoundedRectangleBorder(
          side: BorderSide(color: Colors.white70, width: 1),
          borderRadius: BorderRadius.circular(10),
        ),
        margin: EdgeInsets.all(20.0),
        child: Container(
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text(
                  'example',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),

      */
    );
  }
}
