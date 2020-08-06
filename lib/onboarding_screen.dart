import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'constants.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final int _newPage = 1;
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;


  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (var i = 0; i < _newPage; i++) {
      list.add(i ==_currentPage ? _indicator(true) : _indicator(false));
    }

    return list;
  }

  Widget _indicator(bool isActive){
    return AnimatedContainer(duration: Duration(milliseconds: 150),
    margin: EdgeInsets.symmetric(horizontal: 8.0),
    height: 8.0,
    width: isActive ? 24.0 : 16.0,);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              //stops: (0.1, 0.4, 0.7, 0.8),
              colors: [
                Color(0xFF359400),
                Color(0xFF456308),
                Color(0xFF583605),
                Color(0xFF581600)
              ],
            ),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 40.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                  alignment: Alignment.centerRight,
                  child: FlatButton(
                    onPressed: () => print('skip'),
                    child: Text(
                      "Skip",
                      style: TextStyle(color: Colors.white, fontSize: 20.0),
                    ),
                  ),
                ),
                Container(
                  height: 600.0,
                  child: PageView(
                    physics: ClampingScrollPhysics(),
                    controller: _pageController,
                    onPageChanged: (int page) {
                      setState(() {
                        _currentPage = page;
                      });
                    },
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(40.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Center(
                              child: Image(
                                image: AssetImage("assets/images/reminder.png"),
                                height: 300.0,
                                width: 300.0,
                              ),
                            ),
                            SizedBox(height: 30.0),
                            Text(
                              "Connect people\naround the world",
                              style: KHeadingTextStyle,
                            ),
                            SizedBox(height: 15.0),
                            Text(
                              "Lorem ipsom sdfjk, sd asdai as asdasd",
                              style: KSubTextStyle,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(40.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Center(
                              child: Image(
                                image: AssetImage("assets/images/reminder.png"),
                                height: 300.0,
                                width: 300.0,
                              ),
                            ),
                            SizedBox(height: 30.0),
                            Text(
                              "Get a new experience of imagination",
                              style: KHeadingTextStyle,
                            ),
                            SizedBox(height: 15.0),
                            Text(
                              "Lorem ipsom sdfjk, sd asdai as asdasd",
                              style: KSubTextStyle,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(40.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Center(
                              child: Image(
                                image: AssetImage("assets/images/reminder.png"),
                                height: 300.0,
                                width: 300.0,
                              ),
                            ),
                            SizedBox(height: 30.0),
                            Text(
                              "Connect people\naround the world",
                              style: KHeadingTextStyle,
                            ),
                            SizedBox(height: 15.0),
                            Text(
                              "Lorem ipsom sdfjk, sd asdai as asdasd",
                              style: KSubTextStyle,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: _buildPageIndicator(),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
