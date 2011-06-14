package uk.co.baremedia.gnomo.mobile.view.mediators
{
	import org.as3.mvcsInjector.utils.Tracer;
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
		}
		
		public var _view	 				: ComponentScreenModes;
		
		/**  
		 * @private 
		 */	
		protected var _presentationModel	: PresentationScreenModes;
		
		override public function onRegister():void
		{ 
			Tracer.log(this, "onRegister()");
			_presentationModel 		= new PresentationScreenModes();
			_view.presentationModel = _presentationModel;
		}
		
		override public function onRemove():void
		{
			Tracer.log(this, "onRemove()");
			_presentationModel.dispose();	
		}
	}
}
