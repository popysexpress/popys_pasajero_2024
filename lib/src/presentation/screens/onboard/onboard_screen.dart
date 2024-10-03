// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, unnecessary_this, sort_child_properties_last

import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/widgets.dart';
import 'package:popys_pasajero_2024/src/config/app_export.dart';
import 'package:popys_pasajero_2024/src/presentation/screens/onboard/widgets/slider.dart';
import 'package:provider/provider.dart';

import 'onboard_controller.dart';

class OnboardScreen extends StatefulWidget {
  const OnboardScreen({Key? key}) : super(key: key);

  @override
  State<OnboardScreen> createState() => _OnboardScreenState();
}

class _OnboardScreenState extends State<OnboardScreen> {
  //LoginController _con = new LoginController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    SchedulerBinding.instance.addPostFrameCallback((timeStamp) {
      //_con.init(context);
    });
  }

  //preferencias del sistema
  //final _prefs = PreferenciasUsuario();

  void _onNext(BuildContext context, OnboardController controller) {
    //validar cual es la pagina donde estamos
    if (controller.currentPage == 5) {
      //
      /*
      if ((_prefs.clienteModel.perfil == '0') &&
          (_prefs.idCliente != Sistema.ID_CLIENTE)) {
        Navigator.pushReplacementNamed(context, 'type_services');
      } else {*/
      Navigator.pushReplacementNamed(context, 'welcome');
      //}
    } else {
      //utilizar controller
      controller.pageController.nextPage(
          //duracion
          duration: Duration(milliseconds: 300),
          //tipo de slider
          curve: Curves.linear);
    }
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<OnboardController>(
      //definir la funsion
      create: (_) {
        final Controller = OnboardController();
        //cuando pagina es renderizada
        WidgetsBinding.instance.addPostFrameCallback((_) {
          //
          Controller.afterFirstLayout();
        });
        //
        return Controller;
      },
      //utilizar el estado del controlador
      builder: (Context, __) => Scaffold(
        body: SafeArea(
            top: false,
            bottom: false,
            child: Container(
              //margen
              width: double.infinity,
              //
              decoration: BoxDecoration(
                  //degradado
                  gradient: LinearGradient(
                      //donde empieza
                      begin: Alignment.topCenter,
                      //donde termina
                      end: Alignment.bottomCenter,
                      // ignore: prefer_const_literals_to_create_immutables
                      colors: [
                    //Liniar
                    theme.colorScheme.onPrimaryContainer,
                    //Color.fromARGB(255, 247, 219, 184),
                    // Color(0xffF8F8FF),
                    //100%
                    //Color(0xffFFD06F),
                    // Color(0xffF8F8FF),
                    theme.colorScheme.onPrimaryContainer,
                  ])),
              child: Column(
                children: [
                  //
                  //ilustracion
                  OnboardSlider(),
                  //icono para indicar cual es el onboard
                  _Dots(),
                  //botton
                  Consumer<OnboardController>(builder: (_, controller, __) {
                    //
                    final double page = controller.currentPage;
                    //
                    bool isEnd = page % 1 == 0 && page == 5.0;

                    //
                    return CupertinoButton(
                      //accion
                      onPressed: () {
                        //llamar la funcion onNext
                        this._onNext(context, controller);
                      },
                      //texto
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            //
                            horizontal: 30,
                            //
                            vertical: 0),
                        child: Text(
                          isEnd ? "Iniciar" : 'Siguiente',
                          //estilos
                          style: TextStyle(
                              //color
                              color: Colors.white,
                              //tamano
                              fontSize: 20,
                              //tipo de fuente
                              fontFamily: 'Poppins',
                              //
                              height: 0.8),
                        ),
                      ),
                      //propiedadel del boton
                      //color
                      color: const Color(0XFF3422f2),
                      //border
                      borderRadius: BorderRadius.circular(10),
                    );
                  }),

                  SizedBox(
                    height: 30,
                  )
                ],
              ),
            )),
      ),
    );
  }
}

//funsion dots
class _Dots extends StatelessWidget {
  const _Dots({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<OnboardController>(context);
    return Padding(
      padding: const EdgeInsets.all(50.0),
      child: DotsIndicator(
        dotsCount: controller.items.length,
        position: controller.currentPage.toInt(),
        decorator: DotsDecorator(
          //
          color: PrimaryColors().gray400, //Colors.grey.withOpacity(0.4),
          activeColor: Color(0XFF3422f2),
          size: const Size.square(9.0),
          activeSize: const Size(40.0, 9.0),
          activeShape: RoundedRectangleBorder(
            //
            borderRadius: BorderRadius.circular(5.0),
          ),
        ),
      ),
    );
  }
}
