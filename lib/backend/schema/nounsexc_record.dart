import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NounsexcRecord extends FirestoreRecord {
  NounsexcRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Nounsdecl" field.
  int? _nounsdecl;
  int get nounsdecl => _nounsdecl ?? 0;
  bool hasNounsdecl() => _nounsdecl != null;

  // "qn" field.
  int? _qn;
  int get qn => _qn ?? 0;
  bool hasQn() => _qn != null;

  // "ns" field.
  String? _ns;
  String get ns => _ns ?? '';
  bool hasNs() => _ns != null;

  // "gs" field.
  String? _gs;
  String get gs => _gs ?? '';
  bool hasGs() => _gs != null;

  // "Gender" field.
  String? _gender;
  String get gender => _gender ?? '';
  bool hasGender() => _gender != null;

  // "englishsng" field.
  String? _englishsng;
  String get englishsng => _englishsng ?? '';
  bool hasEnglishsng() => _englishsng != null;

  // "englshplu" field.
  String? _englshplu;
  String get englshplu => _englshplu ?? '';
  bool hasEnglshplu() => _englshplu != null;

  void _initializeFields() {
    _nounsdecl = castToType<int>(snapshotData['Nounsdecl']);
    _qn = castToType<int>(snapshotData['qn']);
    _ns = snapshotData['ns'] as String?;
    _gs = snapshotData['gs'] as String?;
    _gender = snapshotData['Gender'] as String?;
    _englishsng = snapshotData['englishsng'] as String?;
    _englshplu = snapshotData['englshplu'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('nounsexc');

  static Stream<NounsexcRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => NounsexcRecord.fromSnapshot(s));

  static Future<NounsexcRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => NounsexcRecord.fromSnapshot(s));

  static NounsexcRecord fromSnapshot(DocumentSnapshot snapshot) =>
      NounsexcRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static NounsexcRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      NounsexcRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'NounsexcRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is NounsexcRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createNounsexcRecordData({
  int? nounsdecl,
  int? qn,
  String? ns,
  String? gs,
  String? gender,
  String? englishsng,
  String? englshplu,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Nounsdecl': nounsdecl,
      'qn': qn,
      'ns': ns,
      'gs': gs,
      'Gender': gender,
      'englishsng': englishsng,
      'englshplu': englshplu,
    }.withoutNulls,
  );

  return firestoreData;
}

class NounsexcRecordDocumentEquality implements Equality<NounsexcRecord> {
  const NounsexcRecordDocumentEquality();

  @override
  bool equals(NounsexcRecord? e1, NounsexcRecord? e2) {
    return e1?.nounsdecl == e2?.nounsdecl &&
        e1?.qn == e2?.qn &&
        e1?.ns == e2?.ns &&
        e1?.gs == e2?.gs &&
        e1?.gender == e2?.gender &&
        e1?.englishsng == e2?.englishsng &&
        e1?.englshplu == e2?.englshplu;
  }

  @override
  int hash(NounsexcRecord? e) => const ListEquality().hash([
        e?.nounsdecl,
        e?.qn,
        e?.ns,
        e?.gs,
        e?.gender,
        e?.englishsng,
        e?.englshplu
      ]);

  @override
  bool isValidKey(Object? o) => o is NounsexcRecord;
}
