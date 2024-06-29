import 'package:dastur/valuta/bosh_sahifa.dart';
import 'package:dastur/valuta/bosh_sahifa2.dart';
import 'package:dastur/valuta/hamiyon.dart';
import 'package:dastur/valuta/kabinet.dart';
import 'package:flutter/material.dart';
class Paijlar extends StatefulWidget {
  const Paijlar({super.key});

  @override
  State<Paijlar> createState() => _InstagaramState();
}

class _InstagaramState extends State<Paijlar> {
  int _curentindex = 0;

  List<Widget> Tugma = const [
 Homepage2(),
 Hamiyon(),
 Kabinet()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Tugma[_curentindex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _curentindex,
        onTap: (int Newindex) {
          setState(() {
            _curentindex = Newindex;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.green,
              ),
              label: 'Главная',
              backgroundColor: Colors.white38),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.autorenew_rounded,
                color: Colors.green,
              ),
              label: "Кошелек",
              backgroundColor: Colors.white38),
              BottomNavigationBarItem(
              icon: Icon(
                Icons.currency_exchange_outlined,
                color: Colors.green,
              ),
              label: "Личный кабинет",
              backgroundColor: Colors.white38),

          
      
        ],
      ),
    );
  }
}
