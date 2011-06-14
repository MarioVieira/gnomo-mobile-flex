package uk.co.baremedia.gnomo.mobile.view.mediators
{
<<<<<<< HEAD
	import org.robotlegs.core.IInjector;
	import org.robotlegs.mvcs.MediatorInit;
	
	import uk.co.baremedia.gnomo.mobile.view.components.ComponentDisconnected;
	import uk.co.baremedia.gnomo.presentation.PresentationScreenDisconnect;
	
	public class MediatorScreenDisconnected extends MediatorInit
	{
		override public function init(injector:IInjector):void
		{
			super.init(injector);
			_view = injector.getInstance(ComponentDisconnected);
		}
		
		public var _view	 				: ComponentDisconnected;
		
		override public function onRegister():void
		{ 
			_view.presentationModel = new PresentationScreenDisconnect();
		}
		
		override public function onRemove():void
		{
			_view.presentationModel.dispose();	
=======
	
	public class MediatorScreenDisconnected
	{
		public function MediatorScreenDisconnected()
		{
>>>>>>> 74a533ae54ee5e0abb476d4878d312a7eaa13ba6
		}
	}
}