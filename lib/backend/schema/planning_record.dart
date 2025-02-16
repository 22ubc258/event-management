import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PlanningRecord extends FirestoreRecord {
  PlanningRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "imageUrl" field.
  String? _imageUrl;
  String get imageUrl => _imageUrl ?? '';
  bool hasImageUrl() => _imageUrl != null;

  void _initializeFields() {
    _title = snapshotData['title'] as String?;
    _description = snapshotData['description'] as String?;
    _imageUrl = snapshotData['imageUrl'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('planning');

  static Stream<PlanningRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PlanningRecord.fromSnapshot(s));

  static Future<PlanningRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PlanningRecord.fromSnapshot(s));

  static PlanningRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PlanningRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PlanningRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PlanningRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PlanningRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PlanningRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPlanningRecordData({
  String? title,
  String? description,
  String? imageUrl,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'title': title,
      'description': description,
      'imageUrl': imageUrl,
    }.withoutNulls,
  );

  return firestoreData;
}

class PlanningRecordDocumentEquality implements Equality<PlanningRecord> {
  const PlanningRecordDocumentEquality();

  @override
  bool equals(PlanningRecord? e1, PlanningRecord? e2) {
    return e1?.title == e2?.title &&
        e1?.description == e2?.description &&
        e1?.imageUrl == e2?.imageUrl;
  }

  @override
  int hash(PlanningRecord? e) =>
      const ListEquality().hash([e?.title, e?.description, e?.imageUrl]);

  @override
  bool isValidKey(Object? o) => o is PlanningRecord;
}
