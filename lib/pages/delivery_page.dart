import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'check_page.dart';

class DeliveryPage extends StatelessWidget {
  const DeliveryPage({Key? key}) : super(key: key);

  get index => null;

  //get Lottie => null;

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
                "https://assets5.lottiefiles.com/packages/lf20_ihadkqla.json",
                width: 250,
                height: 265,
              ),
            ),
            Text(
              "Junior está a caminho",
              style: TextStyle(
                fontSize: 32,
                letterSpacing: -1.2,
                fontWeight: FontWeight.w600,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 12),
              child: Text(
                "Seu pedido deve chegar em 15 minutos",
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
                      MaterialPageRoute(builder: (context) => SwitchPage()));
                },
                child: Text("Próxima")),
            SizedBox(
              height: 60,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.all(20),
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.red),
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(10)),
                ),
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
                      // color: Colors.red,
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
