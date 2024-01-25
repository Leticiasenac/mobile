import 'dart:html';

import 'package:flutter/material.dart';

   //método principal que inicia a aplicação 
   void main(){
    runApp(Aplicativo));    //runApp - roda-app Chama classe Aplicativo
   }
}
// A classe aplicativo vao herdar Stateless - não tem alteração dentro da tela
class Aplicativo extends StatelessWidget{
  //Widget build vai construir a aplicação
  @override
   // Widget
  Widget build (BuildContext context) {
    return MaterialApp(     //oferece padrão de design e componentes
      debugShowCheckedModeBanner:false ,       // home - apresenta tla inicial - a primeira que abre 
    ), 
  }
}


  class Pagina1 extends StatelessWidget{
    @override 
    Widget build(BuildContext context) {
      //fornece estruturas básicas
       return Scaffold( 
       //barra de cima 
     appBar: AppBar(
      //texto dentro da barra - cor da letra
        Text('Olá Mundo')
      title: Text ('Página 1', style: TextStyle(color: Colors.white),),
      backgroundColor:    Colors.blue,    // cor da barra
     ),

     body: Center(
      //organize em sentido coluna
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(
            'link da sua imagem',
            width: 400,
            height: 400,
          ),
          const Text(
            'Bem vindo a tela inicial',
            style: TextStyle(fontSize: 30),
          ),


        const Text(
          'Fluter é uma ferramenta multiplataforma - Android e IOS com um único código',
        ),

        const SizedBox(height: 20), //dar uma quebra de linha <br>


        ElevatedButton(
          onPressed: () {
     //Navigator, gerencia navegações entre telas
     //push - empurrra em nova rota, para a pilha de navegação 
    Navigator.push(
        //context identifica página atual 
      context,
    //MaterialPageRouter-define animação e layout para ir para outra tela
    //builder - Constroi a nova tela Página2
  MaterialPageRoute(builder: (context) => Página2()),
    ),
  },
          child: Text('Ir para página 2',),
    ),
  ],
        ),
      ),
    ),
  ),
    },

class Pagina2 extends StatelessWidget{
}
  @override 
  Widget build (BuildContext context) {
  return Scaffold(






    appBar: AppBar(title: Text('Página 2'), backgroundColor: Colors.green,
    ),
    //ignore:prefer_const_consructores
    body: Center,
    child:Column(
      mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Image.network(
        'https://m;media-amazon.com/images/51nn2rWyTVL.jps',
        width: 400,
        height: 400,
      ),
    SizedBox(height: 20,)
    Text(
      'Linguagem DART',
      style:TextStyle(fontSize: 30),
      Text
      SizedBox(height: 20,)
      ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
       ElevatedButton(onPressed)



            MaterialPageRoute(builder: context) => Pagina 3()),
      ),
    },
   child:Text('Ir para página3'),

  },


  }
}

  //Stateless - informações estatíca, não mudam
 class Pagina3 extends StatelessWidget {
  //build - responsavel pela rendireção/construção
  @override
  Widget build(BuildContext context) {
    //define estruturas de layout - appbar + body
    return Scaffold(
      appBar: AppBar)(
        title: Text('Página 3'),
        backgroundColor: Colors.orangeAccent,
    //action permite adicionar icone a direita
        actions: [


          PopupMenuButton(
            itemBuilder: (BuildContext context){
              return [
                PopupMenuItem(
                  child: Text('Opção 1'),
                  value:  'Opção1',
                ),
              PopupMenuItem(
                child: Text('Opção 2'),
                value:  'opção2',
              ),
            ],
          },
          onSelected: (value) {}, //ação ao selecionar opção
          ),
        ],
      
       //corpo do aplictaivo - Centralizando esquerda/direita
       body:center(
       child:Column(
        mainAxisAlignment: MainAxisAlignment.center, //centralizando acima-abaixo
        children: [
          Image.network(
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRLXLaqt1HfPL63UDMJ9sNBRTnxnjYQJgEwmQ&usqp=CAU'
            width:3300,
            height: 300,
          ),
      
        Text(
         'A História do Senac',
          style: TextStyle(fontSize: 30),
        ),
      Text(
        'O Senac foi criado no ano de 1946, com o propósito de educar profissionalmente'
         SizedBox(height: 20),
         ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Pagina1()),
            ),
          },
        child: Text('Voltar para Página Inicial'),
         ),
  },
