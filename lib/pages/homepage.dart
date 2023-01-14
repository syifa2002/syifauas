import 'package:flutter/material.dart';
import 'package:scaffold_gradient_background/scaffold_gradient_background.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScaffoldGradientBackground(
      gradient: LinearGradient(
        begin: Alignment.bottomLeft,
        end: Alignment.topRight,
        colors: [
          Color(0xFF8EC5FC),
          Color.fromARGB(255, 170, 91, 243),
        ],
      ),
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(padding: EdgeInsets.all(12)),
              InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed('/OtomotifPage');
                },
                child: Column(
                  children: [
                    Icon(Icons.car_crash, size: 100.2, color: Colors.white),
                    Text(
                      'BERITA OTOMOTIF',
                      style: TextStyle(fontSize: 15.0, color: Colors.white),
                    )
                  ],
                ),
              ),
              Padding(padding: EdgeInsets.all(30)),
              InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed('/OlahragaPage');
                },
                child: Column(
                  children: [
                    Icon(Icons.sports, size: 100.2, color: Colors.white),
                    Text(
                      'BERITA OLAHRAGA',
                      style: TextStyle(fontSize: 15.0, color: Colors.white),
                    )
                  ],
                ),
              ),
            ],
          ),
          Padding(padding: EdgeInsets.all(10)),
          Row(
            children: [
              Padding(padding: EdgeInsets.all(35)),
              InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed('/ProfilPage');
                },
                child: Column(
                  children: [
                    Icon(Icons.person_add, size: 100.2, color: Colors.white),
                    Text('PROFIL SYIFA',
                        style: TextStyle(fontSize: 15.0, color: Colors.white))
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
