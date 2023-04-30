import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:projeto/2-app/shared/uteis/imagensAplicativo.dart';
import '../widgets/conteudo_tab_chats.dart';
import '../widgets/conteudo_tab_home.dart';
import '../widgets/fundo_home_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var indexTab = 0;
  final tabs = [
    const ConteudoTabHome(),
    const Padding(
      padding: EdgeInsets.only(top: 10),
      child: FundoHomeWidget(
        titulo: "Eventos",
        conteudo: [],
      ),
    ),
    const Padding(
      padding: EdgeInsets.only(top: 10),
      child: FundoHomeWidget(
        titulo: "Perguntas Frequentes",
        conteudo: [],
      ),
    ),
    const ConteudoTabChats(),
  ];


  void _handleIndexChanged(int i) {
    setState(() {
      indexTab = i;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF7F7F7),
      extendBody: true,
      body: tabs[indexTab],
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: DotNavigationBar(
          enablePaddingAnimation: false,
          itemPadding: const EdgeInsets.all(0),
          enableFloatingNavBar: true,
          margin: const EdgeInsets.only(left: 10, right: 10),
          currentIndex: indexTab,
          dotIndicatorColor: Colors.white,
          selectedItemColor: Colors.black,
          backgroundColor: Colors.white,
          unselectedItemColor: Colors.grey,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 8,
              spreadRadius: 1,
            ),
          ],
          // enableFloatingNavBar: false,
          onTap: _handleIndexChanged,
          items: [
            /// Home
            DotNavigationBarItem(
              selectedColor: Colors.white,
              icon: Container(
                height: 45,
                decoration: BoxDecoration(
                  color: indexTab == 0 ? const Color(0xfff7d8cb) : Colors.white,
                  shape: BoxShape.circle,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Image.asset(
                    ImagensApp.home,
                  ),
                ),
              ),
            ),

            /// Likes
            DotNavigationBarItem(
              selectedColor: Colors.white,
              icon: Container(
                height: 45,
                decoration: BoxDecoration(
                  color: indexTab == 1 ? const Color(0xfff7d8cb) : Colors.white,
                  shape: BoxShape.circle,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Image.asset(
                    ImagensApp.eventos,
                  ),
                ),
              ),
            ),

            /// Search
            DotNavigationBarItem(
              selectedColor: Colors.white,
              icon: Container(
                height: 45,
                decoration: BoxDecoration(
                  color: indexTab == 2 ? const Color(0xfff7d8cb) : Colors.white,
                  shape: BoxShape.circle,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Image.asset(
                    ImagensApp.faq,
                  ),
                ),
              ),
            ),

            /// Profile
            DotNavigationBarItem(
              selectedColor: Colors.white,
              icon: Container(
                height: 45,
                decoration: BoxDecoration(
                  color: indexTab == 3 ? const Color(0xfff7d8cb) : Colors.white,
                  shape: BoxShape.circle,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Image.asset(
                    ImagensApp.mensagens,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
