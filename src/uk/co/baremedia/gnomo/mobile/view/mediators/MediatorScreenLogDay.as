package uk.co.baremedia.gnomo.mobile.view.mediators
{
	import org.robotlegs.core.IInjector;
	import org.robotlegs.mvcs.MediatorInit;
	
	import uk.co.baremedia.gnomo.controls.ControlLogs;
	import uk.co.baremedia.gnomo.mobile.view.components.ComponentLogsDay;
	import uk.co.baremedia.gnomo.presentation.PresentationLogs;
	
	public class MediatorScreenLogDay extends MediatorInit
	{
		private var _injector				: IInjector;
		private var _view:*;
		
		override public function init(injector:IInjector):void
		{
			super.init(injector);
			_view 		= injector.getInstance(ComponentLogsDay);
			_injector 	= injector;
		}
		
		override public function onRegister():void
		{ 
			_view.presentationModel = new PresentationLogs( _injector.getInstance(ControlLogs) );
		}
		
		override public function onRemove():void
		{
			_view.presentationModel.dispose();	
		}
	}
}