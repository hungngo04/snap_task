import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:task_management/ui/pages/home_page.dart';
import 'package:task_management/ui/theme.dart';
import 'package:task_management/ui/widgets/button.dart';

class StarterPage extends StatefulWidget {
  const StarterPage({Key? key}) : super(key: key);

  @override
  State<StarterPage> createState() => _StarterPageState();
}

class _StarterPageState extends State<StarterPage> {
  final introKey = GlobalKey<IntroductionScreenState>();

  Widget _buildImage(String assetName, [double width = 350]) {
    return Image.asset('assets/$assetName', width: width);
  }

  @override
  Widget build(BuildContext context) {
  const bodyStyle = TextStyle(fontSize: 16.0);

    const pageDecoration = PageDecoration(
      titleTextStyle: TextStyle(fontSize: 25.0, fontWeight: FontWeight.w700),
      bodyTextStyle: bodyStyle,
      bodyPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
    );

    return IntroductionScreen(
      key: introKey,
      globalBackgroundColor: Colors.white,
      allowImplicitScrolling: true,
      autoScrollDuration: 3000,
      infiniteAutoScroll: true,
      // globalHeader: Align(
      //   alignment: Alignment.topRight,
      //   child: SafeArea(
      //     child: Padding(
      //       padding: const EdgeInsets.only(top: 16, right: 16),
      //       child: Container(
      //         child: Image(image: AssetImage('assets/starter-01.png'))
      //       )
      //     ),
      //   ),
      // ),
      globalFooter: SizedBox(
        width: double.infinity,
        height: 60,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(primary: primaryClr),
          child: const Text(
            'Let\'s go!',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          onPressed: () async {
              await Get.to(HomePage());
            }
        ),
      ),
      pages: [
        PageViewModel(
          title: "Create and Conquer",
          body:
              "Effortlessly create and manage your todo lists with Snaptask. Stay organized and focused as you tackle your daily tasks like a pro!",
          image: _buildImage('starter-02.png', 200),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Power at Your Fingertips!",
          body:
              "Take productivity to the next level with Snaptask's widgets. Access your tasks right from your home screen, making productivity just a tap away!",
          image: _buildImage('starter-03.png', 200),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Let's Get Started!",
          body:
              "You're all set to embark on your journey to productivity greatness. Embrace the power of Snaptask, and let's make every day a success!",
          image: _buildImage('starter-01.png', 200),
          decoration: pageDecoration,
        ),
        // PageViewModel(
        //   title: "Full Screen Page",
        //   body:
        //       "Pages can be full screen as well.\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc id euismod lectus, non tempor felis. Nam rutrum rhoncus est ac venenatis.",
        //   image: Text("Test 02"),
        //   decoration: pageDecoration.copyWith(
        //     contentMargin: const EdgeInsets.symmetric(horizontal: 16),
        //     fullScreen: true,
        //     bodyFlex: 2,
        //     imageFlex: 3,
        //     safeArea: 100,
        //   ),
        // ),
        // PageViewModel(
        //   title: "Another title page",
        //   body: "Another beautiful body text for this example onboarding",
        //   image: Text("Test 03"),
        //   footer: ElevatedButton(
        //     onPressed: () {
        //       introKey.currentState?.animateScroll(0);
        //     },
        //     style: ElevatedButton.styleFrom(
        //       backgroundColor: Colors.lightBlue,
        //       shape: RoundedRectangleBorder(
        //         borderRadius: BorderRadius.circular(8.0),
        //       ),
        //     ),
        //     child: const Text(
        //       'FooButton',
        //       style: TextStyle(color: Colors.white),
        //     ),
        //   ),
        //   decoration: pageDecoration.copyWith(
        //     bodyFlex: 6,
        //     imageFlex: 6,
        //     safeArea: 80,
        //   ),
        // ),
        PageViewModel(
          title: "Welcome to Snaptask",
          bodyWidget: Flexible(
            child: 
              Column(
                children: [
                  Center(
                    child: 
                      Text(
                        "Let's make productivity a breeze! Please login to your account or create new account to continue ", 
                        textAlign: TextAlign.center,
                      ),
                  ),
                ],
              )
            ),
          decoration: pageDecoration.copyWith(
            bodyFlex: 2,
            imageFlex: 4,
            bodyAlignment: Alignment.bottomCenter,
            imageAlignment: Alignment.topCenter,
          ),
          image: Container(
            margin: EdgeInsets.only(top: 16, left: 16, right: 16, bottom: 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(child: _buildImage('checklist.jpg', 400)),
                SizedBox(height: 60.0),
                MyButton(label: 'Login', widthSize: double.infinity),
                SizedBox(height: 16.0),
                MyButton(label: 'Register', widthSize: double.infinity, isBackground: false,)
              ]
            ),
          ),
          reverse: true,
        ),
      ],
      onDone: () => () => {},
      onSkip: () => () => {},
      showSkipButton: false,
      skipOrBackFlex: 0,
      nextFlex: 0,
      showBackButton: false,
      showDoneButton: true,
      //rtl: true, // Display as right-to-left
      back: const Icon(Icons.arrow_back),
      next: const Icon(Icons.arrow_forward),
      done: GestureDetector(
        child: const Text('Done', style: TextStyle(fontWeight: FontWeight.w600)), 
        onTap: () => Get.to(HomePage())
      ),
      curve: Curves.fastLinearToSlowEaseIn,
      controlsMargin: const EdgeInsets.all(16),
      // controlsPadding: kIsWeb
      //     ? const EdgeInsets.all(12.0)
      //     : const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
      dotsDecorator: const DotsDecorator(
        size: Size(10.0, 10.0),
        color: Color(0xFFBDBDBD),
        activeSize: Size(22.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
      dotsContainerDecorator: ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
      ),
    );
  }
}