using System;
using System.Collections.Generic;
using System.Linq;
using MonoTouch.Foundation;
using MonoTouch.UIKit;
using MonoTouch.Dialog;
using MBProgressHUD;
using System.Threading.Tasks;
using System.Json;

namespace CoconutCalendar
{
	public partial class cc_LoginViewController : DialogViewController
	{
		public cc_LoginViewController () : base (UITableViewStyle.Grouped, null)
		{
			Root = new RootElement ("Login");

			var hud = new MTMBProgressHUD (View) {
				LabelText = "Download ...",
				RemoveFromSuperViewOnHide = true,
			};
			View.Add (hud);

			var sec = new Section ("Coconut Calendar Login") {
				new EntryElement("Username", "Enter your username", String.Empty),
				new EntryElement("Password", "Enter your password",String.Empty,true),
			};

			var btnSec = new Section (){

				new StringElement("Login", ()=>{

					//JsonValue req = null;
					hud.Show(animated:true);
					Task.Factory.StartNew(()=>{


					}).ContinueWith(t=>{

						HttpWebRequestClient.Instance.getVendor();
						HttpWebRequestClient.Instance.getStaffs();
						HttpWebRequestClient.Instance.getLocations();
						HttpWebRequestClient.Instance.getClientByID();

						hud.Hide(animated:true,delay:0);
						var tapVC = new cc_TapViewController();
						this.PresentViewController(tapVC,true,null);

					}, TaskScheduler.FromCurrentSynchronizationContext());
					}),
			};

			Root.Add (sec);
			Root.Add (btnSec);

		}
	}
}
