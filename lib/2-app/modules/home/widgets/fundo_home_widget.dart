import 'package:flutter/material.dart';
import '../../../shared/uteis/imagensAplicativo.dart';

class FundoHomeWidget extends StatelessWidget {
  final String titulo;
  final List<Widget> conteudo;
  const FundoHomeWidget({super.key, required this.conteudo, required this.titulo});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Container(
        color: const Color(0xffF7F7F7),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      titulo,
                      style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ),
                  // Icon(
                  //   Icons.account_circle,
                  //   size: 50,
                  //   color: Color(0xfffaaf8e),
                  // ),
                  if (titulo == "PetLigit")
                  Container(
                    height: 50,
                    width: 50,
                    decoration: const BoxDecoration(
                      color: Color(0xfff7d8cb),
                      shape: BoxShape.circle,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Image.asset(
                        ImagensApp.user,
                        height: 1,
                      ),
                    ),
                  )
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
                        contentPadding: const EdgeInsets.all(0),
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
                        fillColor: Colors.white,
                      ),
                    ),
                  ),
                  if (titulo == "PetLigit")
                  const SizedBox(width: 5),
                  if (titulo == "PetLigit")
                  Container(
                      height: 45,
                      width: 45,
                    decoration: const BoxDecoration(color: Colors.white, shape: BoxShape.circle),
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
            const SizedBox(height: 10),
            Expanded(
                child: Column(
              children: conteudo,
            ))
          ],
        ),
      ),
    );
  }
}
