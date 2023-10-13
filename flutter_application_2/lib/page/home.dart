import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: Column(children: [
        Center(
          child: Image.asset(
            'assets/icons/Frame 2.png',
            height: 120,
            width: 120,
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 40, left: 20, right: 20),
          child: TextFormField(
            decoration: const InputDecoration(
              border: UnderlineInputBorder(),
              labelText: 'Name',
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 5, left: 20, right: 20),
          child: TextFormField(
            decoration: const InputDecoration(
              border: UnderlineInputBorder(),
              labelText: 'Date of birth',
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 5, left: 20, right: 20),
          child: TextFormField(
            decoration: const InputDecoration(
              border: UnderlineInputBorder(),
              labelText: 'PIN',
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 5, left: 20, right: 20),
          child: TextFormField(
            decoration: const InputDecoration(
              border: UnderlineInputBorder(),
              labelText: 'Allowance',
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          children: [
            Expanded(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
                onPressed: () {},
                child: Image.asset(
                  'assets/icons/Boy.png',
                  height: 50,
                  width: 50,
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
                onPressed: () {},
                child: Image.asset(
                  'assets/icons/Girl.png',
                  height: 50,
                  width: 50,
                ),
              ),
            ),
          ],
        )
      ]),
    );
  }

  AppBar appBar() {
    return AppBar(
      title: const Text(
        'Edit my family account',
        style: TextStyle(
            color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
      ),
      backgroundColor: Colors.white,
      elevation: 0.0,
      centerTitle: true,
      leading: GestureDetector(
        onTap: () {},
        child: Container(
          // margin: const EdgeInsets.all(10),
          // alignment: Alignment.center,
          decoration: BoxDecoration(
              color: const Color(0x00e8eef3),
              borderRadius: BorderRadius.circular(10)),
          child: Image.asset(
            'assets/icons/Notification.png',
            height: 20,
            width: 20,
          ),
        ),
      ),
      actions: [
        GestureDetector(
          onTap: () {},
          child: Container(
            // margin: const EdgeInsets.all(10),
            alignment: Alignment.centerRight,
            decoration: BoxDecoration(
                color: const Color(0x00e8eef3),
                borderRadius: BorderRadius.circular(10)),
            child: Image.asset(
              'assets/icons/Setting edit button.png',
              height: 50,
              width: 50,
            ),
          ),
        ),
      ],
    );
  }
}
