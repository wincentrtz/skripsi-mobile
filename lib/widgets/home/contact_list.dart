import 'package:belajar/models/user.dart';
import 'package:belajar/widgets/common/provider.dart';
import 'package:belajar/widgets/common/stream_observer_builder.dart';
import 'package:flutter/cupertino.dart';
import 'package:belajar/blocs/user_bloc.dart';
import 'package:flutter/material.dart';

class ContactList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    UserBloc _userBloc = Provider.of(context).fetch(UserBloc);
    return StreamObserverBuilder<List<User>>(
      stream: _userBloc.AllUser,
      onSuccess: (BuildContext context, List<User> data) => _buildList(data),
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
