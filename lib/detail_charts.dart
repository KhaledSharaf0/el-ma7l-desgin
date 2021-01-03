
import 'package:flutter/material.dart';

class DetailHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Desgin El M7al Details",
      home: DetailCharts(),
    );
  }
}

class DetailCharts extends StatefulWidget {
  final int initNumber;
  final Function(int) counterCallback;
  final Function increaseCallback;
  final Function decreaseCallback;
  DetailCharts({this.initNumber, this.counterCallback, this.increaseCallback, this.decreaseCallback});
  @override
  _DetailChartsState createState() => _DetailChartsState();
}

class _DetailChartsState extends State<DetailCharts> {
  final String defaultImage = 'https://www.woolha.com/media/2020/03/eevee.png';
  int _currentCount;
  Function _counterCallback;
  Function _increaseCallback;
  Function _decreaseCallback;
  @override
  void initState() {
    _currentCount = widget.initNumber ?? 1;
    _counterCallback = widget.counterCallback ?? (int number) {};
    _increaseCallback = widget.increaseCallback ?? () {};
    _decreaseCallback = widget.decreaseCallback ?? () {};
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*
      appBar: AppBar(
        title: Text("Details Product",
          style: TextStyle(
            color: Color(0xffFFFFFF),
            fontSize: 25,
          ),
        ),
        centerTitle: true,
        backgroundColor: Color(0xff6F35A5),
      ),
      */
      body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Color(0xfff4c78a),
          padding: EdgeInsets.only(top: 20),
          child: Card(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              side: BorderSide(color: Colors.white, width: 1 ,),
              borderRadius: BorderRadius.circular(0),
            ),
            margin: EdgeInsets.fromLTRB(10, 120, 10, 0),
            //elevation: 10.0,
            //shadowColor: Color(0xffB3E5FC),
            child: Container(
              padding: EdgeInsets.fromLTRB(0 , 50 , 0 , 0),
              child: Column(
                children: [
                  Column(
                    //Image of Product
                    children: [
                      ClipOval(
                        child: Image.network(
                          defaultImage,
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                      new Padding(padding: EdgeInsets.all(20)),
                      Text(
                        "Lorem Ipsum ",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 30 , color: Color(0xff212121)),
                      ),
                      new Padding(padding: EdgeInsets.all(20)),
                      Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
                            " Ut enim ad minim veniamt.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          //color: Color(0xff757575),
                          color: Color(0xff212121),
                          fontSize: 20,
                        ),
                      ),

                      //Button increment
                      new Padding(padding: EdgeInsets.all(20)),
                       Container(
                         //padding: EdgeInsets.zero,
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(25),
                           color: Colors.transparent,
                         ),
                         child:  Row(
                           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                           children: [
                             _createIncrementDicrementButton(Icons.remove, () => _dicrement()),
                             Text(_currentCount.toString(),
                               style: TextStyle(
                                   fontSize: 22 ,
                                 color: Color(0xff212121) ,
                                 fontWeight: FontWeight.bold
                               ),
                             ),
                             _createIncrementDicrementButton(Icons.add, () => _increment()),
                           ],
                         ),
                       )
                    ],
                  ),


                  //Button Save
                  new Padding(padding: EdgeInsets.fromLTRB(0 , 0 , 0 , 50)),
                  RaisedButton(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.white,style: BorderStyle.none, width: 1),
                      borderRadius: BorderRadius.circular(75),
                    ),
                    padding: EdgeInsets.fromLTRB(40 , 15 , 40  , 15),
                    color: Color(0xfff4c78a),
                    onPressed: () {
                      print("Save");
                      },
                    child: Text(
                      "Buy Now" ,
                      style: TextStyle(
                        color: Color(0xff212121) ,
                        fontSize: 22,
                        backgroundColor: Color(0xfff4c78a),
                        //backgroundColor: Colors.white
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
      ),
    );
  }

// function in button increment
  void _increment() {
    setState(() {
      _currentCount++;
      _counterCallback(_currentCount);
      _increaseCallback();
    });
  }

  void _dicrement() {
    setState(() {
      if (_currentCount > 1) {
        _currentCount--;
        _counterCallback(_currentCount);
        _decreaseCallback();
      }
    });
  }

  Widget _createIncrementDicrementButton(IconData icon, Function onPressed) {
    return RawMaterialButton(
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      constraints: BoxConstraints(minWidth: 30.0, minHeight: 30.0),
      onPressed: onPressed,
      elevation: 2.0,
      fillColor: Color(0xfff4c78a),
      child: Icon(
        icon,
        color: Color(0xff212121) ,
        size: 20.0,
      ),
      shape: CircleBorder(),
    );
  }
}
