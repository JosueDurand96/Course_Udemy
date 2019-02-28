import 'package:course_flutter_app/product_manager.dart';
import 'package:flutter/material.dart';

main() =>runApp(MyApp());
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {


  @override
  Widget  build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text('HOLA WEY'),
          ),
        ),
        body: ProductManager(),

      ),
    );
  }
}



//class MyApp extends StatelessWidget {
// @override
//  Widget  build(BuildContext context) {
//    return MaterialApp(
//      home: Scaffold(
//        appBar: AppBar(
//          title: Center(
//            child: Text('HOLA WEY'),
//          ),
//        ),
//        body: Column(
//            children: <Widget>[
//              Container(
//                margin: EdgeInsets.all(10.0),
//                 child: RaisedButton(
//                    onPressed: (){},
//                    child: Text('Agregar Producto'),
//                  ),
//              ),
//              Card(
//                child: Column(
//                  children: <Widget>[
//                    Image.asset('assets/food.jpg'),
//                    Text('Comida Rica xD!'),
//                  ],
//                ),
//              ),
//
//            ],
//          ),
//      ),
//    );
//  }
//}
