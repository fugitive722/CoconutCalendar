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
		public MonoTouch.UIKit.UILabel labelService { get; private set; }

		[Outlet]
		public MonoTouch.UIKit.UILabel labelStart { get; private set; }

		[Outlet]
		public MonoTouch.UIKit.UILabel serviceNameLabel { get; private set; }

		[Outlet]
		public MonoTouch.UIKit.UILabel startTimeLabel { get; private set; }
		
		void ReleaseDesignerOutlets ()
		{
			if (labelService != null) {
				labelService.Dispose ();
				labelService = null;
			}

			if (labelStart != null) {
				labelStart.Dispose ();
				labelStart = null;
			}

			if (serviceNameLabel != null) {
				serviceNameLabel.Dispose ();
				serviceNameLabel = null;
			}

			if (startTimeLabel != null) {
				startTimeLabel.Dispose ();
				startTimeLabel = null;
			}
		}
	}
}
