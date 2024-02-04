import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:test_hello/tiles/language.dart';
import 'package:test_hello/tiles/phone.dart';
import 'package:test_hello/tiles/signature.dart';
import 'package:test_hello/tiles/stars.dart';
import 'package:test_hello/tiles/text_style.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gmail Settings',
      theme: ThemeData(primarySwatch: Colors.blue, useMaterial3: true),
      home: const SettingsPage(),
    );
  }
}

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 11,
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 20, 20, 20),
        appBar: AppBar(
          automaticallyImplyLeading: false,
          toolbarHeight: 80,
          backgroundColor: const Color.fromARGB(255, 20, 20, 20),
          leading: const Icon(Icons.menu_outlined, color: Colors.white),
          actions: [
            IconButton(
              icon: const Icon(CupertinoIcons.question_circle,
                  color: Colors.white),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.settings_outlined, color: Colors.white),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.more_horiz, color: Colors.white),
              onPressed: () {},
            ),
            IconButton(
                onPressed: () {},
                icon: const CircleAvatar(
                  maxRadius: 15,
                  child: Icon(Icons.person),
                ))
          ],
          title: Row(
            children: [
              Image.asset('assets/gmail.png'),
              const SizedBox(width: 80),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.4,
                height: 60,
                child: TextField(
                  style: TextStyle(color: Colors.grey[300]),
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 20),
                    hintText: 'Search',
                    hintStyle: TextStyle(color: Colors.grey[300]),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide.none,
                    ),
                    filled: true,
                    fillColor: Colors.grey[800],
                    prefixIcon: Icon(Icons.search, color: Colors.grey[300]),
                    suffixIcon: Icon(Icons.tune,  color: Colors.grey[300]),
                  ),
                ),
              )
            ],
          ),
        ),
        body: Row(
          children: [
            Container(
              padding: const EdgeInsets.only(left: 20, right: 20),
              // width: MediaQuery.of(context).size.width * 0.15,
              width: 260,
              child: Column(
                children: [
                  Container(
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      child: const ListTile(
                        leading: Icon(Icons.edit),
                        title: Text(
                          'Compose',
                        ),
                      )),
                  const SizedBox(height: 20),
                  const ListTile(
                    leading: Icon(
                      Icons.inbox_outlined,
                      color: Colors.grey,
                      size: 16,
                    ),
                    title: Text(
                      'Inbox',
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                  ),
                  const ListTile(
                    leading: Icon(
                      Icons.star_border,
                      color: Colors.grey,
                      size: 16,
                    ),
                    title: Text(
                      'Starred',
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                  ),
                  const ListTile(
                    leading: Icon(
                      Icons.access_time,
                      color: Colors.grey,
                      size: 16,
                    ),
                    title: Text(
                      'Snoozed',
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                  ),
                  const ListTile(
                    leading: Icon(
                      Icons.send_outlined,
                      color: Colors.grey,
                      size: 16,
                    ),
                    title: Text(
                      'Sent',
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                  ),
                  const ListTile(
                    leading: Icon(
                      CupertinoIcons.doc,
                      color: Colors.grey,
                      size: 16,
                    ),
                    title: Text(
                      'Drafts',
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(right: 20, bottom: 20),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey[900],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 10),
                        child: Text(
                          'Settings',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                      Container(
                        color: Colors.white,
                        child: const TabBar(
                          isScrollable: true, // Set this property to true
                          tabs: [
                            Tab(text: 'General'),
                            Tab(text: 'Labels'),
                            Tab(text: 'Inbox'),
                            Tab(text: 'Accounts and Import'),
                            Tab(text: 'Filters and Blocked Addresses'),
                            Tab(text: 'Forwarding and POP/IMAP'),
                            Tab(text: 'Add-ons'),
                            Tab(text: 'Chat and Meet'),
                            Tab(text: 'Advanced'),
                            Tab(text: 'Offline'),
                            Tab(text: 'Themes'),
                          ],
                          labelPadding: EdgeInsets.symmetric(horizontal: 20),
                          indicatorColor: Colors.blue,
                          labelColor: Colors.blue,
                          unselectedLabelColor: Colors.grey,
                        ),
                      ),
                      Expanded(
                        child: SingleChildScrollView(
                          child: Container(
                            color: Colors.grey[200],
                            child: Column(
                              children: [
                                LanguageSettings(),
                                Divider(),
                                PhoneSettings(),
                                Divider(),
                                TextStyleSettings(),
                                Divider(),
                                StarSettings(),
                                Divider(),
                                SignatureSettings(),
                              ],
                            ),
                          ),
                        ),
                      ),
                  
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
