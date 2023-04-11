abstract class AssetHelper {
  static String Image(String Imagename) {
    return 'asset/images/$Imagename';
  }

  static String Icon(String Icons) {
    return 'asset/images/$Icons';
  }

//---------------------------------------------

  static get SplashDp => Icon('SplashDp.png');

  static get Dp => Icon('Dp.png');

  static get ProfileDp => Icon('ProfileDp.png');

  static get RoundedCorrect => Icon('RoundedCorrect.png');

  static get UpdateDpIcon => Icon('UpdateDpIcon.png');

  static get CheckerIcon => Icon('CheckerIcon.png');


//--------------------------------------------------

  static get SalesExecutive=> Image('SalesExecutive.jpg');
}
