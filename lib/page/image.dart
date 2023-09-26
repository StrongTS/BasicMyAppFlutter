import 'package:flutter/material.dart';

class MyImage extends StatelessWidget {
  const MyImage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(200),
                  topLeft: Radius.circular(100),
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(30),
                ), // Image border
                child: SizedBox(
                  width: 200,
                  child: Image.network(
                    'https://picsum.photos/300',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipOval(
                  child: SizedBox(
                    width: 200,
                    height: 200,
                    child: Stack(
                      children: [
                        Image.network(
                          'https://picsum.photos/300',
                          fit: BoxFit.cover,
                        ),
                        const Center(
                          child: Text(
                            'Image',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 30,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 200,
                child: Image.network(
                  'https://picsum.photos/300',
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipPath(
                  clipper: TringleClip(),
                  child: SizedBox(
                    width: 200,
                    child: Image.network(
                      'https://picsum.photos/300',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class TringleClip extends CustomClipper<Path> {
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(size.width, 0.0);
    path.lineTo(size.width / 2, size.height);
    path.close();
    return path;
  }

  bool shouldReclip(TringleClip oldClipper) => false;
}
