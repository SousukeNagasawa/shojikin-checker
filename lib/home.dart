import 'package:flutter/material.dart';
import 'package:shojikin_checker/add.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class GraphCard extends StatefulWidget {
  const GraphCard({Key? key}) : super(key: key);

  @override
  _GraphCardState createState() => _GraphCardState();
}

class _GraphCardState extends State<GraphCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.white10,
            blurRadius: 5,
            spreadRadius: 5,
          )
        ],
        color: Colors.white,
      ),
      width: 200,
      height: 300,
      child: Center(
        child: Text('グラフだよ'),
      ),
    );
  }
}

class AddCard extends StatefulWidget {
  const AddCard({Key? key}) : super(key: key);

  @override
  _AddCardState createState() => _AddCardState();
}

class _AddCardState extends State<AddCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      width: 200,
      height: 300,
      child: Center(
        child: Text('追加だよ'),
      ),
    );
  }
}

class _HomePageState extends State<HomePage> {
  List cards = [GraphCard(), AddCard()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent[100],
      body: Center(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 260,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 10,
                    spreadRadius: 5,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: Column(
                children: const [
                  SizedBox(
                    height: 52,
                  ),
                  Text(
                    '今月の出費',
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    '合計',
                    style: TextStyle(fontSize: 18),
                  ),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: '5,000',
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: ' 円',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              width: double.infinity,
              height: 400,
              child: PageView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: cards.length,
                itemBuilder: (_, index) {
                  return Container(
                    child: Center(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            child: cards[index],
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: List.generate(cards.length, (indexDots) {
                              return Container(
                                margin: EdgeInsets.only(right: 4),
                                width: index == indexDots ? 30 : 10,
                                height: index == indexDots ? 12 : 10,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: index == indexDots
                                      ? Colors.orangeAccent
                                      : Colors.white,
                                ),
                              );
                            }),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
