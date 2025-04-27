import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/auth/firebase_auth/auth_util.dart';

List<String> indicativeActive(
  String present,
  String infi,
  String perfect,
  String passPerfect,
  int tive,
) {
  List<String> indicativeActive = [];

  if (tive == 1) {
    if (infi.endsWith('āre')) {
      // First Conjugation
      indicativeActive.addAll([
        present,
        present.substring(0, present.length - 1) + 'āmus',
        present.substring(0, present.length - 1) + 'ās',
        present.substring(0, present.length - 1) + 'ātis',
        present.substring(0, present.length - 1) + 'at',
        present.substring(0, present.length - 1) + 'ant',
        infi.substring(0, infi.length - 2) + 'bam',
        infi.substring(0, infi.length - 2) + 'bāmus',
        infi.substring(0, infi.length - 2) + 'bās',
        infi.substring(0, infi.length - 2) + 'bātis',
        infi.substring(0, infi.length - 2) + 'bat',
        infi.substring(0, infi.length - 2) + 'bant',
        infi.substring(0, infi.length - 2) + 'bō',
        infi.substring(0, infi.length - 2) + 'bimus',
        infi.substring(0, infi.length - 2) + 'bis',
        infi.substring(0, infi.length - 2) + 'bitis',
        infi.substring(0, infi.length - 2) + 'bit',
        infi.substring(0, infi.length - 2) + 'bunt',
        perfect,
        perfect.substring(0, perfect.length - 1) + 'imus',
        perfect.substring(0, perfect.length - 1) + 'istī',
        perfect.substring(0, perfect.length - 1) + 'istis',
        perfect.substring(0, perfect.length - 1) + 'it',
        perfect.substring(0, perfect.length - 1) + 'ērunt',
        perfect.substring(0, perfect.length - 1) + 'eram',
        perfect.substring(0, perfect.length - 1) + 'erāmus',
        perfect.substring(0, perfect.length - 1) + 'erās',
        perfect.substring(0, perfect.length - 1) + 'erātis',
        perfect.substring(0, perfect.length - 1) + 'erat',
        perfect.substring(0, perfect.length - 1) + 'erant',
        perfect.substring(0, perfect.length - 1) + 'erō',
        perfect.substring(0, perfect.length - 1) + 'erimus',
        perfect.substring(0, perfect.length - 1) + 'eris',
        perfect.substring(0, perfect.length - 1) + 'eritis',
        perfect.substring(0, perfect.length - 1) + 'erit',
        perfect.substring(0, perfect.length - 1) + 'erint'
      ]);
    } else if (infi.endsWith('ēre')) {
      // Second Conjugation
      indicativeActive.addAll([
        present,
        present.substring(0, present.length - 2) + 'ēmus',
        present.substring(0, present.length - 2) + 'ēs',
        present.substring(0, present.length - 2) + 'ētis',
        present.substring(0, present.length - 1) + 't',
        present.substring(0, present.length - 1) + 'nt',
        infi.substring(0, infi.length - 2) + 'bam',
        infi.substring(0, infi.length - 2) + 'bāmus',
        infi.substring(0, infi.length - 2) + 'bās',
        infi.substring(0, infi.length - 2) + 'bātis',
        infi.substring(0, infi.length - 2) + 'bat',
        infi.substring(0, infi.length - 2) + 'bant',
        infi.substring(0, infi.length - 2) + 'bō',
        infi.substring(0, infi.length - 2) + 'bimus',
        infi.substring(0, infi.length - 2) + 'bis',
        infi.substring(0, infi.length - 2) + 'bitis',
        infi.substring(0, infi.length - 2) + 'bit',
        infi.substring(0, infi.length - 2) + 'bunt',
        perfect,
        perfect.substring(0, perfect.length - 1) + 'imus',
        perfect.substring(0, perfect.length - 1) + 'istī',
        perfect.substring(0, perfect.length - 1) + 'istis',
        perfect.substring(0, perfect.length - 1) + 'it',
        perfect.substring(0, perfect.length - 1) + 'ērunt',
        perfect.substring(0, perfect.length - 1) + 'eram',
        perfect.substring(0, perfect.length - 1) + 'erāmus',
        perfect.substring(0, perfect.length - 1) + 'erās',
        perfect.substring(0, perfect.length - 1) + 'erātis',
        perfect.substring(0, perfect.length - 1) + 'erat',
        perfect.substring(0, perfect.length - 1) + 'erant',
        perfect.substring(0, perfect.length - 1) + 'erō',
        perfect.substring(0, perfect.length - 1) + 'erimus',
        perfect.substring(0, perfect.length - 1) + 'eris',
        perfect.substring(0, perfect.length - 1) + 'eritis',
        perfect.substring(0, perfect.length - 1) + 'erit',
        perfect.substring(0, perfect.length - 1) + 'erint'
      ]);
    } else if (infi.endsWith('ere')) {
      // Third Conjugation
      indicativeActive.addAll([
        present,
        present.substring(0, present.length - 1) + 'imus',
        present.substring(0, present.length - 1) + 'is',
        present.substring(0, present.length - 1) + 'itis',
        present.substring(0, present.length - 1) + 'it',
        present.substring(0, present.length - 1) + 'unt',
        infi.substring(0, infi.length - 2) + 'bam',
        infi.substring(0, infi.length - 2) + 'bāmus',
        infi.substring(0, infi.length - 2) + 'bās',
        infi.substring(0, infi.length - 2) + 'bātis',
        infi.substring(0, infi.length - 2) + 'bat',
        infi.substring(0, infi.length - 2) + 'bant',
        infi.substring(0, infi.length - 2) + 'am',
        infi.substring(0, infi.length - 2) + 'ēmus',
        infi.substring(0, infi.length - 2) + 'ēs',
        infi.substring(0, infi.length - 2) + 'ētis',
        infi.substring(0, infi.length - 2) + 'et',
        infi.substring(0, infi.length - 2) + 'ent',
        perfect,
        perfect.substring(0, perfect.length - 1) + 'imus',
        perfect.substring(0, perfect.length - 1) + 'istī',
        perfect.substring(0, perfect.length - 1) + 'istis',
        perfect.substring(0, perfect.length - 1) + 'it',
        perfect.substring(0, perfect.length - 1) + 'ērunt',
        perfect.substring(0, perfect.length - 1) + 'eram',
        perfect.substring(0, perfect.length - 1) + 'erāmus',
        perfect.substring(0, perfect.length - 1) + 'erās',
        perfect.substring(0, perfect.length - 1) + 'erātis',
        perfect.substring(0, perfect.length - 1) + 'erat',
        perfect.substring(0, perfect.length - 1) + 'erant',
        perfect.substring(0, perfect.length - 1) + 'erō',
        perfect.substring(0, perfect.length - 1) + 'erimus',
        perfect.substring(0, perfect.length - 1) + 'eris',
        perfect.substring(0, perfect.length - 1) + 'eritis',
        perfect.substring(0, perfect.length - 1) + 'erit',
        perfect.substring(0, perfect.length - 1) + 'erint'
      ]);
    } else if (infi.endsWith('īre')) {
      // Fourth Conjugation
      indicativeActive.addAll([
        present,
        present.substring(0, present.length - 2) + 'īmus',
        present.substring(0, present.length - 2) + 'īs',
        present.substring(0, present.length - 2) + 'ītis',
        present.substring(0, present.length - 1) + 't',
        present.substring(0, present.length - 1) + 'unt',
        infi.substring(0, infi.length - 2) + 'bam',
        infi.substring(0, infi.length - 2) + 'bāmus',
        infi.substring(0, infi.length - 2) + 'bās',
        infi.substring(0, infi.length - 2) + 'bātis',
        infi.substring(0, infi.length - 2) + 'bat',
        infi.substring(0, infi.length - 2) + 'bant',
        infi.substring(0, infi.length - 2) + 'am',
        infi.substring(0, infi.length - 2) + 'ēmus',
        infi.substring(0, infi.length - 2) + 'ēs',
        infi.substring(0, infi.length - 2) + 'ētis',
        infi.substring(0, infi.length - 2) + 'et',
        infi.substring(0, infi.length - 2) + 'ent',
        perfect,
        perfect.substring(0, perfect.length - 1) + 'imus',
        perfect.substring(0, perfect.length - 1) + 'istī',
        perfect.substring(0, perfect.length - 1) + 'istis',
        perfect.substring(0, perfect.length - 1) + 'it',
        perfect.substring(0, perfect.length - 1) + 'ērunt',
        perfect.substring(0, perfect.length - 1) + 'eram',
        perfect.substring(0, perfect.length - 1) + 'erāmus',
        perfect.substring(0, perfect.length - 1) + 'erās',
        perfect.substring(0, perfect.length - 1) + 'erātis',
        perfect.substring(0, perfect.length - 1) + 'erat',
        perfect.substring(0, perfect.length - 1) + 'erant',
        perfect.substring(0, perfect.length - 1) + 'erō',
        perfect.substring(0, perfect.length - 1) + 'erimus',
        perfect.substring(0, perfect.length - 1) + 'eris',
        perfect.substring(0, perfect.length - 1) + 'eritis',
        perfect.substring(0, perfect.length - 1) + 'erit',
        perfect.substring(0, perfect.length - 1) + 'erint'
      ]);
    }
  } else if (tive == 2) {
    if (infi.endsWith('āre')) {
      // First Conjugation
      indicativeActive.addAll([
        infi.substring(0, infi.length - 3) + 'or',
        infi.substring(0, infi.length - 2) + 'mur',
        infi.substring(0, infi.length - 2) + 'ris',
        infi.substring(0, infi.length - 2) + 'minī',
        infi.substring(0, infi.length - 2) + 'tur',
        infi.substring(0, infi.length - 2) + 'ntur',
        infi.substring(0, infi.length - 2) + 'bar',
        infi.substring(0, infi.length - 2) + 'bāmur',
        infi.substring(0, infi.length - 2) + 'bāris',
        infi.substring(0, infi.length - 2) + 'bāminī',
        infi.substring(0, infi.length - 2) + 'bātur',
        infi.substring(0, infi.length - 2) + 'bantur',
        infi.substring(0, infi.length - 2) + 'bor',
        infi.substring(0, infi.length - 2) + 'bimur',
        infi.substring(0, infi.length - 2) + 'beris',
        infi.substring(0, infi.length - 2) + 'biminī',
        infi.substring(0, infi.length - 2) + 'bitur',
        infi.substring(0, infi.length - 2) + 'buntur',
        passPerfect + ' sum',
        passPerfect.substring(0, passPerfect.length - 2) + 'ī sumus',
        passPerfect + ' es',
        passPerfect.substring(0, passPerfect.length - 2) + 'ī estis',
        passPerfect + ' est',
        passPerfect.substring(0, passPerfect.length - 2) + 'ī sunt',
        passPerfect + ' eram',
        passPerfect.substring(0, passPerfect.length - 2) + 'ī erāmus',
        passPerfect + ' erās',
        passPerfect.substring(0, passPerfect.length - 2) + 'ī erātis',
        passPerfect + ' erat',
        passPerfect.substring(0, passPerfect.length - 2) + 'ī erant',
        passPerfect + ' erō',
        passPerfect.substring(0, passPerfect.length - 2) + 'ī erimus',
        passPerfect + ' eris',
        passPerfect.substring(0, passPerfect.length - 2) + 'ī eritis',
        passPerfect + ' erit',
        passPerfect.substring(0, passPerfect.length - 2) + 'ī erunt'
      ]);
    } else if (infi.endsWith('ēre')) {
      // Second Conjugation
      indicativeActive.addAll([
        infi.substring(0, infi.length - 3) + 'eor',
        infi.substring(0, infi.length - 3) + 'ēmur',
        infi.substring(0, infi.length - 3) + 'ēris',
        infi.substring(0, infi.length - 3) + 'ēminī',
        infi.substring(0, infi.length - 3) + 'ētur',
        infi.substring(0, infi.length - 2) + 'ntur',
        infi.substring(0, infi.length - 2) + 'bar',
        infi.substring(0, infi.length - 2) + 'bāmur',
        infi.substring(0, infi.length - 2) + 'bāris',
        infi.substring(0, infi.length - 2) + 'bāminī',
        infi.substring(0, infi.length - 2) + 'bātur',
        infi.substring(0, infi.length - 2) + 'bantur',
        infi.substring(0, infi.length - 2) + 'bor',
        infi.substring(0, infi.length - 2) + 'bimur',
        infi.substring(0, infi.length - 2) + 'beris',
        infi.substring(0, infi.length - 2) + 'biminī',
        infi.substring(0, infi.length - 2) + 'bitur',
        infi.substring(0, infi.length - 2) + 'buntur',
        passPerfect + ' sum',
        passPerfect.substring(0, passPerfect.length - 2) + 'ī sumus',
        passPerfect + ' es',
        passPerfect.substring(0, passPerfect.length - 2) + 'ī estis',
        passPerfect + ' est',
        passPerfect.substring(0, passPerfect.length - 2) + 'ī sunt',
        passPerfect + ' eram',
        passPerfect.substring(0, passPerfect.length - 2) + 'ī erāmus',
        passPerfect + ' erās',
        passPerfect.substring(0, passPerfect.length - 2) + 'ī erātis',
        passPerfect + ' erat',
        passPerfect.substring(0, passPerfect.length - 2) + 'ī erant',
        passPerfect + ' erō',
        passPerfect.substring(0, passPerfect.length - 2) + 'ī erimus',
        passPerfect + ' eris',
        passPerfect.substring(0, passPerfect.length - 2) + 'ī eritis',
        passPerfect + ' erit',
        passPerfect.substring(0, passPerfect.length - 2) + 'ī erunt'
      ]);
    } else if (infi.endsWith('ere')) {
      // Third Conjugation
      indicativeActive.addAll([
        present.substring(0, present.length - 1) + 'or',
        infi.substring(0, infi.length - 3) + 'imur',
        present.substring(0, present.length - 1) + 'eris',
        infi.substring(0, infi.length - 3) + 'iminī',
        infi.substring(0, infi.length - 3) + 'itur',
        present.substring(0, present.length - 1) + 'untur',
        present.substring(0, present.length - 1) + 'ēbar',
        present.substring(0, present.length - 1) + 'ēbamur',
        present.substring(0, present.length - 1) + 'ēbāris',
        present.substring(0, present.length - 1) + 'ēbāminī',
        present.substring(0, present.length - 1) + 'ēbātur',
        present.substring(0, present.length - 1) + 'ēbantur',
        present.substring(0, present.length - 1) + 'ar',
        present.substring(0, present.length - 1) + 'ēmur',
        present.substring(0, present.length - 1) + 'ēris',
        present.substring(0, present.length - 1) + 'ēminī',
        present.substring(0, present.length - 1) + 'ētur',
        present.substring(0, present.length - 1) + 'entur',
        passPerfect + ' sum',
        passPerfect.substring(0, passPerfect.length - 2) + 'ī sumus',
        passPerfect + ' es',
        passPerfect.substring(0, passPerfect.length - 2) + 'ī estis',
        passPerfect + ' est',
        passPerfect.substring(0, passPerfect.length - 2) + 'ī sunt',
        passPerfect + ' eram',
        passPerfect.substring(0, passPerfect.length - 2) + 'ī erāmus',
        passPerfect + ' erās',
        passPerfect.substring(0, passPerfect.length - 2) + 'ī erātis',
        passPerfect + ' erat',
        passPerfect.substring(0, passPerfect.length - 2) + 'ī erant',
        passPerfect + ' erō',
        passPerfect.substring(0, passPerfect.length - 2) + 'ī erimus',
        passPerfect + ' eris',
        passPerfect.substring(0, passPerfect.length - 2) + 'ī eritis',
        passPerfect + ' erit',
        passPerfect.substring(0, passPerfect.length - 2) + 'ī erunt'
      ]);
    } else if (infi.endsWith('īre')) {
      // Fourth Conjugation
      indicativeActive.addAll([
        present.substring(0, present.length - 1) + 'or',
        present.substring(0, present.length - 1) + 'mur',
        present.substring(0, present.length - 1) + 'ris',
        present.substring(0, present.length - 1) + 'minī',
        present.substring(0, present.length - 1) + 'tur',
        present.substring(0, present.length - 1) + 'untur',
        present.substring(0, present.length - 1) + 'ēbar',
        present.substring(0, present.length - 1) + 'ēbāmur',
        present.substring(0, present.length - 1) + 'ēbāris',
        present.substring(0, present.length - 1) + 'ēbāminī',
        present.substring(0, present.length - 1) + 'ēbātur',
        present.substring(0, present.length - 1) + 'ēbantur',
        present.substring(0, present.length - 1) + 'ar',
        present.substring(0, present.length - 1) + 'ēmur',
        present.substring(0, present.length - 1) + 'ēris',
        present.substring(0, present.length - 1) + 'ēminī',
        present.substring(0, present.length - 1) + 'ētur',
        present.substring(0, present.length - 1) + 'entur',
        passPerfect + ' sum',
        passPerfect.substring(0, passPerfect.length - 2) + 'ī sumus',
        passPerfect + ' es',
        passPerfect.substring(0, passPerfect.length - 2) + 'ī estis',
        passPerfect + ' est',
        passPerfect.substring(0, passPerfect.length - 2) + 'ī sunt',
        passPerfect + ' eram',
        passPerfect.substring(0, passPerfect.length - 2) + 'ī erāmus',
        passPerfect + ' erās',
        passPerfect.substring(0, passPerfect.length - 2) + 'ī erātis',
        passPerfect + ' erat',
        passPerfect.substring(0, passPerfect.length - 2) + 'ī erant',
        passPerfect + ' erō',
        passPerfect.substring(0, passPerfect.length - 2) + 'ī erimus',
        passPerfect + ' eris',
        passPerfect.substring(0, passPerfect.length - 2) + 'ī eritis',
        passPerfect + ' erit',
        passPerfect.substring(0, passPerfect.length - 2) + 'ī erunt'
      ]);
    }
  }
  return indicativeActive;
}

List<String> depindi(
  int conju,
  String present,
  String infi,
  String perfect,
) {
  List<String> indiDep = [];
  if (infi.endsWith('esse')) {
    List<String> forms = [
      present.substring(0, present.length - 3) + 'sum',
      present.substring(0, present.length - 3) + 'sumus',
      present.substring(0, present.length - 3) + 'es',
      present.substring(0, present.length - 3) + 'estis',
      present.substring(0, present.length - 3) + 'est',
      present.substring(0, present.length - 3) + 'sunt',
      infi.substring(0, infi.length - 4) + 'eram',
      infi.substring(0, infi.length - 4) + 'erāmus',
      infi.substring(0, infi.length - 4) + 'erās',
      infi.substring(0, infi.length - 4) + 'erātis',
      infi.substring(0, infi.length - 4) + 'erat',
      infi.substring(0, infi.length - 4) + 'erant',
      infi.substring(0, infi.length - 4) + 'ero',
      infi.substring(0, infi.length - 4) + 'erimus',
      infi.substring(0, infi.length - 4) + 'eris',
      infi.substring(0, infi.length - 4) + 'eritis',
      infi.substring(0, infi.length - 4) + 'erit',
      infi.substring(0, infi.length - 4) + 'erunt',
      perfect,
      perfect.substring(0, perfect.length - 1) + 'imus',
      perfect.substring(0, perfect.length - 1) + 'istī',
      perfect.substring(0, perfect.length - 1) + 'istis',
      perfect.substring(0, perfect.length - 1) + 'it',
      perfect.substring(0, perfect.length - 1) + 'ērunt',
      perfect.substring(0, perfect.length - 1) + 'eram',
      perfect.substring(0, perfect.length - 1) + 'erāmus',
      perfect.substring(0, perfect.length - 1) + 'erās',
      perfect.substring(0, perfect.length - 1) + 'erātis',
      perfect.substring(0, perfect.length - 1) + 'erat',
      perfect.substring(0, perfect.length - 1) + 'erant',
      perfect.substring(0, perfect.length - 1) + 'erō',
      perfect.substring(0, perfect.length - 1) + 'erimus',
      perfect.substring(0, perfect.length - 1) + 'eris',
      perfect.substring(0, perfect.length - 1) + 'eritis',
      perfect.substring(0, perfect.length - 1) + 'erit',
      perfect.substring(0, perfect.length - 1) + 'erint',
    ];
    indiDep.addAll(forms);
  } else if (infi == 'velle') {
    List<String> forms = [
      'volō',
      'volumus',
      'vīs',
      'vultis',
      'vult',
      'volunt',
      'volēbam',
      'volēbāmus',
      'volēbās',
      'volēbātis',
      'volēbat',
      'volēbant',
      'volam',
      'volēmus',
      'volēs',
      'volētis',
      'volēt',
      'volent',
      'voluī',
      'voluimus',
      'voluistī',
      'voluistis',
      'voluit',
      'voluērunt',
      'volueram',
      'voluerāmus',
      'voluerās',
      'voluerātis',
      'voluerat',
      'voluērant',
      'voluerō',
      'voluerimus',
      'volueris',
      'volueritis',
      'voluerit',
      'voluērint',
    ];
  } else if (infi == 'nolle') {
    List<String> forms = [
      'nōlō',
      'nōlumus',
      'nōn vīs',
      'nōn vultis',
      'nōn vult',
      'nōlunt',
      'nolēbam',
      'nolēbāmus',
      'nolēbās',
      'nolēbātis',
      'nolēbat',
      'nolēbant',
      'nolam',
      'nolēmus',
      'nolēs',
      'nolētis',
      'nolet',
      'nolunt',
      'noluī',
      'noluimus',
      'noluistī',
      'noluistis',
      'noluit',
      'noluērunt',
      'nolueram',
      'noluerāmus',
      'noluerās',
      'noluerātis',
      'noluerat',
      'noluerant',
      'noluerō',
      'noluerimus',
      'nolueris',
      'nolueritis',
      'noluerit',
      'noluerint',
    ];
    indiDep.addAll(forms);
  } else if (infi == 'malle') {
    List<String> forms = [
      'mālō',
      'mālumus',
      'māvīs',
      'māvultis',
      'māvult',
      'mālunt',
      'mālēbam',
      'mālēbāmus',
      'mālēbās',
      'mālēbātis',
      'mālēbat',
      'mālēbant',
      'mālam',
      'mālēmus',
      'mālēs',
      'mālētis',
      'mālēt',
      'mālent',
      'māluī',
      'māluimus',
      'māluistī',
      'māluistis',
      'māluit',
      'māluērunt',
      'mālueram',
      'māluērāmus',
      'māluerās',
      'māluerātis',
      'māluerat',
      'māluērant',
      'māluerō',
      'māluerimus',
      'mālueris',
      'mālueritis',
      'māluerit',
      'māluērint',
    ];
    indiDep.addAll(forms);
  } else if (infi == 'ire') {
    // Present tense
    indiDep.add('eō');
    indiDep.add('īmus');
    indiDep.add('īs');
    indiDep.add('ītis');
    indiDep.add('it');
    indiDep.add('eunt');

    // Imperfect tense
    indiDep.add('ībam');
    indiDep.add('ībāmus');
    indiDep.add('ībās');
    indiDep.add('ībātis');
    indiDep.add('ībat');
    indiDep.add('ībant');

    // Future tense
    indiDep.add('ībō');
    indiDep.add('ībimus');
    indiDep.add('ībis');
    indiDep.add('ībitis');
    indiDep.add('ībit');
    indiDep.add('ībunt');

    // Perfect tense
    indiDep.add('īvī');
    indiDep.add('īvimus');
    indiDep.add('īvistī');
    indiDep.add('īvistis');
    indiDep.add('īvit');
    indiDep.add('īvērunt');

    // Pluperfect tense
    indiDep.add('iveram');
    indiDep.add('iverāmus');
    indiDep.add('iverās');
    indiDep.add('iverātis');
    indiDep.add('iverat');
    indiDep.add('iverant');

    // Future perfect tense
    indiDep.add('iverō');
    indiDep.add('iverimus');
    indiDep.add('iveris');
    indiDep.add('iveritis');
    indiDep.add('iverit');
    indiDep.add('iverint');
  } else if (infi == 'fierī') {
    List<String> forms = [
      'fiō',
      'fīmus',
      'fīs',
      'fītis',
      'fit',
      'fīunt',
      'fīēbam',
      'fīēbāmus',
      'fīēbās',
      'fīēbātis',
      'fīēbat',
      'fīēbant',
      'fīam',
      'fīēmus',
      'fīēs',
      'fīētis',
      'fīet',
      'fīent',
      'factus sum',
      'factī sumus',
      'factus es',
      'factī estis',
      'factus est',
      'factī sunt',
      'factus eram',
      'factī erāmus',
      'factus erās',
      'factī erātis',
      'factus erat',
      'factī erant',
      'factus erō',
      'factī erimus',
      'factus eris',
      'factī eritis',
      'factus erit',
      'factī erunt',
    ];
    indiDep.addAll(forms);
  } else if (infi == 'posse') {
    List<String> forms = [
      'possum',
      'possumus',
      'potes',
      'potestis',
      'potest',
      'possunt',
      'poteram',
      'poterāmus',
      'poterās',
      'poterātis',
      'poterat',
      'poterant',
      'poterō',
      'poterimus',
      'poteris',
      'poteritis',
      'poterit',
      'poterunt',
      'potuī',
      'potuimus',
      'potuistī',
      'potuistis',
      'potuit',
      'potuērunt',
      'potueram',
      'potuerāmus',
      'potuerās',
      'potuerātis',
      'potuerat',
      'potuērant',
      'potuerō',
      'potuerimus',
      'potueris',
      'potueritis',
      'potuerit',
      'potuērint',
    ];
    indiDep.addAll(forms);
  } else if (infi.endsWith('ari')) {
    // Present tense
    indiDep.add(present);
    indiDep.add(present.substring(0, present.length - 3) + 'āmur');
    indiDep.add(present.substring(0, present.length - 3) + 'āris');
    indiDep.add(present.substring(0, present.length - 3) + 'āminī');
    indiDep.add(present.substring(0, present.length - 3) + 'ātur');
    indiDep.add(present.substring(0, present.length - 2) + 'ntur');

    // Imperfect tense
    indiDep.add(present.substring(0, present.length - 2) + 'bar');
    indiDep.add(present.substring(0, present.length - 2) + 'bāmur');
    indiDep.add(present.substring(0, present.length - 2) + 'bāris');
    indiDep.add(present.substring(0, present.length - 2) + 'bāminī');
    indiDep.add(present.substring(0, present.length - 2) + 'bātur');
    indiDep.add(present.substring(0, present.length - 2) + 'bantur');

    // Future tense
    indiDep.add(present.substring(0, present.length - 2) + 'bor');
    indiDep.add(present.substring(0, present.length - 2) + 'bimur');
    indiDep.add(present.substring(0, present.length - 2) + 'beris');
    indiDep.add(present.substring(0, present.length - 2) + 'biminī');
    indiDep.add(present.substring(0, present.length - 2) + 'bitur');
    indiDep.add(present.substring(0, present.length - 2) + 'buntur');

    // Perfect tense
    indiDep.add(perfect + ' sum');
    indiDep.add(perfect.substring(0, perfect.length - 2) + 'ī sumus');
    indiDep.add(perfect + ' es');
    indiDep.add(perfect.substring(0, perfect.length - 2) + 'ī estis');
    indiDep.add(perfect + ' est');
    indiDep.add(perfect.substring(0, perfect.length - 2) + 'ī sunt');

    // Pluperfect tense
    indiDep.add(perfect + ' eram');
    indiDep.add(perfect.substring(0, perfect.length - 2) + 'ī erāmus');
    indiDep.add(perfect + ' erās');
    indiDep.add(perfect.substring(0, perfect.length - 2) + 'ī erātis');
    indiDep.add(perfect + ' erat');
    indiDep.add(perfect.substring(0, perfect.length - 2) + 'ī erant');

    // Future perfect tense
    indiDep.add(perfect + ' erō');
    indiDep.add(perfect.substring(0, perfect.length - 2) + 'ī erimus');
    indiDep.add(perfect + ' eris');
    indiDep.add(perfect.substring(0, perfect.length - 2) + 'ī eritis');
    indiDep.add(perfect + ' erit');
    indiDep.add(perfect.substring(0, perfect.length - 2) + 'ī erunt');
  } else if (infi.endsWith('ērī')) {
// Present tense
    indiDep.add(present);
    indiDep.add(present.substring(0, present.length - 3) + 'ēmur');
    indiDep.add(present.substring(0, present.length - 3) + 'ēris');
    indiDep.add(present.substring(0, present.length - 3) + 'ēminī');
    indiDep.add(present.substring(0, present.length - 3) + 'ētur');
    indiDep.add(present.substring(0, present.length - 2) + 'ntur');

    // Imperfect tense
    indiDep.add(present.substring(0, present.length - 3) + 'ēbar');
    indiDep.add(present.substring(0, present.length - 3) + 'ēbāmur');
    indiDep.add(present.substring(0, present.length - 3) + 'ēbāris');
    indiDep.add(present.substring(0, present.length - 3) + 'ēbāminī');
    indiDep.add(present.substring(0, present.length - 3) + 'ēbātur');
    indiDep.add(present.substring(0, present.length - 3) + 'ēbantur');

    // Future tense
    indiDep.add(present.substring(0, present.length - 3) + 'ēbor');
    indiDep.add(present.substring(0, present.length - 3) + 'ēbimur');
    indiDep.add(present.substring(0, present.length - 3) + 'ēberis');
    indiDep.add(present.substring(0, present.length - 3) + 'ēbiminī');
    indiDep.add(present.substring(0, present.length - 3) + 'ēbitur');
    indiDep.add(present.substring(0, present.length - 3) + 'ēbuntur');

    // Perfect tense
    indiDep.add(perfect + ' sum');
    indiDep.add(perfect.substring(0, perfect.length - 2) + 'ī sumus');
    indiDep.add(perfect + ' es');
    indiDep.add(perfect.substring(0, perfect.length - 2) + 'ī estis');
    indiDep.add(perfect + ' est');
    indiDep.add(perfect.substring(0, perfect.length - 2) + 'ī sunt');

    // Pluperfect tense
    indiDep.add(perfect + ' eram');
    indiDep.add(perfect.substring(0, perfect.length - 2) + 'ī erāmus');
    indiDep.add(perfect + ' erās');
    indiDep.add(perfect.substring(0, perfect.length - 2) + 'ī erātis');
    indiDep.add(perfect + ' erat');
    indiDep.add(perfect.substring(0, perfect.length - 2) + 'ī erant');

    // Future perfect tense
    indiDep.add(perfect + ' erō');
    indiDep.add(perfect.substring(0, perfect.length - 2) + 'ī erimus');
    indiDep.add(perfect + ' eris');
    indiDep.add(perfect.substring(0, perfect.length - 2) + 'ī eritis');
    indiDep.add(perfect + ' erit');
    indiDep.add(perfect.substring(0, perfect.length - 2) + 'ī erunt');
  } else if (infi.endsWith('iri')) {
    // Present tense
    indiDep.add(present);
    indiDep.add(present.substring(0, present.length - 3) + 'īmur');
    indiDep.add(present.substring(0, present.length - 3) + 'īris');
    indiDep.add(present.substring(0, present.length - 3) + 'īminī');
    indiDep.add(present.substring(0, present.length - 3) + 'ītur');
    indiDep.add(present.substring(0, present.length - 2) + 'untur');

    // Imperfect tense
    indiDep.add(present.substring(0, present.length - 2) + 'ēbar');
    indiDep.add(present.substring(0, present.length - 2) + 'ēbāmur');
    indiDep.add(present.substring(0, present.length - 2) + 'ēbāris');
    indiDep.add(present.substring(0, present.length - 2) + 'ēbāminī');
    indiDep.add(present.substring(0, present.length - 2) + 'ēbātur');
    indiDep.add(present.substring(0, present.length - 2) + 'ēbantur');

    // Future tense
    indiDep.add(present.substring(0, present.length - 2) + 'ar');
    indiDep.add(present.substring(0, present.length - 2) + 'ēmur');
    indiDep.add(present.substring(0, present.length - 2) + 'ēris');
    indiDep.add(present.substring(0, present.length - 2) + 'ēminī');
    indiDep.add(present.substring(0, present.length - 2) + 'ētur');
    indiDep.add(present.substring(0, present.length - 2) + 'entur');

    // Perfect tense
    indiDep.add(perfect + ' sum');
    indiDep.add(perfect.substring(0, perfect.length - 2) + 'ī sumus');
    indiDep.add(perfect + ' es');
    indiDep.add(perfect.substring(0, perfect.length - 2) + 'ī estis');
    indiDep.add(perfect + ' est');
    indiDep.add(perfect.substring(0, perfect.length - 2) + 'ī sunt');

    // Pluperfect tense
    indiDep.add(perfect + ' eram');
    indiDep.add(perfect.substring(0, perfect.length - 2) + 'ī erāmus');
    indiDep.add(perfect + ' erās');
    indiDep.add(perfect.substring(0, perfect.length - 2) + 'ī erātis');
    indiDep.add(perfect + ' erat');
    indiDep.add(perfect.substring(0, perfect.length - 2) + 'ī erant');

    // Future perfect tense
    indiDep.add(perfect + ' erō');
    indiDep.add(perfect.substring(0, perfect.length - 2) + 'ī erimus');
    indiDep.add(perfect + ' eris');
    indiDep.add(perfect.substring(0, perfect.length - 2) + 'ī eritis');
    indiDep.add(perfect + ' erit');
    indiDep.add(perfect.substring(0, perfect.length - 2) + 'ī erunt');
  } else {
// Present tense
    indiDep.add(present);
    indiDep.add(present.substring(0, present.length - 2) + 'imur');
    indiDep.add(present.substring(0, present.length - 2) + 'eris');
    indiDep.add(present.substring(0, present.length - 2) + 'iminī');
    indiDep.add(present.substring(0, present.length - 2) + 'itur');
    indiDep.add(present.substring(0, present.length - 2) + 'untur');

    // Imperfect tense
    indiDep.add(infi.substring(0, infi.length - 1) + 'ēbar');
    indiDep.add(infi.substring(0, infi.length - 1) + 'ēbāmur');
    indiDep.add(infi.substring(0, infi.length - 1) + 'ēbāris');
    indiDep.add(infi.substring(0, infi.length - 1) + 'ēbāminī');
    indiDep.add(infi.substring(0, infi.length - 1) + 'ēbātur');
    indiDep.add(infi.substring(0, infi.length - 1) + 'ēbantur');

    // Future tense
    indiDep.add(infi.substring(0, infi.length - 1) + 'ar');
    indiDep.add(infi.substring(0, infi.length - 1) + 'ēmur');
    indiDep.add(infi.substring(0, infi.length - 1) + 'ēris');
    indiDep.add(infi.substring(0, infi.length - 1) + 'ēminī');
    indiDep.add(infi.substring(0, infi.length - 1) + 'ētur');
    indiDep.add(infi.substring(0, infi.length - 1) + 'entur');

    // Perfect tense
    indiDep.add(perfect + ' sum');
    indiDep.add(perfect.substring(0, perfect.length - 2) + 'ī sumus');
    indiDep.add(perfect + ' es');
    indiDep.add(perfect.substring(0, perfect.length - 2) + 'ī estis');
    indiDep.add(perfect + ' est');
    indiDep.add(perfect.substring(0, perfect.length - 2) + 'ī sunt');

    // Pluperfect tense
    indiDep.add(perfect + ' eram');
    indiDep.add(perfect.substring(0, perfect.length - 2) + 'ī erāmus');
    indiDep.add(perfect + ' erās');
    indiDep.add(perfect.substring(0, perfect.length - 2) + 'ī erātis');
    indiDep.add(perfect + ' erat');
    indiDep.add(perfect.substring(0, perfect.length - 2) + 'ī erant');

    // Future perfect tense
    indiDep.add(perfect + ' erō');
    indiDep.add(perfect.substring(0, perfect.length - 2) + 'ī erimus');
    indiDep.add(perfect + ' eris');
    indiDep.add(perfect.substring(0, perfect.length - 2) + 'ī eritis');
    indiDep.add(perfect + ' erit');
    indiDep.add(perfect.substring(0, perfect.length - 2) + 'ī erunt');
  }
  return indiDep;
}

List<String> depsub(
  String present,
  String infi,
  String perfect,
) {
  List<String> subdep = [];
  if (infi.endsWith('esse')) {
    subdep.add(present.substring(0, present.length - 3) + 'sim');
    subdep.add(present.substring(0, present.length - 3) + 'sīmus');
    subdep.add(present.substring(0, present.length - 3) + 'sīs');
    subdep.add(present.substring(0, present.length - 3) + 'sītis');
    subdep.add(present.substring(0, present.length - 3) + 'sit');
    subdep.add(present.substring(0, present.length - 3) + 'sint');
    subdep.add(infi + 'm');
    subdep.add(infi.substring(0, infi.length - 1) + 'ēmus');
    subdep.add(infi.substring(0, infi.length - 1) + 'ēs');
    subdep.add(infi.substring(0, infi.length - 1) + 'ētis');
    subdep.add(infi.substring(0, infi.length - 1) + 'et');
    subdep.add(infi.substring(0, infi.length - 1) + 'ent');
    subdep.add(perfect.substring(0, perfect.length - 1) + 'erim');
    subdep.add(perfect.substring(0, perfect.length - 1) + 'erīmus');
    subdep.add(perfect.substring(0, perfect.length - 1) + 'erīs');
    subdep.add(perfect.substring(0, perfect.length - 1) + 'erītis');
    subdep.add(perfect.substring(0, perfect.length - 1) + 'erit');
    subdep.add(perfect.substring(0, perfect.length - 1) + 'erint');
    subdep.add(perfect.substring(0, perfect.length - 1) + 'issem');
    subdep.add(perfect.substring(0, perfect.length - 1) + 'issēmus');
    subdep.add(perfect.substring(0, perfect.length - 1) + 'issēs');
    subdep.add(perfect.substring(0, perfect.length - 1) + 'issētis');
    subdep.add(perfect.substring(0, perfect.length - 1) + 'isset');
    subdep.add(perfect.substring(0, perfect.length - 1) + 'issent');
  } else if (infi == 'velle') {
    subdep.add('velim');
    subdep.add('velīmus');
    subdep.add('velīs');
    subdep.add('velītis');
    subdep.add('velit');
    subdep.add('velint');
    subdep.add('vellem');
    subdep.add('vellēmus');
    subdep.add('vellēs');
    subdep.add('vellētis');
    subdep.add('vellēt');
    subdep.add('vellent');
    subdep.add('voluerim');
    subdep.add('voluerīmus');
    subdep.add('voluerīs');
    subdep.add('voluerītis');
    subdep.add('voluerit');
    subdep.add('voluerint');
    subdep.add('voluissem');
    subdep.add('voluissēmus');
    subdep.add('voluissēs');
    subdep.add('voluissētis');
    subdep.add('voluisset');
    subdep.add('voluissent');
  } else if (infi == 'nolle') {
    String first_present_sing_a = 'nolim';
    String first_present_plu_a = 'nolimus';
    String second_present_sing_a = 'nolis';
    String second_present_plu_a = 'nolitis';
    String third_present_sing_a = 'nolit';
    String third_present_plu_a = 'nolint';
    String first_imperfect_sing_a = 'nollem';
    String first_imperfect_plu_a = 'nollēmus';
    String second_imperfect_sing_a = 'nollēs';
    String second_imperfect_plu_a = 'nollētis';
    String third_imperfect_sing_a = 'nollet';
    String third_imperfect_plu_a = 'nollent';
    String first_perfect_sing_a = 'nōluerim';
    String first_perfect_plu_a = 'nōluerimus';
    String second_perfect_sing_a = 'nōlueris';
    String second_perfect_plu_a = 'nōlueritis';
    String third_perfect_sing_a = 'nōluerit';
    String third_perfect_plu_a = 'nōluerint';
    String first_pluperfect_sing_a = 'nōluissem';
    String first_pluperfect_plu_a = 'nōluissēmus';
    String second_pluperfect_sing_a = 'nōluissēs';
    String second_pluperfect_plu_a = 'nōluissētis';
    String third_pluperfect_sing_a = 'nōluisset';
    String third_pluperfect_plu_a = 'nōluissent';

    subdep.add(first_present_sing_a);
    subdep.add(first_present_plu_a);
    subdep.add(second_present_sing_a);
    subdep.add(second_present_plu_a);
    subdep.add(third_present_sing_a);
    subdep.add(third_present_plu_a);
    subdep.add(first_imperfect_sing_a);
    subdep.add(first_imperfect_plu_a);
    subdep.add(second_imperfect_sing_a);
    subdep.add(second_imperfect_plu_a);
    subdep.add(third_imperfect_sing_a);
    subdep.add(third_imperfect_plu_a);
    subdep.add(first_perfect_sing_a);
    subdep.add(first_perfect_plu_a);
    subdep.add(second_perfect_sing_a);
    subdep.add(second_perfect_plu_a);
    subdep.add(third_perfect_sing_a);
    subdep.add(third_perfect_plu_a);
    subdep.add(first_pluperfect_sing_a);
    subdep.add(first_pluperfect_plu_a);
    subdep.add(second_pluperfect_sing_a);
    subdep.add(second_pluperfect_plu_a);
    subdep.add(third_pluperfect_sing_a);
    subdep.add(third_pluperfect_plu_a);
  } else if (infi == 'malle') {
    subdep.add('mālim');
    subdep.add('mālīmus');
    subdep.add('mālīs');
    subdep.add('mālītis');
    subdep.add('mālīt');
    subdep.add('mālīnt');
    subdep.add('mallem');
    subdep.add('mallemus');
    subdep.add('malles');
    subdep.add('malletis');
    subdep.add('mallet');
    subdep.add('mallent');
    subdep.add('māluerim');
    subdep.add('māluerīmus');
    subdep.add('māluerīs');
    subdep.add('māluerītis');
    subdep.add('māluerit');
    subdep.add('māluerint');
    subdep.add('māluissem');
    subdep.add('māluissēmus');
    subdep.add('māluissēs');
    subdep.add('māluissētis');
    subdep.add('māluisset');
    subdep.add('māluissent');
  } else if (infi == 'ire') {
    subdep.add('eam');
    subdep.add('eāmus');
    subdep.add('eās');
    subdep.add('eātis');
    subdep.add('eat');
    subdep.add('eant');
    subdep.add('īrem');
    subdep.add('īrēmus');
    subdep.add('īrēs');
    subdep.add('īrētis');
    subdep.add('īret');
    subdep.add('īrent');
    subdep.add('iverim');
    subdep.add('iverimus');
    subdep.add('iverīs');
    subdep.add('iverītis');
    subdep.add('iverit');
    subdep.add('iverint');
    subdep.add('ivissem');
    subdep.add('ivissēmus');
    subdep.add('ivissēs');
    subdep.add('ivissētis');
    subdep.add('ivisset');
    subdep.add('ivissent');
  } else if (infi == 'fieri') {
    subdep.add('fīam');
    subdep.add('fīāmus');
    subdep.add('fīās');
    subdep.add('fīātis');
    subdep.add('fīat');
    subdep.add('fīant');
    subdep.add('fierem');
    subdep.add('fierēmus');
    subdep.add('fierēs');
    subdep.add('fierētis');
    subdep.add('fieret');
    subdep.add('fierent');
    subdep.add('factus sim');
    subdep.add('factī sīmus');
    subdep.add('factus sīs');
    subdep.add('factī sītis');
    subdep.add('factus sit');
    subdep.add('factī sint');
    subdep.add('factus essem');
    subdep.add('factī essēmus');
    subdep.add('factus essēs');
    subdep.add('factī essētis');
    subdep.add('factus esset');
    subdep.add('factī essent');
  } else if (infi == 'posse') {
    subdep.add('possim');
    subdep.add('possīmus');
    subdep.add('possīs');
    subdep.add('possītis');
    subdep.add('possit');
    subdep.add('possint');
    subdep.add('possem');
    subdep.add('possēmus');
    subdep.add('possēs');
    subdep.add('possētis');
    subdep.add('possēt');
    subdep.add('possent');
    subdep.add('potuerim');
    subdep.add('potuerīmus');
    subdep.add('potuerīs');
    subdep.add('potuerītis');
    subdep.add('potuerit');
    subdep.add('potuerint');
    subdep.add('potuissem');
    subdep.add('potuissēmus');
    subdep.add('potuissēs');
    subdep.add('potuissētis');
    subdep.add('potuisset');
    subdep.add('potuissent');
  } else if (infi.endsWith('ari')) {
    subdep.add(infi.substring(0, infi.length - 3) + 'er');
    subdep.add(infi.substring(0, infi.length - 3) + 'ēmur');
    subdep.add(infi.substring(0, infi.length - 3) + 'ēris');
    subdep.add(infi.substring(0, infi.length - 3) + 'ēminī');
    subdep.add(infi.substring(0, infi.length - 3) + 'ētur');
    subdep.add(infi.substring(0, infi.length - 3) + 'entur');
    subdep.add(infi.substring(0, infi.length - 1) + 'er');
    subdep.add(infi.substring(0, infi.length - 1) + 'ēmur');
    subdep.add(infi.substring(0, infi.length - 1) + 'ēris');
    subdep.add(infi.substring(0, infi.length - 1) + 'ēminī');
    subdep.add(infi.substring(0, infi.length - 1) + 'ētur');
    subdep.add(infi.substring(0, infi.length - 1) + 'entur');
    subdep.add(perfect + ' sim');
    subdep.add(perfect.substring(0, perfect.length - 2) + 'ī sīmus');
    subdep.add(perfect + ' sīs');
    subdep.add(perfect.substring(0, perfect.length - 2) + 'ī sītis');
    subdep.add(perfect + ' sit');
    subdep.add(perfect.substring(0, perfect.length - 2) + 'ī sint');
    subdep.add(perfect + ' essem');
    subdep.add(perfect.substring(0, perfect.length - 2) + 'ī essēmus');
    subdep.add(perfect + ' essēs');
    subdep.add(perfect.substring(0, perfect.length - 2) + 'ī essētis');
    subdep.add(perfect + ' esset');
    subdep.add(perfect.substring(0, perfect.length - 2) + 'ī essent');
  } else if (infi.endsWith('eri')) {
    subdep.add(present.substring(0, present.length - 2) + 'ar');
    subdep.add(present.substring(0, present.length - 2) + 'āmur');
    subdep.add(present.substring(0, present.length - 2) + 'āris');
    subdep.add(present.substring(0, present.length - 2) + 'āminī');
    subdep.add(present.substring(0, present.length - 2) + 'ātur');
    subdep.add(present.substring(0, present.length - 2) + 'antur');
    subdep.add(infi.substring(0, infi.length - 1) + 'er');
    subdep.add(infi.substring(0, infi.length - 1) + 'ēmur');
    subdep.add(infi.substring(0, infi.length - 1) + 'ēris');
    subdep.add(infi.substring(0, infi.length - 1) + 'ēminī');
    subdep.add(infi.substring(0, infi.length - 1) + 'ētur');
    subdep.add(infi.substring(0, infi.length - 1) + 'entur');
    subdep.add(perfect + ' sim');
    subdep.add(perfect.substring(0, perfect.length - 2) + 'ī sīmus');
    subdep.add(perfect + ' sīs');
    subdep.add(perfect.substring(0, perfect.length - 2) + 'ī sītis');
    subdep.add(perfect + ' sit');
    subdep.add(perfect.substring(0, perfect.length - 2) + 'ī sint');
    subdep.add(perfect + ' essem');
    subdep.add(perfect.substring(0, perfect.length - 2) + 'ī essēmus');
    subdep.add(perfect + ' essēs');
    subdep.add(perfect.substring(0, perfect.length - 2) + 'ī essētis');
    subdep.add(perfect + ' esset');
    subdep.add(perfect.substring(0, perfect.length - 2) + 'ī essent');
  } else if (infi.endsWith('iri')) {
    subdep.add(present.substring(0, present.length - 2) + 'ar');
    subdep.add(present.substring(0, present.length - 2) + 'āmur');
    subdep.add(present.substring(0, present.length - 2) + 'āris');
    subdep.add(present.substring(0, present.length - 2) + 'āminī');
    subdep.add(present.substring(0, present.length - 2) + 'ātur');
    subdep.add(present.substring(0, present.length - 2) + 'antur');
    subdep.add(infi.substring(0, infi.length - 1) + 'er');
    subdep.add(infi.substring(0, infi.length - 1) + 'ēmur');
    subdep.add(infi.substring(0, infi.length - 1) + 'ēris');
    subdep.add(infi.substring(0, infi.length - 1) + 'ēminī');
    subdep.add(infi.substring(0, infi.length - 1) + 'ētur');
    subdep.add(infi.substring(0, infi.length - 1) + 'entur');
    subdep.add(perfect + ' sim');
    subdep.add(perfect.substring(0, perfect.length - 2) + 'ī sīmus');
    subdep.add(perfect + ' sīs');
    subdep.add(perfect.substring(0, perfect.length - 2) + 'ī sītis');
    subdep.add(perfect + ' sit');
    subdep.add(perfect.substring(0, perfect.length - 2) + 'ī sint');
    subdep.add(perfect + ' essem');
    subdep.add(perfect.substring(0, perfect.length - 2) + 'ī essēmus');
    subdep.add(perfect + ' essēs');
    subdep.add(perfect.substring(0, perfect.length - 2) + 'ī essētis');
    subdep.add(perfect + ' esset');
    subdep.add(perfect.substring(0, perfect.length - 2) + 'ī essent');
  } else {
    subdep.add(present.substring(0, present.length - 2) + 'ar');
    subdep.add(present.substring(0, present.length - 2) + 'āmur');
    subdep.add(present.substring(0, present.length - 2) + 'āris');
    subdep.add(present.substring(0, present.length - 2) + 'āminī');
    subdep.add(present.substring(0, present.length - 2) + 'ātur');
    subdep.add(present.substring(0, present.length - 2) + 'antur');
    subdep.add(infi.substring(0, infi.length - 1) + 'erer');
    subdep.add(infi.substring(0, infi.length - 1) + 'erēmur');
    subdep.add(infi.substring(0, infi.length - 1) + 'erēris');
    subdep.add(infi.substring(0, infi.length - 1) + 'erēminī');
    subdep.add(infi.substring(0, infi.length - 1) + 'erētur');
    subdep.add(infi.substring(0, infi.length - 1) + 'erentur');
    subdep.add(perfect + ' sim');
    subdep.add(perfect.substring(0, perfect.length - 2) + 'ī sīmus');
    subdep.add(perfect + ' sīs');
    subdep.add(perfect.substring(0, perfect.length - 2) + 'ī sītis');
    subdep.add(perfect + ' sit');
    subdep.add(perfect.substring(0, perfect.length - 2) + 'ī sint');
    subdep.add(perfect + ' essem');
    subdep.add(perfect.substring(0, perfect.length - 2) + 'ī essēmus');
    subdep.add(perfect + ' essēs');
    subdep.add(perfect.substring(0, perfect.length - 2) + 'ī essētis');
    subdep.add(perfect + ' esset');
    subdep.add(perfect.substring(0, perfect.length - 2) + 'ī essent');
  }
  return subdep;
}

List<String> subjunctiveverb(
  String present,
  String infi,
  String perfect,
  String passPerfect,
  int tive,
) {
  if (tive == 1) {
    List<String> sa = [];
    if (infi.endsWith('āre')) {
      sa.add(infi.substring(0, infi.length - 3) + 'em');
      sa.add(present.substring(0, present.length - 1) + 'ēmus');
      sa.add(present.substring(0, present.length - 1) + 'ēs');
      sa.add(present.substring(0, present.length - 1) + 'ētis');
      sa.add(present.substring(0, present.length - 1) + 'et');
      sa.add(present.substring(0, present.length - 1) + 'ent');
      sa.add(infi + 'm');
      sa.add(infi.substring(0, infi.length - 1) + 'ēmus');
      sa.add(infi.substring(0, infi.length - 1) + 'ēs');
      sa.add(infi.substring(0, infi.length - 1) + 'ētis');
      sa.add(infi + 't');
      sa.add(infi + 'nt');
      sa.add(perfect.substring(0, perfect.length - 1) + 'erim');
      sa.add(perfect.substring(0, perfect.length - 1) + 'erimus');
      sa.add(perfect.substring(0, perfect.length - 1) + 'eris');
      sa.add(perfect.substring(0, perfect.length - 1) + 'eritis');
      sa.add(perfect.substring(0, perfect.length - 1) + 'erit');
      sa.add(perfect.substring(0, perfect.length - 1) + 'erint');
      sa.add(perfect.substring(0, perfect.length - 1) + 'issem');
      sa.add(perfect.substring(0, perfect.length - 1) + 'issēmus');
      sa.add(perfect.substring(0, perfect.length - 1) + 'issēs');
      sa.add(perfect.substring(0, perfect.length - 1) + 'issētis');
      sa.add(perfect.substring(0, perfect.length - 1) + 'isset');
      sa.add(perfect.substring(0, perfect.length - 1) + 'issent');
    } else if (infi.endsWith('ēre')) {
      sa.add(infi.substring(0, infi.length - 3) + 'eam');
      sa.add(present.substring(0, present.length - 2) + 'eāmus');
      sa.add(present.substring(0, present.length - 2) + 'eās');
      sa.add(present.substring(0, present.length - 2) + 'eātis');
      sa.add(present.substring(0, present.length - 2) + 'eat');
      sa.add(present.substring(0, present.length - 2) + 'eant');
      sa.add(infi + 'm');
      sa.add(infi.substring(0, infi.length - 1) + 'ēmus');
      sa.add(infi.substring(0, infi.length - 1) + 'ēs');
      sa.add(infi.substring(0, infi.length - 1) + 'ētis');
      sa.add(infi + 't');
      sa.add(infi + 'nt');
      sa.add(perfect.substring(0, perfect.length - 1) + 'erim');
      sa.add(perfect.substring(0, perfect.length - 1) + 'erimus');
      sa.add(perfect.substring(0, perfect.length - 1) + 'eris');
      sa.add(perfect.substring(0, perfect.length - 1) + 'eritis');
      sa.add(perfect.substring(0, perfect.length - 1) + 'erit');
      sa.add(perfect.substring(0, perfect.length - 1) + 'erint');
      sa.add(perfect.substring(0, perfect.length - 1) + 'issem');
      sa.add(perfect.substring(0, perfect.length - 1) + 'issēmus');
      sa.add(perfect.substring(0, perfect.length - 1) + 'issēs');
      sa.add(perfect.substring(0, perfect.length - 1) + 'issētis');
      sa.add(perfect.substring(0, perfect.length - 1) + 'isset');
      sa.add(perfect.substring(0, perfect.length - 1) + 'issent');
    } else if (infi.endsWith('ere')) {
      sa.add(present.substring(0, present.length - 1) + 'am');
      sa.add(present.substring(0, present.length - 1) + 'āmus');
      sa.add(present.substring(0, present.length - 1) + 'ās');
      sa.add(present.substring(0, present.length - 1) + 'ātis');
      sa.add(present.substring(0, present.length - 1) + 'at');
      sa.add(present.substring(0, present.length - 1) + 'ant');
      sa.add(infi + 'm');
      sa.add(infi.substring(0, infi.length - 1) + 'ēmus');
      sa.add(infi.substring(0, infi.length - 1) + 'ēs');
      sa.add(infi.substring(0, infi.length - 1) + 'ētis');
      sa.add(infi + 't');
      sa.add(infi + 'nt');
      sa.add(perfect.substring(0, perfect.length - 1) + 'erim');
      sa.add(perfect.substring(0, perfect.length - 1) + 'erimus');
      sa.add(perfect.substring(0, perfect.length - 1) + 'eris');
      sa.add(perfect.substring(0, perfect.length - 1) + 'eritis');
      sa.add(perfect.substring(0, perfect.length - 1) + 'erit');
      sa.add(perfect.substring(0, perfect.length - 1) + 'erint');
      sa.add(perfect.substring(0, perfect.length - 1) + 'issem');
      sa.add(perfect.substring(0, perfect.length - 1) + 'issēmus');
      sa.add(perfect.substring(0, perfect.length - 1) + 'issēs');
      sa.add(perfect.substring(0, perfect.length - 1) + 'issētis');
      sa.add(perfect.substring(0, perfect.length - 1) + 'isset');
      sa.add(perfect.substring(0, perfect.length - 1) + 'issent');
    } else if (infi.endsWith('īre')) {
      sa.add(present.substring(0, present.length - 1) + 'am');
      sa.add(present.substring(0, present.length - 1) + 'āmus');
      sa.add(present.substring(0, present.length - 1) + 'ās');
      sa.add(present.substring(0, present.length - 1) + 'ātis');
      sa.add(present.substring(0, present.length - 1) + 'at');
      sa.add(present.substring(0, present.length - 1) + 'ant');
      sa.add(infi + 'm');
      sa.add(infi.substring(0, infi.length - 1) + 'ēmus');
      sa.add(infi.substring(0, infi.length - 1) + 'ēs');
      sa.add(infi.substring(0, infi.length - 1) + 'ētis');
      sa.add(infi + 't');
      sa.add(infi + 'nt');
      sa.add(perfect.substring(0, perfect.length - 1) + 'erim');
      sa.add(perfect.substring(0, perfect.length - 1) + 'erimus');
      sa.add(perfect.substring(0, perfect.length - 1) + 'eris');
      sa.add(perfect.substring(0, perfect.length - 1) + 'eritis');
      sa.add(perfect.substring(0, perfect.length - 1) + 'erit');
      sa.add(perfect.substring(0, perfect.length - 1) + 'erint');
      sa.add(perfect.substring(0, perfect.length - 1) + 'issem');
      sa.add(perfect.substring(0, perfect.length - 1) + 'issēmus');
      sa.add(perfect.substring(0, perfect.length - 1) + 'issēs');
      sa.add(perfect.substring(0, perfect.length - 1) + 'issētis');
      sa.add(perfect.substring(0, perfect.length - 1) + 'isset');
      sa.add(perfect.substring(0, perfect.length - 1) + 'issent');
    }
    return sa;
  } else {
    List<String> sp = [];
    if (infi.endsWith('āre')) {
      sp.add(infi.substring(0, infi.length - 3) + 'er');
      sp.add(present.substring(0, present.length - 1) + 'ēmur');
      sp.add(present.substring(0, present.length - 1) + 'ēris');
      sp.add(present.substring(0, present.length - 1) + 'ēminī');
      sp.add(present.substring(0, present.length - 1) + 'ētur');
      sp.add(present.substring(0, present.length - 1) + 'entur');
      sp.add(infi + 'r');
      sp.add(infi.substring(0, infi.length - 1) + 'ēmur');
      sp.add(infi.substring(0, infi.length - 1) + 'ēris');
      sp.add(infi.substring(0, infi.length - 1) + 'ēminī');
      sp.add(infi.substring(0, infi.length - 1) + 'ētur');
      sp.add(infi + 'ntur');
      sp.add(passPerfect + ' sim');
      sp.add(passPerfect.substring(0, passPerfect.length - 2) + 'ī sīmus');
      sp.add(passPerfect + ' sīs');
      sp.add(passPerfect.substring(0, passPerfect.length - 2) + 'ī sītis');
      sp.add(passPerfect + ' sit');
      sp.add(passPerfect.substring(0, passPerfect.length - 2) + 'ī sint');
      sp.add(passPerfect + ' essem');
      sp.add(passPerfect.substring(0, passPerfect.length - 2) + 'ī essēmus');
      sp.add(passPerfect + ' essēs');
      sp.add(passPerfect.substring(0, passPerfect.length - 2) + 'ī essētis');
      sp.add(passPerfect + ' esset');
      sp.add(passPerfect.substring(0, passPerfect.length - 2) + 'ī essent');
    } else if (infi.endsWith('ēre')) {
      sp.add(infi.substring(0, infi.length - 3) + 'ear');
      sp.add(present.substring(0, present.length - 2) + 'eāmur');
      sp.add(present.substring(0, present.length - 2) + 'eāris');
      sp.add(present.substring(0, present.length - 2) + 'eāminī');
      sp.add(present.substring(0, present.length - 2) + 'eātur');
      sp.add(present.substring(0, present.length - 2) + 'eantur');
      sp.add(infi + 'r');
      sp.add(infi.substring(0, infi.length - 1) + 'ēmur');
      sp.add(infi.substring(0, infi.length - 1) + 'ēris');
      sp.add(infi.substring(0, infi.length - 1) + 'ēminī');
      sp.add(infi.substring(0, infi.length - 1) + 'ētur');
      sp.add(infi + 'ntur');
      sp.add(passPerfect + ' sim');
      sp.add(passPerfect.substring(0, passPerfect.length - 2) + 'ī sīmus');
      sp.add(passPerfect + ' sīs');
      sp.add(passPerfect.substring(0, passPerfect.length - 2) + 'ī sītis');
      sp.add(passPerfect + ' sit');
      sp.add(passPerfect.substring(0, passPerfect.length - 2) + 'ī sint');
      sp.add(passPerfect + ' essem');
      sp.add(passPerfect.substring(0, passPerfect.length - 2) + 'ī essēmus');
      sp.add(passPerfect + ' essēs');
      sp.add(passPerfect.substring(0, passPerfect.length - 2) + 'ī essētis');
      sp.add(passPerfect + ' esset');
      sp.add(passPerfect.substring(0, passPerfect.length - 2) + 'ī essent');
    } else if (infi.endsWith('ere')) {
      sp.add(present.substring(0, present.length - 1) + 'ar');
      sp.add(present.substring(0, present.length - 1) + 'āmur');
      sp.add(present.substring(0, present.length - 1) + 'āris');
      sp.add(present.substring(0, present.length - 1) + 'āminī');
      sp.add(present.substring(0, present.length - 1) + 'ātur');
      sp.add(present.substring(0, present.length - 1) + 'antur');
      sp.add(infi + 'r');
      sp.add(infi.substring(0, infi.length - 1) + 'ēmur');
      sp.add(infi.substring(0, infi.length - 1) + 'ēris');
      sp.add(infi.substring(0, infi.length - 1) + 'ēminī');
      sp.add(infi.substring(0, infi.length - 1) + 'ētur');
      sp.add(infi + 'ntur');
      sp.add(passPerfect + ' sim');
      sp.add(passPerfect.substring(0, passPerfect.length - 2) + 'ī sīmus');
      sp.add(passPerfect + ' sīs');
      sp.add(passPerfect.substring(0, passPerfect.length - 2) + 'ī sītis');
      sp.add(passPerfect + ' sit');
      sp.add(passPerfect.substring(0, passPerfect.length - 2) + 'ī sint');
      sp.add(passPerfect + ' essem');
      sp.add(passPerfect.substring(0, passPerfect.length - 2) + 'ī essēmus');
      sp.add(passPerfect + ' essēs');
      sp.add(passPerfect.substring(0, passPerfect.length - 2) + 'ī essētis');
      sp.add(passPerfect + ' esset');
      sp.add(passPerfect.substring(0, passPerfect.length - 2) + 'ī essent');
    } else if (infi.endsWith('īre')) {
      sp.add(present.substring(0, present.length - 1) + 'ar');
      sp.add(present.substring(0, present.length - 1) + 'āmur');
      sp.add(present.substring(0, present.length - 1) + 'āris');
      sp.add(present.substring(0, present.length - 1) + 'āminī');
      sp.add(present.substring(0, present.length - 1) + 'atur');
      sp.add(present.substring(0, present.length - 1) + 'antur');
      sp.add(infi + 'r');
      sp.add(infi.substring(0, infi.length - 1) + 'ēmur');
      sp.add(infi.substring(0, infi.length - 1) + 'ēris');
      sp.add(infi.substring(0, infi.length - 1) + 'ēminī');
      sp.add(infi.substring(0, infi.length - 1) + 'ētur');
      sp.add(infi + 'ntur');
      sp.add(passPerfect + ' sim');
      sp.add(passPerfect.substring(0, passPerfect.length - 2) + 'ī sīmus');
      sp.add(passPerfect + ' sīs');
      sp.add(passPerfect.substring(0, passPerfect.length - 2) + 'ī sītis');
      sp.add(passPerfect + ' sit');
      sp.add(passPerfect.substring(0, passPerfect.length - 2) + 'ī sint');
      sp.add(passPerfect + ' essem');
      sp.add(passPerfect.substring(0, passPerfect.length - 2) + 'ī essēmus');
      sp.add(passPerfect + ' essēs');
      sp.add(passPerfect.substring(0, passPerfect.length - 2) + 'ī essētis');
      sp.add(passPerfect + ' esset');
      sp.add(passPerfect.substring(0, passPerfect.length - 2) + 'ī essent');
    }
    return sp;
  }
}

List<String>? mdecladjective(
  String nom,
  String geni,
) {
  List<String> forms = [];

  // Check if the word ends in 'e'
  bool endsInE = nom.endsWith('e') || geni.endsWith('e');

  // Base of the word (derived from the genitive form)
  String base = geni.substring(0, geni.length - 2);

  if (endsInE) {
    // Base of the word (without the last character)
    String baseE = nom.substring(0, nom.length - 1);

    // Third declension masculine/feminine with -e ending
    forms.add(nom); // Nominative Singular
    forms.add(geni + 's'); // Nominative Plural
    forms.add(nom); // Genitive Singular
    forms.add(baseE + 'um'); // Genitive Plural
    forms.add(baseE); // Dative Singular
    forms.add(baseE + 'bus'); // Dative Plural
    forms.add(nom.substring(0, nom.length - 2) + 'em'); // Accusative Singular
    forms.add(nom.substring(0, nom.length - 2) + 'es'); // Accusative Plural
    forms.add(baseE); // Ablative Singular
    forms.add(baseE + 'bus'); // Ablative Plural

    // Third declension neuter with -e ending
    forms.add(geni); // Nominative Singular
    forms.add(baseE + 'a'); // Nominative Plural
    forms.add(nom); // Genitive Singular
    forms.add(baseE + 'um'); // Genitive Plural
    forms.add(baseE); // Dative Singular
    forms.add(baseE + 'bus'); // Dative Plural
    forms.add(geni); // Accusative Singular
    forms.add(baseE + 'a'); // Accusative Plural
    forms.add(baseE); // Ablative Singular
    forms.add(baseE + 'bus'); // Ablative Plural
  } else {
    // Third declension masculine/feminine
    forms.add(nom); // Nominative Singular
    forms.add(base + 'ēs'); // Nominative Plural
    forms.add(geni); // Genitive Singular
    forms.add(base + 'ium'); // Genitive Plural
    forms.add(base + 'ī'); // Dative Singular
    forms.add(base + 'ibus'); // Dative Plural
    forms.add(base + 'em'); // Accusative Singular
    forms.add(base + 'ēs'); // Accusative Plural
    forms.add(base + 'i'); // Ablative Singular
    forms.add(base + 'ibus'); // Ablative Plural

    // Third declension neuter
    forms.add(nom); // Nominative Singular
    forms.add(base + 'ia'); // Nominative Plural
    forms.add(geni); // Genitive Singular
    forms.add(base + 'ium'); // Genitive Plural
    forms.add(base + 'ī'); // Dative Singular
    forms.add(base + 'ibus'); // Dative Plural
    forms.add(nom); // Accusative Singular
    forms.add(base + 'ia'); // Accusative Plural
    forms.add(base + 'i'); // Ablative Singular
    forms.add(base + 'ibus'); // Ablative Plural
  }

  return forms;
}

List<String>? aodeclaadjective(
  String masc,
  String fem,
  String neu,
) {
  List<String> aoForms = [];

  // Masculine - Second Declension
  String mascBase = masc.substring(0, masc.length - 1);
  aoForms.addAll([
    masc, // Nominative Singular
    mascBase + 'ī', // Nominative Plural
    mascBase + 'ī', // Genitive Singular
    mascBase + 'ōrum', // Genitive Plural
    mascBase + 'ō', // Dative Singular
    mascBase + 'īs', // Dative Plural
    mascBase + 'um', // Accusative Singular
    mascBase + 'ōs', // Accusative Plural
    mascBase + 'ō', // Ablative Singular
    mascBase + 'īs' // Ablative Plural
  ]);

  // Feminine - First Declension
  String femBase = fem.substring(0, fem.length - 1);
  aoForms.addAll([
    fem, // Nominative Singular
    femBase + 'ae', // Nominative Plural
    femBase + 'ae', // Genitive Singular
    femBase + 'ārum', // Genitive Plural
    femBase + 'ae', // Dative Singular
    femBase + 'īs', // Dative Plural
    femBase + 'am', // Accusative Singular
    femBase + 'ās', // Accusative Plural
    femBase + 'ā', // Ablative Singular
    femBase + 'īs' // Ablative Plural
  ]);

  // Neuter - Second Declension
  String neuBase = neu.substring(0, neu.length - 2);
  aoForms.addAll([
    neu, // Nominative Singular
    neuBase + 'a', // Nominative Plural
    neuBase + 'ī', // Genitive Singular
    neuBase + 'ōrum', // Genitive Plural
    neuBase + 'ō', // Dative Singular
    neuBase + 'īs', // Dative Plural
    neuBase + 'um', // Accusative Singular
    neuBase + 'a', // Accusative Plural
    neuBase + 'ō', // Ablative Singular
    neuBase + 'īs' // Ablative Plural
  ]);

  return aoForms;

  // Generate and return the list of forms
}

List<String> nounsfinal(
  String wordxx,
  String genitivexx,
  String genderxx,
) {
  wordxx = wordxx.toLowerCase().trim();
  genitivexx = genitivexx.toLowerCase().trim();
  genderxx = genderxx.toLowerCase().trim();

  String nomplur = '';
  String genplu = '';
  String datsing = '';
  String datplu = '';
  String ablsing = '';
  String ablplu = '';
  String accsing = '';
  String accplur = '';

// Nominative Plural
  if (wordxx.endsWith('ēs') && genitivexx.endsWith('ēī')) {
    nomplur = wordxx.substring(0, wordxx.length - 2) + 'ēs';
  } else if (genitivexx.endsWith('ae')) {
    nomplur = wordxx.substring(0, wordxx.length - 1) + 'ae';
  } else if (genitivexx.endsWith('ī') && genderxx == 'n') {
    nomplur = wordxx.substring(0, wordxx.length - 2) + 'a';
  } else if (genitivexx.endsWith('ī')) {
    nomplur = genitivexx.substring(0, genitivexx.length - 1) +
        'ī'; //changed -2 and wordxx
  } else if (genitivexx.endsWith('is') && genderxx == 'n') {
    nomplur = genitivexx.substring(0, genitivexx.length - 2) + 'a';
  } else if (genitivexx.endsWith('is')) {
    nomplur = genitivexx.substring(0, genitivexx.length - 2) + 'ēs';
  } else if (genitivexx.endsWith('ūs') && wordxx.endsWith('us')) {
    nomplur = wordxx.substring(0, wordxx.length - 2) + 'ūs';
  } else if (genitivexx.endsWith('ūs') && wordxx.endsWith('ū')) {
    nomplur = genitivexx.substring(0, genitivexx.length - 2) + 'ua';
  }

  /// Genitive Plural
  if (wordxx.endsWith('ēs') && genitivexx.endsWith('ēī')) {
    genplu = genitivexx.substring(0, genitivexx.length - 2) + 'ērum';
  } else if (genitivexx.endsWith('ae')) {
    genplu = wordxx.substring(0, wordxx.length - 1) + 'ārum';
  } else if (genitivexx.endsWith('ī') && genderxx == 'n') {
    genplu = wordxx.substring(0, wordxx.length - 2) + 'ōrum';
  } else if (genitivexx.endsWith('ī')) {
    genplu = genitivexx.substring(0, genitivexx.length - 1) + 'ōrum';
  } else if (genitivexx.endsWith('is') && genderxx == 'n') {
    genplu = genitivexx.substring(0, genitivexx.length - 2) + 'um';
  } else if (genitivexx.endsWith('is')) {
    genplu = genitivexx.substring(0, genitivexx.length - 2) + 'um';
  } else if (genitivexx.endsWith('ūs') && wordxx.endsWith('us')) {
    genplu = genitivexx.substring(0, genitivexx.length - 2) + 'uum';
  } else if (genitivexx.endsWith('ūs') && wordxx.endsWith('ū')) {
    genplu = genitivexx.substring(0, genitivexx.length - 2) + 'uum';
  }

  /// Dative Singular
  if (wordxx.endsWith('ēs') && genitivexx.endsWith('ēī')) {
    datsing = genitivexx.substring(0, genitivexx.length - 2) + 'ēī';
  } else if (genitivexx.endsWith('ae')) {
    datsing = wordxx.substring(0, wordxx.length - 1) + 'ae';
  } else if (genitivexx.endsWith('ī') && genderxx == 'n') {
    datsing = wordxx.substring(0, wordxx.length - 2) + 'ō';
  } else if (genitivexx.endsWith('ī')) {
    datsing = genitivexx.substring(0, genitivexx.length - 1) + 'ō';
  } else if (genitivexx.endsWith('is') && genderxx == 'n') {
    datsing = genitivexx.substring(0, genitivexx.length - 2) + 'ī';
  } else if (genitivexx.endsWith('is')) {
    datsing = genitivexx.substring(0, genitivexx.length - 2) + 'ī';
  } else if (genitivexx.endsWith('ūs') && wordxx.endsWith('us')) {
    datsing = wordxx.substring(0, wordxx.length - 2) + 'uī';
  } else if (genitivexx.endsWith('ūs') && wordxx.endsWith('ū')) {
    datsing = genitivexx.substring(0, genitivexx.length - 2) + 'ū';
  }

  /// Dative Plural
  if (wordxx.endsWith('ēs') && genitivexx.endsWith('ēī')) {
    datplu = genitivexx.substring(0, genitivexx.length - 2) + 'ēbus';
  } else if (genitivexx.endsWith('ae')) {
    datplu = wordxx.substring(0, wordxx.length - 1) + 'īs';
  } else if (genitivexx.endsWith('ī') && genderxx == 'n') {
    datplu = wordxx.substring(0, wordxx.length - 2) + 'īs';
  } else if (genitivexx.endsWith('ī')) {
    datplu = genitivexx.substring(0, genitivexx.length - 1) + 'īs';
  } else if (genitivexx.endsWith('is') && genderxx == 'n') {
    datplu = genitivexx.substring(0, genitivexx.length - 2) + 'ibus';
  } else if (genitivexx.endsWith('is')) {
    datplu = genitivexx.substring(0, genitivexx.length - 2) + 'ibus';
  } else if (genitivexx.endsWith('ūs') && wordxx.endsWith('us')) {
    datplu = wordxx.substring(0, wordxx.length - 2) + 'ibus';
  } else if (genitivexx.endsWith('ūs') && wordxx.endsWith('ū')) {
    datplu = genitivexx.substring(0, genitivexx.length - 2) + 'ibus';
  }

  /// Ablative Singular
  if (wordxx.endsWith('ēs') && genitivexx.endsWith('ēī')) {
    ablsing = genitivexx.substring(0, genitivexx.length - 2) + 'ē';
  } else if (genitivexx.endsWith('ae')) {
    ablsing = wordxx.substring(0, wordxx.length - 1) + 'ā';
  } else if (genitivexx.endsWith('ī') && genderxx == 'n') {
    ablsing = wordxx.substring(0, wordxx.length - 2) + 'ō';
  } else if (genitivexx.endsWith('ī')) {
    ablsing = genitivexx.substring(0, genitivexx.length - 1) + 'ō';
  } else if (genitivexx.endsWith('is') && genderxx == 'n') {
    ablsing = genitivexx.substring(0, genitivexx.length - 2) + 'e';
  } else if (genitivexx.endsWith('is')) {
    ablsing = genitivexx.substring(0, genitivexx.length - 2) + 'e';
  } else if (genitivexx.endsWith('ūs') && wordxx.endsWith('us')) {
    ablsing = wordxx.substring(0, wordxx.length - 2) + 'ū';
  } else if (genitivexx.endsWith('ūs') && wordxx.endsWith('ū')) {
    ablsing = genitivexx.substring(0, genitivexx.length - 2) + 'ū';
  }

  /// Ablative Plural
  if (wordxx.endsWith('ēs') && genitivexx.endsWith('ēī')) {
    ablplu = genitivexx.substring(0, genitivexx.length - 2) + 'ēbus';
  } else if (genitivexx.endsWith('ae')) {
    ablplu = wordxx.substring(0, wordxx.length - 1) + 'īs';
  } else if (genitivexx.endsWith('ī') && genderxx == 'n') {
    ablplu = wordxx.substring(0, wordxx.length - 2) + 'īs';
  } else if (genitivexx.endsWith('ī')) {
    ablplu = genitivexx.substring(0, genitivexx.length - 1) + 'īs';
  } else if (genitivexx.endsWith('is') && genderxx == 'n') {
    ablplu = genitivexx.substring(0, genitivexx.length - 2) + 'ibus';
  } else if (genitivexx.endsWith('is')) {
    ablplu = genitivexx.substring(0, genitivexx.length - 2) + 'ibus';
  } else if (genitivexx.endsWith('ūs') && wordxx.endsWith('us')) {
    ablplu = wordxx.substring(0, wordxx.length - 2) + 'ibus';
  } else if (genitivexx.endsWith('ūs') && wordxx.endsWith('ū')) {
    ablplu = genitivexx.substring(0, genitivexx.length - 2) + 'ibus';
  }

  /// Accusative Singular
  if (wordxx.endsWith('ēs') && genitivexx.endsWith('ēī')) {
    accsing = wordxx.substring(0, wordxx.length - 2) + 'em';
  } else if (genitivexx.endsWith('ae')) {
    accsing = wordxx.substring(0, wordxx.length - 1) + 'am';
  } else if (genitivexx.endsWith('ī') && genderxx == 'n') {
    accsing = wordxx;
  } else if (genitivexx.endsWith('ī')) {
    accsing =
        genitivexx.substring(0, genitivexx.length - 1) + 'um'; //wordxx and -2
  } else if (genitivexx.endsWith('is') && genderxx == 'n') {
    accsing = wordxx;
  } else if (genitivexx.endsWith('is')) {
    accsing = genitivexx.substring(0, genitivexx.length - 2) + 'em';
  } else if (genitivexx.endsWith('ūs') && wordxx.endsWith('us')) {
    accsing = wordxx.substring(0, wordxx.length - 2) + 'um';
  } else if (genitivexx.endsWith('ūs') && wordxx.endsWith('ū')) {
    accsing = wordxx;
  }

  /// Accusative Plural
  if (wordxx.endsWith('ēs') && genitivexx.endsWith('ēī')) {
    accplur = wordxx;
  } else if (genitivexx.endsWith('ae')) {
    accplur = wordxx.substring(0, wordxx.length - 1) + 'ās';
  } else if (genitivexx.endsWith('ī') && genderxx == 'n') {
    accplur = wordxx.substring(0, wordxx.length - 2) + 'a';
  } else if (genitivexx.endsWith('ī')) {
    accplur = genitivexx.substring(0, genitivexx.length - 1) + 'ōs'; //change
  } else if (genitivexx.endsWith('is') && genderxx == 'n') {
    accplur = genitivexx.substring(0, genitivexx.length - 2) + 'a';
  } else if (genitivexx.endsWith('is')) {
    accplur = genitivexx.substring(0, genitivexx.length - 2) + 'ēs';
  } else if (genitivexx.endsWith('ūs') && wordxx.endsWith('us')) {
    accplur = wordxx.substring(0, wordxx.length - 2) + 'ūs';
  } else if (genitivexx.endsWith('ūs') && wordxx.endsWith('ū')) {
    accplur = genitivexx.substring(0, genitivexx.length - 2) + 'ua';
  }

  return [nomplur, genplu, datsing, datplu, accsing, accplur, ablsing, ablplu];
}

int misc1(
  int nountype,
  int qn,
) {
  // takes number, returns numebr-1
  return (nountype * 3) + (qn - 1);
}

List<int> misc2(int qn) {
  // used to get 3 indexes within same noun questions
  // Calculate the start index of the group (3 items per group)
  //both for irreg and reg
  int startIndex = (qn ~/ 3) * 3;

  // Return the list of the 3 indexes in the group
  return [startIndex, startIndex + 1, startIndex + 2];
}

int misc3(int decltp) {
  return decltp + 1;
}

List<String> indicativeverbsfinal(
  String? present,
  String? infi,
  String? perfect,
  String? passperfect,
  int? actpass,
  int? type,
) {
  List<String> indicativeverb = [];

  if (actpass == 0) {
    // Active Voice
    if (infi!.endsWith('āre')) {
      // First Conjugation
      if (type == 0) {
        // Present
        indicativeverb.add(present!);
        indicativeverb.add(present.substring(0, present.length - 1) + 'āmus');
        indicativeverb.add(present.substring(0, present.length - 1) + 'ās');
        indicativeverb.add(present.substring(0, present.length - 1) + 'ātis');
        indicativeverb.add(present.substring(0, present.length - 1) + 'at');
        indicativeverb.add(present.substring(0, present.length - 1) + 'ant');
      } else if (type == 1) {
        // Perfect
        indicativeverb.add(perfect!);
        indicativeverb.add(perfect.substring(0, perfect.length - 1) + 'imus');
        indicativeverb.add(perfect.substring(0, perfect.length - 1) + 'istī');
        indicativeverb.add(perfect.substring(0, perfect.length - 1) + 'istis');
        indicativeverb.add(perfect.substring(0, perfect.length - 1) + 'it');
        indicativeverb.add(perfect.substring(0, perfect.length - 1) + 'ērunt');
      } else if (type == 2) {
        // Future
        indicativeverb.add(infi.substring(0, infi.length - 2) + 'bō');
        indicativeverb.add(infi.substring(0, infi.length - 2) + 'bimus');
        indicativeverb.add(infi.substring(0, infi.length - 2) + 'bis');
        indicativeverb.add(infi.substring(0, infi.length - 2) + 'bitis');
        indicativeverb.add(infi.substring(0, infi.length - 2) + 'bit');
        indicativeverb.add(infi.substring(0, infi.length - 2) + 'bunt');
      }
    } else if (infi.endsWith('ēre')) {
      // Second Conjugation
      if (type == 0) {
        indicativeverb.add(present!);
        indicativeverb.add(present.substring(0, present.length - 2) + 'ēmus');
        indicativeverb.add(present.substring(0, present.length - 2) + 'ēs');
        indicativeverb.add(present.substring(0, present.length - 2) + 'ētis');
        indicativeverb.add(present.substring(0, present.length - 1) + 't');
        indicativeverb.add(present.substring(0, present.length - 1) + 'nt');
      } else if (type == 1) {
        indicativeverb.add(perfect!);
        indicativeverb.add(perfect.substring(0, perfect.length - 1) + 'imus');
        indicativeverb.add(perfect.substring(0, perfect.length - 1) + 'istī');
        indicativeverb.add(perfect.substring(0, perfect.length - 1) + 'istis');
        indicativeverb.add(perfect.substring(0, perfect.length - 1) + 'it');
        indicativeverb.add(perfect.substring(0, perfect.length - 1) + 'ērunt');
      } else if (type == 2) {
        indicativeverb.add(infi.substring(0, infi.length - 2) + 'bō');
        indicativeverb.add(infi.substring(0, infi.length - 2) + 'bimus');
        indicativeverb.add(infi.substring(0, infi.length - 2) + 'bis');
        indicativeverb.add(infi.substring(0, infi.length - 2) + 'bitis');
        indicativeverb.add(infi.substring(0, infi.length - 2) + 'bit');
        indicativeverb.add(infi.substring(0, infi.length - 2) + 'bunt');
      }
    } else if (infi.endsWith('ere')) {
      // Third Conjugation
      if (type == 0) {
        indicativeverb.add(present!);
        indicativeverb.add(infi.substring(0, infi.length - 3) + 'imus');
        indicativeverb.add(infi.substring(0, infi.length - 3) + 'is');
        indicativeverb.add(infi.substring(0, infi.length - 3) + 'itis');
        indicativeverb.add(infi.substring(0, infi.length - 3) + 'it');
        indicativeverb.add(present.substring(0, present.length - 1) + 'unt');
      } else if (type == 1) {
        indicativeverb.add(perfect!);
        indicativeverb.add(perfect.substring(0, perfect.length - 1) + 'imus');
        indicativeverb.add(perfect.substring(0, perfect.length - 1) + 'istī');
        indicativeverb.add(perfect.substring(0, perfect.length - 1) + 'istis');
        indicativeverb.add(perfect.substring(0, perfect.length - 1) + 'it');
        indicativeverb.add(perfect.substring(0, perfect.length - 1) + 'ērunt');
      } else if (type == 2) {
        indicativeverb.add(present!.substring(0, present.length - 1) + 'am');
        indicativeverb.add(present.substring(0, present.length - 1) + 'ēmus');
        indicativeverb.add(present.substring(0, present.length - 1) + 'ēs');
        indicativeverb.add(present.substring(0, present.length - 1) + 'ētis');
        indicativeverb.add(present.substring(0, present.length - 1) + 'et');
        indicativeverb.add(present.substring(0, present.length - 1) + 'ent');
      }
    } else if (infi.endsWith('īre')) {
      // Fourth Conjugation
      if (type == 0) {
        indicativeverb.add(present!);
        indicativeverb.add(present.substring(0, present.length - 2) + 'īmus');
        indicativeverb.add(present.substring(0, present.length - 2) + 'īs');
        indicativeverb.add(present.substring(0, present.length - 2) + 'ītis');
        indicativeverb.add(present.substring(0, present.length - 1) + 't');
        indicativeverb.add(present.substring(0, present.length - 1) + 'unt');
      } else if (type == 1) {
        indicativeverb.add(perfect!);
        indicativeverb.add(perfect.substring(0, perfect.length - 1) + 'imus');
        indicativeverb.add(perfect.substring(0, perfect.length - 1) + 'istī');
        indicativeverb.add(perfect.substring(0, perfect.length - 1) + 'istis');
        indicativeverb.add(perfect.substring(0, perfect.length - 1) + 'it');
        indicativeverb.add(perfect.substring(0, perfect.length - 1) + 'ērunt');
      } else if (type == 2) {
        indicativeverb.add(present!.substring(0, present.length - 1) + 'am');
        indicativeverb.add(present.substring(0, present.length - 1) + 'ēmus');
        indicativeverb.add(present.substring(0, present.length - 1) + 'ēs');
        indicativeverb.add(present.substring(0, present.length - 1) + 'ētis');
        indicativeverb.add(present.substring(0, present.length - 1) + 'et');
        indicativeverb.add(present.substring(0, present.length - 1) + 'ent');
      }
    }
  } else if (actpass == 1) {
    // Passive Voice
    if (infi!.endsWith('āre')) {
      // First Conjugation
      if (type == 0) {
        indicativeverb.add(infi.substring(0, infi.length - 3) + 'or');
        indicativeverb.add(infi.substring(0, infi.length - 2) + 'mur');
        indicativeverb.add(infi.substring(0, infi.length - 2) + 'ris');
        indicativeverb.add(infi.substring(0, infi.length - 2) + 'minī');
        indicativeverb.add(infi.substring(0, infi.length - 2) + 'tur');
        indicativeverb.add(infi.substring(0, infi.length - 2) + 'ntur');
      } else if (type == 1) {
        indicativeverb.add(passperfect! + ' sum');
        indicativeverb
            .add(passperfect.substring(0, passperfect.length - 2) + 'ī sumus');
        indicativeverb.add(passperfect + ' es');
        indicativeverb
            .add(passperfect.substring(0, passperfect.length - 2) + 'ī estis');
        indicativeverb.add(passperfect + ' est');
        indicativeverb
            .add(passperfect.substring(0, passperfect.length - 2) + 'ī sunt');
      } else if (type == 2) {
        indicativeverb.add(infi.substring(0, infi.length - 2) + 'bor');
        indicativeverb.add(infi.substring(0, infi.length - 2) + 'bimur');
        indicativeverb.add(infi.substring(0, infi.length - 2) + 'beris');
        indicativeverb.add(infi.substring(0, infi.length - 2) + 'biminī');
        indicativeverb.add(infi.substring(0, infi.length - 2) + 'bitur');
        indicativeverb.add(infi.substring(0, infi.length - 2) + 'buntur');
      }
    } else if (infi.endsWith('ēre')) {
      // Second Conjugation
      if (type == 0) {
        indicativeverb.add(infi.substring(0, infi.length - 3) + 'eor');
        indicativeverb.add(infi.substring(0, infi.length - 3) + 'ēmur');
        indicativeverb.add(infi.substring(0, infi.length - 3) + 'ēris');
        indicativeverb.add(infi.substring(0, infi.length - 3) + 'ēminī');
        indicativeverb.add(infi.substring(0, infi.length - 3) + 'ētur');
        indicativeverb.add(infi.substring(0, infi.length - 2) + 'ntur');
      } else if (type == 1) {
        indicativeverb.add(passperfect! + ' sum');
        indicativeverb
            .add(passperfect.substring(0, passperfect.length - 2) + 'ī sumus');
        indicativeverb.add(passperfect + ' es');
        indicativeverb
            .add(passperfect.substring(0, passperfect.length - 2) + 'ī estis');
        indicativeverb.add(passperfect + ' est');
        indicativeverb
            .add(passperfect.substring(0, passperfect.length - 2) + 'ī sunt');
      } else if (type == 2) {
        indicativeverb.add(infi.substring(0, infi.length - 2) + 'bor');
        indicativeverb.add(infi.substring(0, infi.length - 2) + 'bimur');
        indicativeverb.add(infi.substring(0, infi.length - 2) + 'beris');
        indicativeverb.add(infi.substring(0, infi.length - 2) + 'biminī');
        indicativeverb.add(infi.substring(0, infi.length - 2) + 'bitur');
        indicativeverb.add(infi.substring(0, infi.length - 2) + 'buntur');
      }
    } else if (infi.endsWith('ere')) {
      // Third Conjugation
      if (type == 0) {
        indicativeverb.add(present!.substring(0, present.length - 1) + 'or');
        indicativeverb.add(infi.substring(0, infi.length - 3) + 'imur');
        indicativeverb.add(present.substring(0, present.length - 1) + 'eris');
        indicativeverb.add(infi.substring(0, infi.length - 3) + 'iminī');
        indicativeverb.add(infi.substring(0, infi.length - 3) + 'itur');
        indicativeverb.add(present.substring(0, present.length - 1) + 'untur');
      } else if (type == 1) {
        indicativeverb.add(passperfect! + ' sum');
        indicativeverb
            .add(passperfect.substring(0, passperfect.length - 2) + 'ī sumus');
        indicativeverb.add(passperfect + ' es');
        indicativeverb
            .add(passperfect.substring(0, passperfect.length - 2) + 'ī estis');
        indicativeverb.add(passperfect + ' est');
        indicativeverb
            .add(passperfect.substring(0, passperfect.length - 2) + 'ī sunt');
      } else if (type == 2) {
        indicativeverb.add(present!.substring(0, present.length - 1) + 'ar');
        indicativeverb.add(present.substring(0, present.length - 1) + 'ēmur');
        indicativeverb.add(present.substring(0, present.length - 1) + 'ēris');
        indicativeverb.add(present.substring(0, present.length - 1) + 'ēminī');
        indicativeverb.add(present.substring(0, present.length - 1) + 'ētur');
        indicativeverb.add(present.substring(0, present.length - 1) + 'entur');
      }
    } else if (infi.endsWith('īre')) {
      // Fourth Conjugation
      if (type == 0) {
        indicativeverb.add(infi.substring(0, infi.length - 3) + 'ior');
        indicativeverb.add(infi.substring(0, infi.length - 3) + 'īmur');
        indicativeverb.add(infi.substring(0, infi.length - 3) + 'īris');
        indicativeverb.add(infi.substring(0, infi.length - 3) + 'īminī');
        indicativeverb.add(infi.substring(0, infi.length - 3) + 'ītur');
        indicativeverb.add(infi.substring(0, infi.length - 3) + 'iuntur');
      } else if (type == 1) {
        indicativeverb.add(passperfect! + ' sum');
        indicativeverb
            .add(passperfect.substring(0, passperfect.length - 2) + 'ī sumus');
        indicativeverb.add(passperfect + ' es');
        indicativeverb
            .add(passperfect.substring(0, passperfect.length - 2) + 'ī estis');
        indicativeverb.add(passperfect + ' est');
        indicativeverb
            .add(passperfect.substring(0, passperfect.length - 2) + 'ī sunt');
      } else if (type == 2) {
        indicativeverb.add(infi.substring(0, infi.length - 3) + 'iar');
        indicativeverb.add(infi.substring(0, infi.length - 3) + 'iēmur');
        indicativeverb.add(infi.substring(0, infi.length - 3) + 'iēris');
        indicativeverb.add(infi.substring(0, infi.length - 3) + 'iēminī');
        indicativeverb.add(infi.substring(0, infi.length - 3) + 'iētur');
        indicativeverb.add(infi.substring(0, infi.length - 3) + 'ientur');
      }
    }
  }
  return indicativeverb;
}

List<String>? irregverbsexc(
  String? present,
  String? infi,
  String? perfect,
  int type,
) {
  ///  infi = infi?.trim().toLowerCase();
  ///present = present?.trim();
  ///perfect = perfect?.trim();

  List<String> indicativePresent = [];
  List<String> indicativeFuture = [];
  List<String> indicativePerfect = [];

  if (infi != null && infi.endsWith('esse')) {
    String firstPresentSingA =
        present!.substring(0, present.length - 3) + 'sum'; // I
    String firstPresentPluA =
        present.substring(0, present.length - 3) + 'sumus'; // We
    String secondPresentSingA =
        present.substring(0, present.length - 3) + 'es'; // You
    String secondPresentPluA =
        present.substring(0, present.length - 3) + 'estis'; // You (pl.)
    String thirdPresentSingA =
        present.substring(0, present.length - 3) + 'est'; // He/She/It
    String thirdPresentPluA =
        present.substring(0, present.length - 3) + 'sunt'; // They

    String firstFutureSingA = infi.substring(0, infi.length - 4) + 'erō';
    String firstFuturePluA = infi.substring(0, infi.length - 4) + 'erimus';
    String secondFutureSingA = infi.substring(0, infi.length - 4) + 'eris';
    String secondFuturePluA = infi.substring(0, infi.length - 4) + 'eritis';
    String thirdFutureSingA = infi.substring(0, infi.length - 4) + 'erit';
    String thirdFuturePluA = infi.substring(0, infi.length - 4) + 'erunt';

    String firstPerfectSingA = perfect!;
    String firstPerfectPluA = perfect.substring(0, perfect.length - 1) + 'imus';
    String secondPerfectSingA =
        perfect.substring(0, perfect.length - 1) + 'istī';
    String secondPerfectPluA =
        perfect.substring(0, perfect.length - 1) + 'istis';
    String thirdPerfectSingA = perfect.substring(0, perfect.length - 1) + 'it';
    String thirdPerfectPluA =
        perfect.substring(0, perfect.length - 1) + 'ērunt';

    indicativePresent.addAll([
      firstPresentSingA,
      firstPresentPluA,
      secondPresentSingA,
      secondPresentPluA,
      thirdPresentSingA,
      thirdPresentPluA
    ]);

    indicativeFuture.addAll([
      firstFutureSingA,
      firstFuturePluA,
      secondFutureSingA,
      secondFuturePluA,
      thirdFutureSingA,
      thirdFuturePluA
    ]);

    indicativePerfect.addAll([
      firstPerfectSingA,
      firstPerfectPluA,
      secondPerfectSingA,
      secondPerfectPluA,
      thirdPerfectSingA,
      thirdPerfectPluA
    ]);
  } else if (infi == 'velle') {
    indicativePresent.addAll([
      'volō', // I want
      'volumus', // We want
      'vīs', // You want
      'vultis', // You (pl.) want
      'vult', // He/She/It wants
      'volunt' // They want
    ]);

    indicativeFuture.addAll([
      'volam', // I will want
      'volēmus', // We will want
      'volēs', // You will want
      'volētis', // You (pl.) will want
      'volēt', // He/She/It will want
      'volent' // They will want
    ]);

    indicativePerfect.addAll([
      'voluī', // I wanted
      'voluimus', // We wanted
      'voluistī', // You wanted
      'voluistis', // You (pl.) wanted
      'voluit', // He/She/It wanted
      'voluērunt' // They wanted
    ]);
  } else if (infi == 'nolle') {
    indicativePresent.addAll([
      'nōlō', // I do not want
      'nōlumus', // We do not want
      'nōn vīs', // You do not want
      'nōn vultis', // You (pl.) do not want
      'nōn vult', // He/She/It does not want
      'nōlunt' // They do not want
    ]);

    indicativeFuture.addAll([
      'nōlam', // I will not want
      'nōlēmus', // We will not want
      'nōlēs', // You will not want
      'nōlētis', // You (pl.) will not want
      'nōlēt', // He/She/It will not want
      'nōlent' // They will not want
    ]);

    indicativePerfect.addAll([
      'nōluī', // I did not want
      'nōluimus', // We did not want
      'nōluistī', // You did not want
      'nōluistis', // You (pl.) did not want
      'nōluit', // He/She/It did not want
      'nōluērunt' // They did not want
    ]);
  } else if (infi == 'mālle') {
    indicativePresent.addAll([
      'mālō', // I prefer
      'mālumus', // We prefer
      'māvīs', // You prefer
      'māvultis', // You (pl.) prefer
      'māvult', // He/She/It prefers
      'mālunt' // They prefer
    ]);

    indicativeFuture.addAll([
      'mālam', // I will prefer
      'mālēmus', // We will prefer
      'mālēs', // You will prefer
      'mālētis', // You (pl.) will prefer
      'mālēt', // He/She/It will prefer
      'mālent' // They will prefer
    ]);

    indicativePerfect.addAll([
      'māluī', // I preferred
      'māluimus', // We preferred
      'māluistī', // You preferred
      'māluistis', // You (pl.) preferred
      'māluit', // He/She/It preferred
      'māluērunt' // They preferred
    ]);
  } else if (infi == 'īre') {
    indicativePresent.addAll([
      'eō', // I go
      'īmus', // We go
      'īs', // You go
      'ītis', // You (pl.) go
      'it', // He/She/It goes
      'eunt' // They go
    ]);

    indicativeFuture.addAll([
      'ībō', // I will go
      'ībimus', // We will go
      'ībis', // You will go
      'ībitis', // You (pl.) will go
      'ībit', // He/She/It will go
      'ībunt' // They will go
    ]);

    indicativePerfect.addAll([
      'īvī', // I went
      'īvimus', // We went
      'īvistī', // You went
      'īvistis', // You (pl.) went
      'īvit', // He/She/It went
      'īvērunt' // They went
    ]);
  }

  // Return based on type
  if (type == 0) {
    return indicativePresent; // Return present tense
  } else if (type == 1) {
    return indicativePerfect; // Return perfect tense
  } else if (type == 2) {
    return indicativeFuture; // Return future tense
  }

  return null;
}

int? misc4(
  int type,
  int qn,
) {
  return (type * 5) + (qn - 1);
}

List<int> misc5(
  int type,
  int qn,
) {
  int mis4op = (type * 5) + (qn - 1);

  int startIndex = (mis4op ~/ 5) * 5;

  return [
    startIndex,
    startIndex + 1,
    startIndex + 2,
    startIndex + 3,
    startIndex + 4
  ];
}

int regverbsmisc1(
  int conjugation,
  int actpass,
  int verbtype,
  int verbqn,
) {
  // List of 72 unique values in order (replace with actual values)
  int wordIndex =
      ((conjugation - 1) * 18) + (actpass * 9) + (verbtype * 3) + (verbqn - 1);

  // Return the word from the list
  return wordIndex;
}

int? regverbsmisc2(
  int qn,
  int outputtype,
) {
  // Each verb type contains 3 words, so dividing by 3 gives the verb type number
  /// op tupe 0 gives verbtype op type 1 gives acpass type and op type 2 gives decl
  if (outputtype == 0) {
    return qn ~/ 3;
  } else if (outputtype == 1) {
    return qn ~/ 9;
  } else if (outputtype == 2) {
    return qn ~/ 18;
  }
}

List<int>? regverbmisc3(
  int qn,
  int outputtype,
) {
  // Each verb type contains 3 words, so dividing by 3 gives the verb type number
  /// op tupe 0 gives verbtype op type 1 gives acpass type and op type 2 gives decl
  if (outputtype == 0) {
    int groupStart = (qn ~/ 3) * 3;
    return [groupStart, groupStart + 1, groupStart + 2];
  } else if (outputtype == 1) {
    int gs = (qn ~/ 9) * 3;
    return [gs, gs + 1, gs + 2];
  } else if (outputtype == 2) {
    int gs1 = (qn ~/ 18) * 2;
    return [gs1, gs1 + 1];
  }
}

int misc6(int decl) {
  return (decl * 2) - 1;
}

int misc7(
  int decl,
  int actpass,
  int verbtype,
) {
  ///for accessnig element in selceting page for the unlocking icons.

  int verbTypeIndex = ((decl - 1) * 6) + (actpass * 3) + verbtype;
  return verbTypeIndex;
}

List<String>? pronounsexc(
  String word,
  int gender,
) {
  // Declension forms for each pronoun with gender types and long vowels preserved
  switch (word.toLowerCase()) {
    // Personal pronouns (no gender)
    case 'ego':
      return [
        'ego', 'nōs', // nominative
        'meī', 'nostrum', // genitive
        'mihi', 'nōbīs', // dative
        'mē', 'nōs', // accusative
        'mē', 'nōbīs' // ablative
      ];

    case 'tu':
      return [
        'tū', 'vōs', // nominative
        'tuī', 'vestrum', // genitive
        'tibi', 'vōbīs', // dative
        'tē', 'vōs', // accusative
        'tē', 'vōbīs' // ablative
      ];

    // Personal pronoun forms without nominative
    case 'mei':
      return [
        '', '', // nominative (not used)
        'meī', 'nostrī', // genitive
        'mihi', 'nōbīs', // dative
        'mē', 'nōs', // accusative
        'mē', 'nōbīs' // ablative
      ];

    case 'tui':
      return [
        '', '', // nominative (not used)
        'tuī', 'vestrī', // genitive
        'tibi', 'vōbīs', // dative
        'tē', 'vōs', // accusative
        'tē', 'vōbīs' // ablative
      ];

    case 'sui':
      return [
        '', '', // nominative (not used)
        'suī', 'suī', // genitive
        'sibi', 'sibi', // dative
        'sē', 'sē', // accusative
        'sē', 'sē' // ablative
      ];

    case 'id':
      return [
        'id',
        'ea',
        'ēius',
        'eōrum',
        'eī',
        'eīs',
        'id',
        'ea',
        'eō',
        'eīs'
      ];

    case 'ea':
      return [
        'ea',
        'eae',
        'ēius',
        'eārum',
        'eī',
        'eīs',
        'eam',
        'eās',
        'eā',
        'eīs'
      ];

    // Demonstrative/determinative pronouns (with gender)
    case 'is':
      return [
        'is', 'eī', // nominative
        'ēius', 'eōrum', // genitive
        'ī', 'eīs', // dative
        'eum', 'eōs', // accusative
        'eō', 'eīs' // ablative
      ];

    case 'hic':
      switch (gender) {
        case 1: // masculine
          return [
            'hīc', 'hī', // nominative
            'hūius', 'hōrum', // genitive
            'huic', 'hīs', // dative
            'hunc', 'hōs', // accusative
            'hōc', 'hīs' // ablative
          ];
        case 2: // feminine
          return [
            'haec', 'hae', // nominative
            'hūius', 'hārum', // genitive
            'huic', 'hīs', // dative
            'hanc', 'hās', // accusative
            'hāc', 'hīs' // ablative
          ];
        case 3: // neuter
          return [
            'hōc', 'haec', // nominative
            'hūius', 'hōrum', // genitive
            'huic', 'hīs', // dative
            'hōc', 'haec', // accusative
            'hōc', 'hīs' // ablative
          ];
      }
      break;

    case 'ille':
      switch (gender) {
        case 1: // masculine
          return [
            'ille', 'illī', // nominative
            'illīus', 'illōrum', // genitive
            'illī', 'illīs', // dative
            'illum', 'illōs', // accusative
            'illō', 'illīs' // ablative
          ];
        case 2: // feminine
          return [
            'illa', 'illae', // nominative
            'illīus', 'illārum', // genitive
            'illī', 'illīs', // dative
            'illam', 'illās', // accusative
            'illā', 'illīs' // ablative
          ];
        case 3: // neuter
          return [
            'illud', 'illa', // nominative
            'illīus', 'illōrum', // genitive
            'illī', 'illīs', // dative
            'illud', 'illa', // accusative
            'illō', 'illīs' // ablative
          ];
      }
      break;

    case 'iste':
      switch (gender) {
        case 1: // masculine
          return [
            'iste', 'istī', // nominative
            'istīus', 'istōrum', // genitive
            'istī', 'istīs', // dative
            'istum', 'istōs', // accusative
            'istō', 'istīs' // ablative
          ];
        case 2: // feminine
          return [
            'ista', 'istae', // nominative
            'istīus', 'istārum', // genitive
            'istī', 'istīs', // dative
            'istam', 'istās', // accusative
            'istā', 'istīs' // ablative
          ];
        case 3: // neuter
          return [
            'istud', 'ista', // nominative
            'istīus', 'istōrum', // genitive
            'istī', 'istīs', // dative
            'istud', 'ista', // accusative
            'istō', 'istīs' // ablative
          ];
      }
      break;

    case 'idem':
      switch (gender) {
        case 1: // masculine
          return [
            'īdem', 'eīdem', // nominative
            'ēiusdem', 'eōrundem', // genitive
            'eīdem', 'eīsdem', // dative
            'eundem', 'eōsdem', // accusative
            'eōdem', 'eīsdem' // ablative
          ];
        case 2: // feminine
          return [
            'eadem', 'eaedem', // nominative
            'ēiusdem', 'eārundem', // genitive
            'eīdem', 'eīsdem', // dative
            'eandem', 'eāsdem', // accusative
            'eādem', 'eīsdem' // ablative
          ];
        case 3: // neuter
          return [
            'idem', 'eadem', // nominative
            'ēiusdem', 'eōrundem', // genitive
            'eīdem', 'eīsdem', // dative
            'idem', 'eadem', // accusative
            'eōdem', 'eīsdem' // ablative
          ];
      }
      break;

    case 'ipse':
      switch (gender) {
        case 1: // masculine
          return [
            'ipse', 'ipsī', // nominative
            'ipsīus', 'ipsōrum', // genitive
            'ipsī', 'ipsīs', // dative
            'ipsum', 'ipsōs', // accusative
            'ipsō', 'ipsīs' // ablative
          ];
        case 2: // feminine
          return [
            'ipsa', 'ipsae', // nominative
            'ipsīus', 'ipsārum', // genitive
            'ipsī', 'ipsīs', // dative
            'ipsam', 'ipsās', // accusative
            'ipsā', 'ipsīs' // ablative
          ];
        case 3: // neuter
          return [
            'ipsum', 'ipsa', // nominative
            'ipsīus', 'ipsōrum', // genitive
            'ipsī', 'ipsīs', // dative
            'ipsum', 'ipsa', // accusative
            'ipsō', 'ipsīs' // ablative
          ];
      }
      break;

    case 'qui':
      switch (gender) {
        case 1: // masculine
          return [
            'quī', 'quī', // nominative
            'cūius', 'quōrum', // genitive
            'cui', 'quibus', // dative
            'quem', 'quōs', // accusative
            'quō', 'quibus' // ablative
          ];
        case 2: // feminine
          return [
            'quae', 'quae', // nominative
            'cūius', 'quārum', // genitive
            'cui', 'quibus', // dative
            'quam', 'quās', // accusative
            'quā', 'quibus' // ablative
          ];
        case 3: // neuter
          return [
            'quod', 'quae', // nominative
            'cūius', 'quōrum', // genitive
            'cui', 'quibus', // dative
            'quod', 'quae', // accusative
            'quō', 'quibus' // ablative
          ];
      }
      break;

    case 'aliquis':
      switch (gender) {
        case 1: // masculine
          return [
            'aliquis', 'aliquī', // nominative
            'alicūius', 'aliquōrum', // genitive
            'alicui', 'aliquibus', // dative
            'aliquem', 'aliquōs', // accusative
            'aliquō', 'aliquibus' // ablative
          ];
        case 2: // feminine
          return [
            'aliqua', 'aliquae', // nominative
            'alicūius', 'aliquārum', // genitive
            'alicui', 'aliquibus', // dative
            'aliquam', 'aliquās', // accusative
            'aliquā', 'aliquibus' // ablative
          ];
        case 3: // neuter
          return [
            'aliquid', 'aliqua', // nominative
            'alicūius', 'aliquōrum', // genitive
            'alicui', 'aliquibus', // dative
            'aliquid', 'aliqua', // accusative
            'aliquō', 'aliquibus' // ablative
          ];
      }
      break;

    case 'quidam':
      switch (gender) {
        case 1: // masculine
          return [
            'quīdam', 'quīdam', // nominative
            'cūiusdam', 'quōrundam', // genitive
            'cuidam', 'quibusdam', // dative
            'quendam', 'quōsdam', // accusative
            'quōdam', 'quibusdam' // ablative
          ];
        case 2: // feminine
          return [
            'quaedam', 'quaedam', // nominative
            'cūiusdam', 'quārundam', // genitive
            'cuidam', 'quibusdam', // dative
            'quandam', 'quāsdam', // accusative
            'quādam', 'quibusdam' // ablative
          ];
        case 3: // neuter
          return [
            'quiddam', 'quaedam', // nominative
            'cūiusdam', 'quōrundam', // genitive
            'cuidam', 'quibusdam', // dative
            'quiddam', 'quaedam', // accusative
            'quōdam', 'quibusdam' // ablative
          ];
      }
      break;
    default:
      return null;
  }
}

List<String>? adjexc(
  String masc,
  String fem,
  String neu,
  int decltype,
  int gendertype,
) {
  List<String> forms = [];

  if (decltype == 1) {
    if (gendertype == 1) {
      // Feminine
      forms = [
        fem, // Nominative Singular
        fem.substring(0, fem.length - 1) + 'ae', // Nominative Plural
        fem.substring(0, fem.length - 1) + 'ae', // Genitive Singular
        fem.substring(0, fem.length - 1) + 'ārum', // Genitive Plural
        fem.substring(0, fem.length - 1) + 'ae', // Dative Singular
        fem.substring(0, fem.length - 1) + 'īs', // Dative Plural
        fem.substring(0, fem.length - 1) + 'am', // Accusative Singular
        fem.substring(0, fem.length - 1) + 'ās', // Accusative Plural
        fem.substring(0, fem.length - 1) + 'ā', // Ablative Singular
        fem.substring(0, fem.length - 1) + 'īs' // Ablative Plural
      ];
    } else if (gendertype == 0) {
      // Masculine
      forms = [
        masc, // Nominative Singular
        fem.substring(0, fem.length - 1) + 'ī', // Nominative Plural
        fem.substring(0, fem.length - 1) + 'ī', // Genitive Singular
        fem.substring(0, fem.length - 1) + 'ōrum', // Genitive Plural
        fem.substring(0, fem.length - 1) + 'ō', // Dative Singular
        fem.substring(0, fem.length - 1) + 'īs', // Dative Plural
        fem.substring(0, fem.length - 1) + 'um', // Accusative Singular
        fem.substring(0, fem.length - 1) + 'ōs', // Accusative Plural
        fem.substring(0, fem.length - 1) + 'ō', // Ablative Singular
        fem.substring(0, fem.length - 1) + 'īs' // Ablative Plural
      ];
    } else if (gendertype == 2) {
      // Neuter
      forms = [
        neu, // Nominative Singular
        neu.substring(0, neu.length - 2) + 'a', // Nominative Plural
        neu.substring(0, neu.length - 2) + 'ī', // Genitive Singular
        neu.substring(0, neu.length - 2) + 'ōrum', // Genitive Plural
        neu.substring(0, neu.length - 2) + 'ō', // Dative Singular
        neu.substring(0, neu.length - 2) + 'īs', // Dative Plural
        neu.substring(0, neu.length - 2) + 'um', // Accusative Singular
        neu.substring(0, neu.length - 2) + 'a', // Accusative Plural
        neu.substring(0, neu.length - 2) + 'ō', // Ablative Singular
        neu.substring(0, neu.length - 2) + 'īs' // Ablative Plural
      ];
    }
  } else if (decltype == 2) {
    String stem = fem.substring(0, fem.length - 2);

    if (gendertype == 0 || gendertype == 1) {
      // Masculine/Feminine
      forms = [
        masc, // Nominative Singular
        stem + 'ēs', // Nominative Plural
        fem, // Genitive Singular
        stem + 'ium', // Genitive Plural (if consonant stem)
        stem + 'ī', // Dative Singular
        stem + 'ibus', // Dative Plural
        stem + 'em', // Accusative Singular
        stem + 'ēs', // Accusative Plural
        stem + 'ī', // Ablative Singular
        stem + 'ibus' // Ablative Plural
      ];
    } else if (gendertype == 2) {
      // Neuter
      forms = [
        neu, // Nominative Singular
        stem + 'ia', // Nominative Plural
        fem, // Genitive Singular
        stem + 'ium', // Genitive Plural
        stem + 'ī', // Dative Singular
        stem + 'ibus', // Dative Plural
        neu, // Accusative Singular
        stem + 'ia', // Accusative Plural
        stem + 'ī', // Ablative Singular
        stem + 'ibus' // Ablative Plural
      ];
    }
  } else if (decltype == 2) {
    String stem = fem.substring(0, fem.length - 2);

    if (gendertype == 0 || gendertype == 1) {
      // Masculine/Feminine
      forms = [
        masc, // Nominative Singular
        stem + 'ēs', // Nominative Plural
        fem, // Genitive Singular
        stem + 'ium', // Genitive Plural (if consonant stem)
        stem + 'ī', // Dative Singular
        stem + 'ibus', // Dative Plural
        stem + 'em', // Accusative Singular
        stem + 'ēs', // Accusative Plural
        stem + 'ī', // Ablative Singular
        stem + 'ibus' // Ablative Plural
      ];
    } else if (gendertype == 2) {
      // Neuter
      forms = [
        neu, // Nominative Singular
        stem + 'ia', // Nominative Plural
        fem, // Genitive Singular
        stem + 'um', // Genitive Plural
        stem + 'ī', // Dative Singular
        stem + 'ibus', // Dative Plural
        neu, // Accusative Singular
        stem + 'ia', // Accusative Plural
        stem + 'ī', // Ablative Singular
        stem + 'ibus' // Ablative Plural
      ];
    }
  } else if (decltype == 3) {
    if (gendertype == 0 || gendertype == 1) {
      String stem = neu.substring(0, neu.length - 1);

      // Masculine/Feminine
      forms = [
        masc, // Nominative Singular
        stem + 'ēs', // Nominative Plural
        masc, // Genitive Singular
        stem + 'ium', // Genitive Plural (if consonant stem)
        stem + 'ī', // Dative Singular
        stem + 'ibus', // Dative Plural
        stem + 'em', // Accusative Singular
        stem + 'ēs', // Accusative Plural
        stem + 'ī', // Ablative Singular
        stem + 'ibus' // Ablative Plural
      ];
    } else if (gendertype == 2) {
      String stem = neu.substring(0, neu.length - 1);

      forms = [
        neu, // Nominative Singular
        stem + 'ia', // Nominative Plural
        fem, // Genitive Singular
        stem + 'ium', // Genitive Plural
        stem + 'ī', // Dative Singular
        stem + 'ibus', // Dative Plural
        neu, // Accusative Singular
        stem + 'ia', // Accusative Plural
        stem + 'ī', // Ablative Singular
        stem + 'ibus' // Ablative Plural
      ];
    }
  } else if (decltype == 4) {
    if (gendertype == 0) {
      String stem = fem.substring(0, fem.length - 2);

      // Masculine/Feminine
      forms = [
        masc, // Nominative Singular
        stem + 'ēs', // Nominative Plural
        fem, // Genitive Singular
        stem + 'ium', // Genitive Plural (if consonant stem)
        stem + 'ī', // Dative Singular
        stem + 'ibus', // Dative Plural
        stem + 'em', // Accusative Singular
        stem + 'ēs', // Accusative Plural
        stem + 'ī', // Ablative Singular
        stem + 'ibus' // Ablative Plural
      ];
    } else if (gendertype == 1) {
      String stem = fem.substring(0, fem.length - 2);

      forms = [
        fem, // Nominative Singular
        stem + 'ēs', // Nominative Plural
        fem, // Genitive Singular
        stem + 'ium', // Genitive Plural
        stem + 'ī', // Dative Singular
        stem + 'ibus', // Dative Plural
        stem + 'em', // Accusative Singular
        stem + 'ēs', // Accusative Plural
        stem + 'ī', // Ablative Singular
        stem + 'ibus' // Ablative Plural
      ];
    } else if (gendertype == 2) {
      String stem = fem.substring(0, fem.length - 2);
      forms = [
        neu, // Nominative Singular
        stem + 'ia', // Nominative Plural
        fem, // Genitive Singular
        stem + 'ium', // Genitive Plural
        stem + 'ī', // Dative Singular
        stem + 'ibus', // Dative Plural
        neu, // Accusative Singular
        stem + 'ia', // Accusative Plural
        stem + 'ī', // Ablative Singular
        stem + 'ibus' // Ablative Plural
      ];
    }
  }
  return forms;
}

int? adjmisc(
  int decl,
  int gendertype,
  int wordqn,
) {
  int index = 0;
  // Calculate index based on `verbtype`, `gendertype`, and `wordQn`
  if (decl == 1) {
    index = gendertype * 3 + (wordqn - 1);
  } else if (decl == 4) {
    index = 21 + gendertype * 3 + (wordqn - 1);
  } else if (decl >= 2 && decl < 4) {
    index = 9 + (decl - 2) * 6 + (gendertype - 1) * 3 + (wordqn - 1);
  }

  return index;
}

List<int>? adjmisc2(
  int verbtype,
  int gendertype,
  int wordQn,
) {
  List<int> indices = [];

  if (verbtype == 1) {
    if (gendertype >= 0 && gendertype <= 2) {
      // Base index for verbtype 1
      int baseIndex = gendertype * 3;
      indices = [baseIndex, baseIndex + 1, baseIndex + 2];
    }
  } else if (verbtype == 4) {
    if (gendertype >= 0 && gendertype <= 2) {
      // Base index for verbtype 1
      int baseIndex = 21 + gendertype * 3;
      indices = [baseIndex, baseIndex + 1, baseIndex + 2];
    }
  } else if (verbtype >= 2 && verbtype <= 3) {
    if (gendertype >= 1 && gendertype <= 2) {
      // Base index for verbtypes 2, 3, and 4
      int baseIndex = 9 + (verbtype - 2) * 6 + (gendertype - 1) * 3;
      indices = [baseIndex, baseIndex + 1, baseIndex + 2];
    }
  }

  return indices;
}

int? adjmisc3(
  int verbtype,
  int gendertype,
  int wordqn,
) {
  int genderTypeIndex = -1;

  if (verbtype == 1) {
    // For verbtype 1, gendertypes 0, 1, and 2 map to indices 0, 1, and 2 respectively.
    genderTypeIndex = gendertype;
  } else if (verbtype == 4) {
    // For verbtype 1, gendertypes 0, 1, and 2 map to indices 0, 1, and 2 respectively.
    genderTypeIndex = 7 + gendertype;
  } else if (verbtype >= 2 && verbtype <= 3) {
    // For verbtypes 2, 3, and 4, each gendertype maps to a unique index
    // verbtype 2 -> indices 3 and 4, verbtype 3 -> indices 5 and 6, verbtype 4 -> indices 7 and 8
    genderTypeIndex = 3 + (verbtype - 2) * 2 + (gendertype - 1);
  }

  return genderTypeIndex;
}

List<String>? nounhints(
  String nominative,
  String genitive,
  String gender,
  int decl,
) {
  if (decl == 0) {
    // Base form (remove "ae" from genitive)
    String base = genitive.substring(0, genitive.length - 2);

    // Endings for the first declension
    Map<String, List<String>> endings = {
      "nominative": ["", "ae"],
      "genitive": ["ae", "ārum"],
      "dative": ["ae", "īs"],
      "accusative": ["am", "ās"],
      "ablative": ["ā", "īs"],
    };

    List<String> result = [];

    // Helper function for formatting
    void addWordOrGenitiveWithEnding(
        String form, String originalEnding, String newEnding) {
      String fullForm = form + newEnding;
      if (fullForm == nominative || fullForm == genitive) {
        result.add(fullForm);
        result.add("");
        result.add("");
      } else {
        result.add(form); // Base word
        result.add(
            originalEnding); // Original ending (fixed to genitive singular ending "ae")
        result.add("+" + newEnding); // New ending in "+ending" format
      }
    }

    // Generate forms
    // Nominative
    result.add(nominative); // Nominative Singular
    result.add("");
    result.add("");
    addWordOrGenitiveWithEnding(
        base, "ae", endings["nominative"]![1]); // Nominative Plural

    // Genitive
    result.add(genitive); // Genitive Singular
    result.add("");
    result.add("");
    addWordOrGenitiveWithEnding(
        base, "ae", endings["genitive"]![1]); // Genitive Plural

    // Dative
    result.add(genitive); // Dative Singular (genitive word without change)
    result.add("");
    result.add("");
    addWordOrGenitiveWithEnding(
        base, "ae", endings["dative"]![1]); // Dative Plural

    // Accusative
    addWordOrGenitiveWithEnding(
        base, "ae", endings["accusative"]![0]); // Accusative Singular
    addWordOrGenitiveWithEnding(
        base, "ae", endings["accusative"]![1]); // Accusative Plural

    // Ablative
    addWordOrGenitiveWithEnding(
        base, "ae", endings["ablative"]![0]); // Ablative Singular
    addWordOrGenitiveWithEnding(
        base, "ae", endings["ablative"]![1]); // Ablative Plural

    return result;
  } else if (decl == 1) {
    String base = genitive.substring(0, genitive.length - 1);

// Endings for the second declension masculine
    Map<String, List<String>> endings = {
      "nominative": ["", "ī"],
      "genitive": ["ī", "ōrum"],
      "dative": ["ō", "īs"],
      "accusative": ["um", "ōs"],
      "ablative": ["ō", "īs"],
    };

    List<String> result = [];

// Helper function for formatting
    void addWordOrGenitiveWithEnding(String form, String ending) {
      String fullForm = form + ending;
      if (fullForm == nominative || fullForm == genitive) {
        result.add(fullForm); // Add the word as-is
        result.add("");
        result.add(""); // Add two empty strings
      } else {
        result.add(base); // Add the base form
        result.add("ī"); // Always use "ī" as the original ending
        result.add("+" + ending); // Append the new ending in "+ending" format
      }
    }

// Generate forms
// Nominative
    result.add(nominative); // Nominative Singular
    result.add("");
    result.add("");
    addWordOrGenitiveWithEnding(
        base, endings["nominative"]![1]); // Nominative Plural

// Genitive
    result.add(genitive); // Genitive Singular
    result.add("");
    result.add("");
    addWordOrGenitiveWithEnding(
        base, endings["genitive"]![1]); // Genitive Plural

// Dative
    addWordOrGenitiveWithEnding(base, endings["dative"]![0]); // Dative Singular
    addWordOrGenitiveWithEnding(base, endings["dative"]![1]); // Dative Plural

// Accusative
    addWordOrGenitiveWithEnding(
        base, endings["accusative"]![0]); // Accusative Singular
    addWordOrGenitiveWithEnding(
        base, endings["accusative"]![1]); // Accusative Plural

// Ablative
    addWordOrGenitiveWithEnding(
        base, endings["ablative"]![0]); // Ablative Singular
    addWordOrGenitiveWithEnding(
        base, endings["ablative"]![1]); // Ablative Plural

    return result;
  } else if (decl == 2) {
    // Base form (remove "ī" from genitive)
    String base = genitive.substring(0, genitive.length - 1);

// Endings for the second declension neuter
    Map<String, List<String>> endings = {
      "nominative": ["", "a"],
      "genitive": ["ī", "ōrum"],
      "dative": ["ō", "īs"],
      "accusative": ["", "a"],
      "ablative": ["ō", "īs"],
    };

    List<String> result = [];

// Helper function for adding forms
    void addFormWithLogic(String originalEnding, String newEnding) {
      String fullForm = base + newEnding;
      if (fullForm == nominative || fullForm == genitive) {
        result.add(fullForm); // Add the form as-is
        result.add(""); // Add an empty string
        result.add(""); // Add another empty string
      } else {
        result.add(base); // Add the base form
        result.add(originalEnding); // Add the original ending
        result
            .add("+" + newEnding); // Append the new ending in "+ending" format
      }
    }

// Generate forms
// Nominative
    result.add(nominative); // Nominative Singular
    result.add("");
    result.add("");
    addFormWithLogic("ī", endings["nominative"]![1]); // Nominative Plural

// Genitive
    result.add(genitive); // Genitive Singular
    result.add("");
    result.add("");
    addFormWithLogic("ī", endings["genitive"]![1]); // Genitive Plural

// Dative
    addFormWithLogic("ī", endings["dative"]![0]); // Dative Singular
    addFormWithLogic("ī", endings["dative"]![1]); // Dative Plural

// Accusative
    result.add(nominative); // Accusative Singular (same as nominative singular)
    result.add("");
    result.add("");
    addFormWithLogic("ī", endings["accusative"]![1]); // Accusative Plural

// Ablative
    addFormWithLogic("ī", endings["ablative"]![0]); // Ablative Singular
    addFormWithLogic("ī", endings["ablative"]![1]); // Ablative Plural

    return result;
  } else if (decl == 3) {
    // Base form (remove "is" from genitive)
    String base = genitive.substring(0, genitive.length - 2);

// Endings for the third declension masculine/feminine
    Map<String, List<String>> endings = {
      "nominative": ["", "ēs"],
      "genitive": ["is", "um"],
      "dative": ["ī", "ibus"],
      "accusative": ["em", "ēs"],
      "ablative": ["e", "ibus"],
    };

    List<String> result = [];

// Helper function for adding forms
    void addFormWithLogic(String originalEnding, String newEnding) {
      String fullForm = base + newEnding;
      if (fullForm == nominative || fullForm == genitive) {
        result.add(fullForm); // Add the form as-is
        result.add(""); // Add an empty string
        result.add(""); // Add another empty string
      } else {
        result.add(base); // Add the base form
        result.add(originalEnding); // Add the original ending
        result
            .add("+" + newEnding); // Append the new ending in "+ending" format
      }
    }

// Generate forms
// Nominative
    result.add(nominative); // Nominative Singular
    result.add("");
    result.add("");
    addFormWithLogic("is", endings["nominative"]![1]); // Nominative Plural

// Genitive
    result.add(genitive); // Genitive Singular
    result.add("");
    result.add("");
    addFormWithLogic("is", endings["genitive"]![1]); // Genitive Plural

// Dative
    addFormWithLogic("is", endings["dative"]![0]); // Dative Singular
    addFormWithLogic("is", endings["dative"]![1]); // Dative Plural

// Accusative
    addFormWithLogic("is", endings["accusative"]![0]); // Accusative Singular
    addFormWithLogic("is", endings["accusative"]![1]); // Accusative Plural

// Ablative
    addFormWithLogic("is", endings["ablative"]![0]); // Ablative Singular
    addFormWithLogic("is", endings["ablative"]![1]); // Ablative Plural
    return result;
  } else if (decl == 4) {
    // Base form (remove "is" from genitive)
    String base = genitive.substring(0, genitive.length - 2);

// Endings for the third declension (neuter)
    Map<String, List<String>> endings = {
      "nominative": ["", "a"],
      "genitive": ["is", "um"],
      "dative": ["ī", "ibus"],
      "accusative": ["", "a"],
      "ablative": ["e", "ibus"],
    };

    List<String> result = [];

// Helper function for adding forms
    void addFormWithLogic(String originalEnding, String newEnding) {
      String fullForm = base + newEnding;
      if (fullForm == nominative || fullForm == genitive) {
        result.add(fullForm); // Add the form as-is
        result.add(""); // Add an empty string
        result.add(""); // Add another empty string
      } else {
        result.add(base); // Add the base form
        result.add(originalEnding); // Add the original ending
        result
            .add("+" + newEnding); // Append the new ending in "+ending" format
      }
    }

// Generate forms
// Nominative
    result.add(nominative); // Nominative Singular
    result.add("");
    result.add("");
    addFormWithLogic("is", endings["nominative"]![1]); // Nominative Plural

// Genitive
    result.add(genitive); // Genitive Singular
    result.add("");
    result.add("");
    addFormWithLogic("is", endings["genitive"]![1]); // Genitive Plural

// Dative
    addFormWithLogic("is", endings["dative"]![0]); // Dative Singular
    addFormWithLogic("is", endings["dative"]![1]); // Dative Plural

// Accusative
    result.add(
        nominative); // Accusative Singular (same as nominative singular for neuter nouns)
    result.add("");
    result.add("");
    addFormWithLogic("is", endings["accusative"]![1]); // Accusative Plural

// Ablative
    addFormWithLogic("is", endings["ablative"]![0]); // Ablative Singular
    addFormWithLogic("is", endings["ablative"]![1]); // Ablative Plural

    return result;
  } else if (decl == 5) {
    // Base form (remove "ūs" from genitive)
    String base = genitive.substring(0, genitive.length - 2);

// Endings for the fourth declension
    Map<String, List<String>> endings = {
      "nominative": ["", "ūs"],
      "genitive": ["ūs", "uum"],
      "dative": ["uī", "ibus"],
      "accusative": ["um", "ūs"],
      "ablative": ["ū", "ibus"],
    };

    List<String> result = [];

// Helper function for adding forms
    void addFormWithLogic(String originalEnding, String newEnding) {
      String fullForm = base + newEnding;
      if (fullForm == nominative || fullForm == genitive) {
        result.add(fullForm); // Add the form as-is
        result.add(""); // Add an empty string
        result.add(""); // Add another empty string
      } else {
        result.add(base); // Add the base form
        result.add(originalEnding); // Add the original ending
        result
            .add("+" + newEnding); // Append the new ending in "+ending" format
      }
    }

// Generate forms
// Nominative
    result.add(nominative); // Nominative Singular
    result.add("");
    result.add("");
    addFormWithLogic("ūs", endings["nominative"]![1]); // Nominative Plural

// Genitive
    result.add(genitive); // Genitive Singular
    result.add("");
    result.add("");
    addFormWithLogic("ūs", endings["genitive"]![1]); // Genitive Plural

// Dative
    addFormWithLogic("ūs", endings["dative"]![0]); // Dative Singular
    addFormWithLogic("ūs", endings["dative"]![1]); // Dative Plural

// Accusative
    addFormWithLogic("ūs", endings["accusative"]![0]); // Accusative Singular
    addFormWithLogic("ūs", endings["accusative"]![1]); // Accusative Plural

// Ablative
    addFormWithLogic("ūs", endings["ablative"]![0]); // Ablative Singular
    addFormWithLogic("ūs", endings["ablative"]![1]); // Ablative Plural

    return result;
  } else if (decl == 6) {
    /// Base form (remove "ūs" from genitive)
    String base = genitive.substring(0, genitive.length - 2);

// Endings for the fourth declension (neuter)
    Map<String, List<String>> endings = {
      "nominative": ["ū", "ua"],
      "genitive": ["ūs", "uum"],
      "dative": ["ū", "ibus"],
      "accusative": ["ū", "ua"],
      "ablative": ["ū", "ibus"],
    };

    List<String> result = [];

// Helper function for adding forms
    void addFormWithLogic(String originalEnding, String newEnding) {
      String fullForm = base + newEnding;
      if (fullForm == nominative || fullForm == genitive) {
        result.add(fullForm); // Add the form as-is
        result.add(""); // Add an empty string
        result.add(""); // Add another empty string
      } else {
        result.add(base); // Add the base form
        result.add(originalEnding); // Add the original ending
        result
            .add("+" + newEnding); // Append the new ending in "+ending" format
      }
    }

// Generate forms
// Nominative
    result.add(nominative); // Nominative Singular
    result.add("");
    result.add("");
    addFormWithLogic("ūs", endings["nominative"]![1]); // Nominative Plural

// Genitive
    result.add(genitive); // Genitive Singular
    result.add("");
    result.add("");
    addFormWithLogic("ūs", endings["genitive"]![1]); // Genitive Plural

// Dative
    addFormWithLogic("ūs", endings["dative"]![0]); // Dative Singular
    addFormWithLogic("ūs", endings["dative"]![1]); // Dative Plural

// Accusative
    result.add(
        nominative); // Accusative Singular (same as nominative singular for neuter nouns)
    result.add("");
    result.add("");
    addFormWithLogic("ūs", endings["accusative"]![1]); // Accusative Plural

// Ablative
    addFormWithLogic("ūs", endings["ablative"]![0]); // Ablative Singular
    addFormWithLogic("ūs", endings["ablative"]![1]); // Ablative Plural

    return result;
  } else if (decl == 7) {
    // Base form (remove "ēī" from genitive)
    String base = genitive.substring(0, genitive.length - 2);

// Endings for the fifth declension
    Map<String, List<String>> endings = {
      "nominative": ["ēs", "ēs"],
      "genitive": ["ēī", "ērum"],
      "dative": ["ēī", "ēbus"],
      "accusative": ["em", "ēs"],
      "ablative": ["ē", "ēbus"],
    };

    List<String> result = [];

// Helper function for adding forms
    void addFormWithLogic(String originalEnding, String newEnding) {
      String fullForm = base + newEnding;
      if (fullForm == nominative || fullForm == genitive) {
        result.add(fullForm); // Add the form as-is
        result.add(""); // Add an empty string
        result.add(""); // Add another empty string
      } else {
        result.add(base); // Add the base form
        result.add(originalEnding); // Add the original ending
        result
            .add("+" + newEnding); // Append the new ending in "+ending" format
      }
    }

// Generate forms
// Nominative
    result.add(nominative); // Nominative Singular
    result.add("");
    result.add("");
    addFormWithLogic("ēī", endings["nominative"]![1]); // Nominative Plural

// Genitive
    result.add(genitive); // Genitive Singular
    result.add("");
    result.add("");
    addFormWithLogic("ēī", endings["genitive"]![1]); // Genitive Plural

// Dative
    result.add(
        genitive); // Dative Singular (same as genitive singular for fifth declension)
    result.add("");
    result.add("");
    addFormWithLogic("ēī", endings["dative"]![1]); // Dative Plural

// Accusative
    addFormWithLogic("ēī", endings["accusative"]![0]); // Accusative Singular
    addFormWithLogic("ēī", endings["accusative"]![1]); // Accusative Plural

// Ablative
    addFormWithLogic("ēī", endings["ablative"]![0]); // Ablative Singular
    addFormWithLogic("ēī", endings["ablative"]![1]); // Ablative Plural

    return result;
  }
}

List<String>? regverbhints(
  String present,
  String infinitive,
  String perfect,
  String passPerfect,
  int decl,
  int actpass,
  int type,
) {
  if (decl == 1) {
    if (actpass == 0) {
      if (type == 0) {
        // Define endings for Indicative Active Present
        List<String> endings = ["ō", "āmus", "ās", "ātis", "at", "ant"];

        // Extract base stem from the present form by removing the last character
        String baseStem = present.substring(0, present.length - 1);

        // Helper function to append formatted results
        List<String> result = [];

        void addWordOrFormattedResult(String fullForm, String base,
            String originalEnding, String newEnding) {
          if (fullForm == present ||
              fullForm == infinitive ||
              fullForm == perfect ||
              fullForm == passPerfect) {
            result.add(fullForm);
            result.add("");
            result.add("");
          } else {
            result.add(base);
            result.add(originalEnding);
            result.add("+" + newEnding);
          }
        }

        // Generate the six forms and process each
        for (String ending in endings) {
          String fullForm = baseStem + ending;
          String originalEnding =
              "ō"; // For present tense, original ending is blank
          addWordOrFormattedResult(fullForm, baseStem, originalEnding, ending);
        }

        return result;
      } else if (type == 1) {
        List<String> endings = ["ī", "imus", "istī", "istis", "it", "ērunt"];

        // Extract base stem from the perfect form by removing the last character
        String baseStem = perfect.substring(0, perfect.length - 1);

        List<String> result = [];

        void addWordOrFormattedResult(String fullForm, String base,
            String originalEnding, String newEnding) {
          if (fullForm == present ||
              fullForm == infinitive ||
              fullForm == perfect ||
              fullForm == passPerfect) {
            result.add(fullForm);
            result.add("");
            result.add("");
          } else {
            result.add(base);
            result.add(originalEnding);
            result.add("+" + newEnding);
          }
        }

        // Generate the six forms and process each
        for (String ending in endings) {
          String fullForm = baseStem + ending;
          addWordOrFormattedResult(fullForm, baseStem, "ī", ending);
        }

        return result;
      } else if (type == 2) {
        // Define endings for Indicative Active Future
        List<String> endings = [
          "ābō",
          "ābimus",
          "ābis",
          "ābitis",
          "ābit",
          "ābunt"
        ];

        // Extract base stem from the infinitive form by removing the last 3 characters ("āre")
        String baseStem = infinitive.substring(0, infinitive.length - 3);

        List<String> result = [];

        void addWordOrFormattedResult(String fullForm, String base,
            String originalEnding, String newEnding) {
          if (fullForm == present ||
              fullForm == infinitive ||
              fullForm == perfect ||
              fullForm == passPerfect) {
            result.add(fullForm);
            result.add("");
            result.add("");
          } else {
            result.add(base);
            result.add(originalEnding);
            result.add("+" + newEnding);
          }
        }

        // Generate the six forms and process each
        for (String ending in endings) {
          String fullForm = baseStem + ending;
          addWordOrFormattedResult(fullForm, baseStem, "āre", ending);
        }

        return result;
      }
    } else if (actpass == 1) {
      if (type == 0) {
        List<String> endings = ["or", "āmur", "āris", "āminī", "ātur", "āntur"];

        // Extract base stem from the infinitive form by removing the last 3 characters ("āre")
        String baseStem = infinitive.substring(0, infinitive.length - 3);

        List<String> result = [];

        void addWordOrFormattedResult(String fullForm, String base,
            String originalEnding, String newEnding) {
          if (fullForm == present ||
              fullForm == infinitive ||
              fullForm == perfect ||
              fullForm == passPerfect) {
            result.add(fullForm);
            result.add("");
            result.add("");
          } else {
            result.add(base);
            result.add(originalEnding);
            result.add("+" + newEnding);
          }
        }

        // Generate the six forms and process each
        for (String ending in endings) {
          String fullForm = baseStem + ending;
          addWordOrFormattedResult(fullForm, baseStem, "āre", ending);
        }
        return result;
      } else if (type == 1) {
        List<String> endings = ["sum", "sumus", "es", "estis", "est", "sunt"];

        // Extract base stem from the perfect passive participle
        String baseStem = passPerfect.substring(0, passPerfect.length - 2);

        List<String> result = [];

        void addWordOrFormattedResult(String fullForm, String base,
            String originalEnding, String newEnding) {
          if (fullForm == present ||
              fullForm == infinitive ||
              fullForm == perfect ||
              fullForm == passPerfect) {
            result.add(fullForm);
            result.add("");
            result.add("");
          } else {
            result.add(base);
            result.add(originalEnding);
            result.add("+" + newEnding);
          }
        }

        // Generate the six forms and process each
        for (String ending in endings) {
          String fullForm = baseStem + "us " + ending;
          addWordOrFormattedResult(fullForm, baseStem, "us", ending);
        }

        return result;
      } else if (type == 2) {
        List<String> endings = [
          "ābor",
          "ābimur",
          "āberis",
          "ābiminī",
          "ābitur",
          "ābuntur"
        ];

        // Extract base stem from the infinitive form by removing the last 3 characters ("āre")
        String baseStem = infinitive.substring(0, infinitive.length - 3);

        List<String> result = [];

        void addWordOrFormattedResult(String fullForm, String base,
            String originalEnding, String newEnding) {
          if (fullForm == present ||
              fullForm == infinitive ||
              fullForm == perfect ||
              fullForm == passPerfect) {
            result.add(fullForm);
            result.add("");
            result.add("");
          } else {
            result.add(base);
            result.add(originalEnding);
            result.add("+" + newEnding);
          }
        }

        // Generate the six forms and process each
        for (String ending in endings) {
          String fullForm = baseStem + ending;
          addWordOrFormattedResult(fullForm, baseStem, "āre", ending);
        }
        return result;
      }
    }
  } else if (decl == 2) {
    if (actpass == 0) {
      if (type == 0) {
        List<String> endings = ["eō", "ēmus", "ēs", "ētis", "et", "ent"];

        // Extract base stem from the infinitive form by removing the last 3 characters ("ēre")
        String baseStem = infinitive.substring(0, infinitive.length - 3);

        List<String> result = [];

        void addWordOrFormattedResult(String fullForm, String base,
            String originalEnding, String newEnding) {
          if (fullForm == present ||
              fullForm == infinitive ||
              fullForm == perfect ||
              fullForm == passPerfect) {
            result.add(fullForm);
            result.add("");
            result.add("");
          } else {
            result.add(base);
            result.add(originalEnding);
            result.add("+" + newEnding);
          }
        }

        // Generate the six forms and process each
        for (String ending in endings) {
          String fullForm = baseStem + ending;
          addWordOrFormattedResult(fullForm, baseStem, "eō", ending);
        }
        return result;
      } else if (type == 1) {
        List<String> endings = ["ī", "imus", "istī", "istis", "it", "ērunt"];

        // Extract base stem from the perfect form by removing the last character ("ī")
        String baseStem = perfect.substring(0, perfect.length - 1);

        List<String> result = [];

        void addWordOrFormattedResult(String fullForm, String base,
            String originalEnding, String newEnding) {
          if (fullForm == present ||
              fullForm == infinitive ||
              fullForm == perfect ||
              fullForm == passPerfect) {
            result.add(fullForm);
            result.add("");
            result.add("");
          } else {
            result.add(base);
            result.add(originalEnding);
            result.add("+" + newEnding);
          }
        }

        // Generate the six forms and process each
        for (String ending in endings) {
          String fullForm = baseStem + ending;
          addWordOrFormattedResult(fullForm, baseStem, "ī", ending);
        }
        return result;
      } else if (type == 2) {
        // Define endings for Indicative Active Future
        List<String> endings = [
          "ēbō",
          "ēbimus",
          "ēbis",
          "ēbitis",
          "ēbit",
          "ēbunt"
        ];

        // Extract base stem from the infinitive form by removing the last 3 characters ("ēre")
        String baseStem = infinitive.substring(0, infinitive.length - 3);

        List<String> result = [];

        void addWordOrFormattedResult(String fullForm, String base,
            String originalEnding, String newEnding) {
          if (fullForm == present ||
              fullForm == infinitive ||
              fullForm == perfect ||
              fullForm == passPerfect) {
            result.add(fullForm);
            result.add("");
            result.add("");
          } else {
            result.add(base);
            result.add(originalEnding);
            result.add("+" + newEnding);
          }
        }

        // Generate the six forms and process each
        for (String ending in endings) {
          String fullForm = baseStem + ending;
          addWordOrFormattedResult(fullForm, baseStem, "ēre", ending);
        }
        return result;
      }
    } else if (actpass == 1) {
      if (type == 0) {
        List<String> endings = [
          "eor",
          "ēmur",
          "ēris",
          "ēminī",
          "ētur",
          "ēntur"
        ];

        // Extract base stem from the infinitive form by removing the last 3 characters ("ēre")
        String baseStem = infinitive.substring(0, infinitive.length - 3);

        List<String> result = [];

        void addWordOrFormattedResult(String fullForm, String base,
            String originalEnding, String newEnding) {
          if (fullForm == present ||
              fullForm == infinitive ||
              fullForm == perfect ||
              fullForm == passPerfect) {
            result.add(fullForm);
            result.add("");
            result.add("");
          } else {
            result.add(base);
            result.add(originalEnding);
            result.add("+" + newEnding);
          }
        }

        // Generate the six forms and process each
        for (String ending in endings) {
          String fullForm = baseStem + ending;
          addWordOrFormattedResult(fullForm, baseStem, "ēre", ending);
        }
        return result;
      } else if (type == 1) {
        List<String> endings = ["sum", "sumus", "es", "estis", "est", "sunt"];

        // Extract base stem from the perfect passive participle by removing the last two characters ("us")
        String baseStem = passPerfect.substring(0, passPerfect.length - 2);

        List<String> result = [];

        void addWordOrFormattedResult(String fullForm, String base,
            String originalEnding, String newEnding) {
          if (fullForm == present ||
              fullForm == infinitive ||
              fullForm == perfect ||
              fullForm == passPerfect) {
            result.add(fullForm);
            result.add("");
            result.add("");
          } else {
            result.add(base);
            result.add(originalEnding);
            result.add("+" + newEnding);
          }
        }

        // Generate the six forms and process each
        for (String ending in endings) {
          String fullForm = baseStem + ending;
          addWordOrFormattedResult(fullForm, baseStem, "us", ending);
        }
        return result;
      } else if (type == 2) {
        List<String> endings = [
          "ēbor",
          "ēbimur",
          "ēberis",
          "ēbiminī",
          "ēbitur",
          "ēbuntur"
        ];

        // Extract base stem from the infinitive form by removing the last 3 characters ("ēre")
        String baseStem = infinitive.substring(0, infinitive.length - 3);

        List<String> result = [];

        void addWordOrFormattedResult(String fullForm, String base,
            String originalEnding, String newEnding) {
          if (fullForm == present ||
              fullForm == infinitive ||
              fullForm == perfect ||
              fullForm == passPerfect) {
            result.add(fullForm);
            result.add("");
            result.add("");
          } else {
            result.add(base);
            result.add(originalEnding);
            result.add("+" + newEnding);
          }
        }

        // Generate the six forms and process each
        for (String ending in endings) {
          String fullForm = baseStem + ending;
          addWordOrFormattedResult(fullForm, baseStem, "ēre", ending);
        }
        return result;
      }
    }
  } else if (decl == 3) {
    if (actpass == 0) {
      if (type == 0) {
        if (present == "faciō") {
          List<String> endings = ["ō", "imus", "is", "itis", "it", "unt"];

          // Extract base stem for the present form by removing the last character of the present form

          String baseStem = present.substring(0, present.length - 2);

          List<String> result = [];

          void addWordOrFormattedResult(String fullForm, String base,
              String originalEnding, String newEnding) {
            if (fullForm == present ||
                fullForm == infinitive ||
                fullForm == perfect ||
                fullForm == passPerfect) {
              result.add(fullForm);
              result.add("");
              result.add("");
            } else {
              result.add(base);
              result.add(originalEnding);
              result.add("+" + newEnding);
            }
          }

          // Generate the six forms and process each
          for (String ending in endings) {
            String fullForm = baseStem + ending;
            addWordOrFormattedResult(fullForm, baseStem, "iō", ending);
          }

          return result;
        } else {
          List<String> endings = ["ō", "imus", "is", "itis", "it", "unt"];

          // Extract base stem for the present form by removing the last character of the present form

          String baseStem = present.substring(0, present.length - 1);

          List<String> result = [];

          void addWordOrFormattedResult(String fullForm, String base,
              String originalEnding, String newEnding) {
            if (fullForm == present ||
                fullForm == infinitive ||
                fullForm == perfect ||
                fullForm == passPerfect) {
              result.add(fullForm);
              result.add("");
              result.add("");
            } else {
              result.add(base);
              result.add(originalEnding);
              result.add("+" + newEnding);
            }
          }

          // Generate the six forms and process each
          for (String ending in endings) {
            String fullForm = baseStem + ending;
            addWordOrFormattedResult(fullForm, baseStem, "ō", ending);
          }

          return result;
        }
      } else if (type == 1) {
        List<String> endings = ["ī", "imus", "istī", "istis", "it", "ērunt"];

        // Extract base stem from the perfect form by removing the last 1 character ("ī")
        String baseStem = perfect.substring(0, perfect.length - 1);

        List<String> result = [];

        void addWordOrFormattedResult(String fullForm, String base,
            String originalEnding, String newEnding) {
          if (fullForm == present ||
              fullForm == infinitive ||
              fullForm == perfect ||
              fullForm == passPerfect) {
            result.add(fullForm);
            result.add("");
            result.add("");
          } else {
            result.add(base);
            result.add(originalEnding);
            result.add("+" + newEnding);
          }
        }

        // Generate the six forms and process each
        for (String ending in endings) {
          String fullForm = baseStem + ending;
          addWordOrFormattedResult(fullForm, baseStem, "ī", ending);
        }

        return result;
      } else if (type == 2) {
        // Define endings for Indicative Active Future
        List<String> endings = ["am", "ēmus", "ēs", "ētis", "et", "ent"];

        // Extract base stem for the present form by removing the last character of the present form
        String baseStem = present.substring(0, present.length - 1);

        List<String> result = [];

        void addWordOrFormattedResult(String fullForm, String base,
            String originalEnding, String newEnding) {
          if (fullForm == present ||
              fullForm == infinitive ||
              fullForm == perfect ||
              fullForm == passPerfect) {
            result.add(fullForm);
            result.add("");
            result.add("");
          } else {
            result.add(base);
            result.add(originalEnding);
            result.add("+" + newEnding);
          }
        }

        // Generate the six forms and process each
        for (String ending in endings) {
          String fullForm = baseStem + ending;
          addWordOrFormattedResult(fullForm, baseStem, "ō", ending);
        }
        return result;
      }
    } else if (actpass == 1) {
      if (type == 0) {
        List<String> endings = ["or", "imur", "eris", "iminī", "itur", "untur"];

        // Extract base stems
        String baseStemPresent = present.substring(
            0, present.length - 1); // Remove last character of present
        String baseStemInfinitive =
            infinitive.substring(0, infinitive.length - 3); // Remove "ere"

        List<String> result = [];

        // Helper function to add formatted result
        void addWordOrFormattedResult(
            String base, String originalEnding, String newEnding) {
          result.add(base);
          result.add(originalEnding);
          result.add("+" + newEnding);
        }

        // Generate the six forms
        for (int i = 0; i < endings.length; i++) {
          String fullForm;
          String baseStem;
          String originalEnding;

          // Determine base and original ending
          if (i == 0 || i == 5) {
            baseStem = baseStemPresent;
            originalEnding = "ō"; // Original ending is derived from "present"
          } else {
            baseStem = baseStemInfinitive;
            originalEnding =
                "ere"; // Original ending is derived from "infinitive"
          }

          // Generate full form
          fullForm = baseStem + endings[i];
          addWordOrFormattedResult(baseStem, originalEnding, endings[i]);
        }
        return result;
      } else if (type == 1) {
        List<String> auxiliaries = [
          "sum",
          "sumus",
          "es",
          "estis",
          "est",
          "sunt"
        ];

        // Extract base stem from perfect passive participle
        String baseStem =
            passPerfect.substring(0, passPerfect.length - 2); // Remove "us"

        List<String> result = [];

        // Helper function to add formatted result
        void addWordOrFormattedResult(
            String base, String originalEnding, String newEnding) {
          result.add(base);
          result.add(originalEnding);
          result.add("+" + newEnding);
        }

        // Generate the six forms
        for (int i = 0; i < auxiliaries.length; i++) {
          String fullForm;
          String originalEnding;

          originalEnding = "us"; // Singular forms
          fullForm = baseStem + "us " + auxiliaries[i];

          addWordOrFormattedResult(baseStem, originalEnding, auxiliaries[i]);
        }
        return result;
      } else if (type == 2) {
        List<String> endings = ["ar", "ēmur", "ēris", "ēminī", "ētur", "entur"];

        // Extract base stem
        String baseStem =
            present.substring(0, present.length - 1); // Remove "ere"

        List<String> result = [];

        // Helper function to add formatted result
        void addWordOrFormattedResult(
            String base, String originalEnding, String newEnding) {
          result.add(base);
          result.add(originalEnding);
          result.add("+" + newEnding);
        }

        // Generate the six forms
        for (int i = 0; i < endings.length; i++) {
          String fullForm = baseStem + endings[i];
          addWordOrFormattedResult(baseStem, "ō",
              endings[i]); // "ere" is the original ending for all
        }
        return result;
      }
    }
  } else if (decl == 4) {
    if (actpass == 0) {
      if (type == 0) {
        // Define endings for Indicative Active Present
        List<String> endings = ["īmus", "īs", "ītis", "it", "iunt"];

        // Extract base stem for the present form by removing the last two characters of the present form
        String baseStem = present.substring(0, present.length - 2);

        List<String> result = [];

        // Always start the result with the present form followed by two empty strings
        result.add(present);
        result.add("");
        result.add("");

        void addWordOrFormattedResult(String fullForm, String base,
            String originalEnding, String newEnding) {
          if (fullForm == present ||
              fullForm == infinitive ||
              fullForm == perfect ||
              fullForm == passPerfect) {
            result.add(fullForm);
            result.add("");
            result.add("");
          } else {
            result.add(base);
            result.add("īre");
            result.add("+" + newEnding);
          }
        }

        // Generate the six forms and process each
        for (String ending in endings) {
          String fullForm = baseStem + ending;
          addWordOrFormattedResult(fullForm, baseStem, "", ending);
        }
        return result;
      } else if (type == 1) {
        List<String> endings = ["ī", "imus", "istī", "istis", "it", "ērunt"];
        String perfectStem = perfect.substring(0, perfect.length - 1);
        List<String> result = [];

        for (String ending in endings) {
          String fullForm = perfectStem + ending;
          if (ending == "ī") {
            result.add(fullForm);
            result.add("");
            result.add("");
          } else {
            result.add(perfectStem);
            result.add("ī");
            result.add("+" + ending);
          }
        }
        return result;
      } else if (type == 2) {
        List<String> endings = ["iam", "iēmus", "iēs", "iētis", "iet", "ient"];
        String baseStem = present.substring(0, present.length - 2);
        List<String> result = [];

        for (String ending in endings) {
          String fullForm = baseStem + ending;

          result.add(baseStem);
          result.add("īre");
          result.add("+" + ending);
        }
        return result;
      }
    } else if (actpass == 1) {
      if (type == 0) {
        List<String> endings = [
          "ior",
          "īmur",
          "īris",
          "īminī",
          "ītur",
          "iuntur"
        ];
        String baseStem = present.substring(0, present.length - 2);
        List<String> result = [];

        for (String ending in endings) {
          String fullForm = baseStem + ending;

          result.add(baseStem);
          result.add("īre");
          result.add("+" + ending);
        }
        return result;
      } else if (type == 1) {
        List<String> endings = ["sum", "sumus", "es", "estis", "est", "sunt"];
        String baseStem = passPerfect.substring(0, passPerfect.length - 2);
        List<String> result = [];

        for (String ending in endings) {
          String fullForm = baseStem + ending;

          result.add(baseStem);
          result.add("us");
          result.add("+" + ending);
        }
        return result;
      } else if (type == 2) {
        List<String> endings = [
          "iar",
          "iēmur",
          "iēris",
          "iēminī",
          "iētur",
          "ientur"
        ];
        String baseStem = infinitive.substring(0, infinitive.length - 3);
        List<String> result = [];

        for (String ending in endings) {
          String fullForm = baseStem + ending;

          result.add(baseStem);
          result.add("īre");
          result.add("+" + ending);
        }
        return result;
      }
    }
  }
}

List<String>? adjhints(
  int decl,
  int gender,
  String masculine,
  String feminine,
  String neuter,
) {
  if (decl == 1) {
    if (gender == 0) {
      List<String> result = [];

      // Helper function for formatting output
      void processAnswer(String answer, String validationWord) {
        // Check if answer matches any of the input words
        if (answer == masculine || answer == feminine || answer == neuter) {
          result.add(answer);
          result.add('');
          result.add('');
        } else {
          // Find the base of the masculine word
          String base = feminine.substring(0, feminine.length - 1);

          // Determine original ending and new ending
          String originalEnding = "a";
          String newEnding = answer.substring(base.length);

          // Add base word, original ending, and new ending
          result.add(base);
          result.add(originalEnding);
          result.add('+$newEnding');
        }
      }

      // Nominative Singular
      processAnswer(masculine, masculine);

      // Nominative Plural
      processAnswer(feminine.substring(0, feminine.length - 1) + 'ī', feminine);

      // Genitive Singular
      processAnswer(feminine.substring(0, feminine.length - 1) + 'ī', feminine);

      // Genitive Plural
      processAnswer(
          feminine.substring(0, feminine.length - 1) + 'ōrum', feminine);

      // Dative Singular
      processAnswer(feminine.substring(0, feminine.length - 1) + 'ō', feminine);

      // Dative Plural
      processAnswer(
          feminine.substring(0, feminine.length - 1) + 'īs', feminine);

      // Accusative Singular
      processAnswer(
          feminine.substring(0, feminine.length - 1) + 'um', feminine);

      // Accusative Plural
      processAnswer(
          feminine.substring(0, feminine.length - 1) + 'ōs', feminine);

      // Ablative Singular
      processAnswer(feminine.substring(0, feminine.length - 1) + 'ō', feminine);

      // Ablative Plural
      processAnswer(
          feminine.substring(0, feminine.length - 1) + 'īs', feminine);

      return result;
    } else if (gender == 1) {
      List<String> result = [];

      void processAnswer(String answer, String validationWord) {
        // Check if answer matches any of the input words
        if (answer == masculine || answer == feminine || answer == neuter) {
          result.add(answer);
          result.add('');
          result.add('');
        } else {
          // Find the base of the feminine word
          String base = feminine.substring(0, feminine.length - 1);

          // Determine original ending and new ending
          String originalEnding = feminine.substring(feminine.length - 1);
          String newEnding = answer.substring(base.length);

          // Add base word, original ending, and new ending
          result.add(base);
          result.add(originalEnding);
          result.add('+$newEnding');
        }
      }

      // Nominative Singular
      processAnswer(feminine, feminine);

      // Nominative Plural
      processAnswer(
          feminine.substring(0, feminine.length - 1) + 'ae', feminine);

      // Genitive Singular
      processAnswer(
          feminine.substring(0, feminine.length - 1) + 'ae', feminine);

      // Genitive Plural
      processAnswer(
          feminine.substring(0, feminine.length - 1) + 'ārum', feminine);

      // Dative Singular
      processAnswer(
          feminine.substring(0, feminine.length - 1) + 'ae', feminine);

      // Dative Plural
      processAnswer(
          feminine.substring(0, feminine.length - 1) + 'īs', feminine);

      // Accusative Singular
      processAnswer(
          feminine.substring(0, feminine.length - 1) + 'am', feminine);

      // Accusative Plural
      processAnswer(
          feminine.substring(0, feminine.length - 1) + 'ās', feminine);

      // Ablative Singular
      processAnswer(feminine.substring(0, feminine.length - 1) + 'ā', feminine);

      // Ablative Plural
      processAnswer(
          feminine.substring(0, feminine.length - 1) + 'īs', feminine);

      return result;
    } else if (gender == 2) {
      List<String> result = [];

      // Helper function for formatting output
      void processAnswer(String answer, String validationWord) {
        // Check if answer matches any of the input words
        if (answer == masculine || answer == feminine || answer == neuter) {
          result.add(answer);
          result.add('');
          result.add('');
        } else {
          // Find the base of the masculine word
          String base = neuter.substring(0, neuter.length - 2);

          // Determine original ending and new ending
          String originalEnding = "a";
          String newEnding = answer.substring(base.length);

          // Add base word, original ending, and new ending
          result.add(base);
          result.add(originalEnding);
          result.add('+$newEnding');
        }
      }

      // Nominative Singular
      processAnswer(neuter, neuter);

      // Nominative Plural
      processAnswer(neuter.substring(0, neuter.length - 2) + 'a', neuter);

      // Genitive Singular
      processAnswer(neuter.substring(0, neuter.length - 2) + 'ī', neuter);

      // Genitive Plural
      processAnswer(neuter.substring(0, neuter.length - 2) + 'ōrum', neuter);

      // Dative Singular
      processAnswer(neuter.substring(0, neuter.length - 2) + 'ō', neuter);

      // Dative Plural
      processAnswer(neuter.substring(0, neuter.length - 2) + 'īs', neuter);

      // Accusative Singular
      processAnswer(neuter, neuter);

      // Accusative Plural
      processAnswer(neuter.substring(0, neuter.length - 2) + 'a', neuter);

      // Ablative Singular
      processAnswer(neuter.substring(0, neuter.length - 2) + 'ō', neuter);

      // Ablative Plural
      processAnswer(neuter.substring(0, neuter.length - 2) + 'īs', neuter);

      return result;
    }
  }
  if (decl == 2) {
    if (gender == 1) {
      List<String> result = [];

      void processAnswer(String answer, String validationWord) {
        // Check if answer matches any of the input words
        if (answer == masculine || answer == feminine || answer == neuter) {
          result.add(answer);
          result.add('');
          result.add('');
        } else {
          // Find the base of the masculine wordvalid
          String base = feminine.substring(0, feminine.length - 2);

          // Determine original ending and new ending
          String originalEnding = "is";
          String newEnding = answer.substring(base.length);

          // Add base word, original ending, and new ending
          result.add(base);
          result.add(originalEnding);
          result.add('+$newEnding');
        }
      }

      // Nominative Singular
      processAnswer(masculine, masculine);

      // Nominative Plural
      processAnswer(
          feminine.substring(0, feminine.length - 2) + 'ēs', masculine);

      // Genitive Singular
      processAnswer(feminine, masculine);

      // Genitive Plural
      processAnswer(
          feminine.substring(0, feminine.length - 2) + 'ium', masculine);

      // Dative Singular
      processAnswer(
          feminine.substring(0, feminine.length - 2) + 'ī', masculine);

      // Dative Plural
      processAnswer(
          feminine.substring(0, feminine.length - 2) + 'ibus', masculine);

      // Accusative Singular
      processAnswer(
          feminine.substring(0, feminine.length - 2) + 'em', masculine);

      // Accusative Plural
      processAnswer(
          feminine.substring(0, feminine.length - 2) + 'ēs', masculine);

      // Ablative Singular
      processAnswer(
          feminine.substring(0, feminine.length - 2) + 'ī', masculine);

      // Ablative Plural
      processAnswer(
          feminine.substring(0, feminine.length - 2) + 'ibus', masculine);
      return result;
    } else if (gender == 2) {
      List<String> result = [];

      void processAnswer(String answer, String validationWord) {
        // Check if answer matches any of the input words
        if (answer == masculine || answer == feminine || answer == neuter) {
          result.add(answer);
          result.add('');
          result.add('');
        } else {
          // Find the base of the masculine wordvalid
          String base = feminine.substring(0, feminine.length - 2);

          // Determine original ending and new ending
          String originalEnding = "is";
          String newEnding = answer.substring(base.length);

          // Add base word, original ending, and new ending
          result.add(base);
          result.add(originalEnding);
          result.add('+$newEnding');
        }
      }

      // Nominative Singular
      processAnswer(masculine, masculine);

      // Nominative Plural

      processAnswer(
          masculine.substring(0, feminine.length - 2) + 'ia', feminine);

      // Genitive Singular
      processAnswer(feminine, masculine);

      // Genitive Plural
      processAnswer(
          masculine.substring(0, feminine.length - 2) + 'ium', masculine);

      // Dative Singular
      processAnswer(
          masculine.substring(0, feminine.length - 2) + 'ī', masculine);

      // Dative Plural
      processAnswer(
          masculine.substring(0, feminine.length - 2) + 'ibus', masculine);

      // Accusative Singular
      processAnswer(masculine, masculine);

      // Accusative Plural
      processAnswer(
          masculine.substring(0, feminine.length - 2) + 'ia', masculine);

      // Ablative Singular
      processAnswer(
          masculine.substring(0, feminine.length - 2) + 'ī', masculine);

      // Ablative Plural
      processAnswer(
          masculine.substring(0, feminine.length - 2) + 'ibus', masculine);
      return result;
    }
  } else if (decl == 3) {
    if (gender == 1) {
      List<String> result = [];

      void processAnswer(String answer, String validationWord) {
        // Check if answer matches any of the input words
        if (answer == masculine || answer == feminine || answer == neuter) {
          result.add(answer);
          result.add('');
          result.add('');
        } else {
          // Find the base of the masculine wordvalid
          String base = masculine.substring(0, masculine.length - 2);

          // Determine original ending and new ending
          String originalEnding = "is";
          String newEnding = answer.substring(base.length);

          // Add base word, original ending, and new ending
          result.add(base);
          result.add(originalEnding);
          result.add('+$newEnding');
        }
      }

      // Nominative Singular
      processAnswer(masculine, masculine);

      // Nominative Plural

      processAnswer(
          masculine.substring(0, masculine.length - 2) + 'ēs', masculine);

      // Genitive Singular
      processAnswer(masculine, masculine);

      // Genitive Plural
      processAnswer(
          masculine.substring(0, masculine.length - 2) + 'ium', masculine);

      // Dative Singular
      processAnswer(
          masculine.substring(0, masculine.length - 2) + 'ī', masculine);

      // Dative Plural
      processAnswer(
          masculine.substring(0, masculine.length - 2) + 'ibus', masculine);

      processAnswer(
          masculine.substring(0, masculine.length - 2) + 'em', masculine);

      // Accusative Plural
      processAnswer(
          masculine.substring(0, masculine.length - 2) + 'ēs', masculine);

      // Ablative Singular
      processAnswer(
          masculine.substring(0, masculine.length - 2) + 'ī', masculine);

      // Ablative Plural
      processAnswer(
          masculine.substring(0, masculine.length - 2) + 'ibus', masculine);
      return result;
    } else if (gender == 2) {
      List<String> result = [];

      void processAnswer(String answer, String validationWord) {
        // Check if answer matches any of the input words
        if (answer == masculine || answer == feminine || answer == neuter) {
          result.add(answer);
          result.add('');
          result.add('');
        } else {
          // Find the base of the masculine wordvalid
          String base = masculine.substring(0, masculine.length - 2);

          // Determine original ending and new ending
          String originalEnding = "e";
          String newEnding = answer.substring(base.length);

          // Add base word, original ending, and new ending
          result.add(base);
          result.add(originalEnding);
          result.add('+$newEnding');
        }
      }

      // Nominative Singular
      processAnswer(neuter, masculine);

      // Nominative Plural

      processAnswer(
          masculine.substring(0, masculine.length - 2) + 'ia', masculine);

      // Genitive Singular
      processAnswer(masculine, masculine);

      // Genitive Plural
      processAnswer(
          masculine.substring(0, masculine.length - 2) + 'ium', masculine);

      // Dative Singular
      processAnswer(
          masculine.substring(0, masculine.length - 2) + 'ī', masculine);

      // Dative Plural
      processAnswer(
          masculine.substring(0, masculine.length - 2) + 'ibus', masculine);

      processAnswer(
          masculine.substring(0, masculine.length - 2) + 'e', masculine);

      // Accusative Plural
      processAnswer(
          masculine.substring(0, masculine.length - 2) + 'ia', masculine);

      // Ablative Singular
      processAnswer(
          masculine.substring(0, masculine.length - 2) + 'ī', masculine);

      // Ablative Plural
      processAnswer(
          masculine.substring(0, masculine.length - 2) + 'ibus', masculine);

      return result;
    }
  } else if (decl == 4) {
    if (gender == 0) {
      List<String> result = [];

      void processAnswer(String answer, String validationWord) {
        // Check if answer matches any of the input words
        if (answer == masculine || answer == feminine || answer == neuter) {
          result.add(answer);
          result.add('');
          result.add('');
        } else {
          // Find the base of the masculine wordvalid
          String base = feminine.substring(0, feminine.length - 2);

          // Determine original ending and new ending
          String originalEnding = "is";
          String newEnding = answer.substring(base.length);

          // Add base word, original ending, and new ending
          result.add(base);
          result.add(originalEnding);
          result.add('+$newEnding');
        }
      }

      // Nominative Singular
      processAnswer(masculine, masculine);

      // Nominative Plural

      processAnswer(
          feminine.substring(0, feminine.length - 2) + 'ēs', masculine);

      // Genitive Singular
      processAnswer(feminine, masculine);

      // Genitive Plural
      processAnswer(
          feminine.substring(0, feminine.length - 2) + 'ium', masculine);

      // Dative Singular
      processAnswer(
          feminine.substring(0, feminine.length - 2) + 'ī', masculine);

      // Dative Plural
      processAnswer(
          feminine.substring(0, feminine.length - 2) + 'ibus', masculine);

      processAnswer(
          feminine.substring(0, feminine.length - 2) + 'em', masculine);

      // Accusative Plural
      processAnswer(
          feminine.substring(0, feminine.length - 2) + 'ēs', masculine);

      // Ablative Singular
      processAnswer(
          feminine.substring(0, feminine.length - 2) + 'ī', masculine);

      // Ablative Plural
      processAnswer(
          feminine.substring(0, feminine.length - 2) + 'ibus', masculine);
      return result;
    } else if (gender == 1) {
      List<String> result = [];

      void processAnswer(String answer, String validationWord) {
        // Check if answer matches any of the input words
        if (answer == masculine || answer == feminine || answer == neuter) {
          result.add(answer);
          result.add('');
          result.add('');
        } else {
          // Find the base of the masculine wordvalid
          String base = feminine.substring(0, feminine.length - 2);

          // Determine original ending and new ending
          String originalEnding = "is";
          String newEnding = answer.substring(base.length);

          // Add base word, original ending, and new ending
          result.add(base);
          result.add(originalEnding);
          result.add('+$newEnding');
        }
      }

      // Nominative Singular
      processAnswer(feminine, masculine);

      // Nominative Plural

      processAnswer(
          feminine.substring(0, feminine.length - 2) + 'ēs', masculine);

      // Genitive Singular
      processAnswer(feminine, masculine);

      // Genitive Plural
      processAnswer(
          feminine.substring(0, feminine.length - 2) + 'ium', masculine);

      // Dative Singular
      processAnswer(
          feminine.substring(0, feminine.length - 2) + 'ī', masculine);

      // Dative Plural
      processAnswer(
          feminine.substring(0, feminine.length - 2) + 'ibus', masculine);

      processAnswer(
          feminine.substring(0, feminine.length - 2) + 'em', masculine);

      // Accusative Plural
      processAnswer(
          feminine.substring(0, feminine.length - 2) + 'ēs', masculine);

      // Ablative Singular
      processAnswer(
          feminine.substring(0, feminine.length - 2) + 'ī', masculine);

      // Ablative Plural
      processAnswer(
          feminine.substring(0, feminine.length - 2) + 'ibus', masculine);
      return result;
    } else if (gender == 2) {
      List<String> result = [];

      void processAnswer(String answer, String validationWord) {
        // Check if answer matches any of the input words
        if (answer == masculine || answer == feminine || answer == neuter) {
          result.add(answer);
          result.add('');
          result.add('');
        } else {
          // Find the base of the masculine wordvalid
          String base = feminine.substring(0, feminine.length - 2);

          // Determine original ending and new ending
          String originalEnding = "is";
          String newEnding = answer.substring(base.length);

          // Add base word, original ending, and new ending
          result.add(base);
          result.add(originalEnding);
          result.add('+$newEnding');
        }
      }

      // Nominative Singular
      processAnswer(neuter, masculine);

      // Nominative Plural

      processAnswer(
          feminine.substring(0, feminine.length - 2) + 'ia', masculine);

      // Genitive Singular
      processAnswer(feminine, masculine);

      // Genitive Plural
      processAnswer(
          feminine.substring(0, feminine.length - 2) + 'ium', masculine);

      // Dative Singular
      processAnswer(
          feminine.substring(0, feminine.length - 2) + 'ī', masculine);

      // Dative Plural
      processAnswer(
          feminine.substring(0, feminine.length - 2) + 'ibus', masculine);

      processAnswer(neuter, masculine);

      // Accusative Plural
      processAnswer(
          feminine.substring(0, feminine.length - 2) + 'ia', masculine);

      // Ablative Singular
      processAnswer(
          feminine.substring(0, feminine.length - 2) + 'ī', masculine);

      // Ablative Plural
      processAnswer(
          feminine.substring(0, feminine.length - 2) + 'ibus', masculine);
      return result;
    }
  }
}

List<String> irregverbshints(
  String word,
  int type,
) {
  Map<String, Map<int, List<String>>> conjugations = {
    'esse': {
      0: [
        ' I am',
        ' we are',
        ' you are',
        ' you (pl.) are',
        ' he/she/it is',
        ' they are'
      ],
      1: [
        ' I was',
        ' we were',
        ' you were',
        ' you (pl.) were',
        ' he/she/it was',
        ' they were'
      ],
      2: [
        ' I will be',
        ' we will be',
        ' you will be',
        ' you (pl.) will be',
        ' he/she/it will be',
        ' they will be'
      ]
    },
    'posse': {
      0: [
        ' I can',
        ' we can',
        ' you can',
        ' you (pl.) can',
        ' he/she/it can',
        ' they can'
      ],
      1: [
        ' I was able',
        ' we were able',
        ' you were able',
        ' you (pl.) were able',
        ' he/she/it was able',
        ' they were able'
      ],
      2: [
        ' I will be able',
        ' we will be able',
        ' you will be able',
        ' you (pl.) will be able',
        ' he/she/it will be able',
        ' they will be able'
      ]
    },
    'īre': {
      0: [
        ' I go',
        ' we go',
        ' you go',
        ' you (pl.) go',
        ' he/she/it goes',
        ' they go'
      ],
      1: [
        ' I went',
        ' we went',
        ' you went',
        ' you (pl.) went',
        ' he/she/it went',
        ' they went'
      ],
      2: [
        ' I will go',
        ' we will go',
        ' you will go',
        ' you (pl.) will go',
        ' he/she/it will go',
        ' they will go'
      ]
    },
    'nolle': {
      0: [
        " I don't want",
        " we don't want",
        " you don't want",
        " you (pl.) don't want",
        " he/she/it doesn't want",
        " they don't want"
      ],
      1: [
        " I didn't want",
        " we didn't want",
        " you didn't want",
        " you (pl.) didn't want",
        " he/she/it didn't want",
        " they didn't want"
      ],
      2: [
        " I will not want",
        " we will not want",
        " you will not want",
        " you (pl.) will not want",
        " he/she/it will not want",
        " they will not want"
      ]
    },
    'fierri': {
      0: [
        ' I become',
        ' we become',
        ' you become',
        ' you (pl.) become',
        ' he/she/it becomes',
        ' they become'
      ],
      1: [
        ' I became',
        ' we became',
        ' you became',
        ' you (pl.) became',
        ' he/she/it became',
        ' they became'
      ],
      2: [
        ' I will become',
        ' we will become',
        ' you will become',
        ' you (pl.) will become',
        ' he/she/it will become',
        ' they will become'
      ]
    },
    'mālle': {
      0: [
        ' I prefer',
        ' we prefer',
        ' you prefer',
        ' you (pl.) prefer',
        ' he/she/it prefers',
        ' they prefer'
      ],
      1: [
        ' I preferred',
        ' we preferred',
        ' you preferred',
        ' you (pl.) preferred',
        ' he/she/it preferred',
        ' they preferred'
      ],
      2: [
        ' I will prefer',
        ' we will prefer',
        ' you will prefer',
        ' you (pl.) will prefer',
        ' he/she/it will prefer',
        ' they will prefer'
      ]
    },
    'velle': {
      0: [
        ' I want',
        ' we want',
        ' you want',
        ' you (pl.) want',
        ' he/she/it wants',
        ' they want'
      ],
      1: [
        ' I wanted',
        ' we wanted',
        ' you wanted',
        ' you (pl.) wanted',
        ' he/she/it wanted',
        ' they wanted'
      ],
      2: [
        ' I will want',
        ' we will want',
        ' you will want',
        ' you (pl.) will want',
        ' he/she/it will want',
        ' they will want'
      ]
    }
  };

  // Return the corresponding list based on the word and type
  return conjugations[word]?[type] ?? [];
}

int? pnmiscqn(
  int qn,
  int gender,
  int type,
) {
  if (type == 0) {
    return (qn - 1);
  } else if (type == 1) {
    return (qn + 4);
  } else if (type == 2) {
    if (gender == 1) {
      return (7 + qn);
    } else if (gender == 2) {
      return (11 + qn);
    } else if (gender == 3) {
      return (15 + qn);
    }
  } else if (type == 3) {
    if (gender == 1) {
      return (20);
    } else if (gender == 2) {
      return (21);
    } else if (gender == 3) {
      return (22);
    }
  } else if (type == 4) {
    if (gender == 1) {
      return (23);
    } else if (gender == 2) {
      return (24);
    } else if (gender == 3) {
      return (25);
    }
  } else if (type == 5) {
    if (gender == 1) {
      return (qn + 25);
    } else if (gender == 2) {
      return (qn + 27);
    } else if (gender == 3) {
      return (qn + 29);
    }
  }
}

List<int>? pngenderqnsmisc(
  int type,
  int gender,
) {
  if (type == 2) {
    if (gender == 1) {
      return ([8, 9, 10, 11]);
    } else if (gender == 2) {
      return ([12, 13, 14, 15]);
    } else if (gender == 3) {
      return ([16, 17, 18, 19]);
    }
  } else if (type == 3) {
    if (gender == 1) {
      return ([20]);
    } else if (gender == 2) {
      return ([21]);
    } else if (gender == 3) {
      return ([22]);
    }
  } else if (type == 4) {
    if (gender == 1) {
      return ([23]);
    } else if (gender == 2) {
      return ([24]);
    } else if (gender == 3) {
      return ([25]);
    }
  } else if (type == 5) {
    if (gender == 1) {
      return ([26, 27]);
    } else if (gender == 2) {
      return ([28, 29]);
    } else if (gender == 3) {
      return ([30, 31]);
    }
  }
}

List<int>? pngendermis2(int type) {
  if (type == 2) {
    return [3, 1, 2];
  } else if (type == 3) {
    return [6, 4, 5];
  } else if (type == 4) {
    return [9, 7, 8];
  } else if (type == 5) {
    return [12, 10, 11];
  }
}

int? pngendermisc3(
  int type,
  int gender,
) {
  if (type == 2) {
    if (gender == 1) {
      return (0);
    } else if (gender == 2) {
      return (1);
    } else if (gender == 3) {
      return (2);
    }
  } else if (type == 3) {
    if (gender == 1) {
      return (3);
    } else if (gender == 2) {
      return (4);
    } else if (gender == 3) {
      return (5);
    }
  } else if (type == 4) {
    if (gender == 1) {
      return (6);
    } else if (gender == 2) {
      return (7);
    } else if (gender == 3) {
      return (8);
    }
  } else if (type == 5) {
    if (gender == 1) {
      return (9);
    } else if (gender == 2) {
      return (10);
    } else if (gender == 3) {
      return (11);
    }
  }
}
