import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DepverbRecord extends FirestoreRecord {
  DepverbRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Decl" field.
  String? _decl;
  String get decl => _decl ?? '';
  bool hasDecl() => _decl != null;

  // "trans" field.
  String? _trans;
  String get trans => _trans ?? '';
  bool hasTrans() => _trans != null;

  // "present" field.
  String? _present;
  String get present => _present ?? '';
  bool hasPresent() => _present != null;

  // "infi" field.
  String? _infi;
  String get infi => _infi ?? '';
  bool hasInfi() => _infi != null;

  // "perf" field.
  String? _perf;
  String get perf => _perf ?? '';
  bool hasPerf() => _perf != null;

  // "deck" field.
  int? _deck;
  int get deck => _deck ?? 0;
  bool hasDeck() => _deck != null;

  void _initializeFields() {
    _decl = snapshotData['Decl'] as String?;
    _trans = snapshotData['trans'] as String?;
    _present = snapshotData['present'] as String?;
    _infi = snapshotData['infi'] as String?;
    _perf = snapshotData['perf'] as String?;
    _deck = castToType<int>(snapshotData['deck']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('depverb');

  static Stream<DepverbRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DepverbRecord.fromSnapshot(s));

  static Future<DepverbRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DepverbRecord.fromSnapshot(s));

  static DepverbRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DepverbRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DepverbRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DepverbRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DepverbRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DepverbRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDepverbRecordData({
  String? decl,
  String? trans,
  String? present,
  String? infi,
  String? perf,
  int? deck,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Decl': decl,
      'trans': trans,
      'present': present,
      'infi': infi,
      'perf': perf,
      'deck': deck,
    }.withoutNulls,
  );

  return firestoreData;
}

class DepverbRecordDocumentEquality implements Equality<DepverbRecord> {
  const DepverbRecordDocumentEquality();

  @override
  bool equals(DepverbRecord? e1, DepverbRecord? e2) {
    return e1?.decl == e2?.decl &&
        e1?.trans == e2?.trans &&
        e1?.present == e2?.present &&
        e1?.infi == e2?.infi &&
        e1?.perf == e2?.perf &&
        e1?.deck == e2?.deck;
  }

  @override
  int hash(DepverbRecord? e) => const ListEquality()
      .hash([e?.decl, e?.trans, e?.present, e?.infi, e?.perf, e?.deck]);

  @override
  bool isValidKey(Object? o) => o is DepverbRecord;
}
