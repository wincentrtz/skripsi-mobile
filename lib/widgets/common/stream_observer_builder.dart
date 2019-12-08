import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';

class StreamObserverBuilder<T> extends StatelessWidget {
  @required
  final Observable<T> stream;

  @required
  Function onSuccess;

  Function onError;

  StreamObserverBuilder({this.onSuccess, this.onError, this.stream});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return StreamBuilder(
      stream: stream,
      builder: (BuildContext context, AsyncSnapshot<T> snapshot) {
        if (snapshot.hasError) {
          return onError(context, snapshot.error);
        } else if (snapshot.hasData) {
          T data = snapshot.data;
          return onSuccess(context, data);
        }
        return Center(child: CircularProgressIndicator());
      },
    );
  }
}
