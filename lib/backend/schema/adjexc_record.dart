import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AdjexcRecord extends FirestoreRecord {
  AdjexcRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "decl" field.
  int? _decl;
  int get decl => _decl ?? 0;
  bool hasDecl() => _decl != null;

  // "qn" field.
  int? _qn;
  int get qn => _qn ?? 0;
  bool hasQn() => _qn != null;

  // "masc" field.
  String? _masc;
  String get masc => _masc ?? '';
  bool hasMasc() => _masc != null;

  // "fem" field.
  String? _fem;
  String get fem => _fem ?? '';
  bool hasFem() => _fem != null;

  // "neu" field.
  String? _neu;
  String get neu => _neu ?? '';
  bool hasNeu() => _neu != null;

  // "eng" field.
  String? _eng;
  String get eng => _eng ?? '';
  bool hasEng() => _eng != null;

  // "engcomp" field.
  String? _engcomp;
  String get engcomp => _engcomp ?? '';
  bool hasEngcomp() => _engcomp != null;

  // "engsup" field.
  String? _engsup;
  String get engsup => _engsup ?? '';
  bool hasEngsup() => _engsup != null;

  void _initializeFields() {
    _decl = castToType<int>(snapshotData['decl']);
    _qn = castToType<int>(snapshotData['qn']);
    _masc = snapshotData['masc'] as String?;
    _fem = snapshotData['fem'] as String?;
    _neu = snapshotData['neu'] as String?;
    _eng = snapshotData['eng'] as String?;
    _engcomp = snapshotData['engcomp'] as String?;
    _engsup = snapshotData['engsup'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('adjexc');

  static Stream<AdjexcRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AdjexcRecord.fromSnapshot(s));

  static Future<AdjexcRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AdjexcRecord.fromSnapshot(s));

  static AdjexcRecord fromSnapshot(DocumentSnapshot snapshot) => AdjexcRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AdjexcRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AdjexcRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AdjexcRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AdjexcRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAdjexcRecordData({
  int? decl,
  int? qn,
  String? masc,
  String? fem,
  String? neu,
  String? eng,
  String? engcomp,
  String? engsup,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'decl': decl,
      'qn': qn,
      'masc': masc,
      'fem': fem,
      'neu': neu,
      'eng': eng,
      'engcomp': engcomp,
      'engsup': engsup,
    }.withoutNulls,
  );

  return firestoreData;
}

class AdjexcRecordDocumentEquality implements Equality<AdjexcRecord> {
  const AdjexcRecordDocumentEquality();

  @override
  bool equals(AdjexcRecord? e1, AdjexcRecord? e2) {
    return e1?.decl == e2?.decl &&
        e1?.qn == e2?.qn &&
        e1?.masc == e2?.masc &&
        e1?.fem == e2?.fem &&
        e1?.neu == e2?.neu &&
        e1?.eng == e2?.eng &&
        e1?.engcomp == e2?.engcomp &&
        e1?.engsup == e2?.engsup;
  }

  @override
  int hash(AdjexcRecord? e) => const ListEquality().hash(
      [e?.decl, e?.qn, e?.masc, e?.fem, e?.neu, e?.eng, e?.engcomp, e?.engsup]);

  @override
  bool isValidKey(Object? o) => o is AdjexcRecord;
}
