import 'package:flutter/material.dart';
import 'package:shop_app/pages/home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //logo
            Opacity(
              opacity: 0.1,
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Image.asset(
                  'lib/images/hoodie-glyph-icon-free-vector.jpg',
                  height: 200,
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),

            // title
            const Text(
              'Graphic Hoodies',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  color: Color.fromARGB(100, 0, 0, 0)),
            ),

            const SizedBox(
              height: 10,
            ),

            //sub title
            const Text(
              'Branded Graphic Hoodies with premium quality',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 12,
                color: Color.fromARGB(150, 0, 0, 0),
              ),
              textAlign: TextAlign.center,
            ),

            const SizedBox(
              height: 90,
            ),

            //start button

            GestureDetector(
              onTap: () => Navigator.push(
              context,
               MaterialPageRoute(
                builder: (context) => const HomePage(),
              ),
            ),
            child : Container(
              width: 300,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(12.0),
                ),
              child: const Padding(
                padding: EdgeInsets.all(25.0),
                child: Center(
                  child: Text(
                    'Shop Now',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            ),
          ],
        ),
      ),
    );
  }
}
