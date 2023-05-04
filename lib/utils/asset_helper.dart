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

  static get UpdateDpIcon => Icon('camera.png');

  static get CheckerIcon => Icon('CheckerIcon.png');

  static get Edit => Icon('EditPorfile.png');

  static get Cancel => Icon('cancel.png');

  static get Goals => Icon('Goals.png');

  static get Activities => Icon('Activities.png');

  static get Shop => Icon('shop.png');

  static get ShopList => Icon('shoplist_icon.png');

  static get Search => Icon('search.png');

  static get calender => Icon('AlternateCalendar (2).png');

//--------------------------------------------------

  static get SalesExecutive => Image('Salesexecutive.png');
}
