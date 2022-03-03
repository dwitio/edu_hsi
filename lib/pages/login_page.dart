import 'package:edu_hsi/theme.dart';
import 'package:flutter/material.dart';
import 'home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.arrow_back, color: blueColor),
                const SizedBox(
                  height: 22,
                ),
                const Align(
                  child: Text(
                    'Masuk',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
                  ),
                ),
                const Divider(
                  color: Colors.grey,
                ),
                const SizedBox(
                  height: 24,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: 'NIP',
                      labelText: 'NIP',
                      prefixIcon: const Icon(Icons.person),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                      ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Contoh NIP: ARN123-12345',
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                TextFormField(
                  obscureText: _isObscure,
                  decoration: InputDecoration(
                      hintText: 'Password',
                      labelText: 'Password',
                      prefixIcon: const Icon(Icons.lock),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0)
                      ),
                      suffixIcon: IconButton(
                        icon: Icon(
                          _isObscure ? Icons.visibility : Icons.visibility_off,
                        ),
                        onPressed: (){
                          setState(() {
                            _isObscure = !_isObscure;
                          });
                        },
                      )
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                SizedBox(
                  width: (MediaQuery.of(context).size.width),
                  height: 50,
                  child: ElevatedButton.icon(
                      icon: const Icon(Icons.login),
                      onPressed: (){
                        Navigator.push(
                            context, 
                            MaterialPageRoute(builder: (context) => const HomePage())
                        );
                      },
                      style: TextButton.styleFrom(
                        backgroundColor: blueColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)
                        )
                      ),
                      label: const Text(
                        'MASUK'
                      ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Align(
                  child: SizedBox(
                    width: 230,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'Lupa password?',
                          style: TextStyle(
                              color: blueColor,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        const Text(
                          'atau'
                        ),
                        Text(
                          'Lupa NIP?',
                          style: TextStyle(
                              color: blueColor,
                              fontWeight: FontWeight.bold
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
