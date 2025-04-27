import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RegverbsexcRecord extends FirestoreRecord {
  RegverbsexcRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "decl" field.
  int? _decl;
  int get decl => _decl ?? 0;
  bool hasDecl() => _decl != null;

  // "pres" field.
  String? _pres;
  String get pres => _pres ?? '';
  bool hasPres() => _pres != null;

  // "infi" field.
  String? _infi;
  String get infi => _infi ?? '';
  bool hasInfi() => _infi != null;

  // "perf" field.
  String? _perf;
  String get perf => _perf ?? '';
  bool hasPerf() => _perf != null;

  // "passperf" field.
  String? _passperf;
  String get passperf => _passperf ?? '';
  bool hasPassperf() => _passperf != null;

  // "eng" field.
  String? _eng;
  String get eng => _eng ?? '';
  bool hasEng() => _eng != null;

  // "engperf" field.
  String? _engperf;
  String get engperf => _engperf ?? '';
  bool hasEngperf() => _engperf != null;

  // "engpassperf" field.
  String? _engpassperf;
  String get engpassperf => _engpassperf ?? '';
  bool hasEngpassperf() => _engpassperf != null;

  // "engong" field.
  String? _engong;
  String get engong => _engong ?? '';
  bool hasEngong() => _engong != null;

  // "qn" field.
  int? _qn;
  int get qn => _qn ?? 0;
  bool hasQn() => _qn != null;

  void _initializeFields() {
    _decl = castToType<int>(snapshotData['decl']);
    _pres = snapshotData['pres'] as String?;
    _infi = snapshotData['infi'] as String?;
    _perf = snapshotData['perf'] as String?;
    _passperf = snapshotData['passperf'] as String?;
    _eng = snapshotData['eng'] as String?;
    _engperf = snapshotData['engperf'] as String?;
    _engpassperf = snapshotData['engpassperf'] as String?;
    _engong = snapshotData['engong'] as String?;
    _qn = castToType<int>(snapshotData['qn']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('regverbsexc');

  static Stream<RegverbsexcRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RegverbsexcRecord.fromSnapshot(s));

  static Future<RegverbsexcRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RegverbsexcRecord.fromSnapshot(s));

  static RegverbsexcRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RegverbsexcRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RegverbsexcRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RegverbsexcRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RegverbsexcRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RegverbsexcRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRegverbsexcRecordData({
  int? decl,
  String? pres,
  String? infi,
  String? perf,
  String? passperf,
  String? eng,
  String? engperf,
  String? engpassperf,
  String? engong,
  int? qn,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'decl': decl,
      'pres': pres,
      'infi': infi,
      'perf': perf,
      'passperf': passperf,
      'eng': eng,
      'engperf': engperf,
      'engpassperf': engpassperf,
      'engong': engong,
      'qn': qn,
    }.withoutNulls,
  );

  return firestoreData;
}

class RegverbsexcRecordDocumentEquality implements Equality<RegverbsexcRecord> {
  const RegverbsexcRecordDocumentEquality();

  @override
  bool equals(RegverbsexcRecord? e1, RegverbsexcRecord? e2) {
    return e1?.decl == e2?.decl &&
        e1?.pres == e2?.pres &&
        e1?.infi == e2?.infi &&
        e1?.perf == e2?.perf &&
        e1?.passperf == e2?.passperf &&
        e1?.eng == e2?.eng &&
        e1?.engperf == e2?.engperf &&
        e1?.engpassperf == e2?.engpassperf &&
        e1?.engong == e2?.engong &&
        e1?.qn == e2?.qn;
  }

  @override
  int hash(RegverbsexcRecord? e) => const ListEquality().hash([
        e?.decl,
        e?.pres,
        e?.infi,
        e?.perf,
        e?.passperf,
        e?.eng,
        e?.engperf,
        e?.engpassperf,
        e?.engong,
        e?.qn
      ]);

  @override
  bool isValidKey(Object? o) => o is RegverbsexcRecord;
}
