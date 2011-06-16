package uk.co.baremedia.gnomo.utils
{
	import spark.components.View;
	import spark.transitions.SlideViewTransitionMode;
	import spark.transitions.SlideViewTransition;

	
	public class UtilsViewTransition
	{
			private function getViewSlideTransition(startView:View, endView:View, direction:String, mode:String = SlideViewTransitionMode.PUSH, duration:Number = 300, transitionControlsWithContent:Boolean = false):SlideViewTransition
			{
				var transition:SlideViewTransition = new SlideViewTransition();
				
				/*transition.startView = startView;
				transition.endView   = endView;
				transition.mode 	 = mode;
				transition.direction = direction;
				transition.duration  = duration;
				transition.transitionControlsWithContent = transitionControlsWithContent;*/
				
				return transition;
			}
	}
}