import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class TopLeftClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    final double _xScaling = size.width / 414;
    final double _yScaling = size.height / 896;
    path.lineTo(0.775838 * _xScaling, 608.999 * _yScaling);
    path.cubicTo(
      0.775838 * _xScaling,
      608.999 * _yScaling,
      1.87744 * _xScaling,
      0 * _yScaling,
      1.87744 * _xScaling,
      0 * _yScaling,
    );
    path.cubicTo(
      9.94785 * _xScaling,
      111.207 * _yScaling,
      30.2932 * _xScaling,
      205.708 * _yScaling,
      55.1346 * _xScaling,
      265.768 * _yScaling,
    );
    path.cubicTo(
      85.713 * _xScaling,
      339.699 * _yScaling,
      124.729 * _xScaling,
      389.661 * _yScaling,
      162.925 * _xScaling,
      428.195 * _yScaling,
    );
    path.cubicTo(
      200.147 * _xScaling,
      465.747 * _yScaling,
      246.371 * _xScaling,
      482.882 * _yScaling,
      296.441 * _xScaling,
      493.833 * _yScaling,
    );
    path.cubicTo(
      341.239 * _xScaling,
      503.631 * _yScaling,
      394.747 * _xScaling,
      518.534 * _yScaling,
      437.984 * _xScaling,
      494.089 * _yScaling,
    );
    path.cubicTo(
      437.984 * _xScaling,
      494.089 * _yScaling,
      437.775 * _xScaling,
      609.789 * _yScaling,
      437.775 * _xScaling,
      609.789 * _yScaling,
    );
    path.cubicTo(
      437.775 * _xScaling,
      609.789 * _yScaling,
      0.775838 * _xScaling,
      608.999 * _yScaling,
      0.775838 * _xScaling,
      608.999 * _yScaling,
    );
    path.cubicTo(
      0.775838 * _xScaling,
      608.999 * _yScaling,
      0.775838 * _xScaling,
      608.999 * _yScaling,
      0.775838 * _xScaling,
      608.999 * _yScaling,
    );
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black87,
        body: Container(
            child: Stack(children: <Widget>[
          ClipPath(
            clipper: TopLeftClipper(),
            child: Container(
              color: Color(0xFFFFC100),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Icon(
                  Icons.home,
                  color: Color(0xFFFFC600),
                  size: 40.0,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      child: const Text(
                        'NO',
                        style: TextStyle(
                            color: Color.fromARGB(255, 243, 243, 242), fontSize: 19.0),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(15, 5, 0, 2),
                      child: const Text(
                        'Crime',
                        style: TextStyle(
                            color: Color.fromARGB(255, 243, 243, 242), fontSize: 19.0),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          Positioned(
            top: 75.0,
            left: 385.0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Container(
                    padding: EdgeInsets.fromLTRB(25, 10, 25, 15),
                    child: const Text(
                      'Report',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 28.0,
                          fontFamily: 'RobotoMono',
                          fontWeight: FontWeight.bold),
                    )),
                Container(
                    padding: EdgeInsets.fromLTRB(25, 0, 25, 25),
                    child: const Text(
                      'CRIME',
                      style: TextStyle(
                          color: Colors.amber,
                          fontSize: 28.0,
                          fontFamily: 'RobotoMono',
                          fontWeight: FontWeight.bold),
                    )),
              ],
            ),
          ),
 // the 3 images down below
          const Positioned(
                 top:135.0,
                 left: 25.0,
                 child: Padding(
                  padding: EdgeInsets.all(45),
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/thief.jpg'),
                    radius: 50,
                  ),
                )),
              // the second image
              const Positioned(
                top: 215.0,
              left: 35.0,
              child: Padding(
            padding: EdgeInsets.all(45),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/holded.jpg'),
              radius: 60,
            ),
          )),
          // last image
          const Positioned(
            top: 155.0,
              left: 105.0,
              child: Padding(
            padding: EdgeInsets.all(45),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/hit.png'),
              radius: 50,
            ),
          )),

          // form field
          Positioned(
              top: 470.0,
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(25.0),
                      topLeft: Radius.circular(25.0)),
                  color: Color(0xFFF6F5F5),
                ),
                width: 500,
                height: 400,
                child: Form(                    // key: _formKey,
                    child: Column(children: [
                  Padding(
                      padding: EdgeInsets.fromLTRB(100, 25, 100, 5),
                      child: TextFormField(
                        // controller: emailcontroler,
                        decoration: InputDecoration(
                            fillColor: Colors.grey[300],
                            filled: true,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8)),
                            hintText: 'Enter Email',
                            suffixIcon: const Icon(
                              Icons.email,
                              size: 30,
                              color: Colors.black,
                            )),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'email is required ';
                          }
                        },
                      )),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 100, vertical: 7),
                    child: TextFormField(
                      // controller: passwordcontroler,
                      obscureText: true,
                      decoration: InputDecoration(
                          fillColor: Colors.grey[300],
                          filled: true,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8)),
                          hintText: 'Enter password',
                          suffixIcon: const Icon(
                            Icons.lock,
                            color: Colors.black,
                            size: 27,
                          )),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'password is required';
                        } 
                      },
                    ),
                  ),
                  const Padding(padding: EdgeInsets.fromLTRB(200, 5, 5, 3),
                  child: Text('Forgot Password?'),
                  ),

                  // Login button
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        
                         primary: Color(0xFFFFC600),
                         shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      minimumSize: Size(280, 50),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/login');
                    },
                    child: const Text('Login',style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.w500),),
                    ),
                    
                    
                    ),

                  
                  
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 120, vertical: 10),
                    child: Row(
                      children: [
                        const Text(' Not registerd yet ? '),
                        InkWell(
                          onTap: () => Navigator.pushNamed(context, '/signup'),
                          child: const Text(
                            'Create Account ',
                            style: TextStyle(fontSize: 15, color: Color.fromARGB(255, 59, 118, 118), fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  )
                ])),
              ))
        ])));
  }
}
