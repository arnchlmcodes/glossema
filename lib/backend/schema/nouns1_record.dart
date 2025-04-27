import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class Nouns1Record extends FirestoreRecord {
  Nouns1Record._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "word" field.
  String? _word;
  String get word => _word ?? '';
  bool hasWord() => _word != null;

  // "genitive" field.
  String? _genitive;
  String get genitive => _genitive ?? '';
  bool hasGenitive() => _genitive != null;

  // "gender" field.
  String? _gender;
  String get gender => _gender ?? '';
  bool hasGender() => _gender != null;

  // "noundec" field.
  String? _noundec;
  String get noundec => _noundec ?? '';
  bool hasNoundec() => _noundec != null;

  // "translation" field.
  String? _translation;
  String get translation => _translation ?? '';
  bool hasTranslation() => _translation != null;

  // "deck" field.
  int? _deck;
  int get deck => _deck ?? 0;
  bool hasDeck() => _deck != null;

  // "forms_Nom_singular" field.
  String? _formsNomSingular;
  String get formsNomSingular => _formsNomSingular ?? '';
  bool hasFormsNomSingular() => _formsNomSingular != null;

  // "forms_Nom_plural" field.
  String? _formsNomPlural;
  String get formsNomPlural => _formsNomPlural ?? '';
  bool hasFormsNomPlural() => _formsNomPlural != null;

  // "forms_Gen_singular" field.
  String? _formsGenSingular;
  String get formsGenSingular => _formsGenSingular ?? '';
  bool hasFormsGenSingular() => _formsGenSingular != null;

  // "forms_Gen_plural" field.
  String? _formsGenPlural;
  String get formsGenPlural => _formsGenPlural ?? '';
  bool hasFormsGenPlural() => _formsGenPlural != null;

  // "forms_Dat_singular" field.
  String? _formsDatSingular;
  String get formsDatSingular => _formsDatSingular ?? '';
  bool hasFormsDatSingular() => _formsDatSingular != null;

  // "forms_Dat_plural" field.
  String? _formsDatPlural;
  String get formsDatPlural => _formsDatPlural ?? '';
  bool hasFormsDatPlural() => _formsDatPlural != null;

  // "forms_Acc_singular" field.
  String? _formsAccSingular;
  String get formsAccSingular => _formsAccSingular ?? '';
  bool hasFormsAccSingular() => _formsAccSingular != null;

  // "forms_Acc_plural" field.
  String? _formsAccPlural;
  String get formsAccPlural => _formsAccPlural ?? '';
  bool hasFormsAccPlural() => _formsAccPlural != null;

  // "forms_Voc_singular" field.
  String? _formsVocSingular;
  String get formsVocSingular => _formsVocSingular ?? '';
  bool hasFormsVocSingular() => _formsVocSingular != null;

  // "forms_Voc_plural" field.
  String? _formsVocPlural;
  String get formsVocPlural => _formsVocPlural ?? '';
  bool hasFormsVocPlural() => _formsVocPlural != null;

  // "forms_Abl_singular" field.
  String? _formsAblSingular;
  String get formsAblSingular => _formsAblSingular ?? '';
  bool hasFormsAblSingular() => _formsAblSingular != null;

  // "forms_Abl_plural" field.
  String? _formsAblPlural;
  String get formsAblPlural => _formsAblPlural ?? '';
  bool hasFormsAblPlural() => _formsAblPlural != null;

  // "Noun" field.
  String? _noun;
  String get noun => _noun ?? '';
  bool hasNoun() => _noun != null;

  // "Plural" field.
  String? _plural;
  String get plural => _plural ?? '';
  bool hasPlural() => _plural != null;

  void _initializeFields() {
    _word = snapshotData['word'] as String?;
    _genitive = snapshotData['genitive'] as String?;
    _gender = snapshotData['gender'] as String?;
    _noundec = snapshotData['noundec'] as String?;
    _translation = snapshotData['translation'] as String?;
    _deck = castToType<int>(snapshotData['deck']);
    _formsNomSingular = snapshotData['forms_Nom_singular'] as String?;
    _formsNomPlural = snapshotData['forms_Nom_plural'] as String?;
    _formsGenSingular = snapshotData['forms_Gen_singular'] as String?;
    _formsGenPlural = snapshotData['forms_Gen_plural'] as String?;
    _formsDatSingular = snapshotData['forms_Dat_singular'] as String?;
    _formsDatPlural = snapshotData['forms_Dat_plural'] as String?;
    _formsAccSingular = snapshotData['forms_Acc_singular'] as String?;
    _formsAccPlural = snapshotData['forms_Acc_plural'] as String?;
    _formsVocSingular = snapshotData['forms_Voc_singular'] as String?;
    _formsVocPlural = snapshotData['forms_Voc_plural'] as String?;
    _formsAblSingular = snapshotData['forms_Abl_singular'] as String?;
    _formsAblPlural = snapshotData['forms_Abl_plural'] as String?;
    _noun = snapshotData['Noun'] as String?;
    _plural = snapshotData['Plural'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('nouns1');

  static Stream<Nouns1Record> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => Nouns1Record.fromSnapshot(s));

  static Future<Nouns1Record> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => Nouns1Record.fromSnapshot(s));

  static Nouns1Record fromSnapshot(DocumentSnapshot snapshot) => Nouns1Record._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static Nouns1Record getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      Nouns1Record._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'Nouns1Record(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is Nouns1Record &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createNouns1RecordData({
  String? word,
  String? genitive,
  String? gender,
  String? noundec,
  String? translation,
  int? deck,
  String? formsNomSingular,
  String? formsNomPlural,
  String? formsGenSingular,
  String? formsGenPlural,
  String? formsDatSingular,
  String? formsDatPlural,
  String? formsAccSingular,
  String? formsAccPlural,
  String? formsVocSingular,
  String? formsVocPlural,
  String? formsAblSingular,
  String? formsAblPlural,
  String? noun,
  String? plural,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'word': word,
      'genitive': genitive,
      'gender': gender,
      'noundec': noundec,
      'translation': translation,
      'deck': deck,
      'forms_Nom_singular': formsNomSingular,
      'forms_Nom_plural': formsNomPlural,
      'forms_Gen_singular': formsGenSingular,
      'forms_Gen_plural': formsGenPlural,
      'forms_Dat_singular': formsDatSingular,
      'forms_Dat_plural': formsDatPlural,
      'forms_Acc_singular': formsAccSingular,
      'forms_Acc_plural': formsAccPlural,
      'forms_Voc_singular': formsVocSingular,
      'forms_Voc_plural': formsVocPlural,
      'forms_Abl_singular': formsAblSingular,
      'forms_Abl_plural': formsAblPlural,
      'Noun': noun,
      'Plural': plural,
    }.withoutNulls,
  );

  return firestoreData;
}

class Nouns1RecordDocumentEquality implements Equality<Nouns1Record> {
  const Nouns1RecordDocumentEquality();

  @override
  bool equals(Nouns1Record? e1, Nouns1Record? e2) {
    return e1?.word == e2?.word &&
        e1?.genitive == e2?.genitive &&
        e1?.gender == e2?.gender &&
        e1?.noundec == e2?.noundec &&
        e1?.translation == e2?.translation &&
        e1?.deck == e2?.deck &&
        e1?.formsNomSingular == e2?.formsNomSingular &&
        e1?.formsNomPlural == e2?.formsNomPlural &&
        e1?.formsGenSingular == e2?.formsGenSingular &&
        e1?.formsGenPlural == e2?.formsGenPlural &&
        e1?.formsDatSingular == e2?.formsDatSingular &&
        e1?.formsDatPlural == e2?.formsDatPlural &&
        e1?.formsAccSingular == e2?.formsAccSingular &&
        e1?.formsAccPlural == e2?.formsAccPlural &&
        e1?.formsVocSingular == e2?.formsVocSingular &&
        e1?.formsVocPlural == e2?.formsVocPlural &&
        e1?.formsAblSingular == e2?.formsAblSingular &&
        e1?.formsAblPlural == e2?.formsAblPlural &&
        e1?.noun == e2?.noun &&
        e1?.plural == e2?.plural;
  }

  @override
  int hash(Nouns1Record? e) => const ListEquality().hash([
        e?.word,
        e?.genitive,
        e?.gender,
        e?.noundec,
        e?.translation,
        e?.deck,
        e?.formsNomSingular,
        e?.formsNomPlural,
        e?.formsGenSingular,
        e?.formsGenPlural,
        e?.formsDatSingular,
        e?.formsDatPlural,
        e?.formsAccSingular,
        e?.formsAccPlural,
        e?.formsVocSingular,
        e?.formsVocPlural,
        e?.formsAblSingular,
        e?.formsAblPlural,
        e?.noun,
        e?.plural
      ]);

  @override
  bool isValidKey(Object? o) => o is Nouns1Record;
}
