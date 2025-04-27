import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PronRecord extends FirestoreRecord {
  PronRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "word" field.
  String? _word;
  String get word => _word ?? '';
  bool hasWord() => _word != null;

  // "translation" field.
  String? _translation;
  String get translation => _translation ?? '';
  bool hasTranslation() => _translation != null;

  // "nom_sing_m" field.
  String? _nomSingM;
  String get nomSingM => _nomSingM ?? '';
  bool hasNomSingM() => _nomSingM != null;

  // "nom_plu_m" field.
  String? _nomPluM;
  String get nomPluM => _nomPluM ?? '';
  bool hasNomPluM() => _nomPluM != null;

  // "gen_sing_m" field.
  String? _genSingM;
  String get genSingM => _genSingM ?? '';
  bool hasGenSingM() => _genSingM != null;

  // "gen_plu_m" field.
  String? _genPluM;
  String get genPluM => _genPluM ?? '';
  bool hasGenPluM() => _genPluM != null;

  // "dat_sing_m" field.
  String? _datSingM;
  String get datSingM => _datSingM ?? '';
  bool hasDatSingM() => _datSingM != null;

  // "dat_plu_m" field.
  String? _datPluM;
  String get datPluM => _datPluM ?? '';
  bool hasDatPluM() => _datPluM != null;

  // "acc_sing_m" field.
  String? _accSingM;
  String get accSingM => _accSingM ?? '';
  bool hasAccSingM() => _accSingM != null;

  // "acc_plu_m" field.
  String? _accPluM;
  String get accPluM => _accPluM ?? '';
  bool hasAccPluM() => _accPluM != null;

  // "abl_sing_m" field.
  String? _ablSingM;
  String get ablSingM => _ablSingM ?? '';
  bool hasAblSingM() => _ablSingM != null;

  // "abl_plu_m" field.
  String? _ablPluM;
  String get ablPluM => _ablPluM ?? '';
  bool hasAblPluM() => _ablPluM != null;

  // "nom_sing_f" field.
  String? _nomSingF;
  String get nomSingF => _nomSingF ?? '';
  bool hasNomSingF() => _nomSingF != null;

  // "nom_plu_f" field.
  String? _nomPluF;
  String get nomPluF => _nomPluF ?? '';
  bool hasNomPluF() => _nomPluF != null;

  // "gen_sing_f" field.
  String? _genSingF;
  String get genSingF => _genSingF ?? '';
  bool hasGenSingF() => _genSingF != null;

  // "gen_plu_f" field.
  String? _genPluF;
  String get genPluF => _genPluF ?? '';
  bool hasGenPluF() => _genPluF != null;

  // "dat_sing_f" field.
  String? _datSingF;
  String get datSingF => _datSingF ?? '';
  bool hasDatSingF() => _datSingF != null;

  // "dat_plu_f" field.
  String? _datPluF;
  String get datPluF => _datPluF ?? '';
  bool hasDatPluF() => _datPluF != null;

  // "acc_sing_f" field.
  String? _accSingF;
  String get accSingF => _accSingF ?? '';
  bool hasAccSingF() => _accSingF != null;

  // "acc_plu_f" field.
  String? _accPluF;
  String get accPluF => _accPluF ?? '';
  bool hasAccPluF() => _accPluF != null;

  // "abl_sing_f" field.
  String? _ablSingF;
  String get ablSingF => _ablSingF ?? '';
  bool hasAblSingF() => _ablSingF != null;

  // "abl_plu_f" field.
  String? _ablPluF;
  String get ablPluF => _ablPluF ?? '';
  bool hasAblPluF() => _ablPluF != null;

  // "nom_sing_n" field.
  String? _nomSingN;
  String get nomSingN => _nomSingN ?? '';
  bool hasNomSingN() => _nomSingN != null;

  // "nom_plu_n" field.
  String? _nomPluN;
  String get nomPluN => _nomPluN ?? '';
  bool hasNomPluN() => _nomPluN != null;

  // "gen_sing_n" field.
  String? _genSingN;
  String get genSingN => _genSingN ?? '';
  bool hasGenSingN() => _genSingN != null;

  // "gen_plu_n" field.
  String? _genPluN;
  String get genPluN => _genPluN ?? '';
  bool hasGenPluN() => _genPluN != null;

  // "dat_sing_n" field.
  String? _datSingN;
  String get datSingN => _datSingN ?? '';
  bool hasDatSingN() => _datSingN != null;

  // "dat_plu_n" field.
  String? _datPluN;
  String get datPluN => _datPluN ?? '';
  bool hasDatPluN() => _datPluN != null;

  // "acc_sing_n" field.
  String? _accSingN;
  String get accSingN => _accSingN ?? '';
  bool hasAccSingN() => _accSingN != null;

  // "acc_plu_n" field.
  String? _accPluN;
  String get accPluN => _accPluN ?? '';
  bool hasAccPluN() => _accPluN != null;

  // "abl_sing_n" field.
  String? _ablSingN;
  String get ablSingN => _ablSingN ?? '';
  bool hasAblSingN() => _ablSingN != null;

  // "abl_plu_n" field.
  String? _ablPluN;
  String get ablPluN => _ablPluN ?? '';
  bool hasAblPluN() => _ablPluN != null;

  void _initializeFields() {
    _word = snapshotData['word'] as String?;
    _translation = snapshotData['translation'] as String?;
    _nomSingM = snapshotData['nom_sing_m'] as String?;
    _nomPluM = snapshotData['nom_plu_m'] as String?;
    _genSingM = snapshotData['gen_sing_m'] as String?;
    _genPluM = snapshotData['gen_plu_m'] as String?;
    _datSingM = snapshotData['dat_sing_m'] as String?;
    _datPluM = snapshotData['dat_plu_m'] as String?;
    _accSingM = snapshotData['acc_sing_m'] as String?;
    _accPluM = snapshotData['acc_plu_m'] as String?;
    _ablSingM = snapshotData['abl_sing_m'] as String?;
    _ablPluM = snapshotData['abl_plu_m'] as String?;
    _nomSingF = snapshotData['nom_sing_f'] as String?;
    _nomPluF = snapshotData['nom_plu_f'] as String?;
    _genSingF = snapshotData['gen_sing_f'] as String?;
    _genPluF = snapshotData['gen_plu_f'] as String?;
    _datSingF = snapshotData['dat_sing_f'] as String?;
    _datPluF = snapshotData['dat_plu_f'] as String?;
    _accSingF = snapshotData['acc_sing_f'] as String?;
    _accPluF = snapshotData['acc_plu_f'] as String?;
    _ablSingF = snapshotData['abl_sing_f'] as String?;
    _ablPluF = snapshotData['abl_plu_f'] as String?;
    _nomSingN = snapshotData['nom_sing_n'] as String?;
    _nomPluN = snapshotData['nom_plu_n'] as String?;
    _genSingN = snapshotData['gen_sing_n'] as String?;
    _genPluN = snapshotData['gen_plu_n'] as String?;
    _datSingN = snapshotData['dat_sing_n'] as String?;
    _datPluN = snapshotData['dat_plu_n'] as String?;
    _accSingN = snapshotData['acc_sing_n'] as String?;
    _accPluN = snapshotData['acc_plu_n'] as String?;
    _ablSingN = snapshotData['abl_sing_n'] as String?;
    _ablPluN = snapshotData['abl_plu_n'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('pron');

  static Stream<PronRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PronRecord.fromSnapshot(s));

  static Future<PronRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PronRecord.fromSnapshot(s));

  static PronRecord fromSnapshot(DocumentSnapshot snapshot) => PronRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PronRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PronRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PronRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PronRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPronRecordData({
  String? word,
  String? translation,
  String? nomSingM,
  String? nomPluM,
  String? genSingM,
  String? genPluM,
  String? datSingM,
  String? datPluM,
  String? accSingM,
  String? accPluM,
  String? ablSingM,
  String? ablPluM,
  String? nomSingF,
  String? nomPluF,
  String? genSingF,
  String? genPluF,
  String? datSingF,
  String? datPluF,
  String? accSingF,
  String? accPluF,
  String? ablSingF,
  String? ablPluF,
  String? nomSingN,
  String? nomPluN,
  String? genSingN,
  String? genPluN,
  String? datSingN,
  String? datPluN,
  String? accSingN,
  String? accPluN,
  String? ablSingN,
  String? ablPluN,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'word': word,
      'translation': translation,
      'nom_sing_m': nomSingM,
      'nom_plu_m': nomPluM,
      'gen_sing_m': genSingM,
      'gen_plu_m': genPluM,
      'dat_sing_m': datSingM,
      'dat_plu_m': datPluM,
      'acc_sing_m': accSingM,
      'acc_plu_m': accPluM,
      'abl_sing_m': ablSingM,
      'abl_plu_m': ablPluM,
      'nom_sing_f': nomSingF,
      'nom_plu_f': nomPluF,
      'gen_sing_f': genSingF,
      'gen_plu_f': genPluF,
      'dat_sing_f': datSingF,
      'dat_plu_f': datPluF,
      'acc_sing_f': accSingF,
      'acc_plu_f': accPluF,
      'abl_sing_f': ablSingF,
      'abl_plu_f': ablPluF,
      'nom_sing_n': nomSingN,
      'nom_plu_n': nomPluN,
      'gen_sing_n': genSingN,
      'gen_plu_n': genPluN,
      'dat_sing_n': datSingN,
      'dat_plu_n': datPluN,
      'acc_sing_n': accSingN,
      'acc_plu_n': accPluN,
      'abl_sing_n': ablSingN,
      'abl_plu_n': ablPluN,
    }.withoutNulls,
  );

  return firestoreData;
}

class PronRecordDocumentEquality implements Equality<PronRecord> {
  const PronRecordDocumentEquality();

  @override
  bool equals(PronRecord? e1, PronRecord? e2) {
    return e1?.word == e2?.word &&
        e1?.translation == e2?.translation &&
        e1?.nomSingM == e2?.nomSingM &&
        e1?.nomPluM == e2?.nomPluM &&
        e1?.genSingM == e2?.genSingM &&
        e1?.genPluM == e2?.genPluM &&
        e1?.datSingM == e2?.datSingM &&
        e1?.datPluM == e2?.datPluM &&
        e1?.accSingM == e2?.accSingM &&
        e1?.accPluM == e2?.accPluM &&
        e1?.ablSingM == e2?.ablSingM &&
        e1?.ablPluM == e2?.ablPluM &&
        e1?.nomSingF == e2?.nomSingF &&
        e1?.nomPluF == e2?.nomPluF &&
        e1?.genSingF == e2?.genSingF &&
        e1?.genPluF == e2?.genPluF &&
        e1?.datSingF == e2?.datSingF &&
        e1?.datPluF == e2?.datPluF &&
        e1?.accSingF == e2?.accSingF &&
        e1?.accPluF == e2?.accPluF &&
        e1?.ablSingF == e2?.ablSingF &&
        e1?.ablPluF == e2?.ablPluF &&
        e1?.nomSingN == e2?.nomSingN &&
        e1?.nomPluN == e2?.nomPluN &&
        e1?.genSingN == e2?.genSingN &&
        e1?.genPluN == e2?.genPluN &&
        e1?.datSingN == e2?.datSingN &&
        e1?.datPluN == e2?.datPluN &&
        e1?.accSingN == e2?.accSingN &&
        e1?.accPluN == e2?.accPluN &&
        e1?.ablSingN == e2?.ablSingN &&
        e1?.ablPluN == e2?.ablPluN;
  }

  @override
  int hash(PronRecord? e) => const ListEquality().hash([
        e?.word,
        e?.translation,
        e?.nomSingM,
        e?.nomPluM,
        e?.genSingM,
        e?.genPluM,
        e?.datSingM,
        e?.datPluM,
        e?.accSingM,
        e?.accPluM,
        e?.ablSingM,
        e?.ablPluM,
        e?.nomSingF,
        e?.nomPluF,
        e?.genSingF,
        e?.genPluF,
        e?.datSingF,
        e?.datPluF,
        e?.accSingF,
        e?.accPluF,
        e?.ablSingF,
        e?.ablPluF,
        e?.nomSingN,
        e?.nomPluN,
        e?.genSingN,
        e?.genPluN,
        e?.datSingN,
        e?.datPluN,
        e?.accSingN,
        e?.accPluN,
        e?.ablSingN,
        e?.ablPluN
      ]);

  @override
  bool isValidKey(Object? o) => o is PronRecord;
}
