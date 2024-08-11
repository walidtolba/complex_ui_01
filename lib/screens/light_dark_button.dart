import 'package:flutter/material.dart';

class LightDarkButton extends StatefulWidget {
  const LightDarkButton({super.key});

  @override
  State<LightDarkButton> createState() => _LightDarkButtonState();
}

class _LightDarkButtonState extends State<LightDarkButton>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  @override
  void initState() {
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 1));
    _controller.addListener(
      () {
        setState(() {});
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(50.0),
      child: Container(
        height: 50,
        width: 110,
        decoration: BoxDecoration(
            color: ColorTween(begin: Color(0xFF2222EE), end: Color(0xFF080852))
                .animate(_controller)
                .value),
        child: Stack(
          alignment: Alignment.centerLeft,
          children: [
            Transform.translate(
                offset: Offset(19 + 60 * _controller.value, 0),
                child: Transform.scale(
                  scale: 10,
                  child: Container(
                    height: 12,
                    width: 12,
                    decoration: BoxDecoration(
                        color: ColorTween(
                                begin: Color(0xFF4141E6),
                                end: Color(0xFF0F0F5F))
                            .animate(_controller)
                            .value,
                        borderRadius: BorderRadius.circular(6)),
                    child: Center(
                        child: Container(
                      height: 9,
                      width: 9,
                      decoration: BoxDecoration(
                          color: ColorTween(
                                  begin: Color(0xFF5E5EDF),
                                  end: Color(0xFF1F1F6E))
                              .animate(_controller)
                              .value,
                          borderRadius: BorderRadius.circular(4.5)),
                      child: Center(
                          child: Container(
                        height: 6,
                        width: 6,
                        decoration: BoxDecoration(
                            color: ColorTween(
                                  begin: Color(0xFF6D6DE4),
                                  end: Color(0xFF3B3B82))
                              .animate(_controller)
                              .value,
                            borderRadius: BorderRadius.circular(3)),
                      )),
                    )),
                  ),
                )),Transform.translate(
                  offset: Offset(5 + 60 * _controller.value, 0),
                            child: GestureDetector(
                          onTap: () {
                            if (_controller.isCompleted)
                              _controller.reverse();
                            else if (!_controller.isAnimating)
                              _controller.forward();
                          },
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                color: Color(0xFFEFAE08),
                                borderRadius: BorderRadius.circular(20)),
                          ),
                        )),
          ],
        ),
      ),
    );
  }
}


// Container(
//         height: 50,
//         width: 110,
//         decoration: BoxDecoration(
//              color: Color(0xFF2222EE)),
//         child: Stack(
//           alignment: Alignment.centerLeft,
//           children: [
//             Transform.translate(
//                 offset: Offset(19, 0),
//                 child: Transform.scale(
//                   scale: 10,
//                   child: Container(
//                     height: 12,
//                     width: 12,
//                     decoration: BoxDecoration(
//                         color: Color(0xFF4141E6),
//                         borderRadius: BorderRadius.circular(6)),
//                     child: Center(
//                         child: Container(
//                       height: 9,
//                       width: 9,
//                       decoration: BoxDecoration(
//                           color: Color(0xFF5E5EDF),
//                           borderRadius: BorderRadius.circular(4.5)),
//                       child: Center(
//                           child: Container(
//                         height: 6,
//                         width: 6,
//                         decoration: BoxDecoration(
//                             color: Color(0xFF6D6DE4),
//                             borderRadius: BorderRadius.circular(3)),child: Center(
//                           child: Container(
//                         height: 4,
//                         width: 4,
//                         decoration: BoxDecoration(
//                             color: Color(0xFFEFAE08),
//                             borderRadius: BorderRadius.circular(2)),
//                       )),
//                       )
//                       ),
//                     )),
//                   ),
//                 ))
//           ],
//         ),
//       ),