import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/material.dart';

import '../../../shared/card_abrigo.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _selectedTab = _SelectedTab.home;

  void _handleIndexChanged(int i) {
    setState(() {
      _selectedTab = _SelectedTab.values[i];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
          color: Color(0xFFFAFAFA),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Petligit",
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.red,
                    ),
                  )
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  const Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search_rounded),
                        labelText: 'Pesquisar',
                        labelStyle: TextStyle(
                          color: Color(0xff9F9F9F),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Color(0xffF6F6F6), width: 0.0),
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        filled: true,
                        fillColor: Color(0xffF6F6F6),
                      ),
                    ),
                  ),
                  Container(
                    height: 30,
                    width: 30,
                    decoration: const BoxDecoration(
                      color: Colors.red,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              CardAbrigo(
                endereco: 'R. Paes Leme, 6-40',
                horarioFuncionamento: 'Abre seg. às 09:00',
                isAberto: true,
                titulo: 'Associação Regional Flor\n de Liz',
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: DotNavigationBar(
          enablePaddingAnimation: false,
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
