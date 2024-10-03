//import 'package:flutter/foundation.dart' show ChangeNotifier;
// ignore_for_file: prefer_final_fields, avoid_print, unnecessary_new

import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:popys_pasajero_2024/src/data/onboard/onboard_item.dart';

//import '../../model/onboard_item.dart';
//import '../../model/user.dart';
//import '../../preference/shared_preferences.dart';
//import '../../utils/shared_pref.dart';

class OnboardController extends ChangeNotifier {
  //
  late BuildContext context;
  //SharedPref _sharedPref = new SharedPref();
  //final _prefs = PreferenciasUsuario();

  //inicializar variables
  Future init(BuildContext context) async {
    this.context = context;
    //obtener el usuario que esta guardado en shared preferences, si no enviar dato nulo
    //User user = User.fromJson(await _sharedPref.read('user'));

    //print('Usuario: ${user.sessionToken}');

    //validar
/*
    if (_prefs.auth != '') {
      //redireccionar usuario elimiando las pantallas anteriores
      Navigator.pushNamedAndRemoveUntil(
          context, 'type_services', (route) => false);
    }
    */
  }
  //

  //instanciar la case onboarItem de models
  final List<OnboardItem> items = [
    //
    OnboardItem(
      //
      title: "Popy's Express",
      //
      description:
          'Bienvenido a la app para clientes donde podás ganar beneficios en cada viaje que realices.',
      //
      image: 'assets/onboard/onboard-01.svg',
    ),
    OnboardItem(
      //
      title: "Popy's Pasajero",
      //
      description:
          'Con Popy’s Pasajero podrás solicitar un servicio de transporte ejecutivo privado y económico. \n\nTodas las semanas tenemos grandes beneficios para ti. \n\nPopy’s Pasajero te permite solicitar un servicio de transporte desde donde te encuentres, donde recibirás un conductor 100% calificado. \n\nPara Utilizar Popy’s Pasajero solo necesitas: \n\n1: Crear una cuenta \n2: Compretar tus datos Personales \n3: Y ya, es todo.',
      //
      image: 'assets/onboard/onboard-03.svg',
    ),
    OnboardItem(
      //
      title: 'Solicitar Viaje',
      //
      description:
          'Selecciona la ubicación de recogida y la ubicación destino del viaje.',
      //
      image: 'assets/onboard/onboard-01.svg',
    ),
    OnboardItem(
      //
      image: 'assets/onboard/onboard-04.svg',
      //
      title: 'Esperar Conductor',
      //
      description:
          "Una vez solicites tu servicio espera el vehículo y el conductor que le asistirá durAnte el viaje",
    ),
    OnboardItem(
        //
        image: 'assets/onboard/onboard-02.svg',
        //
        title: 'Seguimiento',
        //
        description:
            'Seguimiento en todo momento durante la gestión del viaje.'),
    OnboardItem(
        //
        image: 'assets/onboard/onboard-03.svg',
        //
        title: 'Beneficios',
        //
        description:
            'Gana Grandes beneficios cada vez que solicites un viaje a tu destino favorito.'),
  ];

  //
  final PageController pageController = PageController();
  //
  double _currentPage = 0;
  double get currentPage => _currentPage;

  //petodo para cuando la pagina sea renderizada
  void afterFirstLayout() {
    //
    pageController.addListener(() {
      //guardar datoas de page
      final page = pageController.page;
      _currentPage = page!;
      notifyListeners();
      //validacion
      /*
      if (page! % 1 == 0 && _currentPage != page) {
        //modificar valor de __currentPage
        _currentPage = page.toInt();
        //
        notifyListeners();
        //
        print('current page ${pageController.page}');
      }*/
      //
    });
  }

  //dejar de escuchar
  @override
  void dispose() {
    pageController.dispose();

    super.dispose();
  }
}
