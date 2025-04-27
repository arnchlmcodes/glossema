import 'package:flutter/material.dart';
import '/backend/backend.dart';
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
      _unlockednouns = (await secureStorage.getStringList('ff_unlockednouns'))
              ?.map((x) => x == 'true')
              .toList() ??
          _unlockednouns;
    });
    await _safeInitAsync(() async {
      _currentnountype =
          await secureStorage.getInt('ff_currentnountype') ?? _currentnountype;
    });
    await _safeInitAsync(() async {
      _nounqns = (await secureStorage.getStringList('ff_nounqns'))
              ?.map(int.parse)
              .toList() ??
          _nounqns;
    });
    await _safeInitAsync(() async {
      _unlockedirregverbs =
          (await secureStorage.getStringList('ff_unlockedirregverbs'))
                  ?.map((x) => x == 'true')
                  .toList() ??
              _unlockedirregverbs;
    });
    await _safeInitAsync(() async {
      _currentirregverbtype =
          await secureStorage.getInt('ff_currentirregverbtype') ??
              _currentirregverbtype;
    });
    await _safeInitAsync(() async {
      _irregverbqns = (await secureStorage.getStringList('ff_irregverbqns'))
              ?.map(int.parse)
              .toList() ??
          _irregverbqns;
    });
    await _safeInitAsync(() async {
      _regverbsqn = (await secureStorage.getStringList('ff_regverbsqn'))
              ?.map(int.parse)
              .toList() ??
          _regverbsqn;
    });
    await _safeInitAsync(() async {
      _unlockedregverbtype =
          (await secureStorage.getStringList('ff_unlockedregverbtype'))
                  ?.map((x) => x == 'true')
                  .toList() ??
              _unlockedregverbtype;
    });
    await _safeInitAsync(() async {
      _unlockedregverbactpass =
          (await secureStorage.getStringList('ff_unlockedregverbactpass'))
                  ?.map((x) => x == 'true')
                  .toList() ??
              _unlockedregverbactpass;
    });
    await _safeInitAsync(() async {
      _unlockedregverbdecl =
          (await secureStorage.getStringList('ff_unlockedregverbdecl'))
                  ?.map((x) => x == 'true')
                  .toList() ??
              _unlockedregverbdecl;
    });
    await _safeInitAsync(() async {
      _irregunlocked =
          await secureStorage.getBool('ff_irregunlocked') ?? _irregunlocked;
    });
    await _safeInitAsync(() async {
      _currentregverbtype =
          await secureStorage.getInt('ff_currentregverbtype') ??
              _currentregverbtype;
    });
    await _safeInitAsync(() async {
      _currenregverbactpasstype =
          await secureStorage.getInt('ff_currenregverbactpasstype') ??
              _currenregverbactpasstype;
    });
    await _safeInitAsync(() async {
      _currentregverbdecltype =
          await secureStorage.getInt('ff_currentregverbdecltype') ??
              _currentregverbdecltype;
    });
    await _safeInitAsync(() async {
      _adjdeclunlocked =
          (await secureStorage.getStringList('ff_adjdeclunlocked'))
                  ?.map((x) => x == 'true')
                  .toList() ??
              _adjdeclunlocked;
    });
    await _safeInitAsync(() async {
      _adjgenderunlock =
          (await secureStorage.getStringList('ff_adjgenderunlock'))
                  ?.map((x) => x == 'true')
                  .toList() ??
              _adjgenderunlock;
    });
    await _safeInitAsync(() async {
      _adjqn = (await secureStorage.getStringList('ff_adjqn'))
              ?.map(int.parse)
              .toList() ??
          _adjqn;
    });
    await _safeInitAsync(() async {
      _currentdecladj =
          await secureStorage.getInt('ff_currentdecladj') ?? _currentdecladj;
    });
    await _safeInitAsync(() async {
      _pronounsqn = (await secureStorage.getStringList('ff_pronounsqn'))
              ?.map(int.parse)
              .toList() ??
          _pronounsqn;
    });
    await _safeInitAsync(() async {
      _unlcprntypes = (await secureStorage.getStringList('ff_unlcprntypes'))
              ?.map((x) => x == 'true')
              .toList() ??
          _unlcprntypes;
    });
    await _safeInitAsync(() async {
      _genderpronounsunloc =
          (await secureStorage.getStringList('ff_genderpronounsunloc'))
                  ?.map((x) => x == 'true')
                  .toList() ??
              _genderpronounsunloc;
    });
    await _safeInitAsync(() async {
      _nounspractice =
          await secureStorage.getBool('ff_nounspractice') ?? _nounspractice;
    });
    await _safeInitAsync(() async {
      _regverbspractice = await secureStorage.getBool('ff_regverbspractice') ??
          _regverbspractice;
    });
    await _safeInitAsync(() async {
      _adjpractice =
          await secureStorage.getBool('ff_adjpractice') ?? _adjpractice;
    });
    await _safeInitAsync(() async {
      _pronounpractice =
          await secureStorage.getBool('ff_pronounpractice') ?? _pronounpractice;
    });
    await _safeInitAsync(() async {
      _irreghints = await secureStorage.getBool('ff_irreghints') ?? _irreghints;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late FlutterSecureStorage secureStorage;

  List<bool> _unlockednouns = [
    true,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false
  ];
  List<bool> get unlockednouns => _unlockednouns;
  set unlockednouns(List<bool> value) {
    _unlockednouns = value;
    secureStorage.setStringList(
        'ff_unlockednouns', value.map((x) => x.toString()).toList());
  }

  void deleteUnlockednouns() {
    secureStorage.delete(key: 'ff_unlockednouns');
  }

  void addToUnlockednouns(bool value) {
    unlockednouns.add(value);
    secureStorage.setStringList(
        'ff_unlockednouns', _unlockednouns.map((x) => x.toString()).toList());
  }

  void removeFromUnlockednouns(bool value) {
    unlockednouns.remove(value);
    secureStorage.setStringList(
        'ff_unlockednouns', _unlockednouns.map((x) => x.toString()).toList());
  }

  void removeAtIndexFromUnlockednouns(int index) {
    unlockednouns.removeAt(index);
    secureStorage.setStringList(
        'ff_unlockednouns', _unlockednouns.map((x) => x.toString()).toList());
  }

  void updateUnlockednounsAtIndex(
    int index,
    bool Function(bool) updateFn,
  ) {
    unlockednouns[index] = updateFn(_unlockednouns[index]);
    secureStorage.setStringList(
        'ff_unlockednouns', _unlockednouns.map((x) => x.toString()).toList());
  }

  void insertAtIndexInUnlockednouns(int index, bool value) {
    unlockednouns.insert(index, value);
    secureStorage.setStringList(
        'ff_unlockednouns', _unlockednouns.map((x) => x.toString()).toList());
  }

  int _currentnountype = 0;
  int get currentnountype => _currentnountype;
  set currentnountype(int value) {
    _currentnountype = value;
    secureStorage.setInt('ff_currentnountype', value);
  }

  void deleteCurrentnountype() {
    secureStorage.delete(key: 'ff_currentnountype');
  }

  List<int> _nounqns = [
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0
  ];
  List<int> get nounqns => _nounqns;
  set nounqns(List<int> value) {
    _nounqns = value;
    secureStorage.setStringList(
        'ff_nounqns', value.map((x) => x.toString()).toList());
  }

  void deleteNounqns() {
    secureStorage.delete(key: 'ff_nounqns');
  }

  void addToNounqns(int value) {
    nounqns.add(value);
    secureStorage.setStringList(
        'ff_nounqns', _nounqns.map((x) => x.toString()).toList());
  }

  void removeFromNounqns(int value) {
    nounqns.remove(value);
    secureStorage.setStringList(
        'ff_nounqns', _nounqns.map((x) => x.toString()).toList());
  }

  void removeAtIndexFromNounqns(int index) {
    nounqns.removeAt(index);
    secureStorage.setStringList(
        'ff_nounqns', _nounqns.map((x) => x.toString()).toList());
  }

  void updateNounqnsAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    nounqns[index] = updateFn(_nounqns[index]);
    secureStorage.setStringList(
        'ff_nounqns', _nounqns.map((x) => x.toString()).toList());
  }

  void insertAtIndexInNounqns(int index, int value) {
    nounqns.insert(index, value);
    secureStorage.setStringList(
        'ff_nounqns', _nounqns.map((x) => x.toString()).toList());
  }

  List<bool> _unlockedirregverbs = [true, false, false, false];
  List<bool> get unlockedirregverbs => _unlockedirregverbs;
  set unlockedirregverbs(List<bool> value) {
    _unlockedirregverbs = value;
    secureStorage.setStringList(
        'ff_unlockedirregverbs', value.map((x) => x.toString()).toList());
  }

  void deleteUnlockedirregverbs() {
    secureStorage.delete(key: 'ff_unlockedirregverbs');
  }

  void addToUnlockedirregverbs(bool value) {
    unlockedirregverbs.add(value);
    secureStorage.setStringList('ff_unlockedirregverbs',
        _unlockedirregverbs.map((x) => x.toString()).toList());
  }

  void removeFromUnlockedirregverbs(bool value) {
    unlockedirregverbs.remove(value);
    secureStorage.setStringList('ff_unlockedirregverbs',
        _unlockedirregverbs.map((x) => x.toString()).toList());
  }

  void removeAtIndexFromUnlockedirregverbs(int index) {
    unlockedirregverbs.removeAt(index);
    secureStorage.setStringList('ff_unlockedirregverbs',
        _unlockedirregverbs.map((x) => x.toString()).toList());
  }

  void updateUnlockedirregverbsAtIndex(
    int index,
    bool Function(bool) updateFn,
  ) {
    unlockedirregverbs[index] = updateFn(_unlockedirregverbs[index]);
    secureStorage.setStringList('ff_unlockedirregverbs',
        _unlockedirregverbs.map((x) => x.toString()).toList());
  }

  void insertAtIndexInUnlockedirregverbs(int index, bool value) {
    unlockedirregverbs.insert(index, value);
    secureStorage.setStringList('ff_unlockedirregverbs',
        _unlockedirregverbs.map((x) => x.toString()).toList());
  }

  int _currentirregverbtype = 0;
  int get currentirregverbtype => _currentirregverbtype;
  set currentirregverbtype(int value) {
    _currentirregverbtype = value;
    secureStorage.setInt('ff_currentirregverbtype', value);
  }

  void deleteCurrentirregverbtype() {
    secureStorage.delete(key: 'ff_currentirregverbtype');
  }

  List<int> _irregverbqns = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0];
  List<int> get irregverbqns => _irregverbqns;
  set irregverbqns(List<int> value) {
    _irregverbqns = value;
    secureStorage.setStringList(
        'ff_irregverbqns', value.map((x) => x.toString()).toList());
  }

  void deleteIrregverbqns() {
    secureStorage.delete(key: 'ff_irregverbqns');
  }

  void addToIrregverbqns(int value) {
    irregverbqns.add(value);
    secureStorage.setStringList(
        'ff_irregverbqns', _irregverbqns.map((x) => x.toString()).toList());
  }

  void removeFromIrregverbqns(int value) {
    irregverbqns.remove(value);
    secureStorage.setStringList(
        'ff_irregverbqns', _irregverbqns.map((x) => x.toString()).toList());
  }

  void removeAtIndexFromIrregverbqns(int index) {
    irregverbqns.removeAt(index);
    secureStorage.setStringList(
        'ff_irregverbqns', _irregverbqns.map((x) => x.toString()).toList());
  }

  void updateIrregverbqnsAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    irregverbqns[index] = updateFn(_irregverbqns[index]);
    secureStorage.setStringList(
        'ff_irregverbqns', _irregverbqns.map((x) => x.toString()).toList());
  }

  void insertAtIndexInIrregverbqns(int index, int value) {
    irregverbqns.insert(index, value);
    secureStorage.setStringList(
        'ff_irregverbqns', _irregverbqns.map((x) => x.toString()).toList());
  }

  List<int> _regverbsqn = [
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0
  ];
  List<int> get regverbsqn => _regverbsqn;
  set regverbsqn(List<int> value) {
    _regverbsqn = value;
    secureStorage.setStringList(
        'ff_regverbsqn', value.map((x) => x.toString()).toList());
  }

  void deleteRegverbsqn() {
    secureStorage.delete(key: 'ff_regverbsqn');
  }

  void addToRegverbsqn(int value) {
    regverbsqn.add(value);
    secureStorage.setStringList(
        'ff_regverbsqn', _regverbsqn.map((x) => x.toString()).toList());
  }

  void removeFromRegverbsqn(int value) {
    regverbsqn.remove(value);
    secureStorage.setStringList(
        'ff_regverbsqn', _regverbsqn.map((x) => x.toString()).toList());
  }

  void removeAtIndexFromRegverbsqn(int index) {
    regverbsqn.removeAt(index);
    secureStorage.setStringList(
        'ff_regverbsqn', _regverbsqn.map((x) => x.toString()).toList());
  }

  void updateRegverbsqnAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    regverbsqn[index] = updateFn(_regverbsqn[index]);
    secureStorage.setStringList(
        'ff_regverbsqn', _regverbsqn.map((x) => x.toString()).toList());
  }

  void insertAtIndexInRegverbsqn(int index, int value) {
    regverbsqn.insert(index, value);
    secureStorage.setStringList(
        'ff_regverbsqn', _regverbsqn.map((x) => x.toString()).toList());
  }

  List<bool> _unlockedregverbtype = [
    true,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false
  ];
  List<bool> get unlockedregverbtype => _unlockedregverbtype;
  set unlockedregverbtype(List<bool> value) {
    _unlockedregverbtype = value;
    secureStorage.setStringList(
        'ff_unlockedregverbtype', value.map((x) => x.toString()).toList());
  }

  void deleteUnlockedregverbtype() {
    secureStorage.delete(key: 'ff_unlockedregverbtype');
  }

  void addToUnlockedregverbtype(bool value) {
    unlockedregverbtype.add(value);
    secureStorage.setStringList('ff_unlockedregverbtype',
        _unlockedregverbtype.map((x) => x.toString()).toList());
  }

  void removeFromUnlockedregverbtype(bool value) {
    unlockedregverbtype.remove(value);
    secureStorage.setStringList('ff_unlockedregverbtype',
        _unlockedregverbtype.map((x) => x.toString()).toList());
  }

  void removeAtIndexFromUnlockedregverbtype(int index) {
    unlockedregverbtype.removeAt(index);
    secureStorage.setStringList('ff_unlockedregverbtype',
        _unlockedregverbtype.map((x) => x.toString()).toList());
  }

  void updateUnlockedregverbtypeAtIndex(
    int index,
    bool Function(bool) updateFn,
  ) {
    unlockedregverbtype[index] = updateFn(_unlockedregverbtype[index]);
    secureStorage.setStringList('ff_unlockedregverbtype',
        _unlockedregverbtype.map((x) => x.toString()).toList());
  }

  void insertAtIndexInUnlockedregverbtype(int index, bool value) {
    unlockedregverbtype.insert(index, value);
    secureStorage.setStringList('ff_unlockedregverbtype',
        _unlockedregverbtype.map((x) => x.toString()).toList());
  }

  List<bool> _unlockedregverbactpass = [
    true,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false
  ];
  List<bool> get unlockedregverbactpass => _unlockedregverbactpass;
  set unlockedregverbactpass(List<bool> value) {
    _unlockedregverbactpass = value;
    secureStorage.setStringList(
        'ff_unlockedregverbactpass', value.map((x) => x.toString()).toList());
  }

  void deleteUnlockedregverbactpass() {
    secureStorage.delete(key: 'ff_unlockedregverbactpass');
  }

  void addToUnlockedregverbactpass(bool value) {
    unlockedregverbactpass.add(value);
    secureStorage.setStringList('ff_unlockedregverbactpass',
        _unlockedregverbactpass.map((x) => x.toString()).toList());
  }

  void removeFromUnlockedregverbactpass(bool value) {
    unlockedregverbactpass.remove(value);
    secureStorage.setStringList('ff_unlockedregverbactpass',
        _unlockedregverbactpass.map((x) => x.toString()).toList());
  }

  void removeAtIndexFromUnlockedregverbactpass(int index) {
    unlockedregverbactpass.removeAt(index);
    secureStorage.setStringList('ff_unlockedregverbactpass',
        _unlockedregverbactpass.map((x) => x.toString()).toList());
  }

  void updateUnlockedregverbactpassAtIndex(
    int index,
    bool Function(bool) updateFn,
  ) {
    unlockedregverbactpass[index] = updateFn(_unlockedregverbactpass[index]);
    secureStorage.setStringList('ff_unlockedregverbactpass',
        _unlockedregverbactpass.map((x) => x.toString()).toList());
  }

  void insertAtIndexInUnlockedregverbactpass(int index, bool value) {
    unlockedregverbactpass.insert(index, value);
    secureStorage.setStringList('ff_unlockedregverbactpass',
        _unlockedregverbactpass.map((x) => x.toString()).toList());
  }

  List<bool> _unlockedregverbdecl = [true, false, false, false, false];
  List<bool> get unlockedregverbdecl => _unlockedregverbdecl;
  set unlockedregverbdecl(List<bool> value) {
    _unlockedregverbdecl = value;
    secureStorage.setStringList(
        'ff_unlockedregverbdecl', value.map((x) => x.toString()).toList());
  }

  void deleteUnlockedregverbdecl() {
    secureStorage.delete(key: 'ff_unlockedregverbdecl');
  }

  void addToUnlockedregverbdecl(bool value) {
    unlockedregverbdecl.add(value);
    secureStorage.setStringList('ff_unlockedregverbdecl',
        _unlockedregverbdecl.map((x) => x.toString()).toList());
  }

  void removeFromUnlockedregverbdecl(bool value) {
    unlockedregverbdecl.remove(value);
    secureStorage.setStringList('ff_unlockedregverbdecl',
        _unlockedregverbdecl.map((x) => x.toString()).toList());
  }

  void removeAtIndexFromUnlockedregverbdecl(int index) {
    unlockedregverbdecl.removeAt(index);
    secureStorage.setStringList('ff_unlockedregverbdecl',
        _unlockedregverbdecl.map((x) => x.toString()).toList());
  }

  void updateUnlockedregverbdeclAtIndex(
    int index,
    bool Function(bool) updateFn,
  ) {
    unlockedregverbdecl[index] = updateFn(_unlockedregverbdecl[index]);
    secureStorage.setStringList('ff_unlockedregverbdecl',
        _unlockedregverbdecl.map((x) => x.toString()).toList());
  }

  void insertAtIndexInUnlockedregverbdecl(int index, bool value) {
    unlockedregverbdecl.insert(index, value);
    secureStorage.setStringList('ff_unlockedregverbdecl',
        _unlockedregverbdecl.map((x) => x.toString()).toList());
  }

  bool _irregunlocked = false;
  bool get irregunlocked => _irregunlocked;
  set irregunlocked(bool value) {
    _irregunlocked = value;
    secureStorage.setBool('ff_irregunlocked', value);
  }

  void deleteIrregunlocked() {
    secureStorage.delete(key: 'ff_irregunlocked');
  }

  int _currentregverbtype = 0;
  int get currentregverbtype => _currentregverbtype;
  set currentregverbtype(int value) {
    _currentregverbtype = value;
    secureStorage.setInt('ff_currentregverbtype', value);
  }

  void deleteCurrentregverbtype() {
    secureStorage.delete(key: 'ff_currentregverbtype');
  }

  int _currenregverbactpasstype = 0;
  int get currenregverbactpasstype => _currenregverbactpasstype;
  set currenregverbactpasstype(int value) {
    _currenregverbactpasstype = value;
    secureStorage.setInt('ff_currenregverbactpasstype', value);
  }

  void deleteCurrenregverbactpasstype() {
    secureStorage.delete(key: 'ff_currenregverbactpasstype');
  }

  int _currentregverbdecltype = 0;
  int get currentregverbdecltype => _currentregverbdecltype;
  set currentregverbdecltype(int value) {
    _currentregverbdecltype = value;
    secureStorage.setInt('ff_currentregverbdecltype', value);
  }

  void deleteCurrentregverbdecltype() {
    secureStorage.delete(key: 'ff_currentregverbdecltype');
  }

  List<bool> _adjdeclunlocked = [true, false, false, false, false, false];
  List<bool> get adjdeclunlocked => _adjdeclunlocked;
  set adjdeclunlocked(List<bool> value) {
    _adjdeclunlocked = value;
    secureStorage.setStringList(
        'ff_adjdeclunlocked', value.map((x) => x.toString()).toList());
  }

  void deleteAdjdeclunlocked() {
    secureStorage.delete(key: 'ff_adjdeclunlocked');
  }

  void addToAdjdeclunlocked(bool value) {
    adjdeclunlocked.add(value);
    secureStorage.setStringList('ff_adjdeclunlocked',
        _adjdeclunlocked.map((x) => x.toString()).toList());
  }

  void removeFromAdjdeclunlocked(bool value) {
    adjdeclunlocked.remove(value);
    secureStorage.setStringList('ff_adjdeclunlocked',
        _adjdeclunlocked.map((x) => x.toString()).toList());
  }

  void removeAtIndexFromAdjdeclunlocked(int index) {
    adjdeclunlocked.removeAt(index);
    secureStorage.setStringList('ff_adjdeclunlocked',
        _adjdeclunlocked.map((x) => x.toString()).toList());
  }

  void updateAdjdeclunlockedAtIndex(
    int index,
    bool Function(bool) updateFn,
  ) {
    adjdeclunlocked[index] = updateFn(_adjdeclunlocked[index]);
    secureStorage.setStringList('ff_adjdeclunlocked',
        _adjdeclunlocked.map((x) => x.toString()).toList());
  }

  void insertAtIndexInAdjdeclunlocked(int index, bool value) {
    adjdeclunlocked.insert(index, value);
    secureStorage.setStringList('ff_adjdeclunlocked',
        _adjdeclunlocked.map((x) => x.toString()).toList());
  }

  List<bool> _adjgenderunlock = [
    true,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false
  ];
  List<bool> get adjgenderunlock => _adjgenderunlock;
  set adjgenderunlock(List<bool> value) {
    _adjgenderunlock = value;
    secureStorage.setStringList(
        'ff_adjgenderunlock', value.map((x) => x.toString()).toList());
  }

  void deleteAdjgenderunlock() {
    secureStorage.delete(key: 'ff_adjgenderunlock');
  }

  void addToAdjgenderunlock(bool value) {
    adjgenderunlock.add(value);
    secureStorage.setStringList('ff_adjgenderunlock',
        _adjgenderunlock.map((x) => x.toString()).toList());
  }

  void removeFromAdjgenderunlock(bool value) {
    adjgenderunlock.remove(value);
    secureStorage.setStringList('ff_adjgenderunlock',
        _adjgenderunlock.map((x) => x.toString()).toList());
  }

  void removeAtIndexFromAdjgenderunlock(int index) {
    adjgenderunlock.removeAt(index);
    secureStorage.setStringList('ff_adjgenderunlock',
        _adjgenderunlock.map((x) => x.toString()).toList());
  }

  void updateAdjgenderunlockAtIndex(
    int index,
    bool Function(bool) updateFn,
  ) {
    adjgenderunlock[index] = updateFn(_adjgenderunlock[index]);
    secureStorage.setStringList('ff_adjgenderunlock',
        _adjgenderunlock.map((x) => x.toString()).toList());
  }

  void insertAtIndexInAdjgenderunlock(int index, bool value) {
    adjgenderunlock.insert(index, value);
    secureStorage.setStringList('ff_adjgenderunlock',
        _adjgenderunlock.map((x) => x.toString()).toList());
  }

  List<int> _adjqn = [
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0
  ];
  List<int> get adjqn => _adjqn;
  set adjqn(List<int> value) {
    _adjqn = value;
    secureStorage.setStringList(
        'ff_adjqn', value.map((x) => x.toString()).toList());
  }

  void deleteAdjqn() {
    secureStorage.delete(key: 'ff_adjqn');
  }

  void addToAdjqn(int value) {
    adjqn.add(value);
    secureStorage.setStringList(
        'ff_adjqn', _adjqn.map((x) => x.toString()).toList());
  }

  void removeFromAdjqn(int value) {
    adjqn.remove(value);
    secureStorage.setStringList(
        'ff_adjqn', _adjqn.map((x) => x.toString()).toList());
  }

  void removeAtIndexFromAdjqn(int index) {
    adjqn.removeAt(index);
    secureStorage.setStringList(
        'ff_adjqn', _adjqn.map((x) => x.toString()).toList());
  }

  void updateAdjqnAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    adjqn[index] = updateFn(_adjqn[index]);
    secureStorage.setStringList(
        'ff_adjqn', _adjqn.map((x) => x.toString()).toList());
  }

  void insertAtIndexInAdjqn(int index, int value) {
    adjqn.insert(index, value);
    secureStorage.setStringList(
        'ff_adjqn', _adjqn.map((x) => x.toString()).toList());
  }

  int _currentdecladj = 1;
  int get currentdecladj => _currentdecladj;
  set currentdecladj(int value) {
    _currentdecladj = value;
    secureStorage.setInt('ff_currentdecladj', value);
  }

  void deleteCurrentdecladj() {
    secureStorage.delete(key: 'ff_currentdecladj');
  }

  List<int> _pronounsqn = [
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0
  ];
  List<int> get pronounsqn => _pronounsqn;
  set pronounsqn(List<int> value) {
    _pronounsqn = value;
    secureStorage.setStringList(
        'ff_pronounsqn', value.map((x) => x.toString()).toList());
  }

  void deletePronounsqn() {
    secureStorage.delete(key: 'ff_pronounsqn');
  }

  void addToPronounsqn(int value) {
    pronounsqn.add(value);
    secureStorage.setStringList(
        'ff_pronounsqn', _pronounsqn.map((x) => x.toString()).toList());
  }

  void removeFromPronounsqn(int value) {
    pronounsqn.remove(value);
    secureStorage.setStringList(
        'ff_pronounsqn', _pronounsqn.map((x) => x.toString()).toList());
  }

  void removeAtIndexFromPronounsqn(int index) {
    pronounsqn.removeAt(index);
    secureStorage.setStringList(
        'ff_pronounsqn', _pronounsqn.map((x) => x.toString()).toList());
  }

  void updatePronounsqnAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    pronounsqn[index] = updateFn(_pronounsqn[index]);
    secureStorage.setStringList(
        'ff_pronounsqn', _pronounsqn.map((x) => x.toString()).toList());
  }

  void insertAtIndexInPronounsqn(int index, int value) {
    pronounsqn.insert(index, value);
    secureStorage.setStringList(
        'ff_pronounsqn', _pronounsqn.map((x) => x.toString()).toList());
  }

  List<bool> _unlcprntypes = [true, false, false, false, false, false, false];
  List<bool> get unlcprntypes => _unlcprntypes;
  set unlcprntypes(List<bool> value) {
    _unlcprntypes = value;
    secureStorage.setStringList(
        'ff_unlcprntypes', value.map((x) => x.toString()).toList());
  }

  void deleteUnlcprntypes() {
    secureStorage.delete(key: 'ff_unlcprntypes');
  }

  void addToUnlcprntypes(bool value) {
    unlcprntypes.add(value);
    secureStorage.setStringList(
        'ff_unlcprntypes', _unlcprntypes.map((x) => x.toString()).toList());
  }

  void removeFromUnlcprntypes(bool value) {
    unlcprntypes.remove(value);
    secureStorage.setStringList(
        'ff_unlcprntypes', _unlcprntypes.map((x) => x.toString()).toList());
  }

  void removeAtIndexFromUnlcprntypes(int index) {
    unlcprntypes.removeAt(index);
    secureStorage.setStringList(
        'ff_unlcprntypes', _unlcprntypes.map((x) => x.toString()).toList());
  }

  void updateUnlcprntypesAtIndex(
    int index,
    bool Function(bool) updateFn,
  ) {
    unlcprntypes[index] = updateFn(_unlcprntypes[index]);
    secureStorage.setStringList(
        'ff_unlcprntypes', _unlcprntypes.map((x) => x.toString()).toList());
  }

  void insertAtIndexInUnlcprntypes(int index, bool value) {
    unlcprntypes.insert(index, value);
    secureStorage.setStringList(
        'ff_unlcprntypes', _unlcprntypes.map((x) => x.toString()).toList());
  }

  List<bool> _genderpronounsunloc = [
    true,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false
  ];
  List<bool> get genderpronounsunloc => _genderpronounsunloc;
  set genderpronounsunloc(List<bool> value) {
    _genderpronounsunloc = value;
    secureStorage.setStringList(
        'ff_genderpronounsunloc', value.map((x) => x.toString()).toList());
  }

  void deleteGenderpronounsunloc() {
    secureStorage.delete(key: 'ff_genderpronounsunloc');
  }

  void addToGenderpronounsunloc(bool value) {
    genderpronounsunloc.add(value);
    secureStorage.setStringList('ff_genderpronounsunloc',
        _genderpronounsunloc.map((x) => x.toString()).toList());
  }

  void removeFromGenderpronounsunloc(bool value) {
    genderpronounsunloc.remove(value);
    secureStorage.setStringList('ff_genderpronounsunloc',
        _genderpronounsunloc.map((x) => x.toString()).toList());
  }

  void removeAtIndexFromGenderpronounsunloc(int index) {
    genderpronounsunloc.removeAt(index);
    secureStorage.setStringList('ff_genderpronounsunloc',
        _genderpronounsunloc.map((x) => x.toString()).toList());
  }

  void updateGenderpronounsunlocAtIndex(
    int index,
    bool Function(bool) updateFn,
  ) {
    genderpronounsunloc[index] = updateFn(_genderpronounsunloc[index]);
    secureStorage.setStringList('ff_genderpronounsunloc',
        _genderpronounsunloc.map((x) => x.toString()).toList());
  }

  void insertAtIndexInGenderpronounsunloc(int index, bool value) {
    genderpronounsunloc.insert(index, value);
    secureStorage.setStringList('ff_genderpronounsunloc',
        _genderpronounsunloc.map((x) => x.toString()).toList());
  }

  bool _nounspractice = false;
  bool get nounspractice => _nounspractice;
  set nounspractice(bool value) {
    _nounspractice = value;
    secureStorage.setBool('ff_nounspractice', value);
  }

  void deleteNounspractice() {
    secureStorage.delete(key: 'ff_nounspractice');
  }

  bool _regverbspractice = false;
  bool get regverbspractice => _regverbspractice;
  set regverbspractice(bool value) {
    _regverbspractice = value;
    secureStorage.setBool('ff_regverbspractice', value);
  }

  void deleteRegverbspractice() {
    secureStorage.delete(key: 'ff_regverbspractice');
  }

  bool _adjpractice = false;
  bool get adjpractice => _adjpractice;
  set adjpractice(bool value) {
    _adjpractice = value;
    secureStorage.setBool('ff_adjpractice', value);
  }

  void deleteAdjpractice() {
    secureStorage.delete(key: 'ff_adjpractice');
  }

  bool _pronounpractice = false;
  bool get pronounpractice => _pronounpractice;
  set pronounpractice(bool value) {
    _pronounpractice = value;
    secureStorage.setBool('ff_pronounpractice', value);
  }

  void deletePronounpractice() {
    secureStorage.delete(key: 'ff_pronounpractice');
  }

  bool _irreghints = false;
  bool get irreghints => _irreghints;
  set irreghints(bool value) {
    _irreghints = value;
    secureStorage.setBool('ff_irreghints', value);
  }

  void deleteIrreghints() {
    secureStorage.delete(key: 'ff_irreghints');
  }
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
