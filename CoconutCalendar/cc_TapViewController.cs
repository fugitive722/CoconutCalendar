using System;
using MonoTouch.UIKit;
using MonoTouch.Foundation;
using System.Json;
using CoconutCalendarAdmin;

namespace CoconutCalendar
{
	public class cc_TapViewController : UITabBarController
	{

		UIViewController _scheduleVC;
		UIViewController _clientVC;


		public cc_TapViewController ()
		{

		}

		public override void ViewDidLoad ()
		{

			base.ViewDidLoad ();

//			



			if (_scheduleVC == null) 
			{
				_scheduleVC = new UINavigationController(new cc_Schedule ());
				_scheduleVC.Title = "Schedule";
			}

			if (_clientVC == null)
			{
				_clientVC = new UINavigationController(new CoconutClientViewController(true));
				_clientVC.Title = "Client";
			}

			var tabs = new UIViewController [] {_scheduleVC,_clientVC};

			ViewControllers = tabs;

			SelectedViewController = _scheduleVC;
		}
	}
}

