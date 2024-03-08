import 'package:flutter/material.dart';
import 'package:mindgame/check_page.dart';
import 'package:mindgame/model/animal_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: TextButton(
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => CheckPages()));
          },
          child: Icon(Icons.arrow_forward_ios_rounded),
        ),
      ),
      appBar: AppBar(
        toolbarHeight: kTextTabBarHeight,
        title: Text(
          "Party Trick 101",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: animallist.length,
          itemBuilder: (context, index) {
            return Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.deepPurple.shade900)),
              child: Text(
                "${index + 1}.  ${animallist[index]}",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            );
          }),
    );
  }
}
