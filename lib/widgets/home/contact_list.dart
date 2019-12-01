import 'package:flutter/cupertino.dart';
import 'package:belajar/blocs/user_bloc.dart';
import 'package:flutter/material.dart';

class ContactList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: userBloc.AllUser,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return _buildList(snapshot);
        } else if (snapshot.hasError) {
          return Text(snapshot.error.toString());
        }
        return Center(child: CircularProgressIndicator());
      },
    );
  }

  Widget _buildList(snapshot) {
    return ListView.separated(
      itemCount: snapshot.data.length,
      itemBuilder: (BuildContext ctxt, int index) => ListTile(
        title: Text(snapshot.data[index].name),
        subtitle: Text(snapshot.data[index].email),
      ),
      separatorBuilder: (context, index) => Divider(),
    );
  }
}
