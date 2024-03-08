import 'package:flutter/material.dart';
import 'package:mindgame/home_page.dart';
import 'package:mindgame/model/animal_list.dart';
import 'package:mindgame/result_page.dart';

class CheckPages extends StatelessWidget {
  const CheckPages({super.key});

  @override
  Widget build(BuildContext context) {
    list1 = list1..shuffle();
    list2 = list2..shuffle();
    list3 = list3..shuffle();
    list4 = list4..shuffle();
    list5 = list5..shuffle();
    list6 = list6..shuffle();
    int value = 0;
    bool islastPage = false;
    final PageController _pageController = PageController();
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          "confirm your choise is here",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
              color: Colors.red,
              onPressed: () {
                islastPage == false
                    ? _pageController.nextPage(
                        duration: Durations.medium4, curve: Curves.easeIn)
                    : Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => ResultPage(value: value)));
              },
              icon: Icon(Icons.close_rounded)),
          SizedBox(width: 10),
          IconButton(
              color: Colors.deepPurple.shade900,
              highlightColor: Colors.deepPurpleAccent.shade700,
              onPressed: () {
                value = value + _pageController.page!.toInt() + 1;

                islastPage == false
                    ? _pageController.nextPage(
                        duration: Durations.medium4, curve: Curves.easeIn)
                    : Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => ResultPage(value: value)));
              },
              icon: Icon(Icons.done_rounded)),
          SizedBox(width: 10),
        ],
      ),
      body: PageView(
        controller: _pageController,
        physics: NeverScrollableScrollPhysics(),
        onPageChanged: (int page) {
          islastPage = (page == 5);
        },
        children: [
          Container(
            child: ListView.builder(
                itemCount: list1.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.all(5),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Colors.deepPurple.shade900)),
                    child: Text(
                      "${index + 1}.  ${list1[index]}",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  );
                }),
          ),
          Container(
            child: ListView.builder(
                itemCount: list2.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.all(5),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Colors.deepPurple.shade900)),
                    child: Text(
                      "${index + 1}.  ${list2[index]}",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  );
                }),
          ),
          Container(
            child: ListView.builder(
                itemCount: list3.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.all(5),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Colors.deepPurple.shade900)),
                    child: Text(
                      "${index + 1}.  ${list3[index]}",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  );
                }),
          ),
          Container(
            child: ListView.builder(
                itemCount: list4.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.all(5),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Colors.deepPurple.shade900)),
                    child: Text(
                      "${index + 1}.  ${list4[index]}",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  );
                }),
          ),
          Container(
            child: ListView.builder(
                itemCount: list5.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.all(5),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Colors.deepPurple.shade900)),
                    child: Text(
                      "${index + 1}.  ${list5[index]}",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  );
                }),
          ),
          Container(
            child: ListView.builder(
                itemCount: list6.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.all(5),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Colors.deepPurple.shade900)),
                    child: Text(
                      "${index + 1}.  ${list6[index]}",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
