import 'package:flutter/material.dart';



class DhagaStyles {
  static const TextStyle listTileSideMenu = TextStyle(
      fontFamily: 'Proxima',
      fontStyle: FontStyle.normal,
      fontSize: 13,
      color: Colors.black,
      fontWeight: FontWeight.w400
  );
  static const TextStyle listTileHeaderTitle = TextStyle(
    fontFamily: 'Proxima',
    fontStyle: FontStyle.normal,
    fontSize: 15,
    color: Colors.black,
      fontWeight: FontWeight.w400);
  static const TextStyle listTileSubTitle = TextStyle(
    fontFamily: 'Proxima',
    fontStyle: FontStyle.normal,
    fontSize: 13,
    color: Color.fromRGBO(126, 128, 140, 1),
  );
  static const TextStyle listTileTitle = TextStyle(
    fontFamily: 'Proxima',
    fontStyle: FontStyle.normal,
    fontSize: 13,
    color: Colors.black,
  );



  // Pressed Tab Menu Box Decoration
  static const BoxDecoration tabMenuPressedBoxDecoration = BoxDecoration(
    border: Border(
      bottom: BorderSide(
        width: 2.0,
        color: Colors.red,
      ),
    ),
  );


}
