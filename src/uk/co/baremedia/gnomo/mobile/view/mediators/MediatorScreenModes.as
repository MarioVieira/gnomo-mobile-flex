package uk.co.baremedia.gnomo.mobile.view.mediators
{
	import org.as3.mvcsInjector.utils.Tracer;
	import org.robotlegs.core.IInjector;
	import org.robotlegs.mvcs.MediatorInit;
	
	import uk.co.baremedia.gnomo.controls.ControlUnits;
	import uk.co.baremedia.gnomo.mobile.view.components.ComponentScreenModes;
	import uk.co.baremedia.gnomo.models.ModelDeviceInfo;
	import uk.co.baremedia.gnomo.models.Locale;
	import uk.co.baremedia.gnomo.presentation.PresentationScreenModes;
	
	public class MediatorScreenModes extends MediatorInit
	{
		protected var _injector:IInjector;
		
		override public function init(injector:IInjector):void
		{
			super.init(injector);
			_injector 	= injector;
			_view 		= injector.getInstance(ComponentScreenModes);
		}
		
		public var _view	 				: ComponentScreenModes;
		
		override public function onRegister():void
		{ 
			Tracer.log(this, "onRegister - ModelLanguage.screenModesButtonWireless: "+Locale.screenModesButtonWireless);
			
			_view.presentationModel = new PresentationScreenModes(_injector.getInstance(ControlUnits), _injector.getInstance(ModelDeviceInfo));
		}
		
		override public function onRemove():void
		{
			//_view.presentationModel2.dispose();	
		}
	}
}
