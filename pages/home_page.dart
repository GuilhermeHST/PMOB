import 'package:flutter/cupertino.dart';
import 'package:guih/domain/pacote_turistico.dart';
import 'package:guih/pages/grid_pacotes.dart';
import 'package:guih/pages/pacote_promocional.dart';
import 'package:guih/pages/temp_page.dart';
import 'package:guih/widget/card_pacote_turistico.dart';
import 'package:flutter/material.dart';

import 'destaques_pages.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  List pages = const [
    DestaquesPage(),
    GridPacotes(),
    TempPage(),
    TempPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: false,
        title: const Text('Pesquisar'),
        backgroundColor: const Color(0xFF10397B),
      ),
      body: pages[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: const Color(0xFF175C28),
        currentIndex: selectedIndex,
        onTap: (index){
          setState(() {
            selectedIndex = index;
          });
        },
        items: const[
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.compass),
              label: 'Destaques'
          ),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.bag),
              label: 'Pacotes'
          ),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.person),
              label: 'Perfil'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.more_horiz),
              label: 'Mais'
          ),
        ],
      ),
    );
  }
  }