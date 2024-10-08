import 'package:cais/core/utilities/utilities.dart';
import 'package:cais/utils/colors.dart';
import 'package:flutter/material.dart';

Widget dashCard(
    {required BuildContext context,
    required String name,
    required Widget to,
    required bool isactive}) {
  return SizedBox(
      height: 80,
      width: 155,
      child: InkWell(
        onTap: () {
          !isactive ? null : context.appNavigatorPush(to);
        },
        child: Card(
            borderOnForeground: true,
            color: isactive ? mainColor : mainColorCard.withOpacity(.2),
            child: Center(
                child: Text(
              name,
              style: Theme.of(context)
                  .textTheme
                  .labelLarge
                  ?.copyWith(color: isactive ? Colors.white : Colors.black),
            ))),
      ));
}

Widget dashCardOfficerAdmin(
    {required BuildContext context,
    required String name,
    required Widget to,
    required bool isactive}) {
  return SizedBox(
      height: 80,
      width: MediaQuery.of(context).size.width * .9,
      child: InkWell(
        onTap: () {
          !isactive ? null : context.appNavigatorPush(to);
        },
        child: Card(
            borderOnForeground: true,
            color: isactive ? mainColor : mainColorCard.withOpacity(.2),
            child: Center(
                child: Text(
              name,
              style: Theme.of(context)
                  .textTheme
                  .labelLarge
                  ?.copyWith(color: isactive ? Colors.white : Colors.black),
            ))),
      ));
}

Widget dashCardFeature(
    {required BuildContext context,
    required String name,
    required Widget to,
    required bool isactive}) {
  return SizedBox(
      height: 150,
      width: 150,
      child: InkWell(
        onTap: () {
          context.appNavigatorPush(to);
        },
        child: Card(
            borderOnForeground: true,
            color: isactive ? mainColor : mainColorCard,
            child: Center(
                child: Text(
              name,
              style: Theme.of(context)
                  .textTheme
                  .labelLarge
                  ?.copyWith(color: Colors.white),
            ))),
      ));
}
