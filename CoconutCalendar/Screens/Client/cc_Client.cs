using System;
using System.Drawing;
using MonoTouch.Foundation;
using MonoTouch.UIKit;
using System.Json;

namespace CoconutCalendar
{
	public partial class cc_Client : UIViewController
	{
		JsonValue _vendor;

		public cc_Client () : base ("cc_Client", null)
		{

		}

		public override void DidReceiveMemoryWarning ()
		{
			// Releases the view if it doesn't have a superview.
			base.DidReceiveMemoryWarning ();
			
			// Release any cached data, images, etc that aren't in use.
		}

		public override void ViewDidLoad ()
		{
			base.ViewDidLoad ();
			Title = "Client";
		}
	}
}

