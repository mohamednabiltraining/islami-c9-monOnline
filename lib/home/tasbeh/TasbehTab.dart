import 'package:flutter/material.dart';

class Sebha extends StatefulWidget {
  const Sebha({super.key});

  @override
  State<Sebha> createState() => _SebhaState();
}

class _SebhaState extends State<Sebha> {
  int counter = 0;
  List<String> azkar = ["الحمدلله", "سبحان الله", "الله اكبر"];
  int index = 0;
  double turns = 0.0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
        GestureDetector(
        onTap: increment,
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                const Image(
                    image: AssetImage("lib/assets/images/head_sebha_logo.png")),
                Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.098, bottom: 2),
                  child: AnimatedRotation(
                      turns: turns,
                      duration: const Duration(seconds: 1),
                      child: const Image(
                          image: AssetImage(
                              "lib/assets/images/body_sebha_logo.png"))),
                ),
              ],
            ),
          ),
          Text(
            "عدد التسبيحات",
            style: Theme.of(context).textTheme.titleMedium,
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 28),
            decoration: BoxDecoration(
                color: Theme.of(context).primaryColor.withOpacity(0.4),
                borderRadius: BorderRadius.circular(30)),
            child: Text(
              "$counter",
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ),
          ElevatedButton(
            style: ButtonStyle(
                backgroundColor:
                MaterialStatePropertyAll(Theme.of(context).dividerColor),
                padding: const MaterialStatePropertyAll(
                    EdgeInsets.symmetric(vertical: 10, horizontal: 30))),
            onPressed: (){},
            child: Text(azkar[index],
                style: Theme.of(context).textTheme.labelMedium),
          )
        ],
      ),
    );
  }

  increment() {
    setState(() {
      turns += 1.0 / 16.0;
      counter++;
      while (counter > 33) {
        index++;
        counter = 0;
        index = (index + 1) % azkar.length;
      }
    });
  }
}

