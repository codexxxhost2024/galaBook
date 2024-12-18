import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BookingPaymentRecord extends FirestoreRecord {
  BookingPaymentRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "amount" field.
  double? _amount;
  double get amount => _amount ?? 0.0;
  bool hasAmount() => _amount != null;

  // "paymentMethod" field.
  String? _paymentMethod;
  String get paymentMethod => _paymentMethod ?? '';
  bool hasPaymentMethod() => _paymentMethod != null;

  // "transactionId" field.
  String? _transactionId;
  String get transactionId => _transactionId ?? '';
  bool hasTransactionId() => _transactionId != null;

  // "booking" field.
  DocumentReference? _booking;
  DocumentReference? get booking => _booking;
  bool hasBooking() => _booking != null;

  void _initializeFields() {
    _amount = castToType<double>(snapshotData['amount']);
    _paymentMethod = snapshotData['paymentMethod'] as String?;
    _transactionId = snapshotData['transactionId'] as String?;
    _booking = snapshotData['booking'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('booking_payment');

  static Stream<BookingPaymentRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BookingPaymentRecord.fromSnapshot(s));

  static Future<BookingPaymentRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BookingPaymentRecord.fromSnapshot(s));

  static BookingPaymentRecord fromSnapshot(DocumentSnapshot snapshot) =>
      BookingPaymentRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BookingPaymentRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BookingPaymentRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BookingPaymentRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BookingPaymentRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBookingPaymentRecordData({
  double? amount,
  String? paymentMethod,
  String? transactionId,
  DocumentReference? booking,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'amount': amount,
      'paymentMethod': paymentMethod,
      'transactionId': transactionId,
      'booking': booking,
    }.withoutNulls,
  );

  return firestoreData;
}

class BookingPaymentRecordDocumentEquality
    implements Equality<BookingPaymentRecord> {
  const BookingPaymentRecordDocumentEquality();

  @override
  bool equals(BookingPaymentRecord? e1, BookingPaymentRecord? e2) {
    return e1?.amount == e2?.amount &&
        e1?.paymentMethod == e2?.paymentMethod &&
        e1?.transactionId == e2?.transactionId &&
        e1?.booking == e2?.booking;
  }

  @override
  int hash(BookingPaymentRecord? e) => const ListEquality()
      .hash([e?.amount, e?.paymentMethod, e?.transactionId, e?.booking]);

  @override
  bool isValidKey(Object? o) => o is BookingPaymentRecord;
}
