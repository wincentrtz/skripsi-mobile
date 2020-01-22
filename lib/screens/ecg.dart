import 'package:belajar/models/ecg.dart' as model;
import 'package:socket_io_client/socket_io_client.dart' as IO;
import 'package:flutter/cupertino.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class Ecg extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Ecg();
  }
}

class _Ecg extends State<Ecg> {
  List<model.Ecg> messages;

  @override
  void initState() {
    messages = new List<model.Ecg>();
    initializeSocket();
    // TODO: implement initState
    super.initState();
  }

  void initializeSocket() {
    IO.Socket socket = IO.io('http://172.16.3.109:3000', <String, dynamic>{
      'transports': ['websocket']
    });
    socket.on('ecg_value_to_mobile', (data) {
      model.Ecg newEcg = model.Ecg(DateTime.now(), data['ecgValue']);
      this.setState(() => this.messages.add(newEcg));
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var series = [
      new charts.Series(
        domainFn: (model.Ecg ecg, _) => ecg.timestamp,
        measureFn: (model.Ecg ecg, _) => ecg.ecgValue,
        data: this.messages,
      )
    ];
    var chart = new charts.TimeSeriesChart(
      series,
      animate: true,
      dateTimeFactory: const charts.LocalDateTimeFactory(),
    );
    // TODO: implement build
    return Container(
      child: chart,
    );
  }
}
