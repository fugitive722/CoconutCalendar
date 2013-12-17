using System;
using System.Collections.Generic;
using System.Linq;
using MonoTouch.Foundation;
using MonoTouch.UIKit;
using MonoTouch.Dialog;
using System.Json;
using CoconutCalendarAdmin;
using MBProgressHUD;
using System.Threading.Tasks;

namespace CoconutCalendar
{
	public partial class cc_Schedule_AddMenue : DialogViewController
	{
		public cc_Schedule_AddMenue (JsonValue appointment, DateTime dt,JsonValue location) : base (UITableViewStyle.Grouped, null)
		{
			this.Pushing = true;
			Root = new RootElement ("Add Menu") {
				new Section ("Appointment"){
					new StringElement ("Client", () => {
					

			
						this.NavigationController.PushViewController (new cc_Schedule_AddNew (true,appointment,dt,location), true);

						

					}),
					new StringElement ("Group", () => {
						this.NavigationController.PushViewController (new cc_Schedule_AddNew (false,appointment,dt,location), true);

					}),
					//new EntryElement ("Name", "Enter your name", String.Empty)
				},
				new Section ("Absense"){
					new StringElement ("Personal", ()=>{
						this.NavigationController.PushViewController(new cc_Schedule_Personal("Personal",dt,location),true);
					}),
					new StringElement ("Sick", ()=>{
						this.NavigationController.PushViewController(new cc_Schedule_Personal("Sick",dt,location),true);
					}),
					new StringElement ("Vacation", ()=>{
						this.NavigationController.PushViewController(new cc_Schedule_Personal("Vacation",dt,location),true);
					}),
				},
			};
		}
		public MTMBProgressHUD createSpinner()
		{
			var _spinner = new MTMBProgressHUD (View) {
				LabelText = "Waiting...",
				RemoveFromSuperViewOnHide = true
			};
			View.Add (_spinner);
			return _spinner;
		}
	}
}
