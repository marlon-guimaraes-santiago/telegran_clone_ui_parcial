import 'package:flutter/material.dart';
import 'package:telegram/comuns/CustomDrawer.dart';
import 'package:telegram/data/db.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {



    return Scaffold(
      drawer: CustomDrawer(),
      appBar: AppBar(
        actions: <Widget>[
          Icon(Icons.lock_outline_rounded),
          SizedBox(width: 15,),
          Icon(Icons.search),
          SizedBox(width: 15,),
        ],
        title: Text('Telegram',style: TextStyle(fontWeight: FontWeight.w800),),
      ),
      floatingActionButton:
      FloatingActionButton(
        onPressed: (){},
        backgroundColor: Colors.green,
        child: Icon(Icons.edit_rounded),
      ),
      body: ContactsListPage(),
    );
  }
}

