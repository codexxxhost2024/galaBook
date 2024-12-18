import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ListingRecord extends FirestoreRecord {
  ListingRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "location" field.
  LatLng? _location;
  LatLng? get location => _location;
  bool hasLocation() => _location != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  bool hasPrice() => _price != null;

  // "amenities" field.
  List<String>? _amenities;
  List<String> get amenities => _amenities ?? const [];
  bool hasAmenities() => _amenities != null;

  // "numOfRooms" field.
  int? _numOfRooms;
  int get numOfRooms => _numOfRooms ?? 0;
  bool hasNumOfRooms() => _numOfRooms != null;

  void _initializeFields() {
    _location = snapshotData['location'] as LatLng?;
    _name = snapshotData['name'] as String?;
    _image = snapshotData['image'] as String?;
    _description = snapshotData['description'] as String?;
    _price = castToType<double>(snapshotData['price']);
    _amenities = getDataList(snapshotData['amenities']);
    _numOfRooms = castToType<int>(snapshotData['numOfRooms']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('listing');

  static Stream<ListingRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ListingRecord.fromSnapshot(s));

  static Future<ListingRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ListingRecord.fromSnapshot(s));

  static ListingRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ListingRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ListingRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ListingRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ListingRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ListingRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createListingRecordData({
  LatLng? location,
  String? name,
  String? image,
  String? description,
  double? price,
  int? numOfRooms,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'location': location,
      'name': name,
      'image': image,
      'description': description,
      'price': price,
      'numOfRooms': numOfRooms,
    }.withoutNulls,
  );

  return firestoreData;
}

class ListingRecordDocumentEquality implements Equality<ListingRecord> {
  const ListingRecordDocumentEquality();

  @override
  bool equals(ListingRecord? e1, ListingRecord? e2) {
    const listEquality = ListEquality();
    return e1?.location == e2?.location &&
        e1?.name == e2?.name &&
        e1?.image == e2?.image &&
        e1?.description == e2?.description &&
        e1?.price == e2?.price &&
        listEquality.equals(e1?.amenities, e2?.amenities) &&
        e1?.numOfRooms == e2?.numOfRooms;
  }

  @override
  int hash(ListingRecord? e) => const ListEquality().hash([
        e?.location,
        e?.name,
        e?.image,
        e?.description,
        e?.price,
        e?.amenities,
        e?.numOfRooms
      ]);

  @override
  bool isValidKey(Object? o) => o is ListingRecord;
}
