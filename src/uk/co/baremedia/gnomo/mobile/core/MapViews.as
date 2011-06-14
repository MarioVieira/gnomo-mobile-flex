package uk.co.baremedia.gnomo.mobile.core
{
	import org.as3.mvcsInjector.interfaces.IMappingMediator;
	import org.robotlegs.core.IMediatorMap;
	
	import uk.co.baremedia.gnomo.mobile.view.components.ComponentScreenModes;
	import uk.co.baremedia.gnomo.mobile.view.mediators.MediatorScreenModes;
	
	
	public class MapViews implements IMappingMediator
	{
		public function mapMediators(mediatorMap:IMediatorMap):void
		{
			mediatorMap.mapView(ComponentScreenModes, MediatorScreenModes);
		}
	}
}