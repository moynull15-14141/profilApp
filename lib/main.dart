import 'package:flutter/material.dart';

void main() {
  runApp(profile());
}

class profile extends StatelessWidget {
  const profile({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: homeProfile(),
    );
  }
}

class homeProfile extends StatelessWidget {
  const homeProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Color.fromRGBO(173, 214, 255, 1),
      appBar: AppBar(
        title: Text(
          'Profile',
          style: TextStyle(color: Colors.white, fontSize: 26),
        ),
        backgroundColor: Color.fromARGB(255, 14, 100, 113),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          //   mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Center(
              child: CircleAvatar(
                maxRadius: 60,
                backgroundColor: Color.fromARGB(255, 240, 181, 145),
                child: CircleAvatar(
                  maxRadius: 55,
                  child: ClipOval(
                    child: Image.asset(
                      "imj/dp.jpg",
                      width: 110,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Center(
                child: Column(
              children: [
                Text(
                  "Evelyn",
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 1,
                ),
                Text(
                  "evelyn@gmail.com",
                  style: TextStyle(fontSize: 22, color: Colors.black45),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                  style: TextStyle(fontSize: 20),
                ),
              ],
            )),
          ],
        ),
      ),
    ));
  }
}
