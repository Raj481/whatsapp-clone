
class ImageRes {

  ImageRes._();

  static ImageRes get instance {
    return ImageRes._();
  }

  String get icon => "assets/icons";
  String get images => "assets/images";

  /*--- Icons ---*/
  String get kebab => "$icon/kebab.png";

}