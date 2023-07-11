import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'firebase_options.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MaterialApp(
    title: 'Flutter Demo',
    theme: ThemeData(primarySwatch: Colors.blue),
    home: const homePage(),
  ));
}

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  late final TextEditingController _email;
  late final TextEditingController _passworld;

  @override
  void initState() {
    _email = TextEditingController();
    _passworld = TextEditingController();
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    _email.dispose();
    _passworld.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register'),
      ),
      body: FutureBuilder(
        future: Firebase.initializeApp(
          options: DefaultFirebaseOptions.currentPlatform,
        ),
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.none:
              return Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 20.0),
                      child: Image.asset(
                        './lib/assets/11242654.png',
                        width: 150.0,
                        height: 150.0,
                      ),
                    ),
                    TextField(
                      controller: _email,
                      keyboardType: TextInputType.emailAddress,
                      enableSuggestions: false,
                      autocorrect: false,
                      decoration: InputDecoration(labelText: 'Email'),
                      style: TextStyle(fontSize: 17.0),
                    ),
                    SizedBox(height: 16.0),
                    TextField(
                      controller: _passworld,
                      obscureText: true,
                      enableSuggestions: false,
                      autocorrect: false,
                      decoration: InputDecoration(
                        labelText: 'Password',
                      ),
                      style: TextStyle(fontSize: 17.0),
                    ),
                    SizedBox(height: 16.0),
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: ElevatedButton(
                        onPressed: () async {
                          final email = _email.text;
                          final password = _passworld.text;

                          final UserCredential userCredential =
                              await FirebaseAuth.instance
                                  .createUserWithEmailAndPassword(
                            email: email,
                            password: password,
                          );

                          print(userCredential);
                        },
                        child: Text('Register'),
                      ),
                    ),
                  ],
                ),
              );

            default:
              return const Text('Loading....');
          }
        },
      ),
    );
  }
}
