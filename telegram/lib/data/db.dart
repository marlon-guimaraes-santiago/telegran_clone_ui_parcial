import 'package:flutter/material.dart';

class Contact {
  Contact({this.nome, this.mensagem, this.foto,this.date,this.icon});
  final String nome;
  final String mensagem;
  final String foto;
  final String date;
  final dynamic icon;
}



class ContactsListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildList(),
    );
  }

  Widget _buildList() {
    return ListView.separated(
      itemCount: allContacts.length,
      separatorBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.only(left: 16.0),
          child: Divider(indent: 72, height: 0, color: Colors.black),
        );
      },
      itemBuilder: (content, index) {
        Contact contact = allContacts[index];
        return ContactListTile(contact);
      },
    );
  }
}

class ContactListTile extends ListTile {
  ContactListTile(Contact contact)
      : super(
    title: Text(contact.nome),
    subtitle: Text(contact.mensagem),
    leading: CircleAvatar(
      radius: 20,
      backgroundImage: NetworkImage(contact.foto),
    ),
    trailing: Stack(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 18, 2, 22),
          child: Icon(contact.icon),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(35, 18, 2, 4),
          child: Text(contact.date),
        )
      ],
    ),
    onTap: (){},
  );
}

List<Contact> allContacts = [
  Contact(nome: 'jon snow', mensagem: 'Olá', foto:'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS20A2WKoY16v0g9CJdkxfMCWzDTruVdoEVXPUrqCbzVe5DQO409DHTPAD2M7XHDhrHYv8&usqp=CAU', date: '12 de abr',icon: Icons.done_all_outlined,),
  Contact(nome: 'Jorah Mormont', mensagem: 'como vai você, sdds', foto:'https://observatoriodeseries.uol.com.br/wp-content/uploads/2019/05/cq5dam.web_.1200.675-1-1.jpeg', date: '12 de abr',icon: Icons.done_all_outlined,),
  Contact(nome: 'sansa stark', mensagem: 'td bem ', foto:'https://www.hqzona.com.br/wp-content/uploads/2020/01/cropped-Sansa-Stark-806-Season-8-Queen-in-the-North-1-1140x641.jpg', date: '13 de abr',icon: Icons.done_all_outlined,),
  Contact(nome: 'Missandei', mensagem: 'como vai você, sdds', foto:'https://spinoff.com.br/wp-content/uploads/2020/07/game-of-thrones-missandei.jpg', date: '14 de abr',icon: Icons.done_all_outlined,),
];



