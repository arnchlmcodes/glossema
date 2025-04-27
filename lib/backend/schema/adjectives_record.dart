import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AdjectivesRecord extends FirestoreRecord {
  AdjectivesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

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

  // "trans" field.
  String? _trans;
  String get trans => _trans ?? '';
  bool hasTrans() => _trans != null;

  // "decl" field.
  String? _decl;
  String get decl => _decl ?? '';
  bool hasDecl() => _decl != null;

  // "deck" field.
  int? _deck;
  int get deck => _deck ?? 0;
  bool hasDeck() => _deck != null;

  void _initializeFields() {
    _masc = snapshotData['masc'] as String?;
    _fem = snapshotData['fem'] as String?;
    _neu = snapshotData['neu'] as String?;
    _trans = snapshotData['trans'] as String?;
    _decl = snapshotData['decl'] as String?;
    _deck = castToType<int>(snapshotData['deck']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('adjectives');

  static Stream<AdjectivesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AdjectivesRecord.fromSnapshot(s));

  static Future<AdjectivesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AdjectivesRecord.fromSnapshot(s));

  static AdjectivesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AdjectivesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AdjectivesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AdjectivesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AdjectivesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AdjectivesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAdjectivesRecordData({
  String? masc,
  String? fem,
  String? neu,
  String? trans,
  String? decl,
  int? deck,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'masc': masc,
      'fem': fem,
      'neu': neu,
      'trans': trans,
      'decl': decl,
      'deck': deck,
    }.withoutNulls,
  );

  return firestoreData;
}

class AdjectivesRecordDocumentEquality implements Equality<AdjectivesRecord> {
  const AdjectivesRecordDocumentEquality();

  @override
  bool equals(AdjectivesRecord? e1, AdjectivesRecord? e2) {
    return e1?.masc == e2?.masc &&
        e1?.fem == e2?.fem &&
        e1?.neu == e2?.neu &&
        e1?.trans == e2?.trans &&
        e1?.decl == e2?.decl &&
        e1?.deck == e2?.deck;
  }

  @override
  int hash(AdjectivesRecord? e) => const ListEquality()
      .hash([e?.masc, e?.fem, e?.neu, e?.trans, e?.decl, e?.deck]);

  @override
  bool isValidKey(Object? o) => o is AdjectivesRecord;
}
