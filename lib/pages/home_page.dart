import 'package:edu_hsi/theme.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Beranda'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Akun'
          )
        ],
        selectedItemColor: blueColor,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Ahlan Wa Sahlan',
                        style: TextStyle(color: Colors.grey, fontSize: 20),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'EDUHSI versi 2106-0501',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                      )
                    ],
                  ),
                  const Spacer(),
                  Image.asset(
                    'assets/images/logo_hsi.png',
                    width: 60,
                  )
                ],
              ),
              const Divider(
                color: Colors.grey,
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(13.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: const [
                          Icon(
                            Icons.text_snippet,
                            color: Colors.grey,
                          ),
                          SizedBox(width: 8,),
                          Text(
                            'Update Sistem',
                            style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                              fontSize: 16
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      Text(
                        'Update Sistem - Mode Gelap',
                        style: TextStyle(
                          color: blueColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 25
                        ),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      const Text(
                        'Alhamdulillaah tim IT HSI telah melakukan update sistem di antaranya adalah dukungan sistem terhadap mode gelap (dark mode).',
                        style: TextStyle(color: Colors.black54),
                      )
                    ],
                  ),
                )
              )
            ],
          ),
        ),
      ),
    );
  }
}
