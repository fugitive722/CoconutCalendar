using System;
using MonoTouch.UIKit;
using MonoTouch.Foundation;
using System.Json;
using System.Collections.Generic;

namespace CoconutCalendar
{
	public class cc_Schedule_PickerModel :UIPickerViewModel
	{
		public JsonValue SelectedString;
		public event EventHandler ValueSelected;
		List<JsonValue> _source;
		string _type;
		public cc_Schedule_PickerModel (string type,List<JsonValue> source) 
		{
			_type = type;
			_source = source;
		}
		public override int GetRowsInComponent (UIPickerView picker, int component)
		{

			return _source.Count;
		}

		public override int GetComponentCount (UIPickerView picker)
		{
			return 1;
		}

		public override string GetTitle (UIPickerView picker, int row, int component)
		{
			string rtn = "";
			switch(_type){
			case "Location":
				rtn= (JsonValue)_source[row]["name"].ToString();
				break;
			case "Staff":
				rtn= (JsonValue)_source[row]["first_name"].ToString()+" "+_source[row]["last_name"].ToString();
				break;
			}

			return rtn;
		}

		public override void Selected (UIPickerView picker, int row, int component)
		{
			SelectedString = _source[row];
			if(ValueSelected != null){
				ValueSelected (this, EventArgs.Empty);
			}
		}
	}
}

