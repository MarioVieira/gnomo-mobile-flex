package uk.co.baremedia.gnomo.mobile.view.mediators
{
	import org.as3.mvcsInjector.utils.Tracer;
	import org.robotlegs.core.IInjector;
	import org.robotlegs.mvcs.MediatorInit;
	
	import uk.co.baremedia.gnomo.mobile.view.components.ComponentsNoWireless;
	import uk.co.baremedia.gnomo.mobile.view.presentation.PresentationNoWireless;
	
	public class MediatorNoWireless extends MediatorInit
	{
		override public function init(injector:IInjector):void
		{
			super.init(injector);
			_view = injector.getInstance(ComponentsNoWireless);
		}
		
		public var _view	 				: ComponentsNoWireless;
		
		/**  
		 * @private 
		 */	
		protected var _presentationModel	: PresentationNoWireless;
		
		override public function onRegister():void
		{ 
			Tracer.log(this, "onRegister()");
			_presentationModel 		= new PresentationNoWireless();
			_view.presentationModel = _presentationModel;
		}
		
		override public function onRemove():void
		{
			Tracer.log(this, "onRemove()");
			_presentationModel.dispose();	
		}
	}
}