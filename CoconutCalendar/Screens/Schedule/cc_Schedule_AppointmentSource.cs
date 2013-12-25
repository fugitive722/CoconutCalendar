using System;
using System.Collections.Generic;
using System.Json;
using MonoTouch.UIKit;
using MonoTouch.Foundation;
using MonoTouch.ObjCRuntime;
using MonoTouch.Dialog;

namespace CoconutCalendar
{
	public class cc_Schedule_AppointmentSource  : UITableViewSource
	{

		public JsonValue _selectedAppoint;

		UINavigationController _navi;
		List<Source2D> _source;
		JsonValue _location;
		JsonValue _staff;
		DateTime _date;

		public cc_Schedule_AppointmentSource (List<Source2D> source, UINavigationController n,JsonValue location, JsonValue staff, DateTime date)
		{
			_source = new List<Source2D> ();
			_source = source;
			_location = location;
			_staff = staff;
			_date = date;

			_navi = n;
		}

		#region implemented abstract members of UITableViewSource

		public override int RowsInSection (UITableView tableview, int section)
		{
			return 60 / _source[section].interval;
		}

		public override int NumberOfSections (UITableView tableView)
		{
			return _source.Count;
		}

		public override string TitleForHeader (UITableView tableView, int section)
		{
			//return _source[section].hours.Hour.ToString();
			var timeE = new TimeElement ("Hours",_source[section].hours);
			return timeE.Value;

		}
		public override UITableViewCell GetCell (UITableView tableView, NSIndexPath indexPath)
		{
			var cell = tableView.DequeueReusableCell ("Cell") as cc_Schedule_AppointmentCell;
			if (cell == null){
				var cellViews = NSBundle.MainBundle.LoadNib ("cc_Schedule_AppointmentCell",tableView,null);
				cell = Runtime.GetNSObject (cellViews.ValueAt(0)) as cc_Schedule_AppointmentCell;
			}
			cell.labelService.Hidden = true;
			cell.labelStart.Hidden = true;
			if(_source.Count == 1){
				cell.serviceNameLabel.Text = "Not Available";
			}else{
				foreach (var i in _source[indexPath.Section].appointments){
					var timeIntervalS = _source [indexPath.Section].hours.Hour + (_source [indexPath.Section].interval* indexPath.Row) *0.01;
					var timeIntervalE = _source [indexPath.Section].hours.Hour +(_source [indexPath.Section].interval* (indexPath.Row+1))*0.01;

					var start = Convert.ToInt32(stripOffQuoatation(i["start"].ToString().Split(' ')[1].Split(':')[0]))+Convert.ToInt32(stripOffQuoatation(i["start"].ToString().Split(' ')[1].Split(':')[1]))*0.01;
					var end = Convert.ToInt32(stripOffQuoatation(i["end"].ToString().Split(' ')[1].Split(':')[0]))+Convert.ToInt32(stripOffQuoatation(i["end"].ToString().Split(' ')[1].Split(':')[1]))*0.01;


					if (timeIntervalS <= start && start <timeIntervalE){

						if (_location["id"].ToString() == i["location"]["id"].ToString()){

							if (_staff != null) {

								if(_staff["id"].ToString() == i["staff"]["id"].ToString()){
									cell.serviceNameLabel.Text = i["service"]["name"].ToString();
									cell.SelectionStyle = UITableViewCellSelectionStyle.Gray;
									//cell.UserInteractionEnabled = false;
									cell.Accessory = UITableViewCellAccessory.DetailButton;
									cell.BackgroundColor = UIColor.LightGray;
									//_selectedAppoint = i;
									cell.appointment = i;
									cell.startTimeLabel.Text = new TimeElement("start",getDatetimeFromHoursString(stripOffQuoatation(i["start"].ToString()))).Value;

									cell.labelService.Hidden = false;
									cell.labelStart.Hidden = false;
								}

							} else {
								cell.serviceNameLabel.Text = i["service"]["name"].ToString();
								cell.SelectionStyle = UITableViewCellSelectionStyle.Gray;
								//cell.UserInteractionEnabled = false;
								cell.Accessory = UITableViewCellAccessory.DetailButton;
								cell.BackgroundColor = UIColor.LightGray;
								//_selectedAppoint = i;
								cell.appointment = i;
								cell.startTimeLabel.Text = new TimeElement("start",getDatetimeFromHoursString(stripOffQuoatation(i["start"].ToString()))).Value;
								cell.labelService.Hidden = false;
								cell.labelStart.Hidden = false;
							}

						}
					}

					if (timeIntervalS < end && end <= timeIntervalE) {
						if (_location ["id"].ToString() == i ["location"] ["id"].ToString()) {

							if (_staff != null) {
								if (_staff ["id"].ToString () == i ["staff"] ["id"].ToString ()) {
									cell.serviceNameLabel.Text = i ["service"] ["name"].ToString ();
									cell.SelectionStyle = UITableViewCellSelectionStyle.Gray;
									//cell.UserInteractionEnabled = false;
									cell.Accessory = UITableViewCellAccessory.DetailButton;
									cell.BackgroundColor = UIColor.LightGray;

									cell.appointment = i;
									cell.startTimeLabel.Text = new TimeElement("start",getDatetimeFromHoursString(stripOffQuoatation(i["start"].ToString()))).Value;
									cell.labelService.Hidden = false;
									cell.labelStart.Hidden = false;
								}
							} else {
								cell.serviceNameLabel.Text = i["service"] ["name"].ToString ();
								cell.SelectionStyle = UITableViewCellSelectionStyle.Gray;
								//cell.UserInteractionEnabled = false;
								cell.Accessory = UITableViewCellAccessory.DetailButton;
								cell.BackgroundColor = UIColor.LightGray;

								//_selectedAppoint = i;
								cell.appointment = i;
								cell.startTimeLabel.Text = new TimeElement("start",getDatetimeFromHoursString(stripOffQuoatation(i["start"].ToString()))).Value;
								cell.labelService.Hidden = false;
								cell.labelStart.Hidden = false;
							} 
						}
					}
				}

			}

			//calculate date for cell
			var year = _date.Year;
			var month = _date.Month;
			var day = _date.Day;
			var hours = _source [indexPath.Section].hours.Hour;
			var min = _source [indexPath.Section].interval * indexPath.Row;

			cell.date = new DateTime (year,month,day,hours,min,00);


			return cell;
		}

		public override void RowSelected (UITableView tableView, NSIndexPath indexPath)
		{
			var cell = (cc_Schedule_AppointmentCell)tableView.CellAt (indexPath);

			tableView.DeselectRow (indexPath, true);

			if(cell.appointment == null){
				_navi.PushViewController (new cc_Schedule_AddMenue (cell.appointment,cell.date,_location), true);

			}
		}
		public override void AccessoryButtonTapped (UITableView tableView, NSIndexPath indexPath)
		{
			// go to detail
			var cell = (cc_Schedule_AppointmentCell)tableView.CellAt (indexPath);

			if(cell.appointment != null){
				if (cell.appointment ["type"].ToString ().Replace("\"",string.Empty) == "0") {
					_navi.PushViewController (new cc_Schedule_AddNew (true, cell.appointment, cell.date, _location,"Edit"), true);

				} else {
					_navi.PushViewController (new cc_Schedule_Personal("",cell.date,_location),true);
				}

			}
		}


		public override float GetHeightForRow (UITableView tableView, NSIndexPath indexPath)
		{
			return 60f;
		}
		#endregion
		public DateTime getDatetimeFromHoursString (string s){
			var tempS = s.Split(' ');
			return new DateTime (2000,01,01,Convert.ToInt32(tempS [1].Split(':')[0]),Convert.ToInt32(tempS [1].Split(':')[1]),Convert.ToInt32(tempS [1].Split(':')[2]));
		}
		public string stripOffQuoatation(string s)
		{
			return s.Replace ("\"",string.Empty);
		}

	}
}

