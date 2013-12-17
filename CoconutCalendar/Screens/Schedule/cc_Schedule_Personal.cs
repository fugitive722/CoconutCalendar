using System;
using System.Collections.Generic;
using System.Linq;
using MonoTouch.Foundation;
using MonoTouch.UIKit;
using MonoTouch.Dialog;
using System.Json;
using ElementPack;

namespace CoconutCalendar
{
	public partial class cc_Schedule_Personal : DialogViewController
	{
		StringElement _type;
		CoconutLocationRadioGroup _locationRadioGroup;
		RadioGroup _staffRadioGroup;
		int SelectedLocationIndex;
		List<JsonValue> staffNamesList = new List<JsonValue> ();
		StringElement _date;
		StringElement _start;
		TimeElement _end;

		Section staffNames;
		SimpleMultilineEntryElement _notes;


		public cc_Schedule_Personal (string type,DateTime dt, JsonValue location) : base (UITableViewStyle.Grouped, null)
		{
			this.Pushing = true;

			var _saveBtn = new UIBarButtonItem ();
			_saveBtn.Title = "Save";
			_saveBtn.Clicked += (object sender, EventArgs e) => {

				this.NavigationController.PopToRootViewController(true);
			};
			this.NavigationItem.RightBarButtonItem = _saveBtn;


			Root = new RootElement ("Absence");
			var sectionG = new Section ();

			_type = new StringElement ("Type",type);
			sectionG.Add (_type);

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

				while(staffNames.Count > 0){
					staffNames.Remove(0);
				}
				foreach(var i in createStaffNameList())
				{
					staffNames.Add (new RadioElement(i["first_name"]+" "+i["last_name"]));
					staffNamesList.Add (i);
				}

			};

			locationRoot.Add (locationNameS);
			sectionG.Add (locationRoot);

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


			var dd = string.Format ("{0}, {1}-{2}-{3}",dt.DayOfWeek,dt.Year,dt.Month,dt.Day);
			_date = new StringElement ("Date", dd);
			sectionG.Add (_date);

			// set up start time
			_start = new StringElement ("Start",new TimeElement("",dt).Value);
			sectionG.Add (_start);

			// set up end time
			_end = new TimeElement ("End",dt);
			_end.FormatDate (dt);
			sectionG.Add (_end);

			var noteS = new Section ("Notes");
			_notes = new SimpleMultilineEntryElement (string.Empty, string.Empty){
				Editable = true,
			};

			noteS.Add (_notes);


			Root.Add (sectionG);
			Root.Add (noteS);


 

		}

		public List<JsonValue> createStaffNameList()
		{
			var locations = HttpWebRequestClient.Location;
			var rtn = new List<JsonValue> ();

			foreach( var i in locations[SelectedLocationIndex]["staff"]){
				rtn.Add ((JsonValue)i);
			}

			return rtn;
		}
	}
}
