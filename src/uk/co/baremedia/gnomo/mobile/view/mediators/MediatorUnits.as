package uk.co.baremedia.gnomo.mobile.view.mediators
{
	import org.robotlegs.core.IInjector;
	import org.robotlegs.mvcs.MediatorInit;
	
	import uk.co.baremedia.gnomo.controls.ControlPersistedData;
	import uk.co.baremedia.gnomo.controls.ControlUnits;
	import uk.co.baremedia.gnomo.mobile.view.components.ComponentUnits;
	import uk.co.baremedia.gnomo.models.ModelAudio;
	import uk.co.baremedia.gnomo.models.ModelModes;
	import uk.co.baremedia.gnomo.models.ModelNetworkManager;
	import uk.co.baremedia.gnomo.presentation.PresentationUnits;
	
	public class MediatorUnits extends MediatorInit
	{
		override public function init(injector:IInjector):void
		{
			super.init(injector);
			_view 		= injector.getInstance(ComponentUnits);
			_injector 	= injector;
		}
		
		protected var _view	 				: ComponentUnits;
		protected var _injector				: IInjector;
		
		override public function onRegister():void
		{ 
			_view.presentationModel = new PresentationUnits(_injector.getInstance(ControlUnits),
															_injector.getInstance(ControlPersistedData),
															_injector.getInstance(ModelNetworkManager),
															_injector.getInstance(ModelModes),
															_injector.getInstance(ModelAudio));
		}
		
		override public function onRemove():void
		{
			_view.presentationModel.dispose();	
		}
	}
}