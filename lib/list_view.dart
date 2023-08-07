import 'package:flutter/material.dart';

class ListWidget extends StatefulWidget {
  const ListWidget({Key? key}) : super(key: key);

  @override
  State<ListWidget> createState() => _ListWidgetState();
}

class ListItemWidget extends StatelessWidget {
  final int count; // Globle varible
  final VoidCallback
      onIncrement; // This is useful if we only want to notify the Parent Widget
  const ListItemWidget(
      {Key? key,
      required this.count,
      required this.onIncrement}) // return value
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.only(left: 15, top: 4, bottom: 4),
      child: Row(
        children: [
          Text(count.toString()),
          MaterialButton(
            onPressed: onIncrement,
            // is like onPressed argument is an anonymous method that calls fun
            child: const Text("+"),
          ),
        ],
      ),
    );
  }
}

class _ListWidgetState extends State<ListWidget> {
  List<int> counts =
      List.filled(100, 0); // Initialize list of counts with 100 zeros

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: counts.length,
      itemBuilder: (context, index) {
        return ListItemWidget(
          count: counts[index],
          onIncrement: () {
            //call method increment count
            setState(() {
              counts[index]++;
            });
          },
        );
      },
    );
  }
}
