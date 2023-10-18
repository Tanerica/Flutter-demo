import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  TextEditingController _nameController = TextEditingController();
  bool _nameError = false;
  var BorderColor1 = Colors.white;
  var BorderColor2 = Colors.white;
  void _validName() {
    setState(() {
      _nameError = _nameController.text.isEmpty;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: appBar(),
      body: Container(
        margin: const EdgeInsets.all(20),
        child: Column(children: [
          Center(
            child: Image.asset(
              'assets/icons/Frame 2.png',
              height: 120,
              width: 120,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 40, left: 20, right: 20),
            child: TextField(
              controller: _nameController,
              decoration: InputDecoration(
                errorText: _nameError ? 'Name can not be empty' : null,
                border: const UnderlineInputBorder(),
                labelText: 'Name',
              ),
              onChanged: (value) {
                _validName();
              },
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 5, left: 20, right: 20),
            child: const TextField(
              decoration: InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Date of birth',
              ),
              keyboardType: TextInputType.datetime,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 5, left: 20, right: 20),
            child: TextFormField(
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'PIN',
              ),
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.digitsOnly
              ],
              keyboardType: TextInputType.number,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 5, left: 20, right: 20),
            child: TextFormField(
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Allowance',
              ),
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.digitsOnly
              ],
              keyboardType: TextInputType.number,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    side: BorderSide(color: BorderColor1),
                  ),
                  onPressed: () {
                    setState(() {
                      BorderColor1 = Colors.green;
                      BorderColor2 = Colors.white;
                    });
                  },
                  child: Image.asset(
                    'assets/icons/Boy.png',
                    height: 60,
                    width: 50,
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      side: BorderSide(color: BorderColor2)),
                  onPressed: () {
                    setState(() {
                      BorderColor2 = Colors.green;
                      BorderColor1 = Colors.white;
                    });
                  },
                  child: Image.asset(
                    'assets/icons/Girl.png',
                    height: 60,
                    width: 50,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            height: 200,
            alignment: AlignmentDirectional.bottomCenter,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 175, 221, 175),
                    minimumSize: const Size(300, 50)),
                onPressed: () {},
                child: const Text(
                  'Save',
                  style: TextStyle(color: Colors.black, fontSize: 20),
                )),
          ),
        ]),
      ),
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
