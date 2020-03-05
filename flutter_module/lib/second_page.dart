import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('技术胖商品详情页')),
      body: Column(
        textDirection: TextDirection.ltr,
        children: <Widget>[
          Container(
              child: RaisedButton(
            child: Text(
              '返回',
              textDirection: TextDirection.ltr,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          )),
          Container(
//                  width: 100,
//                  height: 100,
            color: Colors.blue,
            alignment: Alignment.center,
            child: Text("c"),
          ),
          /*Container(
            child: ListView.builder(
                itemCount: todos.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(todos[index].title),
                  );
                }),
          )*/
        ],
      ),
    )
        /*Center(child:RaisedButton(
            child:RaisedButton(
              child:Text('返回', textDirection: TextDirection.ltr,),
              onPressed: (){
                Navigator.pop(context);
              },
            )
        ))*/

        /*Row(
          textDirection: TextDirection.ltr,
          children: <Widget>[
            Container(
              width: 100,
              height: 100,
              color: Colors.blue,
              alignment: Alignment.center,
              child: Text("A"),
            ),
            Spacer(
              flex: 1,
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.blue,
              alignment: Alignment.center,
              child: Text("B"),
            )
          ],
        ))*/
        ;
  }
}

class ShopDataBean {
  final String title;
  final String description;

  ShopDataBean(this.title, this.description);
}

final todos =
    List<ShopDataBean>.generate(20, (i) => ShopDataBean("商品$i", "商品$i的描述"));
