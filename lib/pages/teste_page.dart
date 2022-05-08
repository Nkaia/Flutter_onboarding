import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'delivery_page.dart';

class TestePage extends StatelessWidget {
  const TestePage({Key? key}) : super(key: key);
  open(pagina) {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        color: Color.fromARGB(255, 36, 35, 35),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 120, bottom: 24),
              child: Lottie.network(
                "https://assets2.lottiefiles.com/packages/lf20_ysas4vcp.json",
                width: 250,
                height: 200,
              ),
            ),
            Text(
              "Qual o tamanho da sua fome ?",
              style: TextStyle(
                fontSize: 32,
                letterSpacing: -1.2,
                fontWeight: FontWeight.w600,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 12),
              child: Text(
                "Nossa entrega é super rapida!!",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.red[100],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => DeliveryPage()));
                },
                child: Text("Próxima")),
            SizedBox(
              height: 90,
            ), // Row na linha
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.all(20),
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.red),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                ),
                Container(
                  margin: EdgeInsets.all(20),
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.red),
                      borderRadius: BorderRadius.circular(10)),
                ),
                Container(
                  margin: EdgeInsets.all(20),
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.red),
                      borderRadius: BorderRadius.circular(10)),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
