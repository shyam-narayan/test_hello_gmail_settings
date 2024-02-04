import 'package:flutter/material.dart';

class TextStyleSettings extends StatelessWidget {
  const TextStyleSettings({super.key});

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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Default text style:',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  '(Use the \'Remove formatting\' button on the toolbar to  reset the default text style)',
                  style: TextStyle(fontSize: 12),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(color: Colors.white, boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 5,
                offset: const Offset(0, 3),
              )
            ]),
            width: 400,
            height: 80,
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      DropdownButton<String>(
                        underline: Container(height: 0),
                        value: 'Serif',
                        onChanged: (value) {},
                        items: ['Serif', 'Sans Serif', 'Roboto']
                            .map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value, style: TextStyle(fontSize: 14),),
                          );
                        }).toList(),
                      ),
                      SizedBox(width: 16),
                      DropdownButton<String>(
                        underline: Container(height: 0),
                        value: 'Normal',
                        onChanged: (value) {},
                        items: ['Normal', 'Large', 'Small'].map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value, style: TextStyle(fontSize: 14),),
                          );
                        }).toList(),
                      ),
                                            SizedBox(width: 16),

                      DropdownButton<String>(
                        underline: Container(height: 0),
                        value: 'Red',
                        onChanged: (value) {},
                        items: ['Red', 'Green', 'Yellow'].map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value, style: TextStyle(fontSize: 14),),
                          );
                        }).toList(),
                      ),
                                            SizedBox(width: 16),

                      InkWell(
                        onTap: () {},
                        child: Icon(Icons.format_clear),
                      ),
                    ],
                  ),
                  const Text("This is what your text will look like")
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
