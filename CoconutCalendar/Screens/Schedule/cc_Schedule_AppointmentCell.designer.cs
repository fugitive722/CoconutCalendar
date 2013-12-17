// WARNING
//
// This file has been generated automatically by Xamarin Studio to store outlets and
// actions made in the UI designer. If it is removed, they will be lost.
// Manual changes to this file may not be handled correctly.
//
using MonoTouch.Foundation;
using System.CodeDom.Compiler;

namespace CoconutCalendar
{
	[Register ("cc_Schedule_AppointmentCell")]
	partial class cc_Schedule_AppointmentCell
	{
		[Outlet]
		public MonoTouch.UIKit.UILabel endTimeLabel { get; set; }

		[Outlet]
		public MonoTouch.UIKit.UILabel serviceNameLabel { get; set; }

		[Outlet]
		public MonoTouch.UIKit.UILabel startTimeLabel { get; set; }
		
		void ReleaseDesignerOutlets ()
		{
			if (serviceNameLabel != null) {
				serviceNameLabel.Dispose ();
				serviceNameLabel = null;
			}

			if (startTimeLabel != null) {
				startTimeLabel.Dispose ();
				startTimeLabel = null;
			}

			if (endTimeLabel != null) {
				endTimeLabel.Dispose ();
				endTimeLabel = null;
			}
		}
	}
}
