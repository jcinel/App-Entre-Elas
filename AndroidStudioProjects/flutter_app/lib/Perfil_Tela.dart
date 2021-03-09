import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final String url = 'https://jpimg.com.br/uploads/2017/11/archives/2018/03/23/3561819713-taylor-swift-faz-doacao-marcha-de-estudantes-por-controle-de-armas-nos-eua-reproducao.jpg';
  final Color green = Color(0xFF048e8e);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        elevation: 0,
        backgroundColor: green,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: (){},
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: (){},
          )
        ],
      ),
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 16),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height/2,
            decoration: BoxDecoration(
              color: green,
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(50),
                  bottomLeft: Radius.circular(50)
              ),
            ),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 14),
                      child: Column(
                        children: <Widget>[
                        ],
                      ),
                    ),
                    Container(
                      width: 170,
                      height: 160,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: NetworkImage(url)
                          )
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 16),
                      child: Column(
                        children: <Widget>[
                        ],
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 10
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40, bottom: 32),
                  child: Text('@taylorswift13',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16, top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Icon(Icons.chat_bubble, color: Colors.white,),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Icon(Icons.unsubscribe, color: Colors.white,),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Icon(Icons.person, color: Colors.white,),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height/3,
            padding: EdgeInsets.all(20),
            color: Colors.white,
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 5, top: 30),
                      child: Text('Nome: Taylor Swift',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only( right: 110, top: 30),
                      child: Text('Idade: 31',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 5, top: 30),
                      child: Text('Ocupação: Cantor',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 5, top: 30),
                      child:
                    Text('Cidade: Pensilvania, EUA',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    ),
                  ],
                ),
            Padding(
              padding: const EdgeInsets.only(left: 5, top: 30),
              child: Text('Sobre mim: Nasci no dia 13 de dezembro de 1989 em Reading',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold
                  ),
                ),
            ),
              ],
            ),

          ),
          Container(
            padding: EdgeInsets.all(11),
            color: Color(0xFF048e8e),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Icon(Icons.home, color: Colors.white,),


                Icon(Icons.blur_circular, color: Colors.white,),


                Icon(Icons.mail, color: Colors.white,),

                Icon(Icons.people, color: Colors.white,)
              ],
            ),
          ),
        ],
      ),
    );
  }
}