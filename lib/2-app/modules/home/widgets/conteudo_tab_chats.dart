import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/route_manager.dart';
import 'package:projeto/2-app/modules/detalhe_chat/pages/detalhe_chat_page.dart';
import 'package:projeto/2-app/shared/uteis/imagensAplicativo.dart';
import 'package:projeto/2-app/shared/uteis/textWidget.dart';

import 'fundo_home_widget.dart';

class ConteudoTabChats extends StatefulWidget {
  const ConteudoTabChats({super.key});

  @override
  State<ConteudoTabChats> createState() => _ConteudoTabChatsState();
}

class _ConteudoTabChatsState extends State<ConteudoTabChats> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: FundoHomeWidget(
        titulo: "Chats",
        conteudo: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                InkWell(
                  onTap: () => Get.to(() => const DetalheChatPage()),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          Container(
                            clipBehavior: Clip.hardEdge,
                            height: 60,
                            width: 60,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: Image.asset(
                              ImagensApp.cachorro1,
                              fit: BoxFit.fitWidth,
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Container(
                              height: 10,
                              width: 10,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.green,
                              ),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextWidget(
                              "Associação Regional Flor de Liz",
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),
                            TextWidget(
                              "Olá, Boa Tarde! Me chamo Fabiano e sou o responsável pelo abrigo ...",
                              maxLines: 2,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 10),
                      TextWidget(
                        "18:30",
                        textAlign: TextAlign.start,
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                InkWell(
                  onTap: () => Get.to(() => const DetalheChatPage()),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          Container(
                            clipBehavior: Clip.hardEdge,
                            height: 60,
                            width: 60,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: Image.asset(
                              ImagensApp.cachorro3,
                              fit: BoxFit.fitWidth,
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Container(
                              height: 10,
                              width: 10,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.green,
                              ),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextWidget(
                              fontSize: 13,
                              "Associação Regional Flor de Liz",
                              fontWeight: FontWeight.bold,
                            ),
                            TextWidget(
                              "Olá, Boa Tarde! Me chamo Fabiano e sou o responsável pelo abrigo ...",
                              maxLines: 2,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 10),
                      TextWidget(
                        "Ontem",
                        textAlign: TextAlign.start,
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
