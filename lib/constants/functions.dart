
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';




String convertDateToFormattedDate(String formatter,  DateTime? date) {
  DateFormat? dateFormat = DateFormat(formatter);

  // var dateFormate = DateFormat("dd-MM-yyyy").format(DateTime.parse('2021-12-14 09:52:30'));
  var dateFormate = DateFormat("d MMMM y hh:mm a").format(date!);

  // return dateFormat.parse(dateFormat.format(date!));
  return dateFormat.format(date);
}
