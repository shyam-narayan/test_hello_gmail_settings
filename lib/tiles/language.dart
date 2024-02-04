import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LanguageSettings extends StatefulWidget {
  const LanguageSettings({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _LanguageSettingsState createState() => _LanguageSettingsState();
}

class _LanguageSettingsState extends State<LanguageSettings> {
  // Use a variable to track the selected radio option
  String selectedOption = 'option1';

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      color: Colors.grey[200],
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.17,
            child: Text(
              'Language:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Text(
                    'Gmail display language:   ',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Container(
                    height: 22,
                    width: 350,
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
                        'English (US)',
                        style: TextStyle(fontSize: 12),
                      ),
                      underline: Container(height: 0),
                      icon:
                          const Icon(Icons.keyboard_arrow_down, color: Colors.black),
                      iconSize: 20, // Adjust the size as needed
                      onChanged: (value) {},
                      items: <String>['English (US)', 'Español', 'Français']
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
                  TextButton(
                      onHover: null,
                      onPressed: () {},
                      child: const Text(
                        'Change language settings for other Google produts',
                        style: TextStyle(color: Colors.blue),
                      ))
                ],
              ),
              const SizedBox(height: 10),
              CustomCheckbox(CheckboxController()),
              const SizedBox(height: 10),
              // Adding two radio buttons
              Row(
                children: [
                  Radio(
                    value: 'option1',
                    groupValue: selectedOption,
                    onChanged: (value) {
                      setState(() {
                        selectedOption = value.toString();
                      });
                    },
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    activeColor: Colors.blue,
                    visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
                  ),
                  const Text(
                    '     Right-to-left editing support off',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Row(
                children: [
                  Radio(
                    value: 'option2',
                    groupValue: selectedOption,
                    onChanged: (value) {
                      setState(() {
                        // Update the selected option when this radio button is selected
                        selectedOption = value.toString();
                      });
                    },
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    activeColor: Colors.blue,
                    visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
                  ),
                  const Text(
                    '     Right-to-left editing support on',
                    style: TextStyle(fontWeight: FontWeight.bold),
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

class CheckboxController extends GetxController {
  RxBool isChecked = true.obs;
}

class CustomCheckbox extends StatelessWidget {
  final CheckboxController checkboxController;

  const CustomCheckbox(this.checkboxController, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Obx(() {
        return Row(
          children: [
            InkWell(
              onTap: () {
                checkboxController.isChecked.toggle();
              },
              child: Container(
                height: 15,
                width: 15,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  border: Border.all(
                    color: checkboxController.isChecked.value
                        ? Colors.transparent
                        : Colors.grey,
                  ),
                  color: checkboxController.isChecked.value
                      ? Colors.blue
                      : Colors.white,
                ),
                child: checkboxController.isChecked.value
                    ? const Icon(
                        Icons.check,
                        color: Colors.white,
                        size: 10,
                      )
                    : null,
              ),
            ),
            const SizedBox(width: 10),
            const Text('Enable input tools',
                style: TextStyle(fontWeight: FontWeight.bold)),
            const Text(
                ' - Use various text input tools to type in the language of your choice - '),
            TextButton(
              onPressed: () {},
              style: ButtonStyle(
                  padding: MaterialStateProperty.all(EdgeInsets.zero)),
              child: const Text(
                'Edit tools',
                style: TextStyle(color: Colors.blue),
              ),
            ),
            const Text(' - '),
            TextButton(
              onPressed: () {},
              style: ButtonStyle(
                  padding: MaterialStateProperty.all(EdgeInsets.zero)),
              child: const Text(
                'Learn more',
                style: TextStyle(color: Colors.blue),
              ),
            ),
            const SizedBox(width: 35)
          ],
        );
      }),
    );
  }
}
