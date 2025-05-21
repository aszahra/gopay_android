import 'package:flutter/material.dart';

void main() {
  runApp(
      // MaterialApp(
      //     debugShowCheckedModeBanner: false,
      //     home: SplashPage()
      // )
      FlutterGopayApp()
  );
}

class FlutterGopayApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashPage(),
    );
  }
}

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => GopayShopMain())
      );
    });

    return Scaffold(
      backgroundColor: Utils.mainColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/gopay.png', width: 350, height: 150),
          ],
        ),
      ),
    );
  }
}

class FlutterGopayLoginState extends State<FlutterGopayLogin>{
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 7,
                  color: Utils.mainColor
                ),
                borderRadius: BorderRadius.circular(100)
              ),
              child: const Icon(Icons.savings, color: Utils.mainColor, size: 45),
            ),
            const SizedBox(height: 30),
            const Text('Welcome to', style: TextStyle(color: Colors.blue, fontSize: 15)),
            const Text('Gopay', style: TextStyle(color: Utils.mainColor, fontSize: 30)),
            Expanded(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const Text("Sign Into Your Gopay Account",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.blue, fontSize: 12)
                      ),
                      const SizedBox(height: 10),
                      Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(50)
                        ),
                        child: TextField(
                          onChanged: (text) {
                            setState(() {});
                          },
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            prefixIcon: Icon(Icons.email, color: Utils.mainColor),
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                            contentPadding: EdgeInsets.only(
                              left: 20, bottom: 11, top: 11, right: 15
                            ),
                            hintText: "Email"
                          ),
                          style: const TextStyle(fontSize: 16),
                          controller: usernameController
                        ),
                      ),
                      const SizedBox(height: 20),
                      Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(50)
                        ),
                        child: TextField(
                          onChanged: (text) {
                            setState(() {});
                          },
                          obscureText: true,
                          obscuringCharacter: "*",
                          decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.lock, color: Utils.mainColor),
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                            contentPadding: EdgeInsets.only(
                              left: 15, bottom: 11, top: 11, right: 15
                            ),
                            hintText: "Password"
                          ),
                          controller: passwordController,
                          style: const TextStyle(fontSize: 16),
                        ),
                      )
                    ],
                  ),
              )
            )
          ],
        ),
      )
    );
  }
}

class

class GopayShopMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: GopaySideMenu()
      ),
      appBar: AppBar(
          iconTheme: const IconThemeData(color: Utils.mainColor),
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          title:
          Text('100% | Perlindungan Kuat!',
          style: TextStyle(
            color: Colors.grey,
            fontSize: 14
          )),
          actions: [
            Container(
                margin: EdgeInsets.only(right: 15),
                child: Icon(
                    Icons.help,
                    color: Utils.mainColor
                )
            )
          ]
          // Image.asset('assets/gopay.png', width: 40),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppHeader()
        ],
      )
    );
  }
}

class GopaySideMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: EdgeInsets.only(top: 40),
            child: Text('Aisyah Siti Zahra'),
          ),
          Image.asset('assets/logo-landscape.png', width: 300),
        ],
      ),
    );
  }
}

class GopayPager extends StatefulWidget {
  @override
  State<GopayPager> createState() => _GopayPagerState();
}

class _GopayPagerState extends State<GopayPager> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class AppHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 50, top: 30, right: 30),
      child: Row(
        children: [
          Column(
            children: [
              ClipOval(
                child: Image.asset(
                  'assets/logo-landscape.png',
                  width: 80,
                  height: 30,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 2),
              Text(
                'Rp100',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
            ],
          ),
          SizedBox(width: 70),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  side: BorderSide(color: Utils.mainColor),
                ),
                child: Text(
                  'Top Up',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  side: BorderSide(color: Utils.mainColor),
                ),
                child: Text(
                  'Tarik Tunai',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

}

class Utils {
  static const Color mainColor = Color(0xFF00A5CF);
  static const String donutLogoWhiteNoText = 'https://romanejaquez.github.io/flutter-codelab4/assets/donut_shop_logowhite_notext.png';
  static const String donutLogoWhiteText = 'https://romanejaquez.github.io/flutter-codelab4/assets/donut_shop_text_reversed.png';
  static const String donutLogoRedText = 'https://romanejaquez.github.io/flutter-codelab4/assets/donut_shop_text.png';
  static const String donutTitleFavorites = 'https://romanejaquez.github.io/flutter-codelab4/assets/donut_favorites_title.png';
  static const String donutTitleMyDonuts = 'https://romanejaquez.github.io/flutter-codelab4/assets/donut_mydonuts_title.png';
  static const String donutPromo1 = 'https://romanejaquez.github.io/flutter-codelab4/assets/donut_promo1.png';
  static const String donutPromo2 = 'https://romanejaquez.github.io/flutter-codelab4/assets/donut_promo2.png';
  static const String donutPromo3 = 'https://romanejaquez.github.io/flutter-codelab4/assets/donut_promo3.png';
}