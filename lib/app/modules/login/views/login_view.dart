import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

import 'package:get/get.dart';
import 'package:mytsel/app/routes/app_pages.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: ListView(
        children: [
          const SizedBox(height: 20),
          Container(
            height: 150,
            alignment: Alignment.centerLeft,
            child: Image.asset(
              "assets/logo/logo-login.png",
              fit: BoxFit.contain,
            ),
          ),
          const SizedBox(height: 30),
          const Text(
            "Silahkan masuk dengan nomor telkomsel kamu",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 30),
          const Text(
            "Nomor HP",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          TextField(
            autocorrect: false,
            controller: controller.phoneC,
            keyboardType: TextInputType.phone,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Cth. 0895222333556",
            ),
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              Obx(
                () => Checkbox(
                  activeColor: Colors.red,
                  value: controller.checkC.value,
                  onChanged: (value) => controller.checkC.toggle(),
                ),
              ),
              Expanded(
                child: RichText(
                  text: TextSpan(
                    text: "Saya Menyetujui ",
                    style: const TextStyle(
                      color: Colors.black,
                    ),
                    children: [
                      TextSpan(
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            print("Klik syarat");
                          },
                        text: "Syarat",
                        style: const TextStyle(
                          color: Colors.red,
                        ),
                      ),
                      const TextSpan(
                        text: ", ",
                        style: TextStyle(
                          color: Colors.red,
                        ),
                      ),
                      TextSpan(
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            print("Klik Ketentuan");
                          },
                        text: "Ketentuan",
                        style: const TextStyle(
                          color: Colors.red,
                        ),
                      ),
                      const TextSpan(
                        text: ", dan ",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            print("Klik Privasi");
                          },
                        text: "Privasi ",
                        style: const TextStyle(
                          color: Colors.red,
                        ),
                      ),
                      const TextSpan(
                        text: "Telkomsel",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 30),
          ElevatedButton(
            onPressed: () => Get.offAllNamed(Routes.HOME),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.grey[300],
              fixedSize: const Size(150, 50),
            ),
            child: const Text(
              "MASUK",
              style: TextStyle(
                color: Color(0xFF747D8C),
              ),
            ),
          ),
          const SizedBox(height: 30),
          const Center(
            child: Text("Atau masuk menggunakan"),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              OutlinedButton(
                onPressed: () {},
                style: ButtonStyle(
                  fixedSize: MaterialStateProperty.all(
                    const Size(150, 50),
                  ),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  side: MaterialStateProperty.all(
                    const BorderSide(
                      color: Color(0xFF3B5998),
                    ),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/icons/fb.png"),
                    const SizedBox(
                      width: 7,
                    ),
                    const Text(
                      "Facebook",
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Color(0xFF3B5998),
                      ),
                    ),
                  ],
                ),
              ),
              OutlinedButton(
                onPressed: () {},
                style: ButtonStyle(
                  fixedSize: MaterialStateProperty.all(
                    const Size(150, 50),
                  ),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  side: MaterialStateProperty.all(
                    const BorderSide(
                      color: Color(0xFF1DA1F2),
                    ),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/icons/twitter.png"),
                    const SizedBox(
                      width: 7,
                    ),
                    const Text(
                      "Twitter",
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Color(0xFF1DA1F2),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    ));
  }
}
