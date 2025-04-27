import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PronounsexcRecord extends FirestoreRecord {
  PronounsexcRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "type" field.
  int? _type;
  int get type => _type ?? 0;
  bool hasType() => _type != null;

  // "qn" field.
  int? _qn;
  int get qn => _qn ?? 0;
  bool hasQn() => _qn != null;

  // "word" field.
  String? _word;
  String get word => _word ?? '';
  bool hasWord() => _word != null;

  // "english" field.
  String? _english;
  String get english => _english ?? '';
  bool hasEnglish() => _english != null;

  void _initializeFields() {
    _type = castToType<int>(snapshotData['type']);
    _qn = castToType<int>(snapshotData['qn']);
    _word = snapshotData['word'] as String?;
    _english = snapshotData['english'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('pronounsexc');

  static Stream<PronounsexcRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PronounsexcRecord.fromSnapshot(s));

  static Future<PronounsexcRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PronounsexcRecord.fromSnapshot(s));

  static PronounsexcRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PronounsexcRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PronounsexcRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PronounsexcRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PronounsexcRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PronounsexcRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPronounsexcRecordData({
  int? type,
  int? qn,
  String? word,
  String? english,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'type': type,
      'qn': qn,
      'word': word,
      'english': english,
    }.withoutNulls,
  );

  return firestoreData;
}

class PronounsexcRecordDocumentEquality implements Equality<PronounsexcRecord> {
  const PronounsexcRecordDocumentEquality();

  @override
  bool equals(PronounsexcRecord? e1, PronounsexcRecord? e2) {
    return e1?.type == e2?.type &&
        e1?.qn == e2?.qn &&
        e1?.word == e2?.word &&
        e1?.english == e2?.english;
  }

  @override
  int hash(PronounsexcRecord? e) =>
      const ListEquality().hash([e?.type, e?.qn, e?.word, e?.english]);

  @override
  bool isValidKey(Object? o) => o is PronounsexcRecord;
}
