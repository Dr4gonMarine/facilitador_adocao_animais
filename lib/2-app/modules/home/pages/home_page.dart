import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:projeto/1-base/behavior/my_scroll_behavior.dart';
import 'package:projeto/2-app/modules/detalhe_abrigo/pages/detalhe_abrigo_page.dart';
import 'package:projeto/2-app/shared/uteis/imagensAplicativo.dart';

import '../../../shared/card_abrigo.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _selectedTab = _SelectedTab.home;
  final _imagens = const [
    ImagensApp.imagemCard1,
    ImagensApp.imagemCard2,
    ImagensApp.imagemCard3,
    ImagensApp.imagemCard4,
    ImagensApp.imagemCard5,
  ];


  void _handleIndexChanged(int i) {
    setState(() {
      _selectedTab = _SelectedTab.values[i];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      extendBody: true,
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 10, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Expanded(
                      child: Text(
                        "Petligit",
                        style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Icon(
                      Icons.account_circle,
                      size: 50,
                      color: Color(0xffA5A5A5),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: Padding(
                            padding: const EdgeInsets.all(15),
                            child: Image.asset(
                              ImagensApp.pesquisar,
                              height: 1,
                            ),
                          ),
                          labelText: 'Pesquisar',
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                          labelStyle: const TextStyle(color: Color(0xff9F9F9F), fontWeight: FontWeight.w500),
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xffF6F6F6), width: 0.0),
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                          ),
                          focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xffF6F6F6), width: 0.0),
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                          ),
                          filled: true,
                          fillColor: const Color(0xffF6F6F6),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: const BoxDecoration(color: Color(0xffF6F6F8), shape: BoxShape.circle),
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Image.asset(
                          ImagensApp.filtro,
                          height: 1,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                child: ScrollConfiguration(
                  behavior: MyScrollBehavior(),
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return IntrinsicHeight(
                        child: InkWell(
                          onTap: () => Get.to(() => const DetalheAbrigoPage()),
                          child: CardAbrigo(
                            imageAsset: _imagens[index],
                            endereco: index % 2 == 0 ? 'Rua Paes Leme, 6-40' : "Av. Rodrigues Alves 7-15",
                            horarioFuncionamento: 'Abre seg. às 09:00',
                            isAberto: true,
                            titulo: index % 2 == 0 ? "Associação Regional Flor de Liz" : "ONG Arca da Fé - Resgate Animal",
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: DotNavigationBar(
          enablePaddingAnimation: false,
          enableFloatingNavBar: true,
          margin: const EdgeInsets.only(left: 10, right: 10),
          currentIndex: _SelectedTab.values.indexOf(_selectedTab),
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
              icon: const Icon(Icons.home),
            ),

            /// Likes
            DotNavigationBarItem(
              icon: const Icon(Icons.calendar_month),
            ),

            /// Search
            DotNavigationBarItem(
              icon: const Icon(Icons.question_mark_rounded),
            ),

            /// Profile
            DotNavigationBarItem(
              icon: const Icon(Icons.question_answer_outlined),
            ),
          ],
        ),
      ),
    );
  }
}

enum _SelectedTab { home, favorite, search, person }
