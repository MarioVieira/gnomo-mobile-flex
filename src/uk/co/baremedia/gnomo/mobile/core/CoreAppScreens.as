package uk.co.baremedia.gnomo.mobile.core
{
	import org.as3.mvcsInjector.descriptors.DescriptoViews;
	import org.as3.mvcsInjector.vo.VOScreen;
	
	import uk.co.baremedia.gnomo.enums.EnumsScreens;
	import uk.co.baremedia.gnomo.enums.EnumsViewNavigation;
	import uk.co.baremedia.gnomo.mobile.view.components.*;
	import uk.co.baremedia.gnomo.mobile.view.mediators.*;
	
	public class CoreAppScreens
	{
		public static function getAppScreens(firstScreenName:String):DescriptoViews
		{
			var screens:Vector.<VOScreen> = new Vector.<VOScreen>;
			screens.push( new VOScreen(ComponentScreenModes, MediatorScreenModes, EnumsScreens.SCREEN_MODES, EnumsViewNavigation.TYPE_SCREEN) );
			screens.push( new VOScreen(ComponentsNoWireless, MediatorNoWireless, EnumsScreens.SCREEN_NO_WIRELESS, EnumsViewNavigation.TYPE_SCREEN) );
			screens.push( new VOScreen(ComponentScreenConnect, MediatorScreenConnect, EnumsScreens.SCREEN_CONNECT, EnumsViewNavigation.TYPE_SCREEN) );
			screens.push( new VOScreen(ComponentUnits, MediatorUnits, EnumsScreens.SCREEN_UNITS, EnumsViewNavigation.TYPE_SCREEN) );
			screens.push( new VOScreen(ComponentTryAgain, MediatorScreenTryAgain, EnumsScreens.SCREEN_PHONE, EnumsViewNavigation.TYPE_SCREEN) );
			screens.push( new VOScreen(ComponentDisconnected, MediatorScreenDisconnected, EnumsScreens.SCREEN_DISCONNECTED, EnumsViewNavigation.TYPE_POPUP) );
			screens.push( new VOScreen(ComponentPhoneMode, MediatorScreenPhoneMode, EnumsScreens.SCREEN_PHONE_MODE, EnumsViewNavigation.TYPE_SCREEN) );
			
			return new DescriptoViews(firstScreenName, screens); 
		}
	}
}