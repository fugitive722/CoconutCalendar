using System;
using System.Collections.Generic;
using System.Linq;
using MonoTouch.Foundation;
using MonoTouch.UIKit;
using MonoTouch.Dialog;
using System.Json;
using ElementPack;
using System.Drawing;
using CoconutCalendarAdmin;
using MBProgressHUD;
using System.Threading.Tasks;

namespace CoconutCalendar
{
	public partial class cc_Schedule_AddNew : DialogViewController
	{
		JsonValue _appointment;

		StringElement _client;
		StringElement _date;
		CoconutLocationRadioGroup _locationRadioGroup;
		CoconutLocationRadioGroup _serviceRadioGroup;
		RadioGroup _staffRadioGroup;
		int SelectedLocationIndex = 0;
		StringElement _start;
		StringElement _end;
		BooleanElement _walkedIn;
		BooleanElement _notifyStaff;
		BooleanElement _notifyClient;
		FloatElementEx _limit;
		SimpleMultilineEntryElement _notes;

		Section serviceNames;
		Section staffNames;

		List<JsonValue> serviceNamesList = new List<JsonValue> ();
		List<JsonValue> staffNamesList = new List<JsonValue> ();
		//List<JsonValue> locationList = new List<JsonValue> ();

		public cc_Schedule_AddNew (Boolean client, JsonValue appointment, DateTime dt, JsonValue location) : base (UITableViewStyle.Grouped, null)
		{

			this.Pushing = true;
			_appointment = appointment;


			var _saveBtn = new UIBarButtonItem ();
			_saveBtn.Title = "Save";
			_saveBtn.Clicked += (object sender, EventArgs e) => {
				this.NavigationController.PopToRootViewController(true);
			};
			this.NavigationItem.RightBarButtonItem = _saveBtn;

			Root = new RootElement ("Add New");
			var sectionG = new Section ();

//			var _spinner = createSpinner ();
//			_spinner.Show (animated: true);
//			Task.Factory.StartNew (() => {
//			
//				_spinner.Show(animated:true);
//
//
//			}).ContinueWith(
//				t=>{
//					_spinner.Hide(animated:true,delay:0);
//				},TaskScheduler.FromCurrentSynchronizationContext()
//			);

			// set up client;
			_client = new StringElement ("Client", ()=>{
				var c = new CoconutClientViewController(false);
				this.NavigationController.PushViewController(c,true);
				c.onSelectedClient += (object sender, EventArgs e) => {
					_client.Value = c.selectedClient["first_name"] + " " + c.selectedClient["last_name"];
					this.Root.Reload(sectionG,UITableViewRowAnimation.None);

				};
			});

			_client.Value = "Click to Pick";
			sectionG.Add (_client);


			// set up date
			var dd = string.Format ("{0}, {1}-{2}-{3}",dt.DayOfWeek,dt.Year,dt.Month,dt.Day);
			_date = new StringElement ("Date", dd);
			sectionG.Add (_date);


			// set up location
			_locationRadioGroup = new CoconutLocationRadioGroup (0);
			SelectedLocationIndex = 0;

			var locations = HttpWebRequestClient.Location;
			var locationRoot = new RootElement ("Location",_locationRadioGroup);
			var locationNameS = new Section ();

			for (int i=0; i<locations.Count; i++ ){
				locationNameS.Add (new RadioElement(locations[i]["name"]));
				//locationList.Add (i);
				if (locations[i]["name"] == location["name"]){
					_locationRadioGroup.Selected = i;
					SelectedLocationIndex = i;
				}
			}

			_locationRadioGroup.onSelected += (object sender, EventArgs e) => {
				SelectedLocationIndex = _locationRadioGroup.Selected;


				// re-create service according to location
				while(serviceNames.Count > 0){
					serviceNames.Remove(0);
					serviceNamesList.RemoveAt(0);
				}



				foreach(var i in createServiceNameList()){
					serviceNames.Add (new RadioElement(i["name"]));
					serviceNamesList.Add(i);
				}


				while(staffNames.Count > 0){
					staffNames.Remove(0);
					staffNamesList.RemoveAt(0);
				}
				foreach(var i in createStaffNameList()){
					staffNames.Add(new RadioElement(i["first_name"]+" "+i["last_name"]));
					staffNamesList.Add(i);
				}


				var duration = getServiceDurationByID ();
				var endT = dt.AddMinutes(duration);
				_end.Value = endT.TimeOfDay.ToString();

				//this.Root.Reload(sectionG,UITableViewRowAnimation.None);

			};
			locationRoot.Add (locationNameS);
			sectionG.Add (locationRoot);


			// set up service
			_serviceRadioGroup = new CoconutLocationRadioGroup (0);
			var serviceRoot = new RootElement ("Service",_serviceRadioGroup);
			serviceNames = new Section ();
			foreach(var i in createServiceNameList()){
				serviceNames.Add (new RadioElement(i["name"]));
				serviceNamesList.Add (i);
			}



			serviceRoot.Add (serviceNames);
			sectionG.Add (serviceRoot);


			// set up staff
			_staffRadioGroup = new RadioGroup (0);
			var staffRoot = new RootElement ("Staff",_staffRadioGroup);
			staffNames = new Section ();
			foreach(var i in createStaffNameList())
			{
				staffNames.Add (new RadioElement(i["first_name"]+" "+i["last_name"]));
				staffNamesList.Add (i);
			}
			staffRoot.Add (staffNames);
			sectionG.Add (staffRoot);


			// set up start time
			_start = new StringElement ("Start",dt.TimeOfDay.ToString());
			sectionG.Add (_start);

			// set up end time
			var endtime = dt;
			_end = new StringElement ("End",endtime.AddMinutes (getServiceDurationByID ()).TimeOfDay.ToString());
			sectionG.Add (_end);




			// set up walked in 
			_walkedIn = new BooleanElement ("Walk In",false);
			sectionG.Add (_walkedIn);

			// set up notify staff
			_notifyStaff = new BooleanElement ("Notify Staff", false);
			sectionG.Add (_notifyStaff);

			//set up notify clients
			_notifyClient = new BooleanElement ("Notify Client",false);
			sectionG.Add (_notifyClient);


			// Group
			if(!client){
				var limitS = new Section ("Limit Client");

				var unlimit = new BooleanElement ("Unlimit Client",false);
				unlimit.ValueChanged += (object sender, EventArgs e) => {
					if(unlimit.Value){
						limitS.Remove(1);

					}else{
						_limit = new FloatElementEx (0,null,true,false){
							//Caption = "Hello world",
							UseCaptionForValueDisplay = true,
						};
						limitS.Add (_limit);
					}

					this.Root.Reload(limitS,UITableViewRowAnimation.Fade);
				};

				_limit = new FloatElementEx (0,null,true,false){
					//Caption = "Hello world",
					UseCaptionForValueDisplay = true,
				};

				limitS.Add (unlimit);
				limitS.Add (_limit);
				Root.Add(limitS);

			}

			// notes
			var noteS = new Section ("Notes");
			_notes = new SimpleMultilineEntryElement (string.Empty, string.Empty){
				Editable = true,
			};

			noteS.Add (_notes);


			Root.Add (sectionG);
			Root.Add (noteS);

			if(appointment != null){
				setAppointment (_appointment);
				//this.Root.Reload (sectionG,UITableViewRowAnimation.None);
				//this.Root.Reload (noteS,UITableViewRowAnimation.None);
			}


		}

		public List<JsonValue> createServiceNameList (){
			//var services = HttpWebRequestClient.Instance.getServicesByID (HttpWebRequestClient.Location[SelectedLocationIndex]["service"][_serviceRadioGroup.Selected]["id"]);
			var services = HttpWebRequestClient.Instance.getServicesByLocation (HttpWebRequestClient.Location[SelectedLocationIndex]["id"]);

			var serviceList = new List<JsonValue> ();

			foreach (var i in services)
			{
				serviceList.Add ((JsonValue)i);
			}
			return serviceList;
		}

		public List<JsonValue> createStaffNameList (){
			
			var services = HttpWebRequestClient.Instance.getServicesByID (HttpWebRequestClient.Location[SelectedLocationIndex]["service"][_serviceRadioGroup.Selected]["id"]);

			var staffList = new List<JsonValue> ();
			foreach(var i in services["staff"])
			{
				staffList.Add ((JsonValue)i);
			}
			return staffList;
		}

		public double getServiceDurationByID(){
			return HttpWebRequestClient.Instance.getServiceDurationByID (HttpWebRequestClient.Location[SelectedLocationIndex]["service"][_serviceRadioGroup.Selected]["id"]);
		}


		public void setAppointment (JsonValue appointment) {
			_client.Value = appointment ["client"][0]["first_name"]+" "+appointment ["client"][0]["last_name"];
			_date.Value = appointment["start"].ToString().Split(' ')[0];

			for(var i=0; i< HttpWebRequestClient.Location.Count; i++) {
				if(HttpWebRequestClient.Location[i]["id"].ToString() == appointment["location_id"].ToString()){
					_locationRadioGroup.Selected = i;
					break;
				}
			}

			for(var i=0; i< serviceNamesList.Count; i++) {
				if(serviceNamesList[i]["id"].ToString() == appointment["service"]["id"].ToString()){
					_serviceRadioGroup.Selected = i;
					break;
				}
			}

			for (var i = 0; i<staffNamesList.Count; i++){
				if(staffNamesList[i]["id"].ToString() == appointment["staff"]["id"].ToString()){
					_staffRadioGroup.Selected = i;
					break;
				}
			}

			_start.Value = appointment["start"].ToString().Split(' ')[1];
			_end.Value = appointment["end"].ToString().Split(' ')[1];

			if (appointment ["client"][0]["appointmentclient"]["walk_in"].ToString() == "0") {
				_walkedIn.Value = false;
			} else {
				_walkedIn.Value = true;
			}

			_notes.Value = appointment ["client"] [0] ["notes"].ToString();

		}

		public override UITableViewCell GetCell (UITableView tableView, NSIndexPath indexPath)
		{
			var cell =  base.GetCell(tableView,indexPath);
			cell.SelectionStyle = UITableViewCellSelectionStyle.None;
			return cell;
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

	public class CoconutLocationRadioGroup : RadioGroup {
		public int selectLocation;
		public event EventHandler onSelected;

		public CoconutLocationRadioGroup (int i) :base (i){}

		public override int Selected {
			get {
				return base.Selected;
			}
			set {
				selectLocation = value;
				base.Selected = value;
				if(onSelected != null){
					onSelected (this,EventArgs.Empty);
				}
			}
		}
	}

	public class CoconutSlider : FloatElement{

		public CoconutSlider(float f) : base(null,null,f){
			this.MinValue = 0f;
			this.MaxValue = 100f;
			this.Value = f;
			this.Caption = "Hello World";
		}



		public override string ToString ()
		{
			return string.Format ("[CoconutSlider]");

		}
		public event EventHandler<EventArgs> OnSelected;
	}

	public class FloatElementEx : Element
	{
		static NSString skey = new NSString("FloatElementEx");
		const float LockImageWidth = 32.0f;
		const float LockImageHeight = 32.0f;

		/// <summary>
		/// Set a string to reserve a certain amount of space for the 
		/// caption used in the FloatElement. Useful when there is no
		/// initial caption to show - allows space to be reserved for 
		/// when it will be set.
		/// </summary>
		public string ReserveCaptionPlaceholderString { get; set; }
		/// <summary>
		/// Returns the locked status
		/// </summary>
		public bool IsLocked { get { return _valueLocked; } }
		public bool ShowCaption { get; set; }
		/// <summary>
		/// Ties the displayed caption to the value of the slider
		/// </summary>
		public bool UseCaptionForValueDisplay { get; set; }
		public bool Continuous { get; set; }
		public int MinValue { get; set; }
		public int MaxValue { get; set; }
		public int Value { get; private set; }
		public UIImage LockImage { get; set; }
		public UIImage UnlockImage { get; set; }

		private UIButton _lockImageView;
		private UISlider _slider;
		private Action<int> _valueChangedCallback;
		private bool _valueLocked;
		public bool _lockable { set; get;}


		public FloatElementEx(int value, Action<int> valueChanged = null, bool continuous = true, bool lockable = false)
			: base(null)
		{
			MinValue = 0;
			MaxValue = 100;
			Value = value;
			Continuous = continuous;
			_lockable = lockable;
			_valueChangedCallback = valueChanged;
			Caption = "0      ";
			ShowCaption = true;

		}

		protected override NSString CellKey { get { return skey; } }

		public override UITableViewCell GetCell(UITableView tv)
		{
			var cell = tv.DequeueReusableCell(CellKey);
			if (cell == null) {
				cell = new UITableViewCell(UITableViewCellStyle.Default, CellKey);
				cell.SelectionStyle = UITableViewCellSelectionStyle.None;
			}
			else
				RemoveTag(cell, 1);

			SizeF captionSize = new SizeF(0, 0);
			if (ShowCaption && (Caption != null || ReserveCaptionPlaceholderString != null || UseCaptionForValueDisplay)) {
				if (Caption == null) {
					if (UseCaptionForValueDisplay)
						captionSize = cell.TextLabel.StringSize(MaxValue.ToString(), 
							UIFont.FromName(cell.TextLabel.Font.Name, UIFont.LabelFontSize));
					else if (!string.IsNullOrEmpty(ReserveCaptionPlaceholderString))
						captionSize = cell.TextLabel.StringSize(ReserveCaptionPlaceholderString, 
							UIFont.FromName(cell.TextLabel.Font.Name, UIFont.LabelFontSize));
				}
				else {
					captionSize = cell.TextLabel.StringSize(Caption, UIFont.FromName(cell.TextLabel.Font.Name, UIFont.LabelFontSize));
				}

				captionSize.Width += 10; // Spacing

				if (Caption != null)
					cell.TextLabel.Text = Caption;
			}

			var lockImageWidth = _lockable ? LockImageWidth : 0;

			if (_slider == null) {
				_slider = new UISlider(new RectangleF(10f + captionSize.Width, 12f, 280f - captionSize.Width - lockImageWidth, 7f)) {
					BackgroundColor = UIColor.Clear,
					MinValue = this.MinValue,
					MaxValue = this.MaxValue,
					Continuous = this.Continuous,
					Value = this.Value,
					Tag = 1
				};
				_slider.ValueChanged += delegate {
					Value = (int)_slider.Value;
					if (UseCaptionForValueDisplay) {
						Caption = Value.ToString();
						// force repaint/redraw
						if (GetContainerTableView() != null) {
							var root = GetImmediateRootElement();
							root.Reload(this, UITableViewRowAnimation.None);
						}
					}
					if (_valueChangedCallback != null)
						_valueChangedCallback(Value);
				};
			}
			else {
				_slider.Value = Value;
			}

			if (_lockable){
				if (_lockImageView == null)
					_lockImageView = new UIButton(new RectangleF(_slider.Frame.X + _slider.Frame.Width, 2f, lockImageWidth, LockImageHeight));

				_lockImageView.SetBackgroundImage((_valueLocked) ? LockImage : UnlockImage, UIControlState.Normal);
				_lockImageView.TouchUpInside += (object sender, EventArgs e) => {
					_valueLocked = !_valueLocked;
					_lockImageView.SetBackgroundImage((_valueLocked) ? LockImage : UnlockImage, UIControlState.Normal);
					if (_valueLocked)
						_slider.Enabled = (!_valueLocked);
				};
				cell.ContentView.AddSubview(_lockImageView);
			}
			cell.ContentView.AddSubview(_slider);
			return cell;
		}
		public override string Summary()
		{
			return Value.ToString();
		}

		protected override void Dispose(bool disposing)
		{
			if (disposing)
			{
				if (_slider != null)
				{
					_slider.Dispose();
					_slider = null;
				}
			}
		}

		public void SetValue(int f)
		{
			if (!IsLocked)
				_slider.SetValue(f, false);
		}

		public void SetCaption(string caption)
		{
			Caption = caption;
			// force repaint/redraw
			if (GetContainerTableView() != null) {
				var root = GetImmediateRootElement();
				root.Reload(this, UITableViewRowAnimation.None);
			}
		}
	}
}
