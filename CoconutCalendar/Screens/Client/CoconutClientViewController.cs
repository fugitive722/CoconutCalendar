using System;
using System.Collections.Generic;
using System.Linq;
using MonoTouch.Foundation;
using MonoTouch.UIKit;
using MonoTouch.Dialog;
using System.Json;
using CoconutCalendar;

namespace CoconutCalendarAdmin
{
	public partial class CoconutClientViewController : DialogViewController
	{
		Boolean _isClient;
		public event EventHandler onSelectedClient;
		public JsonValue selectedClient;

		public CoconutClientViewController (Boolean isClient) : base (UITableViewStyle.Plain, null)
		{
			_isClient = isClient;
			this.EnableSearch = true;
			var _addBtn = new UIBarButtonItem (UIBarButtonSystemItem.Add);

			this.NavigationItem.RightBarButtonItem = _addBtn;
			_addBtn.Clicked += (object sender, EventArgs e) => {
				JsonValue c = null;
				this.NavigationController.PushViewController(new CoconutClientAddViewController(c){Pushing = true},true);
			};



		}
		public override void ViewWillAppear (bool animated)
		{
			base.ViewWillAppear (animated);
			Root = new RootElement ("Coconut Client List") {
			};
			var nameList = sortNamesbyAlphebica ();


			//var index = '0';
			var s = new Section ();
//			foreach( var client in nameList){
//				if (index == client["last_name"].ToString().Replace ("\"",string.Empty)[0]) {
//					s.Add (createNameStringElement(client));
//				} else {
//					index = client["last_name"].ToString().Replace ("\"",string.Empty)[0];
//					s = new Section (client["last_name"].ToString().Replace ("\"",string.Empty)[0].ToString().ToUpper());
//
//					s.Add (createNameStringElement(client));
//					Root.Add (s);
//				}
//			}
			foreach(var client in nameList)
			{
				if (_isClient) {
					s.Add (createNameStringElement (client));
				} else {
					s.Add (createNameStringElementForSchedule(client));
				}
			}
			Root.Add (s);
		}
		public List<JsonValue> sortNamesbyAlphebica ()
		{
			//HttpWebRequestClient.Clients.Sort ();
			return HttpWebRequestClient.Clients;
		}

		public StringElement createNameStringElement(JsonValue c){
			return new StringElement (c["first_name"] + " " + c["last_name"], ()=>{
				UIActionSheet actionSheet = new UIActionSheet ("Option",null,"Cancel","Call  "+c["first_name"],"Edit");
				actionSheet.ShowInView(this.View);
				actionSheet.Clicked += delegate(object a, UIButtonEventArgs b){
					if(b.ButtonIndex == 0){
						Console.Out.WriteLine("Call");
					}else if(b.ButtonIndex == 1){
						Console.Out.WriteLine("Edit");
						this.NavigationController.PushViewController(new CoconutClientAddViewController(c){Pushing =true},true);

					}else if (b.ButtonIndex == 2){
						Console.Out.WriteLine("Cancel");

					}
				};
			});
		}

		public StringElement createNameStringElementForSchedule(JsonValue c){
			return new StringElement (c["first_name"] + " " + c["last_name"],()=>{
				if(onSelectedClient != null){
					selectedClient = c;
					onSelectedClient(this,EventArgs.Empty);
				}
				this.NavigationController.PopViewControllerAnimated(true);
			});
		}


	}


}
