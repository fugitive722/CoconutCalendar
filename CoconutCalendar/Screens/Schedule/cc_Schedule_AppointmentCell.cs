using System;
using System.Drawing;
using MonoTouch.Foundation;
using MonoTouch.UIKit;
using System.Json;

namespace CoconutCalendar
{
	public partial class cc_Schedule_AppointmentCell : UITableViewCell
	{
		public static readonly UINib Nib = UINib.FromName ("cc_Schedule_AppointmentCell", NSBundle.MainBundle);
		public static readonly NSString Key = new NSString ("cc_Schedule_AppointmentCell");


		public DateTime date{ set; get; }
		public JsonValue appointment { set; get; }

		public cc_Schedule_AppointmentCell (IntPtr handle) : base (handle)
		{
		}

		public static cc_Schedule_AppointmentCell Create ()
		{
			return (cc_Schedule_AppointmentCell)Nib.Instantiate (null, null) [0];
		}
	}
}

