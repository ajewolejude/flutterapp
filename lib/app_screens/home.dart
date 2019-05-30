import 'package:flutter/material.dart';


class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
        child:
        Container(
            alignment: Alignment.center,
            color: Colors.deepPurple,
            padding: EdgeInsets.only(left: 10.0, top: 40.0),
            child:
            Column(children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(child: Text(
                    "Space Jet",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 35.0,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  )
                    ,),
                  Expanded(child: Text(
                    "From London to Lagos",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 20.0,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                  )
                ],
              ),

              Row(
                children: <Widget>[
                  Expanded(child: Text(
                    "Space Ship",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 35.0,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  )
                    ,),
                  Expanded(child: Text(
                    "From Abuja to London",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 20.0,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                  )
                ],
              ),

              FlightImageAsset(),
              FlightBookButton()
            ],)


        )
    );
  }


}

class FlightBookButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.only(top: 30.0),
      width: 250.0,
      height: 50.0,
      child: RaisedButton(

          child: Text(
            "Book Your Flight",
            style: TextStyle(
                fontSize: 20.0,
                color: Colors.white,
                fontFamily: 'Raleway',
                fontWeight: FontWeight.w700

            ),
          ),
          color: Colors.deepOrange,
          elevation: 6.0,

          onPressed: () => bookFlight(context)
      ),
    );
  }

}

void bookFlight(BuildContext context) {
  var alertDialog = AlertDialog(
    title: Text("Flight Booked Successfully"),
    content: Text("Have a pleasant flight"),

  );

  showDialog(
      context: context,
      builder: (BuildContext context) => alertDialog

  );
}


class FlightImageAsset extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    AssetImage assetImage = AssetImage('images/flight.png');
    Image image = Image(image: assetImage);

    return Container(child: image,);
  }

}
