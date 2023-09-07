import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: RichText(
            text: const TextSpan(
              text: "Hai, ",
              style: TextStyle(
                fontSize: 18,
              ),
              children: [
                TextSpan(
                  text: "Muhammad",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          actions: [
            GestureDetector(
              onTap: () {},
              child: Container(
                margin: const EdgeInsets.only(right: 20),
                width: 30,
                height: 30,
                child: Image.asset(
                  "assets/icons/qr.png",
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ],
          backgroundColor: const Color(0xFFEC2028),
          elevation: 0,
          centerTitle: false,
        ),
        body: Stack(
          children: [
            ClipPath(
              clipper: ClipPathClass(),
              child: Container(
                height: 250,
                width: Get.width,
                color: const Color(0xFFEC2028),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20),
              child: Column(
                children: [
                  Column(
                    children: [
                      ClipPath(
                        clipper: ClipInfoClass(),
                        child: Container(
                          padding: const EdgeInsets.all(15),
                          margin: const EdgeInsets.symmetric(horizontal: 25),
                          // height: 200,
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color(0xFFE52D27),
                                Color(0xFFB31217),
                              ],
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    "081290112333",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Image.asset("assets/logo/simpati.png")
                                ],
                              ),
                              const SizedBox(height: 20),
                              const Text(
                                "Sisa Pulsa Anda",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                              ),
                              const SizedBox(height: 10),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    "Rp34.000",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: const Color(0xFFF7B731),
                                    ),
                                    child: const Text(
                                      "Isi Pulsa",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 10),
                              const Divider(
                                color: Colors.black,
                              ),
                              const SizedBox(height: 10),
                              RichText(
                                text: const TextSpan(
                                  text: "Berlaku sampai ",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                  children: [
                                    TextSpan(
                                      text: " 19 April 2020",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                              ),
                              const SizedBox(height: 10),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  const Text(
                                    "Telkomsel POIN",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 16),
                                  ),
                                  const SizedBox(width: 10),
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 8,
                                      horizontal: 10,
                                    ),
                                    decoration: BoxDecoration(
                                      color: const Color(0xFFF7B731),
                                      borderRadius: BorderRadius.circular(7),
                                    ),
                                    child: const Text(
                                      "172",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(width: 10),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 15),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 25),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            StatusCard(
                              title: "Telepon",
                              data: "12.19",
                              satuan: "GB",
                            ),
                            StatusCard(
                              title: "Telpon",
                              data: "0",
                              satuan: "Min",
                            ),
                            StatusCard(
                              title: "SMS",
                              data: "23",
                              satuan: "SMS",
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 15),
                    ],
                  ),
                  Container(
                    height: 7,
                    color: Colors.grey[400],
                  ),
                  Expanded(
                    child: Container(
                      // color: Colors.purple,
                      child: Column(
                        children: [
                          // body
                          Expanded(
                            child: ListView(
                              padding: const EdgeInsets.symmetric(horizontal: 25),
                              children: [
                                const SizedBox(height: 20),
                                const Text(
                                  "Kategori Paket",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 20),
                                const Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    ItemKategori(
                                      title: "Internet",
                                      icon: "assets/icons/internet.png",
                                    ),
                                    ItemKategori(
                                      title: "Telpon",
                                      icon: "assets/icons/telpon.png",
                                    ),
                                    ItemKategori(
                                      title: "SMS",
                                      icon: "assets/icons/sms.png",
                                    ),
                                    ItemKategori(
                                      title: "Roaming",
                                      icon: "assets/icons/roaming.png",
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 45),
                                const Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    ItemKategori(
                                      title: "Hiburan",
                                      icon: "assets/icons/hiburan.png",
                                    ),
                                    ItemKategori(
                                      title: "Unggulan",
                                      icon: "assets/icons/unggulan.png",
                                    ),
                                    ItemKategori(
                                      title: "Terimpan",
                                      icon: "assets/icons/tersimpan.png",
                                    ),
                                    ItemKategori(
                                      title: "Riwayat",
                                      icon: "assets/icons/ic-riwayat.png",
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 50),
                                const Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Terbaru dari Telkomsel",
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "Lihat Semua",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xFFEC2028),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 20),
                                SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    children: [
                                      const ItemTerbaru(
                                          image: "assets/images/images-1.png"),
                                      const ItemTerbaru(
                                          image: "assets/images/images-2.png"),
                                      const ItemTerbaru(
                                          image: "assets/images/images-1.png"),
                                      const ItemTerbaru(
                                          image: "assets/images/images-2.png"),
                                      const ItemTerbaru(
                                          image: "assets/images/images-1.png"),
                                      SizedBox(
                                        width: Get.width * 0.7,
                                        child: Image.asset(
                                          "assets/images/images-2.png",
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 30),
                              ],
                            ),
                          ),
                          // navigation
                          Container(
                            margin: const EdgeInsets.only(bottom: 5),
                            decoration: const BoxDecoration(
                              border: Border(
                                top: BorderSide(
                                  color:
                                      Color.fromARGB(255, 214, 214, 214),
                                ),
                              ),
                            ),
                            height: 60,
                            // color: Colors.amber,
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                ItemNav(
                                  icon: "beranda",
                                  status: true,
                                  title: "Beranda",
                                ),
                                ItemNav(
                                  icon: "riwayat",
                                  status: false,
                                  title: "Riwayat",
                                ),
                                ItemNav(
                                  icon: "bantuan",
                                  status: false,
                                  title: "Bantuan",
                                ),
                                ItemNav(
                                  icon: "inbox",
                                  status: false,
                                  title: "Inbox",
                                ),
                                ItemNav(
                                  icon: "akun",
                                  status: false,
                                  title: "Akun Saya",
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}

class ItemTerbaru extends StatelessWidget {
  const ItemTerbaru({
    super.key,
    required this.image,
  });

  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      width: Get.width * 0.7,
      height: 110,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class ItemKategori extends StatelessWidget {
  const ItemKategori({
    super.key,
    required this.title,
    required this.icon,
  });

  final String title;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 40,
          height: 40,
          child: Image.asset(
            icon,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(height: 7),
        Text(
          title,
          style: const TextStyle(
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}

class ItemNav extends StatelessWidget {
  const ItemNav({
    super.key,
    required this.status,
    required this.icon,
    required this.title,
  });

  final bool status;
  final String title;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 30,
          child: Image.asset(
            (status == true)
                ? "assets/icons/$icon-active.png"
                : "assets/icons/$icon.png",
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          "Beranda",
          style: TextStyle(
            color: (status == true) ? const Color(0xFFEC2028) : const Color(0xFF747D8C),
          ),
        ),
      ],
    );
  }
}

class StatusCard extends StatelessWidget {
  const StatusCard({
    super.key,
    required this.title,
    required this.data,
    required this.satuan,
  });

  final String title;
  final String data;
  final String satuan;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: const EdgeInsets.all(10),
        width: Get.width * 0.25,
        // height: 70,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 16,
              ),
            ),
            RichText(
              text: TextSpan(
                text: data,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFEC2028),
                ),
                children: [
                  TextSpan(
                    text: " $satuan",
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      color: Color(0xFF747D8C),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ClipInfoClass extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height);
    path.lineTo(size.width - 80, size.height);
    path.lineTo(size.width, size.height - 80);
    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}

class ClipPathClass extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height - 60);

    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 60);

    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
