import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Container(
          padding: EdgeInsets.all(40.0),
          color: Colors.black,
          alignment: Alignment.center,
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                      child: Text(
                    "Car:",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        fontSize: 30.0,
                        color: Colors.white,
                        decoration: TextDecoration.none,
                        fontFamily: 'ComicNeue',
                        fontWeight: FontWeight.w700),
                  )),
                  Expanded(
                    child: Text(
                      "Bugatti",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30.0,
                          decoration: TextDecoration.none,
                          fontFamily: 'ComicNeue',
                          fontWeight: FontWeight.w700),
                    ),
                  )
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                      child: Text(
                    "Max Flight:",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        fontSize: 30.0,
                        color: Colors.white,
                        decoration: TextDecoration.none,
                        fontFamily: 'ComicNeue',
                        fontWeight: FontWeight.w700),
                  )),
                  Expanded(
                    child: Text(
                      "200 mph",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          fontSize: 30.0,
                          fontStyle: FontStyle.italic,
                          color: Colors.white,
                          decoration: TextDecoration.none,
                          fontFamily: 'ComicNeue',
                          fontWeight: FontWeight.w700),
                    ),
                  )
                ],
              ),
              CarImageAsset(),
              Buy()
            ],
          )

          //Text("Flight",textDirection: TextDirection.ltr, style: TextStyle( color: Colors.white,decoration: TextDecoration.none, fontFamily: 'ComicNeue', fontWeight: FontWeight.w300),),
          //width: 200.0,
          //height: 100.0,
          ),
    );
  }
}

class CarImageAsset extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    AssetImage assetImage = AssetImage('images/car.jpg');
    Image image = Image(
      image: assetImage,
      width: 300.0,
      height: 300.0,
    );
    return Container(
      child: image,
    );
  }
}

class Buy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 50.0,
      width: 250.0,
      child: RaisedButton(
          color: Colors.red,
          child: Text(
            "Buy for 19999",
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w600),
          ),
          elevation: 10.0,
          onPressed: () {
            buycar(context);
          }),
    );
  }
}

void buycar(BuildContext context) {
  var alertDialog = AlertDialog(
    title: Text("Car bought successfully!"),
    content: Text("Enjoy your ride!"),
  );

  showDialog(
      context: context,
      builder: (BuildContext context) {
        return alertDialog;
      });
}
