import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../app/constants/app_colors.dart';

class BrandItemTopCard extends StatelessWidget {
  const BrandItemTopCard({
    required this.brandName,
    super.key,
  });

  final String brandName;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        // Background container with curved border
        Positioned(
          right: 0,
          bottom: 0,
          child: Container(
            width: 350,
            height: 350,
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 172, 60, 0), // Darker orange shade
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(350),
              ),
            ),
          ),
        ),
        // Image positioned at the center
        // Positioned(
        //   right: 0,
        //   top: 40,
        //   child: ClipRRect(
        //     borderRadius: BorderRadius.circular(600),
        //     child: Image.asset(
        //       'assets/images/birayni.png', // Replace with your local image path
        //       fit: BoxFit.cover,
        //       height: 230,
        //       width: 230,
        //     ),
        //   ),
        // ),
        // ignore: use_colored_box
        Container(
          color: AppColors.secondary.withOpacity(0.8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 55, left: 16),
                child: Container(
                  width: 45,
                  height: 45,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: IconButton(
                    icon: const Icon(Icons.chevron_left),
                    color: Colors.black,
                    onPressed: () {
                      GoRouter.of(context).push('/app/explore');
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.all(8),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 247, 244, 244)
                            .withOpacity(0.9),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: <Widget>[
                          Image.asset(
                            'assets/images/gc.png',
                            width: 155,
                            height: 75,
                            fit: BoxFit.cover,
                          ),
                          const SizedBox(height: 5),
                          const Center(
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 75),
                              child: Divider(
                                thickness: 1,
                                color: AppColors.gray2,
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            'Get 40% off upto Rs. 80',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 5),
                          const Text(
                            'Use code DEAL40',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
