import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:guih/pages/pacote_promocional.dart';
import '../domain/pacote_turistico.dart';
import '../widget/card_pacote_turistico.dart';

class GridPacotes extends StatefulWidget {
  const GridPacotes({Key? key}) : super(key: key);

  @override
  State<GridPacotes> createState() => _GridPacotesState();
}

class _GridPacotesState extends State<GridPacotes> {
  PacoteTuristico pacote1 = PacoteTuristico(
    imagem: 'https://a.cdn-hotels.com/gdcs/production97/d402/6baff29c-e43b-4caf-a9e8-5dcf1279dea0.jpg?impolicy=fcrop&w=800&h=533&q=medium',
    titulo: 'Pacote Cancún 2022/2023',
    transporte: 'Aéreo - Hotel All inclusive',
    cidade: 'CANCÚN, MEX',
    validade: 'De 01 ago 2022 até 30 set 2023',
    numDiarias: 5,
    numPessoas: 2,
    numParcelas: 6,
    desconto: 45,
    precoAntigo: 6819,
    precoAtual: 2819,
  );
  PacoteTuristico pacote2 = PacoteTuristico(
    imagem: 'https://letsdive.com.br/wp-content/uploads/2019/04/PROCURANDO-MERGULHO-EM-MARAGOGI-CONSIDERE-MACEIO.png',
    titulo: 'Pacote Maragogi 2023',
    transporte: 'Hotel All inclusive',
    cidade: 'MARAGOGI, BRA',
    validade: 'De 01 ago 2022 até 30 set 2023',
    numDiarias: 7,
    numPessoas: 3,
    numParcelas: 12,
    desconto: 30,
    precoAntigo: 4819,
    precoAtual: 819,
  );
  PacoteTuristico pacote3 = PacoteTuristico(
    imagem: 'https://guiaviajarmelhor.com.br/wp-content/uploads/2020/06/melhores-praias-do-brasil-destaques.jpg',
    titulo: 'Pacote Búzios 2022',
    transporte: 'Hotel All inclusive',
    cidade: 'BAHIA, BRA',
    validade: 'De 14 até 24 - setembro, 2022',
    numDiarias: 10,
    numPessoas: 2,
    numParcelas: 10,
    desconto: 30,
    precoAntigo: 1800,
    precoAtual: 1260,
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio:  0.35
        ),
        children: [
          CardPacoteTuristico(pacoteTuristico: pacote1),
          CardPacoteTuristico(pacoteTuristico: pacote2),
          CardPacoteTuristico(pacoteTuristico: pacote3),
          CardPacoteTuristico(pacoteTuristico: pacote2),
        ],
      ),
    );
  }
}
