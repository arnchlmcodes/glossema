import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class IrregverbsexcRecord extends FirestoreRecord {
  IrregverbsexcRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "qn" field.
  int? _qn;
  int get qn => _qn ?? 0;
  bool hasQn() => _qn != null;

  // "Present" field.
  String? _present;
  String get present => _present ?? '';
  bool hasPresent() => _present != null;

  // "Infinitive" field.
  String? _infinitive;
  String get infinitive => _infinitive ?? '';
  bool hasInfinitive() => _infinitive != null;

  // "Perfect" field.
  String? _perfect;
  String get perfect => _perfect ?? '';
  bool hasPerfect() => _perfect != null;

  // "English" field.
  String? _english;
  String get english => _english ?? '';
  bool hasEnglish() => _english != null;

  // "EnglishPerfect" field.
  String? _englishPerfect;
  String get englishPerfect => _englishPerfect ?? '';
  bool hasEnglishPerfect() => _englishPerfect != null;

  // "EnglishPassPerfect" field.
  String? _englishPassPerfect;
  String get englishPassPerfect => _englishPassPerfect ?? '';
  bool hasEnglishPassPerfect() => _englishPassPerfect != null;

  // "EnglishOngoing" field.
  String? _englishOngoing;
  String get englishOngoing => _englishOngoing ?? '';
  bool hasEnglishOngoing() => _englishOngoing != null;

  void _initializeFields() {
    _qn = castToType<int>(snapshotData['qn']);
    _present = snapshotData['Present'] as String?;
    _infinitive = snapshotData['Infinitive'] as String?;
    _perfect = snapshotData['Perfect'] as String?;
    _english = snapshotData['English'] as String?;
    _englishPerfect = snapshotData['EnglishPerfect'] as String?;
    _englishPassPerfect = snapshotData['EnglishPassPerfect'] as String?;
    _englishOngoing = snapshotData['EnglishOngoing'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('irregverbsexc');

  static Stream<IrregverbsexcRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => IrregverbsexcRecord.fromSnapshot(s));

  static Future<IrregverbsexcRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => IrregverbsexcRecord.fromSnapshot(s));

  static IrregverbsexcRecord fromSnapshot(DocumentSnapshot snapshot) =>
      IrregverbsexcRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static IrregverbsexcRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      IrregverbsexcRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'IrregverbsexcRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is IrregverbsexcRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createIrregverbsexcRecordData({
  int? qn,
  String? present,
  String? infinitive,
  String? perfect,
  String? english,
  String? englishPerfect,
  String? englishPassPerfect,
  String? englishOngoing,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'qn': qn,
      'Present': present,
      'Infinitive': infinitive,
      'Perfect': perfect,
      'English': english,
      'EnglishPerfect': englishPerfect,
      'EnglishPassPerfect': englishPassPerfect,
      'EnglishOngoing': englishOngoing,
    }.withoutNulls,
  );

  return firestoreData;
}

class IrregverbsexcRecordDocumentEquality
    implements Equality<IrregverbsexcRecord> {
  const IrregverbsexcRecordDocumentEquality();

  @override
  bool equals(IrregverbsexcRecord? e1, IrregverbsexcRecord? e2) {
    return e1?.qn == e2?.qn &&
        e1?.present == e2?.present &&
        e1?.infinitive == e2?.infinitive &&
        e1?.perfect == e2?.perfect &&
        e1?.english == e2?.english &&
        e1?.englishPerfect == e2?.englishPerfect &&
        e1?.englishPassPerfect == e2?.englishPassPerfect &&
        e1?.englishOngoing == e2?.englishOngoing;
  }

  @override
  int hash(IrregverbsexcRecord? e) => const ListEquality().hash([
        e?.qn,
        e?.present,
        e?.infinitive,
        e?.perfect,
        e?.english,
        e?.englishPerfect,
        e?.englishPassPerfect,
        e?.englishOngoing
      ]);

  @override
  bool isValidKey(Object? o) => o is IrregverbsexcRecord;
}
