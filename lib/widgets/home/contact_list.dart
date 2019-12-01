import 'package:belajar/models/user.dart';
import 'package:belajar/widgets/common/provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:belajar/blocs/user_bloc.dart';
import 'package:flutter/material.dart';

class ContactList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    UserBloc _userBloc = Provider.of(context);
    return StreamBuilder(
      stream: _userBloc.AllUser,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        List<User> _users = snapshot.data;
        if (snapshot.hasData) {
          return _buildList(_users);
        } else if (snapshot.hasError) {
          return Text(snapshot.error.toString());
        }
        return Center(child: CircularProgressIndicator());
      },
    );
  }

  Widget _buildList(List<User> _users) {
    return ListView.separated(
      itemCount: _users.length,
      itemBuilder: (BuildContext ctxt, int index) => ListTile(
        title: Text(_users[index].name),
        subtitle: Text(_users[index].email),
      ),
      separatorBuilder: (context, index) => Divider(),
    );
  }
}
