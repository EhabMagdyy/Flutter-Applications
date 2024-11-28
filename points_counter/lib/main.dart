import 'package:flutter/material.dart';

void main()
{
  runApp(const PointsCounter());
}

class PointsCounter extends StatefulWidget
{
  const PointsCounter({super.key});

  @override
  State<PointsCounter> createState() => _PointsCounterState();
}

class _PointsCounterState extends State<PointsCounter>
{
  // Players' points counters
  int player1Points = 0;
  int player2Points = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 254, 244, 230),
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: const ListTile(
            leading: Icon(
              Icons.sports_kabaddi_rounded,
              color: Colors.black,
              size: 28,
            ),
            title: Text(
              "Points Counter",
              style: TextStyle(
                fontSize: 24,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildFirstPlayerColumn(),
                _buildVerticalDivider(),
                _buildSecondPlayerColumn(),
              ],
            ),
            const SizedBox(height: 70),
            _buildResetButton(),
          ],
        ),
      ),
    );
  }

  Widget _buildFirstPlayerColumn()
  {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Player 1",
          style: TextStyle(
            fontSize: 36,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 280,
          width: 150,
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              "$player1Points",
              style: const TextStyle(
                fontSize: 200,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.orange,
            minimumSize: const Size(110, 50),
          ),
          onPressed: () {
            setState(() {
              player1Points++;
            });
          },
          child: const Text(
            "Add 1 Point",
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
            ),
          ),
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.orange,
            minimumSize: const Size(110, 50),
          ),
          onPressed: () {
            setState(() {
              player1Points--;
            });
          },
          child: const Text(
            "Sub 1 Point",
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildSecondPlayerColumn()
  {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Player 2",
          style: TextStyle(
            fontSize: 36,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 280,
          width: 150,
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              "$player2Points",
              style: const TextStyle(
                fontSize: 200,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.orange,
            minimumSize: const Size(110, 50),
          ),
          onPressed: () {
            setState(() {
              player2Points++;
            });
          },
          child: const Text(
            "Add 1 Point",
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
            ),
          ),
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.orange,
            minimumSize: const Size(110, 50),
          ),
          onPressed: () {
            setState(() {
              player2Points--;
            });
          },
          child: const Text(
            "Sub 1 Point",
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildVerticalDivider()
  {
    return const SizedBox(
      height: 450,
      child: VerticalDivider(
        indent: 5,
        endIndent: 5,
        color: Colors.black45,
        thickness: 1.2,
      ),
    );
  }

  Widget _buildResetButton()
  {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.black,
        minimumSize: const Size(120, 60),
      ),
      onPressed: () {
        setState(() {
          player1Points = 0;
          player2Points = 0;
        });
      },
      child: const Text(
        "Reset",
        style: TextStyle(
          fontSize: 24,
          color: Colors.orange,
        ),
      ),
    );
  }
}
