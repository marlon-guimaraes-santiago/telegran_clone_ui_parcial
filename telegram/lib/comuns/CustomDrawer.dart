import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children:  const <Widget>[
             UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image:  NetworkImage('https://s2.glbimg.com/vGl94GCA8Bb6r4VYOoVEQEet47k=/512x320/smart/e.glbimg.com/og/ed/f/original/2019/02/21/game-of-thrones-daenerys_targaryen_temporada_6.jpg'))
              ),
             accountName: Text('Daenerys Targaryen'),
              accountEmail: Text('+55 (65) 9999-9999'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage('https://pbs.twimg.com/profile_images/1220044684791308288/xGeuSMdZ.jpg'),
              ) ,
            ),
          ListTile(
            leading: Icon(EvaIcons.peopleOutline,size: 24,),
            title: Text('Novo Grupo',style: TextStyle(fontSize: 16),),
          ),
          ListTile(
            leading: Icon(EvaIcons.personOutline,size: 24,),
            title: Text('Contatos',style: TextStyle(fontSize: 16),),
          ),
          ListTile(
            leading: Icon(Icons.account_circle_outlined),
            title: Text('Pessoas Próximas',style: TextStyle(fontSize: 16),),
          ),
          ListTile(
            leading: Icon(EvaIcons.bookmarkOutline,size: 24,),
             title: Text('Mensagens Salvas',style: TextStyle(fontSize: 16),),
          ),
          ListTile(
            leading: Icon(EvaIcons.settingsOutline,size: 24,),
            title: Text('Configurações',style: TextStyle(fontSize: 16),),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.person_add_outlined),
            title: Text('Convidar Amigos',style: TextStyle(fontSize: 16),),
          ),
          ListTile(
            leading: Icon(EvaIcons.questionMarkCircleOutline,size: 24,),
            title: Text('Perguntas Frequentes',style: TextStyle(fontSize: 16),),
          ),
        ],
      ),
    );
  }
}


