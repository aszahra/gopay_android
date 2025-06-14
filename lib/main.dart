import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(
      // MaterialApp(
      //     debugShowCheckedModeBanner: false,
      //     home: SplashPage()
      // )
      FlutterGopayApp());
}

class FlutterGopayApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
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
          MaterialPageRoute(builder: (context) => GopayShopMain()));
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

class FlutterGopayLogin extends StatefulWidget {
  @override
  FlutterGopayLoginState createState() => FlutterGopayLoginState();
}

class FlutterGopayLoginState extends State<FlutterGopayLogin> {
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
                    // border: Border.all(
                    //   width: 7,
                    //   color: Utils.mainColor
                    // ),
                    // borderRadius: BorderRadius.circular(100)
                    ),
                child: Image.asset('assets/gopay.png', width: 350, height: 150),
                // const Icon(Icons.savings, color: Utils.mainColor, size: 45),
              ),
              const SizedBox(height: 30),
              const Text('Selamat datang di Gopay!',
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 25,
                      fontWeight: FontWeight.bold)),
              // const Text('Gopay', style: TextStyle(color: Utils.mainColor, fontSize: 30)),
              Expanded(
                  child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Text(
                        "Masuk atau daftar hanya dalam beberapa langkah mudah.",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.blue, fontSize: 20)),
                    const SizedBox(height: 70),
                    Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(50)),
                      child: TextField(
                          onChanged: (text) {
                            setState(() {});
                          },
                          decoration: const InputDecoration(
                              border: InputBorder.none,
                              prefixIcon:
                                  Icon(Icons.email, color: Utils.mainColor),
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              contentPadding: EdgeInsets.only(
                                  left: 20, bottom: 11, top: 11, right: 15),
                              hintText: "Email"),
                          style: const TextStyle(fontSize: 16),
                          controller: usernameController),
                    ),
                    const SizedBox(height: 20),
                    Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(50)),
                      child: TextField(
                        onChanged: (text) {
                          setState(() {});
                        },
                        obscureText: true,
                        obscuringCharacter: "*",
                        decoration: const InputDecoration(
                            prefixIcon:
                                Icon(Icons.lock, color: Utils.mainColor),
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                            contentPadding: EdgeInsets.only(
                                left: 15, bottom: 11, top: 11, right: 15),
                            hintText: "Password"),
                        controller: passwordController,
                        style: const TextStyle(fontSize: 16),
                      ),
                    )
                  ],
                ),
              ))
            ],
          ),
        ));
  }
}

class FlutterGopayMainButton extends StatelessWidget {
  final Function? onTap;
  final String? label;
  final bool? enabled;

  const FlutterGopayMainButton(
      {Key? key, this.label, this.onTap, this.enabled = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column();
  }
}

class GopayShopMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(child: GopaySideMenu()),
        appBar: AppBar(
            iconTheme: const IconThemeData(color: Utils.mainColor),
            backgroundColor: Colors.transparent,
            elevation: 0,
            centerTitle: true,
            title: Text('100% | Perlindungan Kuat!',
                style: TextStyle(color: Colors.grey, fontSize: 14)),
            actions: [
              Container(
                  margin: EdgeInsets.only(right: 15),
                  child: Icon(Icons.help, color: Utils.mainColor))
            ]
            // Image.asset('assets/gopay.png', width: 40),
            ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [AppHeader()],
        ));
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
    return Column(
      children: [
        Container(
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
        ),
        Padding(
          padding: EdgeInsets.all(30),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildMenuButton('Pulsa', 'assets/pulsa.png'),
                  _buildMenuButton('PLN', 'assets/phone.png'),
                  _buildMenuButton('Paket Data', 'assets/data.png'),
                ],
              ),
              SizedBox(height: 40),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildMenuButton('Top Up', 'assets/top-up.png'),
                  _buildMenuButton('GoFood', 'assets/food.png'),
                  _buildMenuButton('Lainnya', 'assets/others.png'),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildMenuButton(String text, dynamic icon) {
    return Builder(
        builder: (context) => GestureDetector(
            onTap: () {
              if (text == 'Pulsa') {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PulsaPage()),
                );
              }
            },
            child: Column(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.grey[50],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: icon is String
                      ? Image.asset(icon, width: 24, height: 24)
                      : Icon(icon, color: Colors.blue),
                ),
                SizedBox(height: 4),
                Text(
                  text,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            )));
  }
}

class PulsaPage extends StatelessWidget {
  const PulsaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pulsa'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: CircleAvatar(
                backgroundColor: Colors.blue[50],
                child: const Icon(Icons.person, color: Colors.blue),
              ),
              title: const Text(
                'Aisyah Siti Zahra',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: const Text('0895**********'),
              trailing: TextButton(
                onPressed: () {},
                child: const Text(
                  'Kontak',
                  style: TextStyle(color: Colors.blue),
                ),
              ),
            ),
            const SizedBox(height: 24),
            const Text(
              'Pilih Nominal Pulsa',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                childAspectRatio: 1.8,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
                children: [
                  _buildPulsaCard('5rb', '30hr', 'Rp6.500'),
                  _buildPulsaCard('10rb', '30hr', 'Rp11.350'),
                  _buildPulsaCard('15rb', '30hr', 'Rp15.900'),
                  _buildPulsaCard('20rb', '30hr', 'Rp20.700'),
                  _buildPulsaCard('25rb', '30hr', 'Rp25.550'),
                  _buildPulsaCard('30rb', '30hr', 'Rp30.650'),
                  _buildPulsaCard('40rb', '40hr', 'Rp39.700'),
                  _buildPulsaCard('50rb', '50hr', 'Rp49.600'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPulsaCard(String nominal, String masaAktif, String harga) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap: () {
          Get.to(
            () => PulsaConfirmationPage(
              provider: 'Tri',
              phoneNumber: '+62895******',
              nominal: nominal,
              masaAktif: masaAktif,
              harga: harga,
            ),
          );
        },
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    nominal,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    masaAktif,
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey[600],
                    ),
                  ),
                ],
              ),
              Text(
                harga,
                style: const TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PulsaConfirmationPage extends StatelessWidget {
  final String provider;
  final String phoneNumber;
  final String nominal;
  final String masaAktif;
  final String harga;

  const PulsaConfirmationPage({
    Key? key,
    required this.provider,
    required this.phoneNumber,
    required this.nominal,
    required this.masaAktif,
    required this.harga,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Konfirmasi Pembayaran'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Container(
        color: Colors.grey[300],
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildSectionContainer(
                      children: [
                        _buildSectionTitle('Rincian pembelian'),
                        _buildDetailRow('Provider', provider),
                        _buildDetailRow('Nomor tujuan', phoneNumber),
                        _buildDetailRow('Jumlah pulsa', nominal),
                        _buildDetailRow('Masa berlaku', masaAktif),
                      ],
                    ),
                    const SizedBox(height: 20),
                    _buildSectionContainer(
                      children: [
                        _buildSectionTitle('Rincian pembayaran'),
                        _buildDetailRow('Harga pulsa', harga),
                        _buildDetailRow('Total', harga, isTotal: true),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 20,
              color: Colors.grey[200],
            ),
          ],
        ),
      ),
      bottomNavigationBar: _buildBottomPaymentBar(context),
    );
  }

  Widget _buildSectionContainer({required List<Widget> children}) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: children,
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Text(
        title,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
      ),
    );
  }

  Widget _buildDetailRow(String label, String value, {bool isTotal = false}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: TextStyle(
              color: Colors.grey[600],
            ),
          ),
          Text(
            value,
            style: TextStyle(
              fontWeight: isTotal ? FontWeight.bold : FontWeight.normal,
              fontSize: isTotal ? 16 : 14,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBottomPaymentBar(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Image.asset(
                'assets/gopay.png',
                width: 32,
                height: 32,
              ),
              const SizedBox(width: 12),
              const Text(
                'GoPay',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Spacer(),
            ],
          ),
          const SizedBox(height: 20),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const PinPage()),
              );
            },
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  Text(
                    'Bayar $harga',
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const Spacer(),
                  Image.asset(
                    'assets/send.png',
                    width: 24,
                    height: 24,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PinPage extends StatefulWidget {
  const PinPage({super.key});

  @override
  State<PinPage> createState() => _PinPageState();
}

class _PinPageState extends State<PinPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const PaymentSuccessPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Masukkin PIN kamu',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Silakan ketika 6 digit PIN kamu buat lanjut.',
              style: TextStyle(color: Colors.grey),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(6, (index) => Container(
                margin: const EdgeInsets.symmetric(horizontal: 8),
                width: 20,
                height: 20,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey,
                ),
              )),
            ),
            const SizedBox(height: 40),
            const Text(
              'Lupa PIN',
              style: TextStyle(
                color: Colors.blue,
                decoration: TextDecoration.underline,
              ),
            ),
            const Spacer(),
            GridView.count(
              shrinkWrap: true,
              crossAxisCount: 3,
              childAspectRatio: 1.5,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              children: [
                for (int i = 1; i <= 9; i++)
                  ElevatedButton(
                    onPressed: null,
                    child: Text('$i', style: const TextStyle(fontSize: 24)),
                  ),
                const SizedBox.shrink(),
                ElevatedButton(
                  onPressed: null,
                  child: const Text('0', style: TextStyle(fontSize: 24)),
                ),
                const SizedBox.shrink(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class PaymentSuccessPage extends StatelessWidget {
  const PaymentSuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Pembayaran Berhasil!',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 40),
            Image.asset(
              'assets/fin.png',
              width: 270,
              height: 270,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}

class Utils {
  static const Color mainColor = Color(0xFF00A5CF);
  static const String donutLogoWhiteNoText =
      'https://romanejaquez.github.io/flutter-codelab4/assets/donut_shop_logowhite_notext.png';
  static const String donutLogoWhiteText =
      'https://romanejaquez.github.io/flutter-codelab4/assets/donut_shop_text_reversed.png';
  static const String donutLogoRedText =
      'https://romanejaquez.github.io/flutter-codelab4/assets/donut_shop_text.png';
  static const String donutTitleFavorites =
      'https://romanejaquez.github.io/flutter-codelab4/assets/donut_favorites_title.png';
  static const String donutTitleMyDonuts =
      'https://romanejaquez.github.io/flutter-codelab4/assets/donut_mydonuts_title.png';
  static const String donutPromo1 =
      'https://romanejaquez.github.io/flutter-codelab4/assets/donut_promo1.png';
  static const String donutPromo2 =
      'https://romanejaquez.github.io/flutter-codelab4/assets/donut_promo2.png';
  static const String donutPromo3 =
      'https://romanejaquez.github.io/flutter-codelab4/assets/donut_promo3.png';
}
