import 'package:flutter/material.dart';

class MainInfo extends StatelessWidget {
  const MainInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      //scrollDirection: Axis.horizontal,
      child: Container(
        //height: MediaQuery.of(context).size.height,
        color: Colors.grey.shade300,
        child: Column(
          children: [
            Row(
              children: [
                CustomHeader(
                  title: "Formação",
                ),
                CustomHeader(
                  title: "Cursos",
                ),
              ],
            ),
            Row(
              children: [
                CustomTextBloc(
                    information:
                        "Ensino Médio: Bacharel em Administração\nUNIPAM\n2015-2019\n\nCursando Sistemas de Informação\nUNIPAM\n2020 - 2023(Estimado)"),
                CustomTextBloc(
                    information:
                        "AutoCad\nFAPEMIG - 2017 - 80H\n\nCongresso Mineiro de Empreendedorismo\n UNIPAM 2015-2018 - 63H\n\nVetorização com InkScape\nUdemy - 2021 - 12h\n\nMini Curso Arduino e impressão 3D e corte a laser\nFABLAB UNIPAM - 2019 - 10H"),
              ],
            ),
            Row(
              children: [
                CustomHeader(
                  title: "Experiências",
                ),
                CustomHeader(
                  title: "Linguagens",
                ),
              ],
            ),
            Row(
              children: [
                CustomTextBloc(
                    information:
                        "Administrativo e Ti em Grupo Nutrileite\nMatriz, Filial 02 e Filial 04\n12/2018 - Até o momento."),
                CustomTextBloc(
                    information:
                        "Python - Junior                     Flutter - Junior\n\nReact Native - Estudando           GDScript - Junior\n\nJavaScript - Estudando               Html+CSS5 - junior\n"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CustomTextBloc extends StatelessWidget {
  const CustomTextBloc({
    Key? key,
    required this.information,
  }) : super(key: key);
  final String information;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          //color: Colors.blueGrey.shade200,
          width: (MediaQuery.of(context).size.width * 0.833) / 2,
          padding: EdgeInsets.only(left: 100, bottom: 50, top: 50),
          child: Text(
            information,
            style: TextStyle(fontSize: 20),
          ),
        ),
      ],
    );
  }
}

class CustomHeader extends StatelessWidget {
  const CustomHeader({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(75, 35, 0, 35),
          width: (MediaQuery.of(context).size.width * 0.833) / 2,
          child: Text(
            title,
            style: TextStyle(
                fontSize: 50, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          color: Colors.black,
        ),
      ],
    );
  }
}
