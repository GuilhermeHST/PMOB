import 'package:flutter/material.dart';
import 'package:guih/pages/pacote_promocional.dart';
import '../domain/pacote_turistico.dart';
import '../widget/card_pacote_turistico.dart';

class DestaquesPage extends StatefulWidget {
  const DestaquesPage({Key? key}) : super(key: key);

  @override
  State<DestaquesPage> createState() => _DestaquesPageState();
}

class _DestaquesPageState extends State<DestaquesPage> {
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
      child: ListView(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.purple,
              borderRadius: BorderRadius.circular(16),
            ),
            padding: EdgeInsets.all(16),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const Text(
                        'TOP DESTINOS MAIS BUSCADOS',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        'Corre que ta rolando muita promoção',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                      const SizedBox(height: 8),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return const PacotePromocional();
                              },
                            ),
                          );
                        },
                        child: Text(
                          'Eu quero',
                          style: TextStyle(color: Colors.black),
                        ),
                        style: ElevatedButton.styleFrom(
                            primary: Color(0xFFF8FF04)),
                      )
                    ],
                  ),
                ),
                const SizedBox(width: 24),
                const Placeholder(
                  fallbackHeight: 150,
                  fallbackWidth: 100,
                  color: Colors.white,
                )
              ],
            ),
          ),
          const SizedBox(height: 16),
          CardPacoteTuristico(pacoteTuristico: pacote1),
          CardPacoteTuristico(pacoteTuristico: pacote2),
          CardPacoteTuristico(pacoteTuristico: pacote3),
        ],
      ),
    );
  }
}
