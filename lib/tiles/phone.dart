import 'package:flutter/material.dart';

class PhoneSettings extends StatelessWidget {
  const PhoneSettings({super.key});

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
                'Phone numbers:',
                style: TextStyle(fontWeight: FontWeight.bold),
              )),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Text(
                    'Default country code:   ',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Container(
                    height: 22,
                    width: 250,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(3.0),
                      border: Border.all(
                        color: Colors.black,
                        width: 1.0,
                      ),
                    ),
                    child: DropdownButton<String>(
                      isExpanded: true,
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      hint: const Text(
                        'India',
                        style: TextStyle(fontSize: 12),
                      ),
                      underline: Container(height: 0),
                      icon: const Icon(Icons.keyboard_arrow_down,
                          color: Colors.black),
                      iconSize: 20, // Adjust the size as needed
                      onChanged: (value) {},
                      items: <String>['India', 'USA', 'Canada']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Text(value),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
