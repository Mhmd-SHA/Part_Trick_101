import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lottie/lottie.dart';
import 'package:mindgame/model/animal_list.dart';

class ResultPage extends StatefulWidget {
  const ResultPage({super.key, required this.value});
  final int value;

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  int getval() {
    int value = widget.value;
    value = 20 - value;
    return value;
  }

  @override
  Widget build(BuildContext context) {
    print(widget.value);
    print(getval());
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Stack(
            children: [
              Lottie.asset("assets/cl.json",
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: double.infinity),
              Center(
                child: getval() > 19 || getval() < 0
                    ? Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "You LIAR",
                            style: TextStyle(
                              fontSize: 100,
                            ),
                          ),
                          Text(
                            "😂😂",
                            style: TextStyle(
                              fontSize: 100,
                            ),
                          ),
                        ],
                      )
                    : Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "${animallist[getval()][0]}${animallist[getval()][1]}",
                            style: TextStyle(
                              fontSize: 150,
                            ),
                          ),
                          Text(
                            animallist[getval()].substring(3),
                            style: TextStyle(
                                fontSize: 100,
                                color: Colors.deepPurple.shade900,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
