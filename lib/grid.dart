import 'package:flutter/material.dart';

class Grids extends StatefulWidget {
  const Grids({Key? key}) : super(key: key);

  @override
  _GridsState createState() => _GridsState();
}

class _GridsState extends State<Grids> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grid & List'),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        padding: EdgeInsets.all(8),
        children: List.generate(50, (index) {
          return Card(
            color: Colors.purple,
            margin: EdgeInsets.all(8),
            child: InkWell(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.home,
                    color: Colors.white,
                  ),
                  // Divider(),

                  Text(
                    'Number $index',
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}
