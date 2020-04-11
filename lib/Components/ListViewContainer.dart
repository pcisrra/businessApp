import 'package:flutter/material.dart';
import 'List.dart';
import 'Calender.dart';
import '../Screens/Home/styles.dart';

class ListViewContent extends StatelessWidget {
  final Animation<double> listTileWidth;
  final Animation<Alignment> listSlideAnimation;
  final Animation<EdgeInsets> listSlidePosition;
  ListViewContent({
    this.listSlideAnimation,
    this.listSlidePosition,
    this.listTileWidth,
  });
  @override
  Widget build(BuildContext context) {
    return (new Stack(
      alignment: listSlideAnimation.value,
      children: <Widget>[
        new Calender(margin: listSlidePosition.value * 6.5),
        new ListData(
            margin: listSlidePosition.value * 5.5,
            width: listTileWidth.value,
            title: "Reunióm con Emily",
            subtitle: "7 - 8am",
            image: avatar6),
        new ListData(
            margin: listSlidePosition.value * 4.5,
            width: listTileWidth.value,
            title: "Reunión con Harold",
            subtitle: "9 - 10am ",
            image: avatar1),
        new ListData(
            margin: listSlidePosition.value * 3.5,
            width: listTileWidth.value,
            title: "Paquete contabilidad Paola",
            subtitle: "12 - 1pm  (IMPORTANTE)",
            image: avatar5),
        new ListData(
            margin: listSlidePosition.value * 2.5,
            width: listTileWidth.value,
            title: "Reunión administrador clientes",
            subtitle: "2 - 3pm ",
            image: avatar4),
        new ListData(
            margin: listSlidePosition.value * 1.5,
            width: listTileWidth.value,
            title: "Reunión arquitectura",
            subtitle: "5 - 6pm  (IMPORTANTE)",
            image: avatar2),
      ],
    ));
  }
}

//For large set of data

//import '../Screens/Home/data.dart';
// DataListBuilder dataListBuilder = new DataListBuilder();
// var i = dataListBuilder.rowItemList.length + 0.5;
// children: dataListBuilder.rowItemList.map((RowBoxData rowBoxData) {
//   return new ListData(
//     title: rowBoxData.title,
//     subtitle: rowBoxData.subtitle,
//     image: rowBoxData.image,
//     width: listTileWidth.value,
//     margin: listSlidePosition.value * (--i).toDouble(),
//   );
// }).toList(),
