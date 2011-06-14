package uk.co.baremedia.gnomo.mobile.view.mediators
{
	import org.as3.mvcsInjector.utils.Tracer;
	import org.robotlegs.core.IInjector;
	import org.robotlegs.mvcs.MediatorInit;
	
	import uk.co.baremedia.gnomo.mobile.view.components.ComponentsNoWireless;
<<<<<<< HEAD
	import uk.co.baremedia.gnomo.presentation.PresentationNoWireless;
=======
	import uk.co.baremedia.gnomo.mobile.view.presentation.PresentationNoWireless;
>>>>>>> 74a533ae54ee5e0abb476d4878d312a7eaa13ba6
	
	public class MediatorNoWireless extends MediatorInit
	{
		override public function init(injector:IInjector):void
		{
			super.init(injector);
			_view = injector.getInstance(ComponentsNoWireless);
		}
		
		public var _view	 				: ComponentsNoWireless;
<<<<<<< HEAD
	
		override public function onRegister():void
		{ 
			Tracer.log(this, "onRegister()");
			_view.presentationModel = new PresentationNoWireless();
=======
		
		/**  
		 * @private 
		 */	
		protected var _presentationModel	: PresentationNoWireless;
		
		override public function onRegister():void
		{ 
			Tracer.log(this, "onRegister()");
			_presentationModel 		= new PresentationNoWireless();
			_view.presentationModel = _presentationModel;
>>>>>>> 74a533ae54ee5e0abb476d4878d312a7eaa13ba6
		}
		
		override public function onRemove():void
		{
			Tracer.log(this, "onRemove()");
<<<<<<< HEAD
			_view.presentationModel.dispose();
=======
			_presentationModel.dispose();	
>>>>>>> 74a533ae54ee5e0abb476d4878d312a7eaa13ba6
		}
	}
}