import 'package:flutter/material.dart';
import 'products.dart';
class ProductManager extends StatefulWidget {
  @override
  _ProductManagerState createState() => _ProductManagerState();
}

class _ProductManagerState extends State<ProductManager> {
  List<String> _products = ['Lista de Comida'];
  @override
  Widget build(BuildContext context) {
    return  ListView(
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(10.0),
          child: RaisedButton(
            onPressed: (){
              setState(() {
                _products.add('Avanzado Food tester');
                print(_products);
              });

            },
            child: Text('Agregar Producto'),
          ),
        ),
        Products(_products),
      ],
    );
  }
}
