package uk.co.baremedia.gnomo.mobile.view.mediators
{
	import org.robotlegs.core.IInjector;
	import org.robotlegs.mvcs.MediatorInit;
	
	import uk.co.baremedia.gnomo.mobile.view.components.ComponentPhoneMode;
	import uk.co.baremedia.gnomo.mobile.view.components.ComponentUnits;
	import uk.co.baremedia.gnomo.mobile.view.presentation.PresentationUnits;
	
	public class MediatorUnits extends MediatorInit
	{
		override public function init(injector:IInjector):void
		{
			super.init(injector);
			_view = injector.getInstance(ComponentPhoneMode);
		}
		
		public var _view	 				: ComponentUnits;
		
		override public function onRegister():void
		{ 
			_view.presentationModel = new PresentationUnits()
		}
		
		override public function onRemove():void
		{
			_view.presentationModel.dispose();	
		}
	}
}