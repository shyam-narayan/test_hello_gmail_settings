import 'package:flutter/material.dart';

class SignatureSettings extends StatelessWidget {
  const SignatureSettings({super.key});

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
                const Text(
                  'Signature:',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const Text(
                  '(appended at the end of all outgoing messages)',
                  style: TextStyle(fontSize: 12),
                ),
                TextButton(
                    onPressed: () {},
                    style: const ButtonStyle(
                        padding: MaterialStatePropertyAll(EdgeInsets.zero)),
                    child: const Text(
                      'Learn more',
                      style: TextStyle(color: Colors.blue),
                    ))
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 800,
                child: Row(
                  children: [
                    Container(
                      width: 250,
                      height: 200,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(10),
                              bottomLeft: Radius.circular(10)),
                          border: Border.all(color: Colors.grey, width: 0.5)),
                      child: Column(
                        children: [
                          const SizedBox(height: 10),
                          Container(
                            color: Colors.indigo[50],
                            child: const ListTile(
                              title: Text(
                                'Shyam N',
                                style: TextStyle(fontSize: 14),
                              ),
                              trailing: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Icon(
                                    Icons.edit,
                                    size: 18,
                                  ),
                                  SizedBox(width: 8),
                                  Icon(
                                    Icons.delete,
                                    size: 18,
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 500,
                      height: 200,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(10),
                              bottomRight: Radius.circular(10)),
                          border: Border.all(color: Colors.grey, width: 0.5)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SizedBox(
                            height: 40,
                            child: Row(
                              children: [
                                SizedBox(width: 20),
                                DropdownButton<String>(
                                  underline: Container(height: 0),
                                  value: 'Serif',
                                  onChanged: (value) {},
                                  items: ['Serif', 'Sans Serif', 'Roboto']
                                      .map((String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(
                                        value,
                                        style: TextStyle(fontSize: 14),
                                      ),
                                    );
                                  }).toList(),
                                ),
                                SizedBox(width: 16),
                                DropdownButton<String>(
                                  underline: Container(height: 0),
                                  value: 'Normal',
                                  onChanged: (value) {},
                                  items: ['Normal', 'Large', 'Small']
                                      .map((String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(
                                        value,
                                        style: TextStyle(fontSize: 14),
                                      ),
                                    );
                                  }).toList(),
                                ),
                                SizedBox(width: 16),
                                InkWell(
                                  child: Icon(Icons.format_bold),
                                  onTap: () {},
                                ),
                                InkWell(
                                  child: Icon(Icons.format_italic),
                                  onTap: () {},
                                ),
                                InkWell(
                                  child: Icon(Icons.format_underline),
                                  onTap: () {},
                                ),
                                SizedBox(width: 16),
                                DropdownButton<String>(
                                  underline: Container(height: 0),
                                  value: 'Red',
                                  onChanged: (value) {},
                                  items: ['Red', 'Green', 'Yellow']
                                      .map((String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(
                                        value,
                                        style: TextStyle(fontSize: 14),
                                      ),
                                    );
                                  }).toList(),
                                ),
                                SizedBox(width: 10),
                                InkWell(
                                  onTap: () {},
                                  child: Icon(Icons.link),
                                ),
                                SizedBox(width: 10),
                                InkWell(
                                  onTap: () {},
                                  child: Icon(Icons.format_align_left_outlined),
                                ),
                                SizedBox(width: 10),
                                InkWell(
                                  onTap: () {},
                                  child: Icon(Icons.format_list_numbered),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: 250,
                height: 35,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.grey, width: 0.5),
                ),
                child: Center(child: Text('Create New', style: TextStyle(color: Colors.blue),)),
              ),
            ],
          )
        ],
      ),
    );
  }
}
