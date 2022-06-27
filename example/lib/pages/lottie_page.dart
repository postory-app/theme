import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:material_3_demo/alias.dart';
import 'package:material_3_demo/widgets/drawer.dart';

final lotties = {
  'point': MyLotties.point,
}.entries.toList(growable: false);

class LottiePage extends StatelessWidget {
  const LottiePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('lotties')),
      drawer: const MyDrawer(),
      body: SingleChildScrollView(
        child: Wrap(
          spacing: 16.0,
          runSpacing: 16.0,
          children: lotties
              .map((lottie) => SizedBox(
                    width: 256.0,
                    height: 128.0,
                    child: Card(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Lottie.asset(lottie.value, height: 64.0),
                          Text(lottie.key),
                        ],
                      ),
                    ),
                  ))
              .toList(),
        ),
      ),
    );
  }
}
