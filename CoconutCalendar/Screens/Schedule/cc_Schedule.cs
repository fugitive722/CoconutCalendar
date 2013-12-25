using System;
using System.Drawing;
using MonoTouch.Foundation;
using MonoTouch.UIKit;
using System.Json;
using MBProgressHUD;
using System.Threading.Tasks;
using System.Collections.Generic;
using CoconutCalendarAdmin;

namespace CoconutCalendar
{
	public partial class cc_Schedule : UIViewController
	{
	
		Boolean firstTime = true;
		JsonValue _curLocation;
		JsonValue _curStaff;

		DateTime _curDate;
		DateTime _firstDayOfWeek;
		DateTime _curSelectDate;
//		DateTime _locationStart;
//		DateTime _locationEnd;

		List<JsonValue> _appoinmentsByLocation;
//		List<JsonValue> _appoinmentsByRequirement;

		UISwipeGestureRecognizer _swipeLeft;
		UISwipeGestureRecognizer _swipeRight;

		public cc_Schedule () : base ("cc_Schedule", null)
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
			Title = "Schedule";




			initCurrentDate ();
			initSwipeGestureRecognizer ();
			initCalendarBtn ();

			initLocation();
			_pickerView.Hidden = false; 

			_staffBtn.SetTitle(HttpWebRequestClient.Staff[0]["last_name"].ToString(),UIControlState.Normal);
			_curStaff = HttpWebRequestClient.Staff[0];



			_locationBtn.TouchUpInside += (object sender, EventArgs e) => {

				initLocation();
				_pickerView.Hidden = false;

			};

			_staffBtn.TouchUpInside += (object sender, EventArgs e) => {

				initStaff ();
				_pickerView.Hidden = false;
			};

			_dateBtn.TouchUpInside += (object sender, EventArgs e) => {
				var monthDate = new CoconutPickDateMonthViewController();
				this.NavigationController.PushViewController(monthDate,true);
				monthDate.DateOnChange += (object send, EventArgs ee) => {
					setSelectedDateToCalendarByMonthCalendar(monthDate.selectedDate);

				};

			};
		}

		public void initLocation ()
		{
			/*
			 * HttpWebRequestClient.Vendor["location"];
			*/
//			var _spinner = createSpinner ();
//			_spinner.Show (animated: true);
//			Task.Factory.StartNew (() => {
//			
//				//_spinner.Show(animated:true);
//
//				// download from server
//
//			}).ContinueWith(
//			t=>{

//					_spinner.Hide(animated:true,delay:1);
					_topView.Hidden = true;
					_midVIew.Hidden = true;
					_botView.Hidden = true;
					var locationPickerModel = new cc_Schedule_PickerModel ("Location",HttpWebRequestClient.Location);
					_dataPicker.Model = locationPickerModel;		
					locationPickerModel.ValueSelected += (object sender, EventArgs e) => {
						//_pickerView.Hidden = true;
						_topView.Hidden = false;
						_midVIew.Hidden = false;
						_botView.Hidden = false;
						_curLocation = locationPickerModel.SelectedString;
						_locationBtn.SetTitle(locationPickerModel.SelectedString["name"].ToString(),UIControlState.Normal);
						// set current date to table view
				loadAppointmentForLocation();
				createAppointmentSourceForTableView();
					};

		
//				},TaskScheduler.FromCurrentSynchronizationContext()
//		);

		}

		public void initStaff ()
		{
//			var _spinner = createSpinner ();
//			_spinner.Show (animated: true);
//			Task.Factory.StartNew (() => {
//				//_spinner.Show(animated:true);
//				// download from server
//
//			}).ContinueWith(
//				t=>{

//					_spinner.Hide(animated:true,delay:1);
					_topView.Hidden = true;
					_midVIew.Hidden = true;
					_botView.Hidden = true;
					var staffPickerModel = new cc_Schedule_PickerModel ("Staff",HttpWebRequestClient.Staff);
					_dataPicker.Model = staffPickerModel;

			if(firstTime){

				firstTime = false;

			}

					staffPickerModel.ValueSelected += (object sender, EventArgs e) => {
						_topView.Hidden = false;
						_midVIew.Hidden = false;
						_botView.Hidden = false;

						_curStaff = staffPickerModel.SelectedString;
						BeginInvokeOnMainThread(delegate() {
							_staffBtn.SetTitle(staffPickerModel.SelectedString["last_name"].ToString(),UIControlState.Normal);

					createAppointmentSourceForTableView();

					});
						// set current date to table view
					};

//				},TaskScheduler.FromCurrentSynchronizationContext()
//			);


		}

		public void initCurrentDate()
		{
			_curDate = DateTime.Now;
			_firstDayOfWeek = new DateTime ();
			_curSelectDate = new DateTime ();
			_appoinmentsByLocation = new List<JsonValue> ();
//			_appoinmentsByRequirement = new List<JsonValue> ();
//			_locationStart = new DateTime ();
//			_locationEnd = new DateTime ();

			setDateToCalendar (_curDate);
			setMonthToCalendar (_curDate);

			_firstDayOfWeek = setAllDatesToCalendar (_curDate);
			_curSelectDate = _curDate;

			setSelectedDateToCalendar (_curSelectDate);
		}

		public void initSwipeGestureRecognizer ()
		{
			if(_swipeLeft == null){
				_swipeLeft = new UISwipeGestureRecognizer (this,new MonoTouch.ObjCRuntime.Selector("SwipeLeft"));
				_swipeLeft.Direction = UISwipeGestureRecognizerDirection.Left;
				_swipeLeft.NumberOfTouchesRequired = 1;
			}

			if(_swipeRight == null){
				_swipeRight = new UISwipeGestureRecognizer (this,new MonoTouch.ObjCRuntime.Selector("SwipeRight"));
				_swipeRight.Direction = UISwipeGestureRecognizerDirection.Right;
				_swipeRight.NumberOfTouchesRequired = 1;
			}


			_midVIew.AddGestureRecognizer (_swipeLeft);
			_midVIew.AddGestureRecognizer (_swipeRight);

		}

		public void initCalendarBtn (){
		
			_monBtn.TouchUpInside += (object sender, EventArgs e) => {
				deSelecteDateToCalendar();
				_curSelectDate =  _firstDayOfWeek;
				setSelectedDateToCalendar(_curSelectDate);
				setMonthToCalendar(_curSelectDate);

				createAppointmentSourceForTableView();

			};

			_tueBtn.TouchUpInside += (object sender, EventArgs e) => {
				deSelecteDateToCalendar();
				_curSelectDate =  _firstDayOfWeek.AddDays(1);
				setSelectedDateToCalendar(_curSelectDate);
				setMonthToCalendar(_curSelectDate);

				createAppointmentSourceForTableView();


			};

			_wedBtn.TouchUpInside += (object sender, EventArgs e) => {
				deSelecteDateToCalendar();
				_curSelectDate =  _firstDayOfWeek.AddDays(2);
				setSelectedDateToCalendar(_curSelectDate);
				setMonthToCalendar(_curSelectDate);

				createAppointmentSourceForTableView();

			};

			_thuBtn.TouchUpInside += (object sender, EventArgs e) => {
				deSelecteDateToCalendar();
				_curSelectDate =  _firstDayOfWeek.AddDays(3);
				setSelectedDateToCalendar(_curSelectDate);
				setMonthToCalendar(_curSelectDate);

				createAppointmentSourceForTableView();

			};

			_friBtn.TouchUpInside += (object sender, EventArgs e) => {
				deSelecteDateToCalendar();
				_curSelectDate =  _firstDayOfWeek.AddDays(4);
				setSelectedDateToCalendar(_curSelectDate);
				setMonthToCalendar(_curSelectDate);

				createAppointmentSourceForTableView();

			};

			_satBtn.TouchUpInside += (object sender, EventArgs e) => {
				deSelecteDateToCalendar();
				_curSelectDate =  _firstDayOfWeek.AddDays(5);
				setSelectedDateToCalendar(_curSelectDate);
				setMonthToCalendar(_curSelectDate);

				createAppointmentSourceForTableView();

			};

			_sunBtn.TouchUpInside += (object sender, EventArgs e) => {
				deSelecteDateToCalendar();
				_curSelectDate =  _firstDayOfWeek.AddDays(6);
				setSelectedDateToCalendar(_curSelectDate);
				setMonthToCalendar(_curSelectDate);

				createAppointmentSourceForTableView();

			};
		}

		[Export("SwipeLeft")]
		public void viewSwipeLeft (){
			//Console.Out.WriteLine ("Swipe Left Made");
			//Add One Week
			var nextFirst = new DateTime ();

			nextFirst = _firstDayOfWeek.AddDays (7);
			_firstDayOfWeek = nextFirst;

			deSetCurrentDate ();
			deSelecteDateToCalendar ();
			setAllDatesToCalendar (nextFirst);

		}

		[Export("SwipeRight")]
		public void viewSwipeRight (){
			//Console.Out.WriteLine ("Swipe Right Made");
			var previousFirst = new DateTime ();

			previousFirst = _firstDayOfWeek.AddDays (-7);
			_firstDayOfWeek = previousFirst;

			deSetCurrentDate ();
			deSelecteDateToCalendar ();
			setAllDatesToCalendar (previousFirst);
		}

		public void deSetCurrentDate (){
			_monBtn.SetTitleColor (UIColor.Blue, UIControlState.Normal);
			_tueBtn.SetTitleColor (UIColor.Blue, UIControlState.Normal);
			_wedBtn.SetTitleColor (UIColor.Blue, UIControlState.Normal);
			_thuBtn.SetTitleColor (UIColor.Blue, UIControlState.Normal);
			_friBtn.SetTitleColor (UIColor.Blue, UIControlState.Normal);
			_satBtn.SetTitleColor (UIColor.Blue, UIControlState.Normal);
			_sunBtn.SetTitleColor (UIColor.Blue, UIControlState.Normal);
		}

		public void setCurrentDate (DateTime d) {

			if(_curDate.DayOfYear == d.DayOfYear){
				setDateToCalendar (d);
			}
		}

		public void setSelectedDateToCalendarByMonthCalendar(DateTime d)
		{
			_curSelectDate = d;
			deSelecteDateToCalendar ();
			setSelectedDateToCalendar (_curSelectDate);
			setMonthToCalendar (_curSelectDate);
			setAllDatesToCalendar (_curSelectDate);

			createAppointmentSourceForTableView();
		}

		public void setDateToCalendar (DateTime d)
		{
			switch(d.DayOfWeek.ToString()){

			case "Monday":
				_monBtn.SetTitle (d.Day.ToString (), UIControlState.Normal);
				if(_curDate.DayOfYear == d.DayOfYear){
					_monBtn.SetTitleColor (UIColor.Red, UIControlState.Normal);
				}
				break;
			case "Tuesday":
				_tueBtn.SetTitle (d.Day.ToString (), UIControlState.Normal);
				if (_curDate.DayOfYear == d.DayOfYear) {
					_tueBtn.SetTitleColor (UIColor.Red, UIControlState.Normal);
				}
				break;
			case "Wednesday":
				_wedBtn.SetTitle (d.Day.ToString(),UIControlState.Normal);
				if (_curDate.DayOfYear == d.DayOfYear) {
					_wedBtn.SetTitleColor (UIColor.Red, UIControlState.Normal);
				}

				break;
			case "Thursday":
				_thuBtn.SetTitle (d.Day.ToString (), UIControlState.Normal);
				if (_curDate.DayOfYear == d.DayOfYear) {
					_thuBtn.SetTitleColor (UIColor.Red, UIControlState.Normal);
				}

				break;
			case "Friday":
				_friBtn.SetTitle (d.Day.ToString(),UIControlState.Normal);
				if (_curDate.DayOfYear == d.DayOfYear) {
					_friBtn.SetTitleColor (UIColor.Red, UIControlState.Normal);
				}

				break;
			case "Saturday":
				_satBtn.SetTitle (d.Day.ToString(),UIControlState.Normal);
				if (_curDate.DayOfYear == d.DayOfYear) {
					_satBtn.SetTitleColor (UIColor.Red, UIControlState.Normal);
				}

				break;
			case "Sunday":
				_sunBtn.SetTitle (d.Day.ToString(),UIControlState.Normal);
				if (_curDate.DayOfYear == d.DayOfYear) {
					_sunBtn.SetTitleColor (UIColor.Red, UIControlState.Normal);
				}

				break;
			}
		}

		public void setMonthToCalendar(DateTime d){
			switch(d.Month){
			case 1:
				_monthLabel.Text = "January";
				break;
			case 2:
				_monthLabel.Text = "February";
				break;
			case 3:
				_monthLabel.Text = "March";
				break;
			case 4:
				_monthLabel.Text = "April";
				break;
			case 5:
				_monthLabel.Text = "May";
				break;
			case 6:
				_monthLabel.Text = "June";
				break;
			case 7:
				_monthLabel.Text = "July";
				break;
			case 8:
				_monthLabel.Text = "August";
				break;
			case 9:
				_monthLabel.Text = "September";
				break;
			case 10:
				_monthLabel.Text = "October";
				break;
			case 11:
				_monthLabel.Text = "November";
				break;
			case 12:
				_monthLabel.Text = "December";
				break;
			}
			//
		}

		public DateTime setAllDatesToCalendar (DateTime d)
		{
			DateTime firstDayOfWeek = new DateTime ();

			switch(d.DayOfWeek.ToString()){

			case "Monday":
				firstDayOfWeek = d;
				break;
			case "Tuesday":
				firstDayOfWeek = d.AddDays (-1.0);
				break;
			case "Wednesday":
				firstDayOfWeek = d.AddDays (-2.0);
				break;
			case "Thursday":
				firstDayOfWeek = d.AddDays (-3.0);
				break;
			case "Friday":
				firstDayOfWeek = d.AddDays (-4.0);
				break;
			case "Saturday":
				firstDayOfWeek = d.AddDays (-5.0);
				break;
			case "Sunday":
				firstDayOfWeek = d.AddDays (-6.0);
				break;
			}

			_monBtn.SetTitle (firstDayOfWeek.Day.ToString(),UIControlState.Normal);
			setCurrentDate (firstDayOfWeek);
			_tueBtn.SetTitle (firstDayOfWeek.AddDays(1.0).Day.ToString(),UIControlState.Normal);
			setCurrentDate (firstDayOfWeek.AddDays(1.0));
			_wedBtn.SetTitle (firstDayOfWeek.AddDays(2.0).Day.ToString(),UIControlState.Normal);
			setCurrentDate (firstDayOfWeek.AddDays(2.0));
			_thuBtn.SetTitle (firstDayOfWeek.AddDays(3.0).Day.ToString(),UIControlState.Normal);
			setCurrentDate (firstDayOfWeek.AddDays(3.0));
			_friBtn.SetTitle (firstDayOfWeek.AddDays(4.0).Day.ToString(),UIControlState.Normal);
			setCurrentDate (firstDayOfWeek.AddDays(4.0));
			_satBtn.SetTitle (firstDayOfWeek.AddDays(5.0).Day.ToString(),UIControlState.Normal);
			setCurrentDate (firstDayOfWeek.AddDays(5.0));
			_sunBtn.SetTitle (firstDayOfWeek.AddDays(6.0).Day.ToString(),UIControlState.Normal);
			setCurrentDate (firstDayOfWeek.AddDays(6.0));

			return firstDayOfWeek;
		}

		public void setSelectedDateToCalendar (DateTime d){
			switch(d.DayOfWeek.ToString()){

			case "Monday":
				_monBtn.BackgroundColor = UIColor.LightGray;
				break;
			case "Tuesday":
				_tueBtn.BackgroundColor = UIColor.LightGray;
				break;
			case "Wednesday":
				_wedBtn.BackgroundColor = UIColor.LightGray;
				break;
			case "Thursday":
				_thuBtn.BackgroundColor = UIColor.LightGray;
				break;
			case "Friday":
				_friBtn.BackgroundColor = UIColor.LightGray;
				break;
			case "Saturday":
				_satBtn.BackgroundColor = UIColor.LightGray;
				break;
			case "Sunday":
				_sunBtn.BackgroundColor = UIColor.LightGray;
				break;
			}
		}

		public void deSelecteDateToCalendar (){
			_monBtn.BackgroundColor = UIColor.Yellow;
			_tueBtn.BackgroundColor = UIColor.Yellow;
			_wedBtn.BackgroundColor = UIColor.Yellow;
			_thuBtn.BackgroundColor = UIColor.Yellow;
			_friBtn.BackgroundColor = UIColor.Yellow;
			_satBtn.BackgroundColor = UIColor.Yellow;
			_sunBtn.BackgroundColor = UIColor.Yellow;
		}


		public void loadAppointmentForLocation()
		{
			/*
				1. get selected day
				2. query 
				3. printing data
			*/

			var _spinner = createSpinner ();
			_spinner.Show (animated: true);
			Task.Factory.StartNew (() => {
				// download from server
				HttpWebRequestClient.Instance.getAppointments();

			}).ContinueWith(
				t=>{

					_spinner.Hide(animated:true,delay:0);
			if(_appoinmentsByLocation.Count >0){
				_appoinmentsByLocation.RemoveRange(0,_appoinmentsByLocation.Count-1);
					}

			var tempL = stripOffQuoatation(_curLocation["id"].ToString());
			foreach (var i in HttpWebRequestClient.Instance.getAppointmentsByLocation(tempL)){
				_appoinmentsByLocation.Add(i);
					}
				},TaskScheduler.FromCurrentSynchronizationContext()
			);
		}

		public void createAppointmentSourceForTableView ()
		{
			// calculate interval time here
			// calculate start and end;
			var source = create2DsourceForLocation ();
			var appointSource = new cc_Schedule_AppointmentSource (source,this.NavigationController,_curLocation,_curStaff,_curSelectDate);
			_botView.Source = appointSource;

		}


		public List<Source2D> create2DsourceForLocation ()
		{
			var source = new List<Source2D> ();
			int availability = 0;

			switch(stripOffQuoatation(_curSelectDate.DayOfWeek.ToString())){

			case "Monday":
				availability = stringHoursMinsSecsToDatetime (_curLocation ["monday_closed"]).Hour - stringHoursMinsSecsToDatetime (_curLocation ["monday_open"]).Hour;
				for (double i = 0; i < availability; i++) {
					var s = new Source2D ();
					s.hours = stringHoursMinsSecsToDatetime (_curLocation ["monday_open"]).AddHours (i);
					s.interval = Convert.ToInt32 (stripOffQuoatation (HttpWebRequestClient.Vendor ["service_interval"].ToString ()));
					source.Add (s);
				}
				foreach (var i in _appoinmentsByLocation){

					if(_curSelectDate.DayOfYear == getDatetimeFromDayString(stripOffQuoatation(i["start"].ToString())).DayOfYear){

						source [getDatetimeFromHoursString(stripOffQuoatation(i["start"].ToString())).Hour-availability-1].appointments.Add (i);
					}
				}


				_botView.ReloadData ();
				break;
			case "Tuesday":
				availability = stringHoursMinsSecsToDatetime (_curLocation ["tuesday_closed"]).Hour - stringHoursMinsSecsToDatetime (_curLocation ["tuesday_open"]).Hour;
				for (double i = 0; i < availability; i++) {
					var s = new Source2D ();
					s.hours = stringHoursMinsSecsToDatetime (_curLocation ["tuesday_open"]).AddHours (i);
					s.interval = Convert.ToInt32(stripOffQuoatation(HttpWebRequestClient.Vendor["service_interval"].ToString()));
					source.Add (s);
				}

				foreach (var i in _appoinmentsByLocation){

					if(_curSelectDate.DayOfYear == getDatetimeFromDayString(stripOffQuoatation(i["start"].ToString())).DayOfYear){
						source [getDatetimeFromHoursString(stripOffQuoatation(i["start"].ToString())).Hour-availability-1].appointments.Add (i);
					}
				}

				_botView.ReloadData ();				
				break;
			case "Wednesday":
				availability = stringHoursMinsSecsToDatetime (_curLocation ["wednesday_closed"]).Hour - stringHoursMinsSecsToDatetime (_curLocation ["wednesday_open"]).Hour;
				for (double i = 0; i < availability; i++) {
					var s = new Source2D ();
					s.hours = stringHoursMinsSecsToDatetime (_curLocation ["wednesday_open"]).AddHours (i);
					s.interval = Convert.ToInt32(stripOffQuoatation(HttpWebRequestClient.Vendor["service_interval"].ToString()));
					source.Add (s);
				}

				foreach (var i in _appoinmentsByLocation){

					if(_curSelectDate.DayOfYear == getDatetimeFromDayString(stripOffQuoatation(i["start"].ToString())).DayOfYear){
						source [getDatetimeFromHoursString(stripOffQuoatation(i["start"].ToString())).Hour-availability-1].appointments.Add (i);
					}
				}
				_botView.ReloadData ();
				break;

			case "Thursday":
				availability = stringHoursMinsSecsToDatetime (_curLocation ["thursday_closed"]).Hour - stringHoursMinsSecsToDatetime (_curLocation ["thursday_open"]).Hour;
				for (double i = 0; i < availability; i++) {
					var s = new Source2D ();
					s.hours = stringHoursMinsSecsToDatetime (_curLocation ["thursday_open"]).AddHours (i);
					s.interval = Convert.ToInt32(stripOffQuoatation(HttpWebRequestClient.Vendor["service_interval"].ToString()));
					source.Add (s);
				}

				foreach (var i in _appoinmentsByLocation){

					if(_curSelectDate.DayOfYear == getDatetimeFromDayString(stripOffQuoatation(i["start"].ToString())).DayOfYear){
						source [getDatetimeFromHoursString(stripOffQuoatation(i["start"].ToString())).Hour-availability-1].appointments.Add (i);
					}
				}
				_botView.ReloadData ();				
				break;
			case "Friday":
				availability = stringHoursMinsSecsToDatetime (_curLocation ["friday_closed"]).Hour - stringHoursMinsSecsToDatetime (_curLocation ["friday_open"]).Hour;
				for (double i = 0; i < availability; i++) {
					var s = new Source2D ();
					s.hours = stringHoursMinsSecsToDatetime (_curLocation ["friday_open"]).AddHours (i);
					s.interval = Convert.ToInt32(stripOffQuoatation(HttpWebRequestClient.Vendor["service_interval"].ToString()));
					source.Add (s);
				}
				foreach (var i in _appoinmentsByLocation){

					if(_curSelectDate.DayOfYear == getDatetimeFromDayString(stripOffQuoatation(i["start"].ToString())).DayOfYear){
						source [getDatetimeFromHoursString(stripOffQuoatation(i["start"].ToString())).Hour-availability-1].appointments.Add (i);
					}
				}

				_botView.ReloadData ();				
				break;
			case "Saturday":
				availability = stringHoursMinsSecsToDatetime (_curLocation ["saturday_closed"]).Hour - stringHoursMinsSecsToDatetime (_curLocation ["saturday_open"]).Hour;
				for (double i = 0; i < availability; i++) {
					var s = new Source2D ();
					s.hours = stringHoursMinsSecsToDatetime (_curLocation ["saturday_open"]).AddHours (i);
					s.interval = Convert.ToInt32(stripOffQuoatation(HttpWebRequestClient.Vendor["service_interval"].ToString()));
					source.Add (s);
				}
				foreach (var i in _appoinmentsByLocation){

					if(_curSelectDate.DayOfYear == getDatetimeFromDayString(stripOffQuoatation(i["start"].ToString())).DayOfYear){
						source [getDatetimeFromHoursString(stripOffQuoatation(i["start"].ToString())).Hour-availability-1].appointments.Add (i);
					}
				}


				_botView.ReloadData ();				
				break;
			case "Sunday":
				availability = stringHoursMinsSecsToDatetime (_curLocation ["sunday_closed"]).Hour - stringHoursMinsSecsToDatetime (_curLocation ["sunday_open"]).Hour;
				for (double i = 0; i < availability; i++) {
					var s = new Source2D ();
					s.hours = stringHoursMinsSecsToDatetime (_curLocation ["sunday_open"]).AddHours (i);
					s.interval = Convert.ToInt32(stripOffQuoatation(HttpWebRequestClient.Vendor["service_interval"].ToString()));
					source.Add (s);
				}
				foreach (var i in _appoinmentsByLocation){

					if(_curSelectDate.DayOfYear == getDatetimeFromDayString(stripOffQuoatation(i["start"].ToString())).DayOfYear){
						source [getDatetimeFromHoursString(stripOffQuoatation(i["start"].ToString())).Hour-availability-1].appointments.Add (i);
					}
				}

				_botView.ReloadData ();				
				break;
			}
			return source;
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

	
		public int createLocationTimeAvailability(string start, string end)
		{
			return stringHoursMinsSecsToDatetime (start).Hour - stringHoursMinsSecsToDatetime(end).Hour;
		}

		public DateTime stringHoursMinsSecsToDatetime (string s){
		
			if(s != null){
				var sA = s.Split (':');
				return new DateTime (2000,01,01,Convert.ToInt32(stripOffQuoatation (sA [0])),Convert.ToInt32(stripOffQuoatation (sA [1])),Convert.ToInt32(stripOffQuoatation (sA [2])));

			}
			return new DateTime ();
		}


		public string stripOffQuoatation(string s)
		{
			return s.Replace ("\"",string.Empty);
		}

		public DateTime getDatetimeFromDayString (string s){
			//"2013-10-24 22:18:38"
			var tempS = s.Split(' ');

			return new DateTime (Convert.ToInt32(tempS [0].Split('-')[0]),Convert.ToInt32(tempS [0].Split('-')[1]),Convert.ToInt32(tempS [0].Split('-')[2]));

		}

		public DateTime getDatetimeFromHoursString (string s){
			//"2013-10-24 22:18:38"
			var tempS = s.Split(' ');
			return new DateTime (2000,01,01,Convert.ToInt32(tempS [1].Split(':')[0]),Convert.ToInt32(tempS [1].Split(':')[1]),Convert.ToInt32(tempS [1].Split(':')[2]));
		}
	}

	public class Source2D{

		public int interval { set; get;}
		public DateTime hours { set; get;}
		public List<JsonValue> appointments;

		public Source2D(){
			appointments = new List<JsonValue> ();
		}
	}

}

