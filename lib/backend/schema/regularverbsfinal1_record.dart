import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class Regularverbsfinal1Record extends FirestoreRecord {
  Regularverbsfinal1Record._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "infi" field.
  String? _infi;
  String get infi => _infi ?? '';
  bool hasInfi() => _infi != null;

  // "word" field.
  String? _word;
  String get word => _word ?? '';
  bool hasWord() => _word != null;

  // "perfect" field.
  String? _perfect;
  String get perfect => _perfect ?? '';
  bool hasPerfect() => _perfect != null;

  // "passperf" field.
  String? _passperf;
  String get passperf => _passperf ?? '';
  bool hasPassperf() => _passperf != null;

  // "translation" field.
  String? _translation;
  String get translation => _translation ?? '';
  bool hasTranslation() => _translation != null;

  // "dep" field.
  String? _dep;
  String get dep => _dep ?? '';
  bool hasDep() => _dep != null;

  // "deck" field.
  int? _deck;
  int get deck => _deck ?? 0;
  bool hasDeck() => _deck != null;

  // "simplifiedenglish" field.
  String? _simplifiedenglish;
  String get simplifiedenglish => _simplifiedenglish ?? '';
  bool hasSimplifiedenglish() => _simplifiedenglish != null;

  // "PassivePerfect" field.
  String? _passivePerfect;
  String get passivePerfect => _passivePerfect ?? '';
  bool hasPassivePerfect() => _passivePerfect != null;

  // "Ongoing" field.
  String? _ongoing;
  String get ongoing => _ongoing ?? '';
  bool hasOngoing() => _ongoing != null;

  void _initializeFields() {
    _infi = snapshotData['infi'] as String?;
    _word = snapshotData['word'] as String?;
    _perfect = snapshotData['perfect'] as String?;
    _passperf = snapshotData['passperf'] as String?;
    _translation = snapshotData['translation'] as String?;
    _dep = snapshotData['dep'] as String?;
    _deck = castToType<int>(snapshotData['deck']);
    _simplifiedenglish = snapshotData['simplifiedenglish'] as String?;
    _passivePerfect = snapshotData['PassivePerfect'] as String?;
    _ongoing = snapshotData['Ongoing'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('regularverbsfinal1');

  static Stream<Regularverbsfinal1Record> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => Regularverbsfinal1Record.fromSnapshot(s));

  static Future<Regularverbsfinal1Record> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => Regularverbsfinal1Record.fromSnapshot(s));

  static Regularverbsfinal1Record fromSnapshot(DocumentSnapshot snapshot) =>
      Regularverbsfinal1Record._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static Regularverbsfinal1Record getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      Regularverbsfinal1Record._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'Regularverbsfinal1Record(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is Regularverbsfinal1Record &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRegularverbsfinal1RecordData({
  String? infi,
  String? word,
  String? perfect,
  String? passperf,
  String? translation,
  String? dep,
  int? deck,
  String? simplifiedenglish,
  String? passivePerfect,
  String? ongoing,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'infi': infi,
      'word': word,
      'perfect': perfect,
      'passperf': passperf,
      'translation': translation,
      'dep': dep,
      'deck': deck,
      'simplifiedenglish': simplifiedenglish,
      'PassivePerfect': passivePerfect,
      'Ongoing': ongoing,
    }.withoutNulls,
  );

  return firestoreData;
}

class Regularverbsfinal1RecordDocumentEquality
    implements Equality<Regularverbsfinal1Record> {
  const Regularverbsfinal1RecordDocumentEquality();

  @override
  bool equals(Regularverbsfinal1Record? e1, Regularverbsfinal1Record? e2) {
    return e1?.infi == e2?.infi &&
        e1?.word == e2?.word &&
        e1?.perfect == e2?.perfect &&
        e1?.passperf == e2?.passperf &&
        e1?.translation == e2?.translation &&
        e1?.dep == e2?.dep &&
        e1?.deck == e2?.deck &&
        e1?.simplifiedenglish == e2?.simplifiedenglish &&
        e1?.passivePerfect == e2?.passivePerfect &&
        e1?.ongoing == e2?.ongoing;
  }

  @override
  int hash(Regularverbsfinal1Record? e) => const ListEquality().hash([
        e?.infi,
        e?.word,
        e?.perfect,
        e?.passperf,
        e?.translation,
        e?.dep,
        e?.deck,
        e?.simplifiedenglish,
        e?.passivePerfect,
        e?.ongoing
      ]);

  @override
  bool isValidKey(Object? o) => o is Regularverbsfinal1Record;
}
