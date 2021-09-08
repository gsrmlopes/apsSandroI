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
        color: Colors.grey.shade300,
        padding: EdgeInsets.fromLTRB(80, 0, 30, 0),
        child: Column(
          children: [
            CustomHeader(
              title: "Formação",
            ), //\n
            CustomTextBloc(
                information:
                    "Ensino Médio: Pitágoras\nBetim\n~2018\n\nBacharel em Administração\nUNIPAM\n2015-2019\n\nCursando Sistemas de Informação\nUNIPAM\n2020 - 2023(Estimado)"),
            CustomHeader(
              title: "Cursos",
            ), //\n
            CustomTextBloc(
                information:
                    "AutoCad\nFAPEMIG - 2017 - 80H\n\nCongresso Mineiro de Empreendedorismo\n UNIPAM 2015-2018 - 63H\n\nVetorização com InkScape\nUdemy - 2021 - 12h\n\nMini Curso Arduino e impressão 3D e corte a laser\nFABLAB UNIPAM - 2019 - 10H"),
            CustomHeader(
              title: "Experiências",
            ), //\n
            CustomTextBloc(
                information:
                    "Administrativo e Ti em Grupo Nutrileite\nMatriz, Filial 02 e Filial 04\n12/2018 - Até o momento."),
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
          color: Colors.blueGrey.shade200,
          width: MediaQuery.of(context).size.width -
              (MediaQuery.of(context).size.width * 0.40),
          padding: EdgeInsets.only(left: 250, bottom: 50, top: 50),
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
          padding: EdgeInsets.fromLTRB(35, 35, 35, 35),
          width: MediaQuery.of(context).size.width -
              (MediaQuery.of(context).size.width * 0.5),
          child: Text(
            title,
            style: TextStyle(
                fontSize: 50, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          color: Colors.blueGrey,
        ),
      ],
    );
  }
}
