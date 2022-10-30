import 'package:flutter/material.dart';

class GridViewWidget extends StatefulWidget {
  final int counter;
  const GridViewWidget({Key? key,required this.counter}) : super(key: key);
  @override
  State<GridViewWidget> createState() => _GridViewWidgetState();
}

class _GridViewWidgetState extends State<GridViewWidget> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3
      ),
      itemCount: 12,
      itemBuilder: (BuildContext context, int index) {
        return Card(
          color: Colors.grey[200],
          child: Center(child: index < widget.counter ? Icon(Icons.check,color: Colors.red,size: 34) : null,),
        );
      },
    );
  }
}