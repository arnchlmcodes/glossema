import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:go_router/go_router.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import '/backend/backend.dart';

import '/auth/base_auth_user_provider.dart';

import '/main.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/lat_lng.dart';
import '/flutter_flow/place.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'serialization_util.dart';

import '/index.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

GlobalKey<NavigatorState> appNavigatorKey = GlobalKey<NavigatorState>();

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  BaseAuthUser? initialUser;
  BaseAuthUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(BaseAuthUser newUser) {
    final shouldUpdate =
        user?.uid == null || newUser.uid == null || user?.uid != newUser.uid;
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    // No need to update unless the user has changed.
    if (notifyOnAuthChange && shouldUpdate) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      navigatorKey: appNavigatorKey,
      errorBuilder: (context, state) =>
          appStateNotifier.loggedIn ? NavBarPage() : HomepageWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) =>
              appStateNotifier.loggedIn ? NavBarPage() : HomepageWidget(),
        ),
        FFRoute(
          name: HomepageWidget.routeName,
          path: HomepageWidget.routePath,
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'homepage')
              : HomepageWidget(),
        ),
        FFRoute(
          name: NoundictWidget.routeName,
          path: NoundictWidget.routePath,
          builder: (context, params) => NoundictWidget(),
        ),
        FFRoute(
          name: NounwordWidget.routeName,
          path: NounwordWidget.routePath,
          builder: (context, params) => NounwordWidget(
            word: params.getParam(
              'word',
              ParamType.String,
            ),
            trans: params.getParam(
              'trans',
              ParamType.String,
            ),
            ns: params.getParam(
              'ns',
              ParamType.String,
            ),
            np: params.getParam(
              'np',
              ParamType.String,
            ),
            gs: params.getParam(
              'gs',
              ParamType.String,
            ),
            gp: params.getParam(
              'gp',
              ParamType.String,
            ),
            ds: params.getParam(
              'ds',
              ParamType.String,
            ),
            dp: params.getParam(
              'dp',
              ParamType.String,
            ),
            as: params.getParam(
              'as',
              ParamType.String,
            ),
            ap: params.getParam(
              'ap',
              ParamType.String,
            ),
            abs: params.getParam(
              'abs',
              ParamType.String,
            ),
            abp: params.getParam(
              'abp',
              ParamType.String,
            ),
            gen: params.getParam(
              'gen',
              ParamType.String,
            ),
            gender: params.getParam(
              'gender',
              ParamType.String,
            ),
            decl: params.getParam(
              'decl',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: NounformsWidget.routeName,
          path: NounformsWidget.routePath,
          builder: (context, params) => NounformsWidget(
            word: params.getParam(
              'word',
              ParamType.String,
            ),
            ns: params.getParam(
              'ns',
              ParamType.String,
            ),
            np: params.getParam(
              'np',
              ParamType.String,
            ),
            gs: params.getParam(
              'gs',
              ParamType.String,
            ),
            gp: params.getParam(
              'gp',
              ParamType.String,
            ),
            ds: params.getParam(
              'ds',
              ParamType.String,
            ),
            dp: params.getParam(
              'dp',
              ParamType.String,
            ),
            as: params.getParam(
              'as',
              ParamType.String,
            ),
            ap: params.getParam(
              'ap',
              ParamType.String,
            ),
            abs: params.getParam(
              'abs',
              ParamType.String,
            ),
            abp: params.getParam(
              'abp',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: RegverbsdictWidget.routeName,
          path: RegverbsdictWidget.routePath,
          builder: (context, params) => RegverbsdictWidget(),
        ),
        FFRoute(
          name: RegverbswordWidget.routeName,
          path: RegverbswordWidget.routePath,
          builder: (context, params) => RegverbswordWidget(
            word: params.getParam(
              'word',
              ParamType.String,
            ),
            decl: params.getParam(
              'decl',
              ParamType.String,
            ),
            inifitive: params.getParam(
              'inifitive',
              ParamType.String,
            ),
            perfect: params.getParam(
              'perfect',
              ParamType.String,
            ),
            trans: params.getParam(
              'trans',
              ParamType.String,
            ),
            passperfect: params.getParam(
              'passperfect',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: DepverbsdictWidget.routeName,
          path: DepverbsdictWidget.routePath,
          builder: (context, params) => DepverbsdictWidget(),
        ),
        FFRoute(
          name: DepverbwordsWidget.routeName,
          path: DepverbwordsWidget.routePath,
          builder: (context, params) => DepverbwordsWidget(
            word: params.getParam(
              'word',
              ParamType.String,
            ),
            decl: params.getParam(
              'decl',
              ParamType.String,
            ),
            inifitive: params.getParam(
              'inifitive',
              ParamType.String,
            ),
            perfect: params.getParam(
              'perfect',
              ParamType.String,
            ),
            trans: params.getParam(
              'trans',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: AdjectivedictWidget.routeName,
          path: AdjectivedictWidget.routePath,
          builder: (context, params) => AdjectivedictWidget(),
        ),
        FFRoute(
          name: Adjectivewords12Widget.routeName,
          path: Adjectivewords12Widget.routePath,
          builder: (context, params) => Adjectivewords12Widget(
            word: params.getParam(
              'word',
              ParamType.String,
            ),
            femi: params.getParam(
              'femi',
              ParamType.String,
            ),
            neuter: params.getParam(
              'neuter',
              ParamType.String,
            ),
            trans: params.getParam(
              'trans',
              ParamType.String,
            ),
            decl: params.getParam(
              'decl',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: Adjectivewords3Widget.routeName,
          path: Adjectivewords3Widget.routePath,
          builder: (context, params) => Adjectivewords3Widget(
            word: params.getParam(
              'word',
              ParamType.String,
            ),
            femi: params.getParam(
              'femi',
              ParamType.String,
            ),
            neuter: params.getParam(
              'neuter',
              ParamType.String,
            ),
            trans: params.getParam(
              'trans',
              ParamType.String,
            ),
            decl: params.getParam(
              'decl',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: DictverbtypeWidget.routeName,
          path: DictverbtypeWidget.routePath,
          builder: (context, params) => DictverbtypeWidget(),
        ),
        FFRoute(
          name: AodecladjformsWidget.routeName,
          path: AodecladjformsWidget.routePath,
          builder: (context, params) => AodecladjformsWidget(
            nom: params.getParam(
              'nom',
              ParamType.String,
            ),
            fem: params.getParam(
              'fem',
              ParamType.String,
            ),
            neu: params.getParam(
              'neu',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: ActipassdictWidget.routeName,
          path: ActipassdictWidget.routePath,
          builder: (context, params) => ActipassdictWidget(
            indisub: params.getParam(
              'indisub',
              ParamType.int,
            ),
            present: params.getParam(
              'present',
              ParamType.String,
            ),
            infi: params.getParam(
              'infi',
              ParamType.String,
            ),
            perfect: params.getParam(
              'perfect',
              ParamType.String,
            ),
            passperfect: params.getParam(
              'passperfect',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: IndisubjdictWidget.routeName,
          path: IndisubjdictWidget.routePath,
          builder: (context, params) => IndisubjdictWidget(
            present: params.getParam(
              'present',
              ParamType.String,
            ),
            infi: params.getParam(
              'infi',
              ParamType.String,
            ),
            perfect: params.getParam(
              'perfect',
              ParamType.String,
            ),
            passperfect: params.getParam(
              'passperfect',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: RegverbsubjWidget.routeName,
          path: RegverbsubjWidget.routePath,
          builder: (context, params) => RegverbsubjWidget(
            tive: params.getParam(
              'tive',
              ParamType.int,
            ),
            prsent: params.getParam(
              'prsent',
              ParamType.String,
            ),
            infi: params.getParam(
              'infi',
              ParamType.String,
            ),
            perfect: params.getParam(
              'perfect',
              ParamType.String,
            ),
            passperfect: params.getParam(
              'passperfect',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: RegverbindWidget.routeName,
          path: RegverbindWidget.routePath,
          builder: (context, params) => RegverbindWidget(
            tive: params.getParam(
              'tive',
              ParamType.int,
            ),
            prsent: params.getParam(
              'prsent',
              ParamType.String,
            ),
            infi: params.getParam(
              'infi',
              ParamType.String,
            ),
            perfect: params.getParam(
              'perfect',
              ParamType.String,
            ),
            passperfect: params.getParam(
              'passperfect',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: IndisubjdepdictWidget.routeName,
          path: IndisubjdepdictWidget.routePath,
          builder: (context, params) => IndisubjdepdictWidget(
            present: params.getParam(
              'present',
              ParamType.String,
            ),
            infi: params.getParam(
              'infi',
              ParamType.String,
            ),
            perfect: params.getParam(
              'perfect',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: DepverbindWidget.routeName,
          path: DepverbindWidget.routePath,
          builder: (context, params) => DepverbindWidget(
            prsent: params.getParam(
              'prsent',
              ParamType.String,
            ),
            infi: params.getParam(
              'infi',
              ParamType.String,
            ),
            perfect: params.getParam(
              'perfect',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: DepverbsubjWidget.routeName,
          path: DepverbsubjWidget.routePath,
          builder: (context, params) => DepverbsubjWidget(
            prsent: params.getParam(
              'prsent',
              ParamType.String,
            ),
            infi: params.getParam(
              'infi',
              ParamType.String,
            ),
            perfect: params.getParam(
              'perfect',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: PronounswordWidget.routeName,
          path: PronounswordWidget.routePath,
          builder: (context, params) => PronounswordWidget(
            word: params.getParam(
              'word',
              ParamType.String,
            ),
            trans: params.getParam(
              'trans',
              ParamType.String,
            ),
            ns: params.getParam(
              'ns',
              ParamType.String,
            ),
            np: params.getParam(
              'np',
              ParamType.String,
            ),
            gs: params.getParam(
              'gs',
              ParamType.String,
            ),
            gp: params.getParam(
              'gp',
              ParamType.String,
            ),
            ds: params.getParam(
              'ds',
              ParamType.String,
            ),
            dp: params.getParam(
              'dp',
              ParamType.String,
            ),
            as: params.getParam(
              'as',
              ParamType.String,
            ),
            ap: params.getParam(
              'ap',
              ParamType.String,
            ),
            abs: params.getParam(
              'abs',
              ParamType.String,
            ),
            abp: params.getParam(
              'abp',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: ProdictWidget.routeName,
          path: ProdictWidget.routePath,
          builder: (context, params) => ProdictWidget(),
        ),
        FFRoute(
          name: ProformsWidget.routeName,
          path: ProformsWidget.routePath,
          builder: (context, params) => ProformsWidget(
            word: params.getParam(
              'word',
              ParamType.String,
            ),
            ns: params.getParam(
              'ns',
              ParamType.String,
            ),
            np: params.getParam(
              'np',
              ParamType.String,
            ),
            gs: params.getParam(
              'gs',
              ParamType.String,
            ),
            gp: params.getParam(
              'gp',
              ParamType.String,
            ),
            ds: params.getParam(
              'ds',
              ParamType.String,
            ),
            dp: params.getParam(
              'dp',
              ParamType.String,
            ),
            as: params.getParam(
              'as',
              ParamType.String,
            ),
            ap: params.getParam(
              'ap',
              ParamType.String,
            ),
            abs: params.getParam(
              'abs',
              ParamType.String,
            ),
            abp: params.getParam(
              'abp',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: MdeclcopyWidget.routeName,
          path: MdeclcopyWidget.routePath,
          builder: (context, params) => MdeclcopyWidget(
            nom: params.getParam(
              'nom',
              ParamType.String,
            ),
            gen: params.getParam(
              'gen',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: MainexcWidget.routeName,
          path: MainexcWidget.routePath,
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'mainexc')
              : MainexcWidget(),
        ),
        FFRoute(
          name: Noun11Widget.routeName,
          path: Noun11Widget.routePath,
          builder: (context, params) => Noun11Widget(
            decl: params.getParam(
              'decl',
              ParamType.int,
            ),
            ns: params.getParam(
              'ns',
              ParamType.String,
            ),
            gs: params.getParam(
              'gs',
              ParamType.String,
            ),
            engs: params.getParam(
              'engs',
              ParamType.String,
            ),
            engp: params.getParam(
              'engp',
              ParamType.String,
            ),
            gender: params.getParam(
              'gender',
              ParamType.String,
            ),
            qn: params.getParam(
              'qn',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: NountpWidget.routeName,
          path: NountpWidget.routePath,
          builder: (context, params) => NountpWidget(),
        ),
        FFRoute(
          name: Auth2CreateWidget.routeName,
          path: Auth2CreateWidget.routePath,
          builder: (context, params) => Auth2CreateWidget(),
        ),
        FFRoute(
          name: Auth2ForgotPasswordWidget.routeName,
          path: Auth2ForgotPasswordWidget.routePath,
          builder: (context, params) => Auth2ForgotPasswordWidget(),
        ),
        FFRoute(
          name: Auth2CreateProfileWidget.routeName,
          path: Auth2CreateProfileWidget.routePath,
          builder: (context, params) => Auth2CreateProfileWidget(),
        ),
        FFRoute(
          name: Auth2ProfileWidget.routeName,
          path: Auth2ProfileWidget.routePath,
          builder: (context, params) => Auth2ProfileWidget(),
        ),
        FFRoute(
          name: Auth2EditProfileWidget.routeName,
          path: Auth2EditProfileWidget.routePath,
          builder: (context, params) => Auth2EditProfileWidget(),
        ),
        FFRoute(
          name: Auth2LoginWidget.routeName,
          path: Auth2LoginWidget.routePath,
          builder: (context, params) => Auth2LoginWidget(),
        ),
        FFRoute(
          name: NounqnWidget.routeName,
          path: NounqnWidget.routePath,
          builder: (context, params) => NounqnWidget(
            decltype: params.getParam(
              'decltype',
              ParamType.int,
            ),
            decldoctype: params.getParam(
              'decldoctype',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: Noun32Widget.routeName,
          path: Noun32Widget.routePath,
          builder: (context, params) => Noun32Widget(
            decl: params.getParam(
              'decl',
              ParamType.int,
            ),
            ns: params.getParam(
              'ns',
              ParamType.String,
            ),
            gs: params.getParam(
              'gs',
              ParamType.String,
            ),
            engs: params.getParam(
              'engs',
              ParamType.String,
            ),
            engp: params.getParam(
              'engp',
              ParamType.String,
            ),
            gender: params.getParam(
              'gender',
              ParamType.String,
            ),
            noun11: params.getParam(
              'noun11',
              ParamType.String,
            ),
            noun12: params.getParam(
              'noun12',
              ParamType.String,
            ),
            noun21: params.getParam(
              'noun21',
              ParamType.String,
            ),
            noun22: params.getParam(
              'noun22',
              ParamType.String,
            ),
            noun31: params.getParam(
              'noun31',
              ParamType.String,
            ),
            qn: params.getParam(
              'qn',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: Noun31Widget.routeName,
          path: Noun31Widget.routePath,
          builder: (context, params) => Noun31Widget(
            decl: params.getParam(
              'decl',
              ParamType.int,
            ),
            ns: params.getParam(
              'ns',
              ParamType.String,
            ),
            gs: params.getParam(
              'gs',
              ParamType.String,
            ),
            engs: params.getParam(
              'engs',
              ParamType.String,
            ),
            engp: params.getParam(
              'engp',
              ParamType.String,
            ),
            gender: params.getParam(
              'gender',
              ParamType.String,
            ),
            noun11: params.getParam(
              'noun11',
              ParamType.String,
            ),
            noun12: params.getParam(
              'noun12',
              ParamType.String,
            ),
            noun21: params.getParam(
              'noun21',
              ParamType.String,
            ),
            noun22: params.getParam(
              'noun22',
              ParamType.String,
            ),
            qn: params.getParam(
              'qn',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: Noun12Widget.routeName,
          path: Noun12Widget.routePath,
          builder: (context, params) => Noun12Widget(
            decl: params.getParam(
              'decl',
              ParamType.int,
            ),
            ns: params.getParam(
              'ns',
              ParamType.String,
            ),
            gs: params.getParam(
              'gs',
              ParamType.String,
            ),
            engs: params.getParam(
              'engs',
              ParamType.String,
            ),
            engp: params.getParam(
              'engp',
              ParamType.String,
            ),
            gender: params.getParam(
              'gender',
              ParamType.String,
            ),
            noun11: params.getParam(
              'noun11',
              ParamType.String,
            ),
            qn: params.getParam(
              'qn',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: Noun21Widget.routeName,
          path: Noun21Widget.routePath,
          builder: (context, params) => Noun21Widget(
            decl: params.getParam(
              'decl',
              ParamType.int,
            ),
            ns: params.getParam(
              'ns',
              ParamType.String,
            ),
            gs: params.getParam(
              'gs',
              ParamType.String,
            ),
            engs: params.getParam(
              'engs',
              ParamType.String,
            ),
            engp: params.getParam(
              'engp',
              ParamType.String,
            ),
            gender: params.getParam(
              'gender',
              ParamType.String,
            ),
            noun11: params.getParam(
              'noun11',
              ParamType.String,
            ),
            noun12: params.getParam(
              'noun12',
              ParamType.String,
            ),
            qn: params.getParam(
              'qn',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: Noun22Widget.routeName,
          path: Noun22Widget.routePath,
          builder: (context, params) => Noun22Widget(
            decl: params.getParam(
              'decl',
              ParamType.int,
            ),
            ns: params.getParam(
              'ns',
              ParamType.String,
            ),
            gs: params.getParam(
              'gs',
              ParamType.String,
            ),
            engs: params.getParam(
              'engs',
              ParamType.String,
            ),
            engp: params.getParam(
              'engp',
              ParamType.String,
            ),
            gender: params.getParam(
              'gender',
              ParamType.String,
            ),
            noun11: params.getParam(
              'noun11',
              ParamType.String,
            ),
            noun12: params.getParam(
              'noun12',
              ParamType.String,
            ),
            noun21: params.getParam(
              'noun21',
              ParamType.String,
            ),
            qn: params.getParam(
              'qn',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: Noun41Widget.routeName,
          path: Noun41Widget.routePath,
          builder: (context, params) => Noun41Widget(
            decl: params.getParam(
              'decl',
              ParamType.int,
            ),
            ns: params.getParam(
              'ns',
              ParamType.String,
            ),
            gs: params.getParam(
              'gs',
              ParamType.String,
            ),
            engs: params.getParam(
              'engs',
              ParamType.String,
            ),
            engp: params.getParam(
              'engp',
              ParamType.String,
            ),
            gender: params.getParam(
              'gender',
              ParamType.String,
            ),
            noun11: params.getParam(
              'noun11',
              ParamType.String,
            ),
            noun12: params.getParam(
              'noun12',
              ParamType.String,
            ),
            noun21: params.getParam(
              'noun21',
              ParamType.String,
            ),
            noun22: params.getParam(
              'noun22',
              ParamType.String,
            ),
            noun31: params.getParam(
              'noun31',
              ParamType.String,
            ),
            noun32: params.getParam(
              'noun32',
              ParamType.String,
            ),
            qn: params.getParam(
              'qn',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: Noun42Widget.routeName,
          path: Noun42Widget.routePath,
          builder: (context, params) => Noun42Widget(
            decl: params.getParam(
              'decl',
              ParamType.int,
            ),
            ns: params.getParam(
              'ns',
              ParamType.String,
            ),
            gs: params.getParam(
              'gs',
              ParamType.String,
            ),
            engs: params.getParam(
              'engs',
              ParamType.String,
            ),
            engp: params.getParam(
              'engp',
              ParamType.String,
            ),
            gender: params.getParam(
              'gender',
              ParamType.String,
            ),
            noun11: params.getParam(
              'noun11',
              ParamType.String,
            ),
            noun12: params.getParam(
              'noun12',
              ParamType.String,
            ),
            noun21: params.getParam(
              'noun21',
              ParamType.String,
            ),
            noun22: params.getParam(
              'noun22',
              ParamType.String,
            ),
            noun31: params.getParam(
              'noun31',
              ParamType.String,
            ),
            noun32: params.getParam(
              'noun32',
              ParamType.String,
            ),
            noun41: params.getParam(
              'noun41',
              ParamType.String,
            ),
            qn: params.getParam(
              'qn',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: Noun51Widget.routeName,
          path: Noun51Widget.routePath,
          builder: (context, params) => Noun51Widget(
            decl: params.getParam(
              'decl',
              ParamType.int,
            ),
            ns: params.getParam(
              'ns',
              ParamType.String,
            ),
            gs: params.getParam(
              'gs',
              ParamType.String,
            ),
            engs: params.getParam(
              'engs',
              ParamType.String,
            ),
            engp: params.getParam(
              'engp',
              ParamType.String,
            ),
            gender: params.getParam(
              'gender',
              ParamType.String,
            ),
            noun11: params.getParam(
              'noun11',
              ParamType.String,
            ),
            noun12: params.getParam(
              'noun12',
              ParamType.String,
            ),
            noun21: params.getParam(
              'noun21',
              ParamType.String,
            ),
            noun22: params.getParam(
              'noun22',
              ParamType.String,
            ),
            noun31: params.getParam(
              'noun31',
              ParamType.String,
            ),
            noun32: params.getParam(
              'noun32',
              ParamType.String,
            ),
            noun41: params.getParam(
              'noun41',
              ParamType.String,
            ),
            noun42: params.getParam(
              'noun42',
              ParamType.String,
            ),
            qn: params.getParam(
              'qn',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: Noun52Widget.routeName,
          path: Noun52Widget.routePath,
          builder: (context, params) => Noun52Widget(
            decl: params.getParam(
              'decl',
              ParamType.int,
            ),
            ns: params.getParam(
              'ns',
              ParamType.String,
            ),
            gs: params.getParam(
              'gs',
              ParamType.String,
            ),
            engs: params.getParam(
              'engs',
              ParamType.String,
            ),
            engp: params.getParam(
              'engp',
              ParamType.String,
            ),
            gender: params.getParam(
              'gender',
              ParamType.String,
            ),
            noun11: params.getParam(
              'noun11',
              ParamType.String,
            ),
            noun12: params.getParam(
              'noun12',
              ParamType.String,
            ),
            noun21: params.getParam(
              'noun21',
              ParamType.String,
            ),
            noun22: params.getParam(
              'noun22',
              ParamType.String,
            ),
            noun31: params.getParam(
              'noun31',
              ParamType.String,
            ),
            noun32: params.getParam(
              'noun32',
              ParamType.String,
            ),
            noun41: params.getParam(
              'noun41',
              ParamType.String,
            ),
            noun42: params.getParam(
              'noun42',
              ParamType.String,
            ),
            noun51: params.getParam(
              'noun51',
              ParamType.String,
            ),
            qn: params.getParam(
              'qn',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: CwordsnounWidget.routeName,
          path: CwordsnounWidget.routePath,
          builder: (context, params) => CwordsnounWidget(
            decl: params.getParam(
              'decl',
              ParamType.int,
            ),
            ns: params.getParam(
              'ns',
              ParamType.String,
            ),
            gs: params.getParam(
              'gs',
              ParamType.String,
            ),
            engs: params.getParam(
              'engs',
              ParamType.String,
            ),
            engp: params.getParam(
              'engp',
              ParamType.String,
            ),
            gender: params.getParam(
              'gender',
              ParamType.String,
            ),
            noun11: params.getParam(
              'noun11',
              ParamType.String,
            ),
            noun12: params.getParam(
              'noun12',
              ParamType.String,
            ),
            noun21: params.getParam(
              'noun21',
              ParamType.String,
            ),
            noun22: params.getParam(
              'noun22',
              ParamType.String,
            ),
            noun31: params.getParam(
              'noun31',
              ParamType.String,
            ),
            noun32: params.getParam(
              'noun32',
              ParamType.String,
            ),
            noun41: params.getParam(
              'noun41',
              ParamType.String,
            ),
            noun42: params.getParam(
              'noun42',
              ParamType.String,
            ),
            noun51: params.getParam(
              'noun51',
              ParamType.String,
            ),
            noun52: params.getParam(
              'noun52',
              ParamType.String,
            ),
            qn: params.getParam(
              'qn',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: NounpointsWidget.routeName,
          path: NounpointsWidget.routePath,
          builder: (context, params) => NounpointsWidget(
            decl: params.getParam(
              'decl',
              ParamType.int,
            ),
            qn: params.getParam(
              'qn',
              ParamType.int,
            ),
            gender: params.getParam(
              'gender',
              ParamType.String,
            ),
            ns: params.getParam(
              'ns',
              ParamType.String,
            ),
            gs: params.getParam(
              'gs',
              ParamType.String,
            ),
            engs: params.getParam(
              'engs',
              ParamType.String,
            ),
            engp: params.getParam(
              'engp',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: VerbstpWidget.routeName,
          path: VerbstpWidget.routePath,
          builder: (context, params) => VerbstpWidget(),
        ),
        FFRoute(
          name: Regverb1declWidget.routeName,
          path: Regverb1declWidget.routePath,
          builder: (context, params) => Regverb1declWidget(
            regirreg: params.getParam(
              'regirreg',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: Regverb2actpassWidget.routeName,
          path: Regverb2actpassWidget.routePath,
          builder: (context, params) => Regverb2actpassWidget(
            decl: params.getParam(
              'decl',
              ParamType.int,
            ),
            rgirg: params.getParam(
              'rgirg',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: Regverb3typeWidget.routeName,
          path: Regverb3typeWidget.routePath,
          builder: (context, params) => Regverb3typeWidget(
            decl: params.getParam(
              'decl',
              ParamType.int,
            ),
            actpass: params.getParam(
              'actpass',
              ParamType.int,
            ),
            rgirrg: params.getParam(
              'rgirrg',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: RegverbqnWidget.routeName,
          path: RegverbqnWidget.routePath,
          builder: (context, params) => RegverbqnWidget(
            decl: params.getParam(
              'decl',
              ParamType.int,
            ),
            actpass: params.getParam(
              'actpass',
              ParamType.int,
            ),
            type: params.getParam(
              'type',
              ParamType.int,
            ),
            rgirg: params.getParam(
              'rgirg',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: Verb01Widget.routeName,
          path: Verb01Widget.routePath,
          builder: (context, params) => Verb01Widget(
            decl: params.getParam(
              'decl',
              ParamType.int,
            ),
            qn: params.getParam(
              'qn',
              ParamType.int,
            ),
            actpass: params.getParam(
              'actpass',
              ParamType.int,
            ),
            type: params.getParam(
              'type',
              ParamType.int,
            ),
            pres: params.getParam(
              'pres',
              ParamType.String,
            ),
            infi: params.getParam(
              'infi',
              ParamType.String,
            ),
            perf: params.getParam(
              'perf',
              ParamType.String,
            ),
            passperf: params.getParam(
              'passperf',
              ParamType.String,
            ),
            english: params.getParam(
              'english',
              ParamType.String,
            ),
            rgirg: params.getParam(
              'rgirg',
              ParamType.int,
            ),
            engp: params.getParam(
              'engp',
              ParamType.String,
            ),
            engpp: params.getParam(
              'engpp',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: Verb02Widget.routeName,
          path: Verb02Widget.routePath,
          builder: (context, params) => Verb02Widget(
            decl: params.getParam(
              'decl',
              ParamType.int,
            ),
            qn: params.getParam(
              'qn',
              ParamType.int,
            ),
            actpass: params.getParam(
              'actpass',
              ParamType.int,
            ),
            type: params.getParam(
              'type',
              ParamType.int,
            ),
            pres: params.getParam(
              'pres',
              ParamType.String,
            ),
            infi: params.getParam(
              'infi',
              ParamType.String,
            ),
            perf: params.getParam(
              'perf',
              ParamType.String,
            ),
            passperf: params.getParam(
              'passperf',
              ParamType.String,
            ),
            english: params.getParam(
              'english',
              ParamType.String,
            ),
            v1: params.getParam(
              'v1',
              ParamType.String,
            ),
            rgirg: params.getParam(
              'rgirg',
              ParamType.int,
            ),
            engp: params.getParam(
              'engp',
              ParamType.String,
            ),
            engpp: params.getParam(
              'engpp',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: Verb03Widget.routeName,
          path: Verb03Widget.routePath,
          builder: (context, params) => Verb03Widget(
            decl: params.getParam(
              'decl',
              ParamType.int,
            ),
            qn: params.getParam(
              'qn',
              ParamType.int,
            ),
            actpass: params.getParam(
              'actpass',
              ParamType.int,
            ),
            type: params.getParam(
              'type',
              ParamType.int,
            ),
            pres: params.getParam(
              'pres',
              ParamType.String,
            ),
            infi: params.getParam(
              'infi',
              ParamType.String,
            ),
            perf: params.getParam(
              'perf',
              ParamType.String,
            ),
            passperf: params.getParam(
              'passperf',
              ParamType.String,
            ),
            english: params.getParam(
              'english',
              ParamType.String,
            ),
            v1: params.getParam(
              'v1',
              ParamType.String,
            ),
            v2: params.getParam(
              'v2',
              ParamType.String,
            ),
            rgirg: params.getParam(
              'rgirg',
              ParamType.int,
            ),
            engp: params.getParam(
              'engp',
              ParamType.String,
            ),
            engpp: params.getParam(
              'engpp',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: Verb04Widget.routeName,
          path: Verb04Widget.routePath,
          builder: (context, params) => Verb04Widget(
            decl: params.getParam(
              'decl',
              ParamType.int,
            ),
            qn: params.getParam(
              'qn',
              ParamType.int,
            ),
            actpass: params.getParam(
              'actpass',
              ParamType.int,
            ),
            type: params.getParam(
              'type',
              ParamType.int,
            ),
            pres: params.getParam(
              'pres',
              ParamType.String,
            ),
            infi: params.getParam(
              'infi',
              ParamType.String,
            ),
            perf: params.getParam(
              'perf',
              ParamType.String,
            ),
            passperf: params.getParam(
              'passperf',
              ParamType.String,
            ),
            english: params.getParam(
              'english',
              ParamType.String,
            ),
            v1: params.getParam(
              'v1',
              ParamType.String,
            ),
            v2: params.getParam(
              'v2',
              ParamType.String,
            ),
            v3: params.getParam(
              'v3',
              ParamType.String,
            ),
            rgirg: params.getParam(
              'rgirg',
              ParamType.int,
            ),
            engp: params.getParam(
              'engp',
              ParamType.String,
            ),
            engpp: params.getParam(
              'engpp',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: Verb05Widget.routeName,
          path: Verb05Widget.routePath,
          builder: (context, params) => Verb05Widget(
            decl: params.getParam(
              'decl',
              ParamType.int,
            ),
            qn: params.getParam(
              'qn',
              ParamType.int,
            ),
            actpass: params.getParam(
              'actpass',
              ParamType.int,
            ),
            type: params.getParam(
              'type',
              ParamType.int,
            ),
            pres: params.getParam(
              'pres',
              ParamType.String,
            ),
            infi: params.getParam(
              'infi',
              ParamType.String,
            ),
            perf: params.getParam(
              'perf',
              ParamType.String,
            ),
            passperf: params.getParam(
              'passperf',
              ParamType.String,
            ),
            english: params.getParam(
              'english',
              ParamType.String,
            ),
            v1: params.getParam(
              'v1',
              ParamType.String,
            ),
            v2: params.getParam(
              'v2',
              ParamType.String,
            ),
            v3: params.getParam(
              'v3',
              ParamType.String,
            ),
            v4: params.getParam(
              'v4',
              ParamType.String,
            ),
            rgirg: params.getParam(
              'rgirg',
              ParamType.int,
            ),
            engp: params.getParam(
              'engp',
              ParamType.String,
            ),
            engpp: params.getParam(
              'engpp',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: Verb06Widget.routeName,
          path: Verb06Widget.routePath,
          builder: (context, params) => Verb06Widget(
            decl: params.getParam(
              'decl',
              ParamType.int,
            ),
            qn: params.getParam(
              'qn',
              ParamType.int,
            ),
            actpass: params.getParam(
              'actpass',
              ParamType.int,
            ),
            type: params.getParam(
              'type',
              ParamType.int,
            ),
            pres: params.getParam(
              'pres',
              ParamType.String,
            ),
            infi: params.getParam(
              'infi',
              ParamType.String,
            ),
            perf: params.getParam(
              'perf',
              ParamType.String,
            ),
            passperf: params.getParam(
              'passperf',
              ParamType.String,
            ),
            english: params.getParam(
              'english',
              ParamType.String,
            ),
            v1: params.getParam(
              'v1',
              ParamType.String,
            ),
            v2: params.getParam(
              'v2',
              ParamType.String,
            ),
            v3: params.getParam(
              'v3',
              ParamType.String,
            ),
            v4: params.getParam(
              'v4',
              ParamType.String,
            ),
            v5: params.getParam(
              'v5',
              ParamType.String,
            ),
            rgirg: params.getParam(
              'rgirg',
              ParamType.int,
            ),
            engp: params.getParam(
              'engp',
              ParamType.String,
            ),
            engpp: params.getParam(
              'engpp',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: CwordsvregverbsWidget.routeName,
          path: CwordsvregverbsWidget.routePath,
          builder: (context, params) => CwordsvregverbsWidget(
            decl: params.getParam(
              'decl',
              ParamType.int,
            ),
            qn: params.getParam(
              'qn',
              ParamType.int,
            ),
            actpass: params.getParam(
              'actpass',
              ParamType.int,
            ),
            type: params.getParam(
              'type',
              ParamType.int,
            ),
            pres: params.getParam(
              'pres',
              ParamType.String,
            ),
            infi: params.getParam(
              'infi',
              ParamType.String,
            ),
            perf: params.getParam(
              'perf',
              ParamType.String,
            ),
            passperf: params.getParam(
              'passperf',
              ParamType.String,
            ),
            english: params.getParam(
              'english',
              ParamType.String,
            ),
            v1: params.getParam(
              'v1',
              ParamType.String,
            ),
            v2: params.getParam(
              'v2',
              ParamType.String,
            ),
            v3: params.getParam(
              'v3',
              ParamType.String,
            ),
            v4: params.getParam(
              'v4',
              ParamType.String,
            ),
            v5: params.getParam(
              'v5',
              ParamType.String,
            ),
            v6: params.getParam(
              'v6',
              ParamType.String,
            ),
            rgirg: params.getParam(
              'rgirg',
              ParamType.int,
            ),
            engp: params.getParam(
              'engp',
              ParamType.String,
            ),
            engpp: params.getParam(
              'engpp',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: Irregverb1typeWidget.routeName,
          path: Irregverb1typeWidget.routePath,
          builder: (context, params) => Irregverb1typeWidget(
            regirg: params.getParam(
              'regirg',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: IrregverbqnWidget.routeName,
          path: IrregverbqnWidget.routePath,
          builder: (context, params) => IrregverbqnWidget(
            type: params.getParam(
              'type',
              ParamType.int,
            ),
            regirg: params.getParam(
              'regirg',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: CwordsvirgverbsWidget.routeName,
          path: CwordsvirgverbsWidget.routePath,
          builder: (context, params) => CwordsvirgverbsWidget(
            decl: params.getParam(
              'decl',
              ParamType.int,
            ),
            qn: params.getParam(
              'qn',
              ParamType.int,
            ),
            actpass: params.getParam(
              'actpass',
              ParamType.int,
            ),
            type: params.getParam(
              'type',
              ParamType.int,
            ),
            pres: params.getParam(
              'pres',
              ParamType.String,
            ),
            infi: params.getParam(
              'infi',
              ParamType.String,
            ),
            perf: params.getParam(
              'perf',
              ParamType.String,
            ),
            passperf: params.getParam(
              'passperf',
              ParamType.String,
            ),
            english: params.getParam(
              'english',
              ParamType.String,
            ),
            v1: params.getParam(
              'v1',
              ParamType.String,
            ),
            v2: params.getParam(
              'v2',
              ParamType.String,
            ),
            v3: params.getParam(
              'v3',
              ParamType.String,
            ),
            v4: params.getParam(
              'v4',
              ParamType.String,
            ),
            v5: params.getParam(
              'v5',
              ParamType.String,
            ),
            v6: params.getParam(
              'v6',
              ParamType.String,
            ),
            rgirg: params.getParam(
              'rgirg',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: RegverbspointsWidget.routeName,
          path: RegverbspointsWidget.routePath,
          builder: (context, params) => RegverbspointsWidget(
            decl: params.getParam(
              'decl',
              ParamType.int,
            ),
            verbtype: params.getParam(
              'verbtype',
              ParamType.int,
            ),
            actpass: params.getParam(
              'actpass',
              ParamType.int,
            ),
            verbqn: params.getParam(
              'verbqn',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: IrregverbspointsWidget.routeName,
          path: IrregverbspointsWidget.routePath,
          builder: (context, params) => IrregverbspointsWidget(
            qn: params.getParam(
              'qn',
              ParamType.int,
            ),
            type: params.getParam(
              'type',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: Pronoun1typesWidget.routeName,
          path: Pronoun1typesWidget.routePath,
          builder: (context, params) => Pronoun1typesWidget(),
        ),
        FFRoute(
          name: Pronouns11Widget.routeName,
          path: Pronouns11Widget.routePath,
          builder: (context, params) => Pronouns11Widget(
            word: params.getParam(
              'word',
              ParamType.String,
            ),
            genderexists: params.getParam(
              'genderexists',
              ParamType.int,
            ),
            gendertype: params.getParam(
              'gendertype',
              ParamType.int,
            ),
            engword: params.getParam(
              'engword',
              ParamType.String,
            ),
            verbtype: params.getParam(
              'verbtype',
              ParamType.int,
            ),
            qn: params.getParam(
              'qn',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: Pronoun2genderWidget.routeName,
          path: Pronoun2genderWidget.routePath,
          builder: (context, params) => Pronoun2genderWidget(
            type: params.getParam(
              'type',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: Pronoun3qnsWidget.routeName,
          path: Pronoun3qnsWidget.routePath,
          builder: (context, params) => Pronoun3qnsWidget(
            type: params.getParam(
              'type',
              ParamType.int,
            ),
            genderexists: params.getParam(
              'genderexists',
              ParamType.int,
            ),
            gendertype: params.getParam(
              'gendertype',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: Pronouns12Widget.routeName,
          path: Pronouns12Widget.routePath,
          builder: (context, params) => Pronouns12Widget(
            word: params.getParam(
              'word',
              ParamType.String,
            ),
            genderexists: params.getParam(
              'genderexists',
              ParamType.int,
            ),
            gendertype: params.getParam(
              'gendertype',
              ParamType.int,
            ),
            engword: params.getParam(
              'engword',
              ParamType.String,
            ),
            verbtype: params.getParam(
              'verbtype',
              ParamType.int,
            ),
            pn11: params.getParam(
              'pn11',
              ParamType.String,
            ),
            qn: params.getParam(
              'qn',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: Pronouns21Widget.routeName,
          path: Pronouns21Widget.routePath,
          builder: (context, params) => Pronouns21Widget(
            word: params.getParam(
              'word',
              ParamType.String,
            ),
            genderexists: params.getParam(
              'genderexists',
              ParamType.int,
            ),
            gendertype: params.getParam(
              'gendertype',
              ParamType.int,
            ),
            engword: params.getParam(
              'engword',
              ParamType.String,
            ),
            verbtype: params.getParam(
              'verbtype',
              ParamType.int,
            ),
            pn11: params.getParam(
              'pn11',
              ParamType.String,
            ),
            pn12: params.getParam(
              'pn12',
              ParamType.String,
            ),
            qn: params.getParam(
              'qn',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: Pronouns22Widget.routeName,
          path: Pronouns22Widget.routePath,
          builder: (context, params) => Pronouns22Widget(
            word: params.getParam(
              'word',
              ParamType.String,
            ),
            genderexists: params.getParam(
              'genderexists',
              ParamType.int,
            ),
            gendertype: params.getParam(
              'gendertype',
              ParamType.int,
            ),
            engword: params.getParam(
              'engword',
              ParamType.String,
            ),
            verbtype: params.getParam(
              'verbtype',
              ParamType.int,
            ),
            pn11: params.getParam(
              'pn11',
              ParamType.String,
            ),
            pn12: params.getParam(
              'pn12',
              ParamType.String,
            ),
            pn21: params.getParam(
              'pn21',
              ParamType.String,
            ),
            qn: params.getParam(
              'qn',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: Pronouns31Widget.routeName,
          path: Pronouns31Widget.routePath,
          builder: (context, params) => Pronouns31Widget(
            word: params.getParam(
              'word',
              ParamType.String,
            ),
            genderexists: params.getParam(
              'genderexists',
              ParamType.int,
            ),
            gendertype: params.getParam(
              'gendertype',
              ParamType.int,
            ),
            engword: params.getParam(
              'engword',
              ParamType.String,
            ),
            verbtype: params.getParam(
              'verbtype',
              ParamType.int,
            ),
            pn11: params.getParam(
              'pn11',
              ParamType.String,
            ),
            pn12: params.getParam(
              'pn12',
              ParamType.String,
            ),
            pn21: params.getParam(
              'pn21',
              ParamType.String,
            ),
            pn22: params.getParam(
              'pn22',
              ParamType.String,
            ),
            qn: params.getParam(
              'qn',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: Pronouns32Widget.routeName,
          path: Pronouns32Widget.routePath,
          builder: (context, params) => Pronouns32Widget(
            word: params.getParam(
              'word',
              ParamType.String,
            ),
            genderexists: params.getParam(
              'genderexists',
              ParamType.int,
            ),
            gendertype: params.getParam(
              'gendertype',
              ParamType.int,
            ),
            engword: params.getParam(
              'engword',
              ParamType.String,
            ),
            verbtype: params.getParam(
              'verbtype',
              ParamType.int,
            ),
            pn11: params.getParam(
              'pn11',
              ParamType.String,
            ),
            pn12: params.getParam(
              'pn12',
              ParamType.String,
            ),
            pn21: params.getParam(
              'pn21',
              ParamType.String,
            ),
            pn22: params.getParam(
              'pn22',
              ParamType.String,
            ),
            pn31: params.getParam(
              'pn31',
              ParamType.String,
            ),
            qn: params.getParam(
              'qn',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: Pronouns41Widget.routeName,
          path: Pronouns41Widget.routePath,
          builder: (context, params) => Pronouns41Widget(
            word: params.getParam(
              'word',
              ParamType.String,
            ),
            genderexists: params.getParam(
              'genderexists',
              ParamType.int,
            ),
            gendertype: params.getParam(
              'gendertype',
              ParamType.int,
            ),
            engword: params.getParam(
              'engword',
              ParamType.String,
            ),
            verbtype: params.getParam(
              'verbtype',
              ParamType.int,
            ),
            pn11: params.getParam(
              'pn11',
              ParamType.String,
            ),
            pn12: params.getParam(
              'pn12',
              ParamType.String,
            ),
            pn21: params.getParam(
              'pn21',
              ParamType.String,
            ),
            pn22: params.getParam(
              'pn22',
              ParamType.String,
            ),
            pn31: params.getParam(
              'pn31',
              ParamType.String,
            ),
            pn32: params.getParam(
              'pn32',
              ParamType.String,
            ),
            qn: params.getParam(
              'qn',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: Pronouns42Widget.routeName,
          path: Pronouns42Widget.routePath,
          builder: (context, params) => Pronouns42Widget(
            word: params.getParam(
              'word',
              ParamType.String,
            ),
            genderexists: params.getParam(
              'genderexists',
              ParamType.int,
            ),
            gendertype: params.getParam(
              'gendertype',
              ParamType.int,
            ),
            engword: params.getParam(
              'engword',
              ParamType.String,
            ),
            verbtype: params.getParam(
              'verbtype',
              ParamType.int,
            ),
            pn11: params.getParam(
              'pn11',
              ParamType.String,
            ),
            pn12: params.getParam(
              'pn12',
              ParamType.String,
            ),
            pn21: params.getParam(
              'pn21',
              ParamType.String,
            ),
            pn22: params.getParam(
              'pn22',
              ParamType.String,
            ),
            pn31: params.getParam(
              'pn31',
              ParamType.String,
            ),
            pn32: params.getParam(
              'pn32',
              ParamType.String,
            ),
            pn41: params.getParam(
              'pn41',
              ParamType.String,
            ),
            qn: params.getParam(
              'qn',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: Pronouns51Widget.routeName,
          path: Pronouns51Widget.routePath,
          builder: (context, params) => Pronouns51Widget(
            word: params.getParam(
              'word',
              ParamType.String,
            ),
            genderexists: params.getParam(
              'genderexists',
              ParamType.int,
            ),
            gendertype: params.getParam(
              'gendertype',
              ParamType.int,
            ),
            engword: params.getParam(
              'engword',
              ParamType.String,
            ),
            verbtype: params.getParam(
              'verbtype',
              ParamType.int,
            ),
            pn11: params.getParam(
              'pn11',
              ParamType.String,
            ),
            pn12: params.getParam(
              'pn12',
              ParamType.String,
            ),
            pn21: params.getParam(
              'pn21',
              ParamType.String,
            ),
            pn22: params.getParam(
              'pn22',
              ParamType.String,
            ),
            pn31: params.getParam(
              'pn31',
              ParamType.String,
            ),
            pn32: params.getParam(
              'pn32',
              ParamType.String,
            ),
            pn41: params.getParam(
              'pn41',
              ParamType.String,
            ),
            pn42: params.getParam(
              'pn42',
              ParamType.String,
            ),
            qn: params.getParam(
              'qn',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: Pronouns52Widget.routeName,
          path: Pronouns52Widget.routePath,
          builder: (context, params) => Pronouns52Widget(
            word: params.getParam(
              'word',
              ParamType.String,
            ),
            genderexists: params.getParam(
              'genderexists',
              ParamType.int,
            ),
            gendertype: params.getParam(
              'gendertype',
              ParamType.int,
            ),
            engword: params.getParam(
              'engword',
              ParamType.String,
            ),
            verbtype: params.getParam(
              'verbtype',
              ParamType.int,
            ),
            pn11: params.getParam(
              'pn11',
              ParamType.String,
            ),
            pn12: params.getParam(
              'pn12',
              ParamType.String,
            ),
            pn21: params.getParam(
              'pn21',
              ParamType.String,
            ),
            pn22: params.getParam(
              'pn22',
              ParamType.String,
            ),
            pn31: params.getParam(
              'pn31',
              ParamType.String,
            ),
            pn32: params.getParam(
              'pn32',
              ParamType.String,
            ),
            pn41: params.getParam(
              'pn41',
              ParamType.String,
            ),
            pn42: params.getParam(
              'pn42',
              ParamType.String,
            ),
            pn51: params.getParam(
              'pn51',
              ParamType.String,
            ),
            qn: params.getParam(
              'qn',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: PronounscrwordsWidget.routeName,
          path: PronounscrwordsWidget.routePath,
          builder: (context, params) => PronounscrwordsWidget(
            word: params.getParam(
              'word',
              ParamType.String,
            ),
            genderexists: params.getParam(
              'genderexists',
              ParamType.int,
            ),
            gendertype: params.getParam(
              'gendertype',
              ParamType.int,
            ),
            engword: params.getParam(
              'engword',
              ParamType.String,
            ),
            verbtype: params.getParam(
              'verbtype',
              ParamType.int,
            ),
            pn11: params.getParam(
              'pn11',
              ParamType.String,
            ),
            pn12: params.getParam(
              'pn12',
              ParamType.String,
            ),
            pn21: params.getParam(
              'pn21',
              ParamType.String,
            ),
            pn22: params.getParam(
              'pn22',
              ParamType.String,
            ),
            pn31: params.getParam(
              'pn31',
              ParamType.String,
            ),
            pn32: params.getParam(
              'pn32',
              ParamType.String,
            ),
            pn41: params.getParam(
              'pn41',
              ParamType.String,
            ),
            pn42: params.getParam(
              'pn42',
              ParamType.String,
            ),
            pn51: params.getParam(
              'pn51',
              ParamType.String,
            ),
            pn52: params.getParam(
              'pn52',
              ParamType.String,
            ),
            qn: params.getParam(
              'qn',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: PronounspointsWidget.routeName,
          path: PronounspointsWidget.routePath,
          builder: (context, params) => PronounspointsWidget(
            qn: params.getParam(
              'qn',
              ParamType.int,
            ),
            type: params.getParam(
              'type',
              ParamType.int,
            ),
            gender: params.getParam(
              'gender',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: Adj1declWidget.routeName,
          path: Adj1declWidget.routePath,
          builder: (context, params) => Adj1declWidget(),
        ),
        FFRoute(
          name: Adj2genderWidget.routeName,
          path: Adj2genderWidget.routePath,
          builder: (context, params) => Adj2genderWidget(
            adjdecl: params.getParam(
              'adjdecl',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: Adj3qnsWidget.routeName,
          path: Adj3qnsWidget.routePath,
          builder: (context, params) => Adj3qnsWidget(
            gendertype: params.getParam(
              'gendertype',
              ParamType.int,
            ),
            qndecl: params.getParam(
              'qndecl',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: Adjs11Widget.routeName,
          path: Adjs11Widget.routePath,
          builder: (context, params) => Adjs11Widget(
            word: params.getParam(
              'word',
              ParamType.String,
            ),
            gendertype: params.getParam(
              'gendertype',
              ParamType.int,
            ),
            engword: params.getParam(
              'engword',
              ParamType.String,
            ),
            verbtype: params.getParam(
              'verbtype',
              ParamType.int,
            ),
            fem: params.getParam(
              'fem',
              ParamType.String,
            ),
            neu: params.getParam(
              'neu',
              ParamType.String,
            ),
            qn: params.getParam(
              'qn',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: Adjs12Widget.routeName,
          path: Adjs12Widget.routePath,
          builder: (context, params) => Adjs12Widget(
            word: params.getParam(
              'word',
              ParamType.String,
            ),
            gendertype: params.getParam(
              'gendertype',
              ParamType.int,
            ),
            engword: params.getParam(
              'engword',
              ParamType.String,
            ),
            verbtype: params.getParam(
              'verbtype',
              ParamType.int,
            ),
            pn11: params.getParam(
              'pn11',
              ParamType.String,
            ),
            fem: params.getParam(
              'fem',
              ParamType.String,
            ),
            neu: params.getParam(
              'neu',
              ParamType.String,
            ),
            qn: params.getParam(
              'qn',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: Adjs21Widget.routeName,
          path: Adjs21Widget.routePath,
          builder: (context, params) => Adjs21Widget(
            word: params.getParam(
              'word',
              ParamType.String,
            ),
            gendertype: params.getParam(
              'gendertype',
              ParamType.int,
            ),
            engword: params.getParam(
              'engword',
              ParamType.String,
            ),
            verbtype: params.getParam(
              'verbtype',
              ParamType.int,
            ),
            pn11: params.getParam(
              'pn11',
              ParamType.String,
            ),
            pn12: params.getParam(
              'pn12',
              ParamType.String,
            ),
            fem: params.getParam(
              'fem',
              ParamType.String,
            ),
            neu: params.getParam(
              'neu',
              ParamType.String,
            ),
            qn: params.getParam(
              'qn',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: Adjs22Widget.routeName,
          path: Adjs22Widget.routePath,
          builder: (context, params) => Adjs22Widget(
            word: params.getParam(
              'word',
              ParamType.String,
            ),
            gendertype: params.getParam(
              'gendertype',
              ParamType.int,
            ),
            engword: params.getParam(
              'engword',
              ParamType.String,
            ),
            verbtype: params.getParam(
              'verbtype',
              ParamType.int,
            ),
            pn11: params.getParam(
              'pn11',
              ParamType.String,
            ),
            pn12: params.getParam(
              'pn12',
              ParamType.String,
            ),
            pn21: params.getParam(
              'pn21',
              ParamType.String,
            ),
            fem: params.getParam(
              'fem',
              ParamType.String,
            ),
            neu: params.getParam(
              'neu',
              ParamType.String,
            ),
            qn: params.getParam(
              'qn',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: Adjs31Widget.routeName,
          path: Adjs31Widget.routePath,
          builder: (context, params) => Adjs31Widget(
            word: params.getParam(
              'word',
              ParamType.String,
            ),
            gendertype: params.getParam(
              'gendertype',
              ParamType.int,
            ),
            engword: params.getParam(
              'engword',
              ParamType.String,
            ),
            verbtype: params.getParam(
              'verbtype',
              ParamType.int,
            ),
            pn11: params.getParam(
              'pn11',
              ParamType.String,
            ),
            pn12: params.getParam(
              'pn12',
              ParamType.String,
            ),
            pn21: params.getParam(
              'pn21',
              ParamType.String,
            ),
            pn22: params.getParam(
              'pn22',
              ParamType.String,
            ),
            fem: params.getParam(
              'fem',
              ParamType.String,
            ),
            neu: params.getParam(
              'neu',
              ParamType.String,
            ),
            qn: params.getParam(
              'qn',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: Adjs32Widget.routeName,
          path: Adjs32Widget.routePath,
          builder: (context, params) => Adjs32Widget(
            word: params.getParam(
              'word',
              ParamType.String,
            ),
            gendertype: params.getParam(
              'gendertype',
              ParamType.int,
            ),
            engword: params.getParam(
              'engword',
              ParamType.String,
            ),
            verbtype: params.getParam(
              'verbtype',
              ParamType.int,
            ),
            pn11: params.getParam(
              'pn11',
              ParamType.String,
            ),
            pn12: params.getParam(
              'pn12',
              ParamType.String,
            ),
            pn21: params.getParam(
              'pn21',
              ParamType.String,
            ),
            pn22: params.getParam(
              'pn22',
              ParamType.String,
            ),
            pn31: params.getParam(
              'pn31',
              ParamType.String,
            ),
            fem: params.getParam(
              'fem',
              ParamType.String,
            ),
            neu: params.getParam(
              'neu',
              ParamType.String,
            ),
            qn: params.getParam(
              'qn',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: Adjs41Widget.routeName,
          path: Adjs41Widget.routePath,
          builder: (context, params) => Adjs41Widget(
            word: params.getParam(
              'word',
              ParamType.String,
            ),
            gendertype: params.getParam(
              'gendertype',
              ParamType.int,
            ),
            engword: params.getParam(
              'engword',
              ParamType.String,
            ),
            verbtype: params.getParam(
              'verbtype',
              ParamType.int,
            ),
            pn11: params.getParam(
              'pn11',
              ParamType.String,
            ),
            pn12: params.getParam(
              'pn12',
              ParamType.String,
            ),
            pn21: params.getParam(
              'pn21',
              ParamType.String,
            ),
            pn22: params.getParam(
              'pn22',
              ParamType.String,
            ),
            pn31: params.getParam(
              'pn31',
              ParamType.String,
            ),
            pn32: params.getParam(
              'pn32',
              ParamType.String,
            ),
            fem: params.getParam(
              'fem',
              ParamType.String,
            ),
            neu: params.getParam(
              'neu',
              ParamType.String,
            ),
            qn: params.getParam(
              'qn',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: Adjs42Widget.routeName,
          path: Adjs42Widget.routePath,
          builder: (context, params) => Adjs42Widget(
            word: params.getParam(
              'word',
              ParamType.String,
            ),
            gendertype: params.getParam(
              'gendertype',
              ParamType.int,
            ),
            engword: params.getParam(
              'engword',
              ParamType.String,
            ),
            verbtype: params.getParam(
              'verbtype',
              ParamType.int,
            ),
            pn11: params.getParam(
              'pn11',
              ParamType.String,
            ),
            pn12: params.getParam(
              'pn12',
              ParamType.String,
            ),
            pn21: params.getParam(
              'pn21',
              ParamType.String,
            ),
            pn22: params.getParam(
              'pn22',
              ParamType.String,
            ),
            pn31: params.getParam(
              'pn31',
              ParamType.String,
            ),
            pn32: params.getParam(
              'pn32',
              ParamType.String,
            ),
            pn41: params.getParam(
              'pn41',
              ParamType.String,
            ),
            fem: params.getParam(
              'fem',
              ParamType.String,
            ),
            neu: params.getParam(
              'neu',
              ParamType.String,
            ),
            qn: params.getParam(
              'qn',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: Adjs51Widget.routeName,
          path: Adjs51Widget.routePath,
          builder: (context, params) => Adjs51Widget(
            word: params.getParam(
              'word',
              ParamType.String,
            ),
            gendertype: params.getParam(
              'gendertype',
              ParamType.int,
            ),
            engword: params.getParam(
              'engword',
              ParamType.String,
            ),
            verbtype: params.getParam(
              'verbtype',
              ParamType.int,
            ),
            pn11: params.getParam(
              'pn11',
              ParamType.String,
            ),
            pn12: params.getParam(
              'pn12',
              ParamType.String,
            ),
            pn21: params.getParam(
              'pn21',
              ParamType.String,
            ),
            pn22: params.getParam(
              'pn22',
              ParamType.String,
            ),
            pn31: params.getParam(
              'pn31',
              ParamType.String,
            ),
            pn32: params.getParam(
              'pn32',
              ParamType.String,
            ),
            pn41: params.getParam(
              'pn41',
              ParamType.String,
            ),
            pn42: params.getParam(
              'pn42',
              ParamType.String,
            ),
            fem: params.getParam(
              'fem',
              ParamType.String,
            ),
            neu: params.getParam(
              'neu',
              ParamType.String,
            ),
            qn: params.getParam(
              'qn',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: Adjs52Widget.routeName,
          path: Adjs52Widget.routePath,
          builder: (context, params) => Adjs52Widget(
            word: params.getParam(
              'word',
              ParamType.String,
            ),
            gendertype: params.getParam(
              'gendertype',
              ParamType.int,
            ),
            engword: params.getParam(
              'engword',
              ParamType.String,
            ),
            verbtype: params.getParam(
              'verbtype',
              ParamType.int,
            ),
            pn11: params.getParam(
              'pn11',
              ParamType.String,
            ),
            pn12: params.getParam(
              'pn12',
              ParamType.String,
            ),
            pn21: params.getParam(
              'pn21',
              ParamType.String,
            ),
            pn22: params.getParam(
              'pn22',
              ParamType.String,
            ),
            pn31: params.getParam(
              'pn31',
              ParamType.String,
            ),
            pn32: params.getParam(
              'pn32',
              ParamType.String,
            ),
            pn41: params.getParam(
              'pn41',
              ParamType.String,
            ),
            pn42: params.getParam(
              'pn42',
              ParamType.String,
            ),
            pn51: params.getParam(
              'pn51',
              ParamType.String,
            ),
            fem: params.getParam(
              'fem',
              ParamType.String,
            ),
            neu: params.getParam(
              'neu',
              ParamType.String,
            ),
            qn: params.getParam(
              'qn',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: AdjscwordsWidget.routeName,
          path: AdjscwordsWidget.routePath,
          builder: (context, params) => AdjscwordsWidget(
            word: params.getParam(
              'word',
              ParamType.String,
            ),
            gendertype: params.getParam(
              'gendertype',
              ParamType.int,
            ),
            engword: params.getParam(
              'engword',
              ParamType.String,
            ),
            verbtype: params.getParam(
              'verbtype',
              ParamType.int,
            ),
            pn11: params.getParam(
              'pn11',
              ParamType.String,
            ),
            pn12: params.getParam(
              'pn12',
              ParamType.String,
            ),
            pn21: params.getParam(
              'pn21',
              ParamType.String,
            ),
            pn22: params.getParam(
              'pn22',
              ParamType.String,
            ),
            pn31: params.getParam(
              'pn31',
              ParamType.String,
            ),
            pn32: params.getParam(
              'pn32',
              ParamType.String,
            ),
            pn41: params.getParam(
              'pn41',
              ParamType.String,
            ),
            pn42: params.getParam(
              'pn42',
              ParamType.String,
            ),
            pn51: params.getParam(
              'pn51',
              ParamType.String,
            ),
            pn52: params.getParam(
              'pn52',
              ParamType.String,
            ),
            fem: params.getParam(
              'fem',
              ParamType.String,
            ),
            neu: params.getParam(
              'neu',
              ParamType.String,
            ),
            qn: params.getParam(
              'qn',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: AdjspointsWidget.routeName,
          path: AdjspointsWidget.routePath,
          builder: (context, params) => AdjspointsWidget(
            gendertype: params.getParam(
              'gendertype',
              ParamType.int,
            ),
            wordqn: params.getParam(
              'wordqn',
              ParamType.int,
            ),
            verbtype: params.getParam(
              'verbtype',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: MaindictWidget.routeName,
          path: MaindictWidget.routePath,
          builder: (context, params) => MaindictWidget(),
        ),
        FFRoute(
          name: BooksWidget.routeName,
          path: BooksWidget.routePath,
          builder: (context, params) =>
              params.isEmpty ? NavBarPage(initialPage: 'books') : BooksWidget(),
        ),
        FFRoute(
          name: TestWidget.routeName,
          path: TestWidget.routePath,
          builder: (context, params) => TestWidget(),
        ),
        FFRoute(
          name: DictsampleWidget.routeName,
          path: DictsampleWidget.routePath,
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'dictsample')
              : DictsampleWidget(),
        ),
        FFRoute(
          name: TranslationWidget.routeName,
          path: TranslationWidget.routePath,
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'translation')
              : TranslationWidget(),
        ),
        FFRoute(
          name: AdjexplnWidget.routeName,
          path: AdjexplnWidget.routePath,
          builder: (context, params) => AdjexplnWidget(),
        ),
        FFRoute(
          name: NounsexplnWidget.routeName,
          path: NounsexplnWidget.routePath,
          builder: (context, params) => NounsexplnWidget(),
        ),
        FFRoute(
          name: PrnexplnWidget.routeName,
          path: PrnexplnWidget.routePath,
          builder: (context, params) => PrnexplnWidget(),
        ),
        FFRoute(
          name: VerbexplnWidget.routeName,
          path: VerbexplnWidget.routePath,
          builder: (context, params) => VerbexplnWidget(),
        ),
        FFRoute(
          name: GuideexplnWidget.routeName,
          path: GuideexplnWidget.routePath,
          builder: (context, params) => GuideexplnWidget(),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState => AppStateNotifier.instance;
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void clearRedirectLocation() => appState.clearRedirectLocation();
  void setRedirectLocationIfUnset(String location) =>
      appState.updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(uri.queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.allParams.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, {
    bool isList = false,
    List<String>? collectionNamePath,
  }) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
      collectionNamePath: collectionNamePath,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        redirect: (context, state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.uri.toString());
            return '/homepage';
          }
          return null;
        },
        pageBuilder: (context, state) {
          fixStatusBarOniOS16AndBelow(context);
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
              ? Container(
                  color: Color(0xFF81201A),
                  child: Center(
                    child: Image.asset(
                      'assets/images/WhatsApp_Image_2025-01-27_at_00.37.40_24a6a26f.jpg',
                      width: 100.0,
                      height: 100.0,
                      fit: BoxFit.contain,
                    ),
                  ),
                )
              : page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => TransitionInfo(hasTransition: false);
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouterState.of(context).uri.toString();
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}

extension GoRouterLocationExtension on GoRouter {
  String getCurrentLocation() {
    final RouteMatch lastMatch = routerDelegate.currentConfiguration.last;
    final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : routerDelegate.currentConfiguration;
    return matchList.uri.toString();
  }
}
