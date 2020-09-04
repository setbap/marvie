import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:marvie/cards/AnimatedDots.dart';

void main() {
  runApp(DevicePreview(enabled: !kReleaseMode, builder: (context) => MyApp()));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        cardColor: Colors.red,
        backgroundColor: Colors.green,
        brightness: Brightness.light,
        errorColor: Colors.orange,
        accentColor: Colors.lightGreenAccent,
        primaryColor: Colors.green,
        scaffoldBackgroundColor: Color(0xff22343C),
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController _pageController;
  bool isLastPage = false;
  String text = "Next";

  var page = 0.0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(
      viewportFraction: .80,
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  static const _kDuration = const Duration(milliseconds: 300);
  static const _kCurve = Curves.ease;

  nextFunction() {
    _pageController.nextPage(duration: _kDuration, curve: _kCurve);
  }

  previousFunction() {
    _pageController.previousPage(duration: _kDuration, curve: _kCurve);
  }

  @override
  Widget build(BuildContext context) {
    print("rebuild");
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              Container(
                height: 400,
                child: PageView(
                  scrollDirection: Axis.horizontal,
                  controller: _pageController,
                  onPageChanged: (p) {
                    if (p > 1.9 && text == "Next") {
                      setState(() {
                        text = "Login";
                        isLastPage = true;
                      });
                    } else if (p < 1.9 && text == "Login") {
                      setState(() {
                        text = "Next";
                        isLastPage = false;
                      });
                    }
                  },
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        image: DecorationImage(
                            image: AssetImage('assets/images/1.jpeg'),
                            fit: BoxFit.cover),
                      ),
                      width: double.infinity,
                      height: 300,
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        image: DecorationImage(
                            image: AssetImage('assets/images/2.jpeg'),
                            fit: BoxFit.cover),
                      ),
                      width: double.infinity,
                      height: 300,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        image: DecorationImage(
                            image: AssetImage('assets/images/3.jpeg'),
                            fit: BoxFit.cover),
                      ),
                      width: double.infinity,
                      height: 300,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                "Join our awesome community",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    height: 1.3,
                    letterSpacing: 1.2),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                "It looks like you are on track. Please \n continue to follow your daily plan",
                style: TextStyle(
                    color: Color(0xFF96A7AF),
                    fontSize: 14,
                    height: 1.2,
                    fontWeight: FontWeight.w200,
                    letterSpacing: 1.2),
              ),
              SizedBox(
                height: 20,
              ),
              AnimatedDots(
                controller: _pageController,
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                width: 320,
                height: 58,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 1,
                      child: FlatButton.icon(
                        padding: EdgeInsets.all(0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                          side: BorderSide(
                            color: Colors.transparent,
                            width: 0,
                          ),
                        ),
                        color: Color(0xFF286053),
                        textColor: Color(0xFF3DD598),
                        onPressed: previousFunction,
                        label: Text(""),
                        icon: Icon(Icons.arrow_back),
                      ),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Expanded(
                      flex: 4,
                      child: FlatButton.icon(
                        padding: EdgeInsets.all(0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                          side: BorderSide(
                            color: Colors.transparent,
                            width: 2,
                          ),
                        ),
                        color: Color(0xFF40DF9F),
                        textColor: Colors.white,
                        onPressed: nextFunction,
                        label: Text(text),
                        icon: isLastPage
                            ? Icon(Icons.get_app)
                            : Icon(Icons.arrow_forward),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
