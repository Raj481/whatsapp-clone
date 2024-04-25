

class StringRes {

  StringRes._();

  static StringRes get instance {
    return StringRes._();
  }

  String get appName => "WhatsApp";
  String get welcome => "Welcome";
  String get home => "Home";
  String get chats => "Chats";
  String get updates => "Updates";
  String get communities => "Communities";
  String get calls => "Calls";

}