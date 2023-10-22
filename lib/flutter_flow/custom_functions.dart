import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/supabase/supabase.dart';
import '/auth/supabase_auth/auth_util.dart';

double? atualizacaoSaldo(
  UsersComplementRow amount,
  double valor,
) {
  // Create a function that updates the value of 'amount,' with the current 'amount' + valor.
  // ignore: unnecessary_null_comparison
  if (valor != null) {
    return amount.amount! + valor;
  } else {
    return null;
  }
}

double? donateSaldo(
  UsersComplementRow amount,
  double valor,
) {
  // Create a function that updates the value of 'amount,' with the current 'amount' + valor.
  // ignore: unnecessary_null_comparison
  if (valor != null) {
    return amount.amount! - valor;
  } else {
    return null;
  }
}
