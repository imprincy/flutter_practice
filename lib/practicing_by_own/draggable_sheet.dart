import 'package:flutter/material.dart';

class DragSheet extends StatelessWidget {
  const DragSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Draggable Widget"),
        elevation: 8,
      ),body: DraggableScrollableSheet(
          builder: (BuildContext context, ScrollController scrollController) {
            return SingleChildScrollView(
                controller: scrollController,
                child: Image.network("https://images.pexels.com/photos/20875307/pexels-photo-20875307/free-photo-of-a-car-driving-down-a-mountain-road-in-the-fall.jpeg?auto=compress&cs=tinysrgb&w=800&lazy=load"));
          },
    ),
    );
  }
}
