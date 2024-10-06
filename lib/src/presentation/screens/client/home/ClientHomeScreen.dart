import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:popys_pasajero_2024/main.dart';
import 'package:popys_pasajero_2024/src/config/app_export.dart';
import 'package:popys_pasajero_2024/src/config/constants/constants.dart';
import 'package:popys_pasajero_2024/src/presentation/screens/client/about/ClientAboutScrren.dart';
import 'package:popys_pasajero_2024/src/presentation/screens/client/historyTrip/ClientHistoryTripScreen.dart';
import 'package:popys_pasajero_2024/src/presentation/screens/client/home/bloc/ClientHomeBloc.dart';
import 'package:popys_pasajero_2024/src/presentation/screens/client/mapSeeker/ClientMapSeekerScreen.dart';
import 'package:popys_pasajero_2024/src/presentation/screens/client/onlineSupport/ClientOnlineSupportScreen.dart';
import 'package:popys_pasajero_2024/src/presentation/screens/client/promotionalCode/ClientPromotionalCodeScreen.dart';
import 'package:popys_pasajero_2024/src/presentation/screens/client/referrals/ClientReferralsScreen.dart';
import 'package:popys_pasajero_2024/src/presentation/screens/client/setting/ClientSettingScreen.dart';
import 'package:popys_pasajero_2024/src/presentation/screens/client/travelingMiles/ClientTravelingMilesScreen.dart';
import 'package:popys_pasajero_2024/src/presentation/screens/client/wallet/ClientWalletScreen.dart';

class ClientHomeScreen extends StatefulWidget {
  const ClientHomeScreen({super.key});

  @override
  State<ClientHomeScreen> createState() => _ClientHomeScreenState();
}

class _ClientHomeScreenState extends State<ClientHomeScreen> {
  // agragr lista de paginas
  List<Widget> pageList = <Widget>[
    //paginas
    const ClientMapSeekerScreen(), // [0]
    const ClientWalletScreen(), //[1]
    const ClientHistoryTripScreen(), //[2]
    const ClientPromotionalCodeScreen(), //[3]
    const ClientTravelingMilesScreen(), // [4]
    const ClientReferralsScreen(), // [5]
    const ClientSettingScreen(), //[6]
    const ClientOnlineSupportScreen(), //[7]
    const ClientAboutScreen(), //[8]
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menu de opciones'),
      ),
      body: BlocBuilder<ClientHomeBloc, ClientHomeState>(
        builder: (context, state) {
          // retonar el indice de la lista
          return pageList[state.pageIndex];
        },
      ),
      drawer: BlocBuilder<ClientHomeBloc, ClientHomeState>(
          builder: (context, state) {
        return Drawer(
          backgroundColor: kPrimaryColor,
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              //header
              ClipRRect(
                child: Container(
                  margin: const EdgeInsets.only(top: 40.0),
                  padding: EdgeInsets.zero,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // imagen
                      Container(
                        width: 93,
                        height: 93,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: PrimaryColors().gray500,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),

                      Text(
                        'Nombre Cliente',
                        style: TextStyle(
                          color: PrimaryColors().whiteA700,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        'correo@gmail.com',
                        style: TextStyle(
                          color: PrimaryColors().bluelight100,
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              //lista menu
              //INICIO [0]
              Container(
                margin: const EdgeInsets.only(left: 15.0, right: 15.0),
                // padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                decoration: BoxDecoration(
                  color: PrimaryColors().blue100,
                  border: Border.all(color: kPrimaryColor),
                ),
                child: ListTile(
                  leading: Icon(
                    Icons.home_outlined,
                    color: PrimaryColors().whiteA700,
                  ),
                  title: Text(
                    'Inicio',
                    style: TextStyle(
                      color: PrimaryColors().whiteA700,
                    ),
                  ),
                  tileColor: PrimaryColors().blue100,
                  hoverColor: PrimaryColors().blue200,
                  selected: state.pageIndex == 0,
                  onTap: () {
                    context
                        .read<ClientHomeBloc>()
                        .add(ChangeDrawerPageEvent(pageIndex: 0));
                    Navigator.pop(context);
                  },
                ),
              ),
              //BILLETERA [1]
              Container(
                margin: const EdgeInsets.only(left: 15.0, right: 15.0),
                //padding: const EdgeInsets.only(left: 5.0, right: 5.0),
                decoration: BoxDecoration(
                  color: PrimaryColors().blue100,
                  border: Border.all(color: kPrimaryColor),
                ),
                child: ListTile(
                  leading: Icon(
                    Icons.wallet_outlined,
                    color: PrimaryColors().whiteA700,
                  ),
                  title: Text(
                    'Billetera',
                    style: TextStyle(
                      color: PrimaryColors().whiteA700,
                    ),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: PrimaryColors().whiteA700,
                    size: 10,
                  ),
                  tileColor: PrimaryColors().blue100,
                  hoverColor: PrimaryColors().blue200,
                  selected: state.pageIndex == 1,
                  onTap: () {
                    context
                        .read<ClientHomeBloc>()
                        .add(ChangeDrawerPageEvent(pageIndex: 1));
                    Navigator.pop(context);
                  },
                ),
              ),
              //HISTORIAL DE VIAJES [2]
              Container(
                margin: const EdgeInsets.only(left: 15.0, right: 15.0),
                //padding: const EdgeInsets.only(left: 5.0, right: 5.0),
                decoration: BoxDecoration(
                  color: PrimaryColors().blue100,
                  border: Border.all(color: kPrimaryColor),
                ),
                child: ListTile(
                  leading: Icon(
                    Icons.watch_later_outlined,
                    color: PrimaryColors().whiteA700,
                  ),
                  title: Text(
                    'Histarial de Viajes',
                    style: TextStyle(
                      color: PrimaryColors().whiteA700,
                    ),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: PrimaryColors().whiteA700,
                    size: 10,
                  ),
                  tileColor: PrimaryColors().blue100,
                  hoverColor: PrimaryColors().blue200,
                  selected: state.pageIndex == 2,
                  onTap: () {
                    context
                        .read<ClientHomeBloc>()
                        .add(ChangeDrawerPageEvent(pageIndex: 2));
                    Navigator.pop(context);
                  },
                ),
              ),
              //CODIGO PROMOCIONAL [3]
              Container(
                margin: const EdgeInsets.only(left: 15.0, right: 15.0),
                //padding: const EdgeInsets.only(left: 5.0, right: 5.0),
                decoration: BoxDecoration(
                  color: PrimaryColors().blue100,
                  border: Border.all(color: kPrimaryColor),
                ),
                child: ListTile(
                  leading: Icon(
                    Icons.wallet_giftcard_outlined,
                    color: PrimaryColors().whiteA700,
                  ),
                  title: Text(
                    'Código Promocional',
                    style: TextStyle(
                      color: PrimaryColors().whiteA700,
                    ),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: PrimaryColors().whiteA700,
                    size: 10,
                  ),
                  tileColor: PrimaryColors().blue100,
                  hoverColor: PrimaryColors().blue200,
                  selected: state.pageIndex == 3,
                  onTap: () {
                    context
                        .read<ClientHomeBloc>()
                        .add(ChangeDrawerPageEvent(pageIndex: 3));
                    Navigator.pop(context);
                  },
                ),
              ),
              //MILLAS VIAJES [4]
              Container(
                margin: const EdgeInsets.only(left: 15.0, right: 15.0),
                //padding: const EdgeInsets.only(left: 5.0, right: 5.0),
                decoration: BoxDecoration(
                  color: PrimaryColors().blue100,
                  border: Border.all(color: kPrimaryColor),
                ),
                child: ListTile(
                  leading: Icon(
                    Icons.add_box_outlined,
                    color: PrimaryColors().whiteA700,
                  ),
                  title: Text(
                    'Míllas Viajeras',
                    style: TextStyle(
                      color: PrimaryColors().whiteA700,
                    ),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: PrimaryColors().whiteA700,
                    size: 10,
                  ),
                  tileColor: PrimaryColors().blue100,
                  hoverColor: PrimaryColors().blue200,
                  selected: state.pageIndex == 4,
                  onTap: () {
                    context
                        .read<ClientHomeBloc>()
                        .add(ChangeDrawerPageEvent(pageIndex: 4));
                    Navigator.pop(context);
                  },
                ),
              ),
              //REFERIDOS [5]
              Container(
                margin: const EdgeInsets.only(left: 15.0, right: 15.0),
                //padding: const EdgeInsets.only(left: 5.0, right: 5.0),
                decoration: BoxDecoration(
                  color: PrimaryColors().blue100,
                  border: Border.all(color: kPrimaryColor),
                ),
                child: ListTile(
                  leading: Icon(
                    Icons.person_add_outlined,
                    color: PrimaryColors().whiteA700,
                  ),
                  title: Text(
                    'Invitación de Amigos',
                    style: TextStyle(
                      color: PrimaryColors().whiteA700,
                    ),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: PrimaryColors().whiteA700,
                    size: 10,
                  ),
                  tileColor: PrimaryColors().blue100,
                  hoverColor: PrimaryColors().blue200,
                  selected: state.pageIndex == 5,
                  onTap: () {
                    context
                        .read<ClientHomeBloc>()
                        .add(ChangeDrawerPageEvent(pageIndex: 5));
                    Navigator.pop(context);
                  },
                ),
              ),
              // CONFIGURACION [6]
              Container(
                margin: const EdgeInsets.only(left: 15.0, right: 15.0),
                //padding: const EdgeInsets.only(left: 5.0, right: 5.0),
                decoration: BoxDecoration(
                  color: PrimaryColors().blue100,
                  border: Border.all(color: kPrimaryColor),
                ),
                child: ListTile(
                  leading: Icon(
                    Icons.settings_suggest_outlined,
                    color: PrimaryColors().whiteA700,
                  ),
                  title: Text(
                    'Configuración',
                    style: TextStyle(
                      color: PrimaryColors().whiteA700,
                    ),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: PrimaryColors().whiteA700,
                    size: 10,
                  ),
                  tileColor: PrimaryColors().blue100,
                  hoverColor: PrimaryColors().blue200,
                  selected: state.pageIndex == 6,
                  onTap: () {
                    context
                        .read<ClientHomeBloc>()
                        .add(ChangeDrawerPageEvent(pageIndex: 6));
                    Navigator.pop(context);
                  },
                ),
              ),
              //SOPORTE ONLINE [7]
              Container(
                margin: const EdgeInsets.only(left: 15.0, right: 15.0),
                //padding: const EdgeInsets.only(left: 5.0, right: 5.0),
                decoration: BoxDecoration(
                  color: PrimaryColors().blue100,
                  border: Border.all(color: kPrimaryColor),
                ),
                child: ListTile(
                  leading: Icon(
                    Icons.wechat_outlined,
                    color: PrimaryColors().whiteA700,
                  ),
                  title: Text(
                    'Soporte Online',
                    style: TextStyle(
                      color: PrimaryColors().whiteA700,
                    ),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: PrimaryColors().whiteA700,
                    size: 10,
                  ),
                  tileColor: PrimaryColors().blue100,
                  hoverColor: PrimaryColors().blue200,
                  selected: state.pageIndex == 7,
                  onTap: () {
                    context
                        .read<ClientHomeBloc>()
                        .add(ChangeDrawerPageEvent(pageIndex: 7));
                    Navigator.pop(context);
                  },
                ),
              ),
              // ACERCA DE POPY'S [8]
              Container(
                margin: const EdgeInsets.only(left: 15.0, right: 15.0),
                //padding: const EdgeInsets.only(left: 5.0, right: 5.0),
                decoration: BoxDecoration(
                  color: PrimaryColors().blue100,
                  border: Border.all(color: kPrimaryColor),
                ),
                child: ListTile(
                  leading: Icon(
                    Icons.info_outlined,
                    color: PrimaryColors().whiteA700,
                  ),
                  title: Text(
                    "Acerca de Popy's",
                    style: TextStyle(
                      color: PrimaryColors().whiteA700,
                    ),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: PrimaryColors().whiteA700,
                    size: 10,
                  ),
                  tileColor: PrimaryColors().blue100,
                  hoverColor: PrimaryColors().blue200,
                  selected: state.pageIndex == 8,
                  onTap: () {
                    context
                        .read<ClientHomeBloc>()
                        .add(ChangeDrawerPageEvent(pageIndex: 8));
                    Navigator.pop(context);
                  },
                ),
              ),
              //CERRAR SESSION [9]
              Container(
                margin: const EdgeInsets.only(left: 15.0, right: 15.0),
                //padding: const EdgeInsets.only(left: 5.0, right: 5.0),
                decoration: BoxDecoration(
                  color: PrimaryColors().blue100,
                  border: Border.all(color: kPrimaryColor),
                ),
                child: ListTile(
                  leading: Icon(
                    Icons.logout_outlined,
                    color: PrimaryColors().whiteA700,
                  ),
                  title: Text(
                    "Cerrar Session",
                    style: TextStyle(
                      color: PrimaryColors().whiteA700,
                    ),
                  ),
                  tileColor: PrimaryColors().blue100,
                  hoverColor: PrimaryColors().blue200,
                  onTap: () {
                    // llamamos el metodo logout que se encuentra en bloc
                    context.read<ClientHomeBloc>().add(LogoutEvent());
                    // redirigimos a la pantalla principal
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => const MyApp()),
                      (route) => false,
                    );
                  },
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}
