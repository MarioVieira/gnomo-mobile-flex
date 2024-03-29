package uk.co.baremedia.gnomo.mobile.view.mediators
{
	import org.robotlegs.core.IInjector;
	import org.robotlegs.mvcs.MediatorInit;
	
	import uk.co.baremedia.gnomo.mobile.view.components.ComponentTryAgain;
	import uk.co.baremedia.gnomo.presentation.PresentationScreenTryAgain;
	
	public class MediatorScreenTryAgain extends MediatorInit
	{
		override public function init(injector:IInjector):void
		{
			super.init(injector);
			_view = injector.getInstance(ComponentTryAgain);
		}
		
		public var _view	 				: ComponentTryAgain;
		
		override public function onRegister():void
		{ 
			_view.presentationModel = new PresentationScreenTryAgain();
		}
		
		override public function onRemove():void
		{
			_view.presentationModel.dispose();	
		}
	}
}