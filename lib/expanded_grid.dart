import 'package:flutter/material.dart';

class ExpandedGrid extends StatefulWidget {
  final List<Widget> children;
  final int crossAxisCount;

  const ExpandedGrid({Key key, this.children, this.crossAxisCount})
      : super(key: key);

  @override
  _ExpandedGridState createState() => _ExpandedGridState();
}

class _ExpandedGridState extends State<ExpandedGrid> {
  int count;
  @override
  Widget build(BuildContext context) {
    count = widget.children.length +
        (widget.children.length % widget.crossAxisCount);
    print(count);
    return Column(
      children: [
        for(int i = 0; i < count; i += widget.crossAxisCount)
          if(widget.children[i] != null)
            Expanded(
              child: Row(
                children: [
                  for(int j = 0; j < widget.crossAxisCount; j++)
                    ((i + j) < widget.children.length &&
                        widget.children[i + j] != null) ?
                    Expanded(child: Column(children: [Expanded(child: Container(
                      width: MediaQuery
                          .of(context)
                          .size
                          .width / widget.crossAxisCount,
                      child: widget.children[i + j],),)
                    ],)) : Expanded(child: Container()),

                ],
              ),
            ),
      ],

    );
  }
}
