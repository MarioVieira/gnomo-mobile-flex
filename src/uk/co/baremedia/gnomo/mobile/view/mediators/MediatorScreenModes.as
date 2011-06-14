package uk.co.baremedia.gnomo.mobile.view.mediators
{
	import org.as3.mvcsInjector.utils.Tracer;
<<<<<<< HEAD
	import org.robotlegs.core.IInjector;
	import org.robotlegs.mvcs.MediatorInit;
	
	import uk.co.baremedia.gnomo.controls.ControlUnits;
	import uk.co.baremedia.gnomo.mobile.view.components.ComponentScreenModes;
	import uk.co.baremedia.gnomo.models.ModelDeviceInfo;
	import uk.co.baremedia.gnomo.presentation.PresentationScreenModes;
	
	public class MediatorScreenModes extends MediatorInit
	{
		protected var _injector:IInjector;
		
		override public function init(injector:IInjector):void
		{
			super.init(injector);
			_injector 	= injector;
			_view 		= injector.getInstance(ComponentScreenModes);
=======
	import org.robotlegs.core.IInitializer;
	import org.robotlegs.core.IInjector;
	import org.robotlegs.mvcs.MediatorInit;
	
	import uk.co.baremedia.gnomo.mobile.view.components.ComponentScreenModes;
	import uk.co.baremedia.gnomo.presentation.PresentationScreenModes;
	import uk.co.baremedia.gnomo.signals.SignalCrossPlatformExchange;
	
	public class MediatorScreenModes extends MediatorInit
	{
		override public function init(injector:IInjector):void
		{
			super.init(injector);
			_view = injector.getInstance(ComponentScreenModes);
>>>>>>> 74a533ae54ee5e0abb476d4878d312a7eaa13ba6
		}
		
		public var _view	 				: ComponentScreenModes;
		
<<<<<<< HEAD
		override public function onRegister():void
		{ 
			Tracer.log(this, "onRegister - ModelLanguage.screenModesButtonWireless: "+ModelLanguage.screenModesButtonWireless);
			
			_view.presentationModel = new PresentationScreenModes(_injector.getInstance(ControlUnits), _injector.getInstance(ModelDeviceInfo));
=======
		/**  
		 * @private 
		 */	
		protected var _presentationModel	: PresentationScreenModes;
		
		override public function onRegister():void
		{ 
			Tracer.log(this, "onRegister()");
			_presentationModel 		= new PresentationScreenModes();
			_view.presentationModel = _presentationModel;
>>>>>>> 74a533ae54ee5e0abb476d4878d312a7eaa13ba6
		}
		
		override public function onRemove():void
		{
<<<<<<< HEAD
			//_view.presentationModel2.dispose();	
=======
			Tracer.log(this, "onRemove()");
			_presentationModel.dispose();	
>>>>>>> 74a533ae54ee5e0abb476d4878d312a7eaa13ba6
		}
	}
}
