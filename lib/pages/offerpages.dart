import 'package:flutter/material.dart';

class Offerpages extends StatelessWidget {
  const Offerpages({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    if (size.width > 500) {}
    return Wrap(
      children: const [
        Padding(padding: EdgeInsets.all(8.0)),
        offer(
            title: "My great offer ever", description: "Buy 1,get 10 for free"),
        offer(
            title: "My great offer ever", description: "Buy 1,get 10 for free"),
        offer(
            title: "My great offer ever", description: "Buy 1,get 10 for free"),
        offer(
            title: "My great offer ever", description: "Buy 1,get 10 for free"),
        offer(
            title: "My great offer ever", description: "Buy 1,get 10 for free"),
      ],
    );
  }
}

class offer extends StatelessWidget {
  final String title;
  final String description;
  const offer({
    super.key,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      //width: 300,
      child: Card(
        color: Colors.amber.shade50,
        elevation: 7.0,
        child: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/background.png"))),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Center(
                    child: Container(
                  color: Colors.amber.shade50,
                  child:
                      Text(title, style: Theme.of(context).textTheme.headline4),
                )),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                    child: Container(
                  color: Colors.amber.shade50,
                  child: Text(
                    description,
                    style: Theme.of(context).textTheme.headline6,
                  ),
                )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
