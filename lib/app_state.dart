import 'package:flutter/material.dart';
import 'backend/api_requests/api_manager.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:csv/csv.dart';
import 'package:synchronized/synchronized.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    secureStorage = FlutterSecureStorage();
    await _safeInitAsync(() async {
      _PeriodOne = await secureStorage.getString('ff_PeriodOne') ?? _PeriodOne;
    });
    await _safeInitAsync(() async {
      _PeriodTwo = await secureStorage.getString('ff_PeriodTwo') ?? _PeriodTwo;
    });
    await _safeInitAsync(() async {
      _PeriodThree =
          await secureStorage.getString('ff_PeriodThree') ?? _PeriodThree;
    });
    await _safeInitAsync(() async {
      _PeriodFour =
          await secureStorage.getString('ff_PeriodFour') ?? _PeriodFour;
    });
    await _safeInitAsync(() async {
      _PeriodFive =
          await secureStorage.getString('ff_PeriodFive') ?? _PeriodFive;
    });
    await _safeInitAsync(() async {
      _PeriodSix = await secureStorage.getString('ff_PeriodSix') ?? _PeriodSix;
    });
    await _safeInitAsync(() async {
      _PeriodSeven =
          await secureStorage.getString('ff_PeriodSeven') ?? _PeriodSeven;
    });
    await _safeInitAsync(() async {
      _PeriodEight =
          await secureStorage.getString('ff_PeriodEight') ?? _PeriodEight;
    });
    await _safeInitAsync(() async {
      _UserName = await secureStorage.getString('ff_UserName') ?? _UserName;
    });
    await _safeInitAsync(() async {
      _UserGradeLevel =
          await secureStorage.getString('ff_UserGradeLevel') ?? _UserGradeLevel;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late FlutterSecureStorage secureStorage;

  int _DayCount = 0;
  int get DayCount => _DayCount;
  set DayCount(int _value) {
    _DayCount = _value;
  }

  String _PeriodOne = 'Period One';
  String get PeriodOne => _PeriodOne;
  set PeriodOne(String _value) {
    _PeriodOne = _value;
    secureStorage.setString('ff_PeriodOne', _value);
  }

  void deletePeriodOne() {
    secureStorage.delete(key: 'ff_PeriodOne');
  }

  String _PeriodTwo = 'Period Two';
  String get PeriodTwo => _PeriodTwo;
  set PeriodTwo(String _value) {
    _PeriodTwo = _value;
    secureStorage.setString('ff_PeriodTwo', _value);
  }

  void deletePeriodTwo() {
    secureStorage.delete(key: 'ff_PeriodTwo');
  }

  String _PeriodThree = 'Period Three';
  String get PeriodThree => _PeriodThree;
  set PeriodThree(String _value) {
    _PeriodThree = _value;
    secureStorage.setString('ff_PeriodThree', _value);
  }

  void deletePeriodThree() {
    secureStorage.delete(key: 'ff_PeriodThree');
  }

  String _PeriodFour = 'Period Four';
  String get PeriodFour => _PeriodFour;
  set PeriodFour(String _value) {
    _PeriodFour = _value;
    secureStorage.setString('ff_PeriodFour', _value);
  }

  void deletePeriodFour() {
    secureStorage.delete(key: 'ff_PeriodFour');
  }

  String _PeriodFive = 'Period Five';
  String get PeriodFive => _PeriodFive;
  set PeriodFive(String _value) {
    _PeriodFive = _value;
    secureStorage.setString('ff_PeriodFive', _value);
  }

  void deletePeriodFive() {
    secureStorage.delete(key: 'ff_PeriodFive');
  }

  String _PeriodSix = 'Period Six';
  String get PeriodSix => _PeriodSix;
  set PeriodSix(String _value) {
    _PeriodSix = _value;
    secureStorage.setString('ff_PeriodSix', _value);
  }

  void deletePeriodSix() {
    secureStorage.delete(key: 'ff_PeriodSix');
  }

  String _PeriodSeven = 'Period Seven';
  String get PeriodSeven => _PeriodSeven;
  set PeriodSeven(String _value) {
    _PeriodSeven = _value;
    secureStorage.setString('ff_PeriodSeven', _value);
  }

  void deletePeriodSeven() {
    secureStorage.delete(key: 'ff_PeriodSeven');
  }

  String _PeriodEight = 'Period Eight';
  String get PeriodEight => _PeriodEight;
  set PeriodEight(String _value) {
    _PeriodEight = _value;
    secureStorage.setString('ff_PeriodEight', _value);
  }

  void deletePeriodEight() {
    secureStorage.delete(key: 'ff_PeriodEight');
  }

  String _UserName = '';
  String get UserName => _UserName;
  set UserName(String _value) {
    _UserName = _value;
    secureStorage.setString('ff_UserName', _value);
  }

  void deleteUserName() {
    secureStorage.delete(key: 'ff_UserName');
  }

  String _UserGradeLevel = '';
  String get UserGradeLevel => _UserGradeLevel;
  set UserGradeLevel(String _value) {
    _UserGradeLevel = _value;
    secureStorage.setString('ff_UserGradeLevel', _value);
  }

  void deleteUserGradeLevel() {
    secureStorage.delete(key: 'ff_UserGradeLevel');
  }

  String _emailWorks = 'School Email';
  String get emailWorks => _emailWorks;
  set emailWorks(String _value) {
    _emailWorks = _value;
  }

  String _ClubSearch = '';
  String get ClubSearch => _ClubSearch;
  set ClubSearch(String _value) {
    _ClubSearch = _value;
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}

extension FlutterSecureStorageExtensions on FlutterSecureStorage {
  static final _lock = Lock();

  Future<void> writeSync({required String key, String? value}) async =>
      await _lock.synchronized(() async {
        await write(key: key, value: value);
      });

  void remove(String key) => delete(key: key);

  Future<String?> getString(String key) async => await read(key: key);
  Future<void> setString(String key, String value) async =>
      await writeSync(key: key, value: value);

  Future<bool?> getBool(String key) async => (await read(key: key)) == 'true';
  Future<void> setBool(String key, bool value) async =>
      await writeSync(key: key, value: value.toString());

  Future<int?> getInt(String key) async =>
      int.tryParse(await read(key: key) ?? '');
  Future<void> setInt(String key, int value) async =>
      await writeSync(key: key, value: value.toString());

  Future<double?> getDouble(String key) async =>
      double.tryParse(await read(key: key) ?? '');
  Future<void> setDouble(String key, double value) async =>
      await writeSync(key: key, value: value.toString());

  Future<List<String>?> getStringList(String key) async =>
      await read(key: key).then((result) {
        if (result == null || result.isEmpty) {
          return null;
        }
        return CsvToListConverter()
            .convert(result)
            .first
            .map((e) => e.toString())
            .toList();
      });
  Future<void> setStringList(String key, List<String> value) async =>
      await writeSync(key: key, value: ListToCsvConverter().convert([value]));
}
