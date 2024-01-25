import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/physics.dart';

//onde  a execução do programa começa- principal
void main() {
  runApp(const Aplicativo()); //roda Aplicativo
}

//classe Aplicativo(contém características,variaveis e funções)
//extends - extende- Herda craacterísticas do widget stateless
//stateless - toda interface é imutavel após a  criação
class Aplicativo extends StatelessWidget {
  const Aplicativo({super.key});

  //build - método que reconstroi tela
  @override
  Widget build(BuildContext) {
    //widget responsável pelo design da aplicação, fornece temas e recursos
    //ignore: prefer const constructors

    return MaterialApp(
      //home - tela principal - Scaffold fornece layout basico
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: const Text(
            'Fluter é divertido!',
            style: TextStyle(color: Colors.white),
          ),
        ),

        //body é o corpo do app, Center vai centralizar o conteúdo
        body: const Center(
          //child representa que é filho do widget Center -SizedBox - CaixaComTamanho
          child: SizedBox(
            child: const Text(
              'Fluter foi criado pelo Google, usa a linguagem DART',
              style: TextStyle(
                fontSize: 20,
                fontFamily: 'arial',
              ),
            ),
            height: 300,
            width: 300,
          ),
        ),



 floatingActionButton: FloatingActionButton(
   child: Icon(Icons.add),
   backgroundColor:Colors.green,
   onPressed: () {},
   
   ),

        //BottomNavigationBarItem - é o item da barra de navegação
        bottomNavigationBar: BottomNavigationBar(items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Principal'),
          BottomNavigationBarItem(icon: Icon(Icons.business), label: 'Negócios'),
          BottomNavigationBarItem(icon: Icon(Icons.school), label: 'Escola'),
        ]),



    //----barra lateral do aplicativo
    drawer: Drawer(
      backgroundColor: Colors.white,

      //lista dos itens do menu
      child: ListView(
        padding: EdgeInsets.zero,
        children:<Widget>[
          DrawerHeader(
          padding:EdgeInsets.zero,
          decoration:BoxDecoration(
          color: Colors.green,
          ),
          child:Text(
            'Menu App',
            style:TextStyle(
            color: Colors.white,
            fontSize: 24
          ),
      ),
          ),
    ListTile(
        //item menu
        leading: const Icon(Icons.home),     //icone do item do menu
        title: const Text('Página Inicial'), //titulo do item do menu
        onTap: (){},                       //ação que o botão irá executar
      ),
    ListTile(
        leading: const Icon (Icons.settings),
        title: const Text('configurações'),
        onTap:() {}
        ),
    ListTile(
      leading: const Icon(Icons.account_circle),
      title: const Text('perfil'),
      onTap:() {}
      ),
        ],
      ),
    ),





    ),
    );
    }
    }
