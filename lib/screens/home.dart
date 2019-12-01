import 'package:belajar/blocs/user_bloc.dart';
import 'package:belajar/widgets/home/contact_list.dart';
import 'package:flutter/cupertino.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Home();
  }
}

class _Home extends State<Home> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    userBloc.fetchAllUsers();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    userBloc.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: ContactList(),
    );
  }
}
