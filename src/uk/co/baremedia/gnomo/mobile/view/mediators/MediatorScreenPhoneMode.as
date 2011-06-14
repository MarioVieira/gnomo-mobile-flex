package uk.co.baremedia.gnomo.mobile.view.mediators
{
	import org.robotlegs.core.IInjector;
	import org.robotlegs.mvcs.MediatorInit;
	
	import uk.co.baremedia.gnomo.mobile.view.components.ComponentPhoneMode;
	import uk.co.baremedia.gnomo.presentation.PresentationScreenConnect;

	public class MediatorScreenPhoneMode extends MediatorInit
	{
		override public function init(injector:IInjector):void
		{
			super.init(injector);
			_view = injector.getInstance(ComponentPhoneMode);
		}
		
		public var _view	 				: ComponentPhoneMode;
		
		override public function onRegister():void
		{ 
			_view.presentationModel = new PresentationScreenConnect();
		}
		
		override public function onRemove():void
		{
			_view.presentationModel.dispose();	
		}
	}
}