import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void showLoadingMessage(
  BuildContext context,
  String titleLoadingMessage,
  String subTitleLoadingMessage,
) {
  if (Platform.isAndroid) {
    //android
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        title: Text(titleLoadingMessage), //const Text('Espere por favor!'),
        content: Container(
          width: 100,
          height: 100,
          margin: const EdgeInsets.only(top: 10),
          child: Column(
            children: [
              Text(subTitleLoadingMessage), //Text('Calculando ruta...'),
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
