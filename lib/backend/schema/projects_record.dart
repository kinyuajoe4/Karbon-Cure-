import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProjectsRecord extends FirestoreRecord {
  ProjectsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "projectName" field.
  String? _projectName;
  String get projectName => _projectName ?? '';
  bool hasProjectName() => _projectName != null;

  // "locationName" field.
  String? _locationName;
  String get locationName => _locationName ?? '';
  bool hasLocationName() => _locationName != null;

  // "locationAddress" field.
  LatLng? _locationAddress;
  LatLng? get locationAddress => _locationAddress;
  bool hasLocationAddress() => _locationAddress != null;

  // "summary" field.
  String? _summary;
  String get summary => _summary ?? '';
  bool hasSummary() => _summary != null;

  // "howItWorks" field.
  String? _howItWorks;
  String get howItWorks => _howItWorks ?? '';
  bool hasHowItWorks() => _howItWorks != null;

  // "whyThisProject" field.
  String? _whyThisProject;
  String get whyThisProject => _whyThisProject ?? '';
  bool hasWhyThisProject() => _whyThisProject != null;

  // "locationfact" field.
  String? _locationfact;
  String get locationfact => _locationfact ?? '';
  bool hasLocationfact() => _locationfact != null;

  // "leadphoto" field.
  String? _leadphoto;
  String get leadphoto => _leadphoto ?? '';
  bool hasLeadphoto() => _leadphoto != null;

  // "isNature" field.
  bool? _isNature;
  bool get isNature => _isNature ?? false;
  bool hasIsNature() => _isNature != null;

  // "photo1" field.
  String? _photo1;
  String get photo1 => _photo1 ?? '';
  bool hasPhoto1() => _photo1 != null;

  // "photo2" field.
  String? _photo2;
  String get photo2 => _photo2 ?? '';
  bool hasPhoto2() => _photo2 != null;

  // "photo3" field.
  String? _photo3;
  String get photo3 => _photo3 ?? '';
  bool hasPhoto3() => _photo3 != null;

  // "photo4" field.
  String? _photo4;
  String get photo4 => _photo4 ?? '';
  bool hasPhoto4() => _photo4 != null;

  // "photo5" field.
  String? _photo5;
  String get photo5 => _photo5 ?? '';
  bool hasPhoto5() => _photo5 != null;

  void _initializeFields() {
    _projectName = snapshotData['projectName'] as String?;
    _locationName = snapshotData['locationName'] as String?;
    _locationAddress = snapshotData['locationAddress'] as LatLng?;
    _summary = snapshotData['summary'] as String?;
    _howItWorks = snapshotData['howItWorks'] as String?;
    _whyThisProject = snapshotData['whyThisProject'] as String?;
    _locationfact = snapshotData['locationfact'] as String?;
    _leadphoto = snapshotData['leadphoto'] as String?;
    _isNature = snapshotData['isNature'] as bool?;
    _photo1 = snapshotData['photo1'] as String?;
    _photo2 = snapshotData['photo2'] as String?;
    _photo3 = snapshotData['photo3'] as String?;
    _photo4 = snapshotData['photo4'] as String?;
    _photo5 = snapshotData['photo5'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('projects');

  static Stream<ProjectsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProjectsRecord.fromSnapshot(s));

  static Future<ProjectsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProjectsRecord.fromSnapshot(s));

  static ProjectsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProjectsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProjectsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProjectsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProjectsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProjectsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProjectsRecordData({
  String? projectName,
  String? locationName,
  LatLng? locationAddress,
  String? summary,
  String? howItWorks,
  String? whyThisProject,
  String? locationfact,
  String? leadphoto,
  bool? isNature,
  String? photo1,
  String? photo2,
  String? photo3,
  String? photo4,
  String? photo5,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'projectName': projectName,
      'locationName': locationName,
      'locationAddress': locationAddress,
      'summary': summary,
      'howItWorks': howItWorks,
      'whyThisProject': whyThisProject,
      'locationfact': locationfact,
      'leadphoto': leadphoto,
      'isNature': isNature,
      'photo1': photo1,
      'photo2': photo2,
      'photo3': photo3,
      'photo4': photo4,
      'photo5': photo5,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProjectsRecordDocumentEquality implements Equality<ProjectsRecord> {
  const ProjectsRecordDocumentEquality();

  @override
  bool equals(ProjectsRecord? e1, ProjectsRecord? e2) {
    return e1?.projectName == e2?.projectName &&
        e1?.locationName == e2?.locationName &&
        e1?.locationAddress == e2?.locationAddress &&
        e1?.summary == e2?.summary &&
        e1?.howItWorks == e2?.howItWorks &&
        e1?.whyThisProject == e2?.whyThisProject &&
        e1?.locationfact == e2?.locationfact &&
        e1?.leadphoto == e2?.leadphoto &&
        e1?.isNature == e2?.isNature &&
        e1?.photo1 == e2?.photo1 &&
        e1?.photo2 == e2?.photo2 &&
        e1?.photo3 == e2?.photo3 &&
        e1?.photo4 == e2?.photo4 &&
        e1?.photo5 == e2?.photo5;
  }

  @override
  int hash(ProjectsRecord? e) => const ListEquality().hash([
        e?.projectName,
        e?.locationName,
        e?.locationAddress,
        e?.summary,
        e?.howItWorks,
        e?.whyThisProject,
        e?.locationfact,
        e?.leadphoto,
        e?.isNature,
        e?.photo1,
        e?.photo2,
        e?.photo3,
        e?.photo4,
        e?.photo5
      ]);

  @override
  bool isValidKey(Object? o) => o is ProjectsRecord;
}
