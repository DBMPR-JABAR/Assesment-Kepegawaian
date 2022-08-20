class Routes {
  Routes._();

  static const SPLASH_SCREEN = _Paths.SPLASH_SCREEN;
  static const AUTHENTICATION = _Paths.AUTHENTICATION;
  static const LOGIN = _Paths.AUTHENTICATION + _Paths.LOGIN;
  static const REGISTER = _Paths.AUTHENTICATION + _Paths.REGISTER;
  static const QUIZ = _Paths.QUIZ;
}

abstract class _Paths {
  _Paths._();

  static const SPLASH_SCREEN = "/splash-screen";
  static const AUTHENTICATION = "/authentication";
  static const LOGIN = "/login";
  static const REGISTER = "/register";
  static const QUIZ = "/quiz";
}
