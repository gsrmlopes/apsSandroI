import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            DrawerHeader(
                child: Image.asset(
              "images/self.png",
              height: 600,
            )),
            DrawerListitem(
              title: "Guilherme Souza Reis",
              icon: "",
              fntSz: 20,
            ),
            DrawerListitem(
                title: "guilhermesrml@unipam.edu.br",
                icon: "images/gmail.svg",
                fntSz: 18),
            DrawerListitem(
                title: "gsrmlopes@gmail.com",
                icon: "images/gmail.svg",
                fntSz: 18),
            DrawerListitem(
                title: "gsrmlopes", icon: "images/github.svg", fntSz: 20),
            DrawerListitem(
                title: "(31)9 87848091",
                icon: "images/whatsapp.svg",
                fntSz: 20),
            DrawerListitem(
                title: "(34)9 88832393",
                icon: "images/smartphone.svg",
                fntSz: 20),
            DrawerListitem(
                title: "Inglês avançado - Escrita",
                icon: "images/escrita.svg",
                fntSz: 18),
            DrawerListitem(
                title: "Inglês avançado - Fala",
                icon: "images/linguas.svg",
                fntSz: 18),
            DrawerListitem(
                title: "CNH - B", icon: "images/carro.svg", fntSz: 18),
          ],
        ),
      ),
    );
  }
}

class DrawerListitem extends StatelessWidget {
  const DrawerListitem({
    Key? key,
    required this.title,
    required this.icon,
    required this.fntSz,
  }) : super(key: key);
  final String title, icon;
  final double fntSz;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {},
      horizontalTitleGap: 0.0,
      leading: SvgPicture.asset(icon),
      title: Text(
        title,
        style: TextStyle(
            color: Colors.blueGrey,
            fontSize: fntSz,
            fontWeight: FontWeight.bold),
      ),
    );
  }
}


