import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BookingRecord extends FirestoreRecord {
  BookingRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "hotel" field.
  DocumentReference? _hotel;
  DocumentReference? get hotel => _hotel;
  bool hasHotel() => _hotel != null;

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "room" field.
  DocumentReference? _room;
  DocumentReference? get room => _room;
  bool hasRoom() => _room != null;

  // "bookingDate" field.
  DateTime? _bookingDate;
  DateTime? get bookingDate => _bookingDate;
  bool hasBookingDate() => _bookingDate != null;

  // "startTime" field.
  DateTime? _startTime;
  DateTime? get startTime => _startTime;
  bool hasStartTime() => _startTime != null;

  // "endTime" field.
  DateTime? _endTime;
  DateTime? get endTime => _endTime;
  bool hasEndTime() => _endTime != null;

  // "numOfRooms" field.
  int? _numOfRooms;
  int get numOfRooms => _numOfRooms ?? 0;
  bool hasNumOfRooms() => _numOfRooms != null;

  void _initializeFields() {
    _hotel = snapshotData['hotel'] as DocumentReference?;
    _user = snapshotData['user'] as DocumentReference?;
    _room = snapshotData['room'] as DocumentReference?;
    _bookingDate = snapshotData['bookingDate'] as DateTime?;
    _startTime = snapshotData['startTime'] as DateTime?;
    _endTime = snapshotData['endTime'] as DateTime?;
    _numOfRooms = castToType<int>(snapshotData['numOfRooms']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('booking');

  static Stream<BookingRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BookingRecord.fromSnapshot(s));

  static Future<BookingRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BookingRecord.fromSnapshot(s));

  static BookingRecord fromSnapshot(DocumentSnapshot snapshot) =>
      BookingRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BookingRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BookingRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BookingRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BookingRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBookingRecordData({
  DocumentReference? hotel,
  DocumentReference? user,
  DocumentReference? room,
  DateTime? bookingDate,
  DateTime? startTime,
  DateTime? endTime,
  int? numOfRooms,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'hotel': hotel,
      'user': user,
      'room': room,
      'bookingDate': bookingDate,
      'startTime': startTime,
      'endTime': endTime,
      'numOfRooms': numOfRooms,
    }.withoutNulls,
  );

  return firestoreData;
}

class BookingRecordDocumentEquality implements Equality<BookingRecord> {
  const BookingRecordDocumentEquality();

  @override
  bool equals(BookingRecord? e1, BookingRecord? e2) {
    return e1?.hotel == e2?.hotel &&
        e1?.user == e2?.user &&
        e1?.room == e2?.room &&
        e1?.bookingDate == e2?.bookingDate &&
        e1?.startTime == e2?.startTime &&
        e1?.endTime == e2?.endTime &&
        e1?.numOfRooms == e2?.numOfRooms;
  }

  @override
  int hash(BookingRecord? e) => const ListEquality().hash([
        e?.hotel,
        e?.user,
        e?.room,
        e?.bookingDate,
        e?.startTime,
        e?.endTime,
        e?.numOfRooms
      ]);

  @override
  bool isValidKey(Object? o) => o is BookingRecord;
}
