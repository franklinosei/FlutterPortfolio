import 'package:flutter/material.dart';
import 'package:portfolio/constants/constants.dart';
import 'package:portfolio/utils/responsive.dart';

class PortfolioBanner extends StatelessWidget {
  const PortfolioBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: Responsive.isMobile(context) ? 1.8 : 3,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "assets/images/dogbg.jpg",
            fit: BoxFit.cover,
          ),
          Container(
            color: darkColor.withOpacity(0.66),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "PROJECTS",
                  style: Responsive.isDesktop(context)
                      ? Theme.of(context).textTheme.headline3!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          )
                      : Theme.of(context).textTheme.headline5!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: kTextColor,
                          ),
                ),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text(
                          "Home",
                          style: TextStyle(color: kTextColor),
                        ),
                      ),
                      const Text(
                        '--> Projects',
                        style: TextStyle(
                          color: kTextColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                // Text(
                //   "Here some of the projects I built at my free times",
                //   style: Responsive.isDesktop(context)
                //       ? Theme.of(context).textTheme.headline6!.copyWith(
                //             fontWeight: FontWeight.bold,
                //             color: kTextColor,
                //           )
                //       : Theme.of(context).textTheme.headline6!.copyWith(
                //             fontWeight: FontWeight.bold,
                //             color: kTextColor,
                //             fontSize: 17,
                //           ),
                // ),

                // if (Responsive.isMobileLarge(context))
                //   const SizedBox(height: defaultPadding / 2),
                // const SizedBox(height: defaultPadding),

                // //add textgraphy
                // Padding(
                //   padding: const EdgeInsets.only(
                //     bottom: 20,
                //   ),
                //   child: Row(
                //     children: [
                //       const Text(
                //         '<>',
                //         style: TextStyle(color: primaryColor),
                //       ),
                //       DefaultTextStyle(
                //         style: const TextStyle(
                //           fontSize: 15.0,
                //           fontFamily: 'Agne',
                //           color: kTextColor,
                //         ),
                //         child: AnimatedTextKit(
                //           repeatForever: true,
                //           pause: const Duration(seconds: 2),
                //           animatedTexts: [
                //             TypewriterAnimatedText('Hello, 👋👋👋'),
                //             TypewriterAnimatedText(
                //                 'I am a Software Engineer...👩‍💻'),
                //             TypewriterAnimatedText('I build stuffs...⚙️'),
                //             // TypewriterAnimatedText(
                //             //   'I can get your machine learning models up and running...🚀🚀🚀',
                //             //   textAlign: TextAlign.justify,
                //             // ),
                //             TypewriterAnimatedText(Responsive.isMobileLarge(
                //                     context)
                //                 ? 'Scroll to see all the cool \nstuffs I can do...👇👇👇'
                //                 : 'Scroll to see all the cool stuffs I can do...👇👇👇'),

                //             TypewriterAnimatedText(Responsive.isMobileLarge(
                //                     context)
                //                 ? "Don't forget to leave a \nmessage...😊😊😊"
                //                 : "Don't forget to leave a message...😊😊😊"),
                //           ],
                //           onTap: () {},
                //         ),
                //       ),
                //       const Text(
                //         '</>',
                //         style: TextStyle(color: primaryColor),
                //       ),
                //     ],
                //   ),
                // ),

                // if (!Responsive.isMobileLarge(context))
                //   ElevatedButton(
                //     onPressed: () {},
                //     style: TextButton.styleFrom(
                //       padding: const EdgeInsets.symmetric(
                //           horizontal: defaultPadding * 2,
                //           vertical: defaultPadding),
                //       backgroundColor: primaryColor,
                //     ),
                //     child: const Text(
                //       "EXPLORE NOW",
                //       style: TextStyle(color: darkColor),
                //     ),
                //   ),

                // if (Responsive.isMobileLarge(context))
                //   const SizedBox(height: defaultPadding),
              ],
            ),
          )
        ],
      ),
    );
  }
}
