package uk.co.baremedia.gnomo.mobile.view.mediators
{
	import org.robotlegs.core.IInjector;
	import org.robotlegs.mvcs.MediatorInit;
	
	import uk.co.baremedia.gnomo.mobile.view.components.ComponentScreenConnect;
	import uk.co.baremedia.gnomo.presentation.PresentationScreenConnect;
	
	public class MediatorScreenConnect extends MediatorInit
	{
		override public function init(injector:IInjector):void
		{
			super.init(injector);
			_view = injector.getInstance(ComponentScreenConnect);
		}
		
		public var _view	 				: ComponentScreenConnect;
		
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