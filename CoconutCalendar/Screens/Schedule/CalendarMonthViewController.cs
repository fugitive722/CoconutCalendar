
using System;
using MonoTouch.Foundation;
using MonoTouch.UIKit;
using System.Collections;
using System.Collections.Generic;
using System.Drawing;
using CoconutCalendarAdmin;
using CoconutCalendar; 

namespace escoz
{
	public class CalendarMonthViewController : UIViewController
    {

        public CalendarMonthView MonthView;
		public event EventHandler DateOnChange;
		public DateTime selectedDate = new DateTime(2000,01,01,1,1,1);
        public override void ViewDidLoad()
        {
            MonthView = new CalendarMonthView();
			MonthView.OnDateSelected += (date) => {
				selectedDate = date;
//				if (DateOnChange != null){
//					DateOnChange(this,EventArgs.Empty);
//				}
				Console.WriteLine(String.Format("Selected {0}", date.ToShortDateString()));
			};
			MonthView.OnFinishedDateSelection = (date) => {
				selectedDate = date;
				if (DateOnChange != null){
					DateOnChange(this,EventArgs.Empty);
				}
				Console.WriteLine(String.Format("Finished selecting {0}", date.ToShortDateString()));
			};
			MonthView.IsDayMarkedDelegate = (date) => {

				foreach(var d in HttpWebRequestClient.Appointments ){

					var newD = getDatetimeFromDayString(d["start"].ToString().Replace("\"",string.Empty));

					if(newD.Year == date.Year){
						if(newD.DayOfYear == date.DayOfYear){
							Console.Out.WriteLine(date.Day);
							return true;
						}
					}


				}
				return false;
				//return (date.Day % 2==0) ? true : false;
			};

//			MonthView.IsDateAvailable = (date)=>{
//				return (date > DateTime.Today);
//			};


            View.AddSubview(MonthView);
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
}
