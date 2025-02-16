import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EventsRecord extends FirestoreRecord {
  EventsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "eventType" field.
  String? _eventType;
  String get eventType => _eventType ?? '';
  bool hasEventType() => _eventType != null;

  // "clientName" field.
  String? _clientName;
  String get clientName => _clientName ?? '';
  bool hasClientName() => _clientName != null;

  // "mobileNumber" field.
  String? _mobileNumber;
  String get mobileNumber => _mobileNumber ?? '';
  bool hasMobileNumber() => _mobileNumber != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "location" field.
  String? _location;
  String get location => _location ?? '';
  bool hasLocation() => _location != null;

  // "seats" field.
  int? _seats;
  int get seats => _seats ?? 0;
  bool hasSeats() => _seats != null;

  // "venueType" field.
  Venuetype? _venueType;
  Venuetype? get venueType => _venueType;
  bool hasVenueType() => _venueType != null;

  // "cateringType" field.
  CateringType? _cateringType;
  CateringType? get cateringType => _cateringType;
  bool hasCateringType() => _cateringType != null;

  // "servingType" field.
  ServingType? _servingType;
  ServingType? get servingType => _servingType;
  bool hasServingType() => _servingType != null;

  // "isCompleted" field.
  bool? _isCompleted;
  bool get isCompleted => _isCompleted ?? false;
  bool hasIsCompleted() => _isCompleted != null;

  // "date" field.
  String? _date;
  String get date => _date ?? '';
  bool hasDate() => _date != null;

  // "imageUrl" field.
  String? _imageUrl;
  String get imageUrl => _imageUrl ?? '';
  bool hasImageUrl() => _imageUrl != null;

  // "review" field.
  String? _review;
  String get review => _review ?? '';
  bool hasReview() => _review != null;

  // "isRejected" field.
  bool? _isRejected;
  bool get isRejected => _isRejected ?? false;
  bool hasIsRejected() => _isRejected != null;

  void _initializeFields() {
    _eventType = snapshotData['eventType'] as String?;
    _clientName = snapshotData['clientName'] as String?;
    _mobileNumber = snapshotData['mobileNumber'] as String?;
    _email = snapshotData['email'] as String?;
    _location = snapshotData['location'] as String?;
    _seats = castToType<int>(snapshotData['seats']);
    _venueType = snapshotData['venueType'] is Venuetype
        ? snapshotData['venueType']
        : deserializeEnum<Venuetype>(snapshotData['venueType']);
    _cateringType = snapshotData['cateringType'] is CateringType
        ? snapshotData['cateringType']
        : deserializeEnum<CateringType>(snapshotData['cateringType']);
    _servingType = snapshotData['servingType'] is ServingType
        ? snapshotData['servingType']
        : deserializeEnum<ServingType>(snapshotData['servingType']);
    _isCompleted = snapshotData['isCompleted'] as bool?;
    _date = snapshotData['date'] as String?;
    _imageUrl = snapshotData['imageUrl'] as String?;
    _review = snapshotData['review'] as String?;
    _isRejected = snapshotData['isRejected'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('events');

  static Stream<EventsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EventsRecord.fromSnapshot(s));

  static Future<EventsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EventsRecord.fromSnapshot(s));

  static EventsRecord fromSnapshot(DocumentSnapshot snapshot) => EventsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EventsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EventsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EventsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EventsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEventsRecordData({
  String? eventType,
  String? clientName,
  String? mobileNumber,
  String? email,
  String? location,
  int? seats,
  Venuetype? venueType,
  CateringType? cateringType,
  ServingType? servingType,
  bool? isCompleted,
  String? date,
  String? imageUrl,
  String? review,
  bool? isRejected,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'eventType': eventType,
      'clientName': clientName,
      'mobileNumber': mobileNumber,
      'email': email,
      'location': location,
      'seats': seats,
      'venueType': venueType,
      'cateringType': cateringType,
      'servingType': servingType,
      'isCompleted': isCompleted,
      'date': date,
      'imageUrl': imageUrl,
      'review': review,
      'isRejected': isRejected,
    }.withoutNulls,
  );

  return firestoreData;
}

class EventsRecordDocumentEquality implements Equality<EventsRecord> {
  const EventsRecordDocumentEquality();

  @override
  bool equals(EventsRecord? e1, EventsRecord? e2) {
    return e1?.eventType == e2?.eventType &&
        e1?.clientName == e2?.clientName &&
        e1?.mobileNumber == e2?.mobileNumber &&
        e1?.email == e2?.email &&
        e1?.location == e2?.location &&
        e1?.seats == e2?.seats &&
        e1?.venueType == e2?.venueType &&
        e1?.cateringType == e2?.cateringType &&
        e1?.servingType == e2?.servingType &&
        e1?.isCompleted == e2?.isCompleted &&
        e1?.date == e2?.date &&
        e1?.imageUrl == e2?.imageUrl &&
        e1?.review == e2?.review &&
        e1?.isRejected == e2?.isRejected;
  }

  @override
  int hash(EventsRecord? e) => const ListEquality().hash([
        e?.eventType,
        e?.clientName,
        e?.mobileNumber,
        e?.email,
        e?.location,
        e?.seats,
        e?.venueType,
        e?.cateringType,
        e?.servingType,
        e?.isCompleted,
        e?.date,
        e?.imageUrl,
        e?.review,
        e?.isRejected
      ]);

  @override
  bool isValidKey(Object? o) => o is EventsRecord;
}
