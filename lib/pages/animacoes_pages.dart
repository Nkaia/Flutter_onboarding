import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:onboarding_teste/pages/teste_page.dart';

import 'delivery_page.dart';
import 'check_page.dart';

class AnimacoesPage extends StatefulWidget {
  const AnimacoesPage({Key? key}) : super(key: key);

  @override
  _AnimacoesPageState createState() => _AnimacoesPageState();
}

class _AnimacoesPageState extends State<AnimacoesPage> {
  // final list = [
  //   {"imagem 1": "texto 1"},
  //   {"imagem 2": "texto 2"},
  //   {"imagem 3": "texto 3"}
  // ];

  open(pagina) {
    Navigator.push(context, MaterialPageRoute(builder: pagina));
  }

  var index = 0;

  void next() {
    if (index == 0) {
      open((_) => TestePage());
      index++;
      return;
    }
    if (index == 1) {
      open((_) => DeliveryPage());
      index++;
      return;
    }
    if (index == 2) {
      open((_) => SwitchPage());
      index++;
      return;
    }

    if (index == 3) {
      index = 0;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        title: Text('Categorias'),
      ),
      body: Column(
        children: [
          ListTile(
            title: Text('Delivery'),
            onTap: () => open((_) => DeliveryPage()),
          ),
          Divider(),
          ListTile(
            title: Text('Pedido Checado'),
            onTap: () => open((_) => SwitchPage()),
          ),
          Divider(),
          ListTile(
            title: Text('Escolhas as opções'),
            onTap: () => open((_) => TestePage()),
          ),
          Divider(),
          SizedBox(
            height: 40,
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  next();
                });
              },
              child: Text("Próxima")),

          // Text(list[index].keys.first),
          SizedBox(
            height: 30,
          ),
          // Text(list[index].values.first),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.all(20),
                width: 10,
                height: 10,
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.red),
                    color: index == 0 ? Colors.red : null,
                    borderRadius: BorderRadius.circular(10)),
              ),
              Container(
                margin: EdgeInsets.all(20),
                width: 10,
                height: 10,
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.red),
                    color: index == 1 ? Colors.red : null,
                    borderRadius: BorderRadius.circular(10)),
              ),
              Container(
                margin: EdgeInsets.all(20),
                width: 10,
                height: 10,
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.red),
                    color: index == 2 ? Colors.red : null,
                    borderRadius: BorderRadius.circular(10)),
              ),
            ],
          )
        ],
      ),
    );
  }
}
