import 'package:flutter/material.dart';


class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child:
        Container(
          alignment: Alignment.center,
          color: Colors.deepPurple,
          padding: EdgeInsets.only(left:10.0, top: 40.0),
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
                    Expanded( child: Text(
                      "From Mumbai to Delhi",
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
                    Expanded( child: Text(
                      "From Kali to Lumba",
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

                FlightImageAsset()
              ],)




        )
    );
  }



}

class FlightImageAsset extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    AssetImage assetImage = AssetImage('images/flight.jpg');
    Image image = Image(image: assetImage);

    return Container(child: image,);
  }

}
