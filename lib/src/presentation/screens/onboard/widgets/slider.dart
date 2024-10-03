// ignore_for_file: unused_local_variable, avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:popys_pasajero_2024/src/config/app_export.dart';
import 'package:popys_pasajero_2024/src/data/onboard/onboard_item.dart';

import 'package:provider/provider.dart';

import '../onboard_controller.dart';

class OnboardSlider extends StatelessWidget {
  const OnboardSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //gestinoar privider

    final controller = Provider.of<OnboardController>(context,
        //listen en estado false para que no se renderice la pagina nuevamente
        listen: false);

    //
    return Expanded(
        //
        child: PageView(
      //definir controller
      controller: controller.pageController,
      //pasar la lista personalizada
      children: List.generate(
          //pasar los items
          controller.items.length,
          //
          (index) {
        //
        final OnboardItem item = controller.items[index];
        return Container(
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 80,
                ),

                //
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    item.title,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Newsreader',
                      fontSize: 42,
                      color: PrimaryColors().whiteA700,
                    ),
                  ),
                ),
                //salto de lidea
                SizedBox(
                  height: 10,
                ),
                //
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    item.description,
                    textAlign:
                        index == 1 ? TextAlign.justify : TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 16,
                      color: PrimaryColors().gray700,
                    ),
                  ),
                ),
                //
                index != 1
                    ? Expanded(
                        child: SvgPicture.asset(
                          item.image,
                          //width: 450,
                          //height: 400,
                        ),
                      )
                    : SizedBox(),
              ],
            ),
          ),
        );
      }),
    ));
  }
}
