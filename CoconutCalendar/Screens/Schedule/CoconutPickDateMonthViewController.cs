using System;
using System.Drawing;
using MonoTouch.Foundation;
using MonoTouch.UIKit;
using escoz;

namespace CoconutCalendarAdmin
{
	public partial class CoconutPickDateMonthViewController : UIViewController
	{
		CalendarMonthViewController _month;
		public DateTime selectedDate;
		public event EventHandler DateOnChange;

		public CoconutPickDateMonthViewController () : base ("CoconutPickDateMonthViewController", null)
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

			_month = new CalendarMonthViewController ();
			this.monthView.Add (_month.View);
			_month.DateOnChange += (object sender, EventArgs e) => {
				selectedDate = _month.selectedDate;
				if(DateOnChange != null){
					DateOnChange(this,EventArgs.Empty);
				}
			};

			// Perform any additional setup after loading the view, typically from a nib.
		}
	}
}

