package uk.co.baremedia.gnomo.mobile.view.mediators
{
	import org.as3.mvcsInjector.utils.Tracer;
	import org.robotlegs.core.IInjector;
	import org.robotlegs.mvcs.MediatorInit;
	
	import uk.co.baremedia.gnomo.mobile.view.components.ComponentsNoWireless;
	import uk.co.baremedia.gnomo.presentation.PresentationNoWireless;
	
	public class MediatorNoWireless extends MediatorInit
	{
		override public function init(injector:IInjector):void
		{
			super.init(injector);
			_view = injector.getInstance(ComponentsNoWireless);
		}
		
		public var _view	 				: ComponentsNoWireless;
	
		override public function onRegister():void
		{ 
			Tracer.log(this, "onRegister()");
			_view.presentationModel = new PresentationNoWireless();
		}
		
		override public function onRemove():void
		{
			Tracer.log(this, "onRemove()");
			_view.presentationModel.dispose();
		}
	}
}