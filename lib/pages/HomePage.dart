// ignore: file_names
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../Cubit/Cubit.dart';
import '../Cubit/States.dart';
import '../Widget/CustomBottomSheet.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  static String id = 'HomePage';
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WeatherCubit, WeatherStates>(
      builder: (context, state) {
        WeatherCubit cubit = BlocProvider.of(context);
        return Container(
          decoration: BoxDecoration(
              image: const DecorationImage(
                  image: AssetImage('assets/images/homePage.jpg'),
                  fit: BoxFit.cover,
                  opacity: 0.7),
              borderRadius: BorderRadius.circular(10)),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 60,
                    ),
                    Row(
                      children: [
                        AnimatedTextKit(
                          animatedTexts: [
                            TyperAnimatedText(
                              'Welcome to Application ',
                              speed: const Duration(milliseconds: 80),
                              textStyle: const TextStyle(
                                color: Colors.white54,
                                fontFamily: 'Righteous',
                                fontSize: 28,
                              ),
                            ),
                          ],
                          repeatForever: false,
                          onFinished: () => cubit.onFinshed(),
                          onTap: () {},
                        ),
                        const Icon(
                          Icons.ac_unit,
                          color: Colors.white60,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Text(
                      'This program can show you the maximum and maximum temperature and the weather in the day and the rest of the days of the week at the moment and I wish you a fun experience',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Colors.white.withOpacity(0.7),
                          letterSpacing: 1.12,
                          fontSize: 15),
                      textAlign: TextAlign.justify,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: () {
                        showModalBottomSheet(
                            backgroundColor: Colors.transparent,
                            isScrollControlled: true,
                            context: context,
                            builder: (context) {
                              return CustomBottomSheet();
                            });
                      },
                      child: Ink(
                        padding: const EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          color: Colors.white24,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.black54,
                          size: 24,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

// class AnimatedBtn extends StatelessWidget {
//   const AnimatedBtn({
//     Key? key,
//     required RiveAnimationController btnAnimationController,
//     required this.press,
//   })  : _btnAnimationController = btnAnimationController,
//         super(key: key);
//
//   final RiveAnimationController _btnAnimationController;
//   final VoidCallback press;
//
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: press,
//       child: SizedBox(
//         height: 64,
//         width: 236,
//         child: Stack(
//           children: [
//             RiveAnimation.asset(
//               "assets/RiveAssets/button.riv",
//               controllers: [_btnAnimationController],
//             ),
//             Positioned.fill(
//               top: 8,
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   const Icon(Icons.arrow_forward_ios),
//                   const SizedBox(width: 8),
//                   Text(
//                     "Start the course",
//                     style: Theme.of(context).textTheme.button,
//                   )
//                 ],
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
// Container(
//   padding: EdgeInsets.symmetric(
//     horizontal: 16,
//     vertical: 16
//   ),
//   height: 60,
//   width: 260,
//   decoration: BoxDecoration(
//     color: Colors.white24,
//     borderRadius: BorderRadius.circular(20),
//     boxShadow: [
//       BoxShadow(
//         color: Colors.black26,
//         blurRadius: 4
//       )
//     ],
//   ),
//   child: Row(
//     children:  [
//        Icon(
//         Icons.arrow_forward_ios,
//         size: 26,
//         color: Colors.black54,
//
//       ),
//       SizedBox(
//         width: 20,
//       ),
//       Text(
//         'Start Search',
//         style: TextStyle(
//           fontSize: 22,
//           color: Colors.black54,
//           fontFamily: 'YesevaOne',
//         ),
//       )
//     ],
//   ),
// ),
