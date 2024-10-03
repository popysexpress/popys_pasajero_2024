import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShowLoading extends StatelessWidget {
  final String titleLoading;
  final String subTitleLoading;

  const ShowLoading({
    Key? key,
    required this.titleLoading,
    required this.subTitleLoading,
  }) : super(key: key);

  @override
  Widget build(
    BuildContext context,
  ) {
    return showLoadingMessage(context, titleLoading, subTitleLoading);
  }
}

showLoadingMessage(
    BuildContext context, String titleShow, String subTitleShowMessage) {
  if (Platform.isAndroid) {
    //android
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        title: Text(titleShow), //Text('Espere por favor!'),
        content: Container(
          width: 100,
          height: 100,
          margin: const EdgeInsets.only(top: 10),
          child: Column(
            children: [
              Text(subTitleShowMessage), //Text('Calculando ruta...'),
              const SizedBox(height: 15),
              const CircularProgressIndicator(
                strokeWidth: 3,
                color: Colors.black,
              ),
            ],
          ),
        ),
      ),
    );

    return;
  }

  //iOS
  showCupertinoDialog(
    context: context,
    builder: (context) => const CupertinoAlertDialog(
      title: Text('Espere por favor!'),
      content: Column(
        children: [
          Text('Calculando ruta...'),
          SizedBox(
            height: 15,
          ),
          CupertinoActivityIndicator(),
        ],
      ),
    ),
  );
}
