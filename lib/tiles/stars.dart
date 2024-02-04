import 'package:flutter/material.dart';

class StarSettings extends StatefulWidget {
  const StarSettings({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _StarSettingsState createState() => _StarSettingsState();
}

class _StarSettingsState extends State<StarSettings> {
  List<String> firstColumnStars = ["Yellow"];
  List<String> secondColumnStars = ["Orange", "Red", "Purple", "Blue", "Green"];

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: double.maxFinite,
      padding: const EdgeInsets.all(10),
      color: Colors.grey[200],
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
              width: MediaQuery.of(context).size.width * 0.17,
              child: Text(
                'Stars:',
                style: TextStyle(fontWeight: FontWeight.bold),
              )),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                children: [
                  Text(
                    'Drag the stars between the lists.  ',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                      'The stars will rotate in the order shown below when you click successively. To learn the name of a star for search, hover your mouse over the image.'),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    width: 100,
                    child: Text('Presets:  '),
                  ),
                  TextButton(
                      onPressed: () {},
                      style: const ButtonStyle(
                          padding: MaterialStatePropertyAll(EdgeInsets.zero)),
                      child: const Text('1 star  ', style: TextStyle(color: Colors.blue))),
                  TextButton(
                      onPressed: () {},
                      style: const ButtonStyle(
                          padding: MaterialStatePropertyAll(EdgeInsets.zero)),
                      child: const Text('4 stars  ', style: TextStyle(color: Colors.blue))),
                  TextButton(
                      onPressed: () {},
                      style: const ButtonStyle(
                          padding: MaterialStatePropertyAll(EdgeInsets.zero)),
                      child: const Text('all stars  ', style: TextStyle(color: Colors.blue))),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    width: 100,
                    child: Text(
                      'In use:  ',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  buildColumn(firstColumnStars),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    width: 100,
                    child: Text(
                      'Not in use:  ',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  buildColumn(secondColumnStars),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget buildColumn(List<String> stars) {
    return Row(
      children: [
        for (int i = 0; i < stars.length; i++)
          Draggable(
            data: i,
            feedback: buildStar(stars[i], isFeedback: true),
            childWhenDragging: Container(),
            child: buildStar(stars[i]),
          ),
        DragTarget<int>(
          builder: (context, candidateData, rejectedData) {
            return Container(
              height: 30, // Adjust height as needed
              width: 30, // Adjust width as needed
              color: Colors.grey[200],
            );
          },
          // ignore: deprecated_member_use
          onAccept: (data) {
            setState(() {
              // Move the star from the source column to this target column
              if (stars == secondColumnStars) {
                secondColumnStars.add(firstColumnStars[data]);
                firstColumnStars.removeAt(data);
              } else {
                firstColumnStars.add(secondColumnStars[data]);
                secondColumnStars.removeAt(data);
              }
            });
          },
        ),
      ],
    );
  }

  Widget buildStar(String color, {bool isFeedback = false}) {
    return SizedBox(
      width: 30,
      height: 20,
      child: Icon(
        Icons.star,
        size: 20,
          color: color == "Yellow"
              ? Colors.yellow[800]
              : color == "Orange"
                  ? Colors.orange[800]
                  : color == "Red"
                      ? Colors.red[800]
                      : color == "Purple"
                          ? Colors.purple[800]
                          : color == "Blue"
                              ? Colors.blue[800]
                              : Colors.green[800],
      ),
    );
  }
}