using System;
using System.Json;
using System.Net;
using System.Collections.Generic;

namespace CoconutCalendar
{
	public class HttpWebRequestClient
	{

		private static HttpWebRequestClient shared = new HttpWebRequestClient(); 

		public static JsonValue Vendor;
		public static List<JsonValue> Location;
		public static List<JsonValue> Staff;
		public static List<JsonValue> Appointments;
		public static List<JsonValue> Clients;

		private HttpWebRequestClient ()
		{

		}

		public static HttpWebRequestClient Instance{
			get
			{
				return shared; 
			}
		}

		public void getVendor ()
		{
			getAppointments ();

			var req = "vendors.json?";
			var t = "a3f746a4ec24ee0ab32e5a7c604fcf7e20284993&website_token=NDJjMzc0ZDliYzQxZWE0ODZkZTVmNmU0OTgwMGUyNmQ=";
			var token = string.Format ("access_token={0}",t);
			var url = "http://mobile.demo.coconutcalendar.com/api/1.1/";
			url = url + req + token;
			Console.Out.WriteLine ("Vendor Url: "+url);
			using (WebClient wc = new WebClient ()) {
				var response = wc.DownloadString (url);
				var jsonResponse = JsonObject.Parse (response);

				Vendor = jsonResponse["data"]["vendor"][0];
			};
		}

		public void getLocations ()
		{
			var req = "locations.json?";
			var t = "e484196ed3214e886fd0cbae1a342617866f34eb";
			var token = string.Format ("access_token={0}",t);
			var url = "http://mobile.demo.coconutcalendar.com/api/1.1/";
			url = url + req + token;
			Console.Out.WriteLine ("Locations Url: "+url);
			using (WebClient wc = new WebClient ()) {
				var response = wc.DownloadString (url);
				var jsonResponse = JsonObject.Parse (response);

				Location = new List<JsonValue> ();
				foreach (var i in (JsonValue)jsonResponse["data"]["location"]){
					Location.Add ((JsonValue)i);
				};
			};
		}

		public void getStaffs ()
		{

			var req = "staff.json?";
			var t = "e484196ed3214e886fd0cbae1a342617866f34eb";
			var token = string.Format ("access_token={0}",t);
			var url = "http://mobile.demo.coconutcalendar.com/api/1.1/";
			url = url + req + token;
			Console.Out.WriteLine ("Locations Url: "+url);
			using (WebClient wc = new WebClient ()) {
				var response = wc.DownloadString (url);
				var jsonResponse = JsonObject.Parse (response);

				Staff = new List<JsonValue> ();
				foreach (var i in jsonResponse["data"]["staff"]){
					Staff.Add ((JsonValue)i);
				}
			};
		}

		public void getAppointments ()
		{
			var req = "appointments.json?";
			var t = "e484196ed3214e886fd0cbae1a342617866f34eb";
			var token = string.Format ("access_token={0}",t);
			var url = "http://mobile.demo.coconutcalendar.com/api/1.1/";
			url = url + req + token;
			Console.Out.WriteLine ("Appointments Url: "+url);

			using (WebClient wc = new WebClient ()) {
				var response = wc.DownloadString (url);
				var jsonResponse = JsonObject.Parse (response);

				Appointments = new List<JsonValue> ();
				foreach (var i in jsonResponse["data"]["appointment"]){
					Appointments.Add ((JsonValue)i);
				}
			};
		}

		public List<JsonValue> getServicesByLocation(int id){
			var url = string.Format("http://mobile.demo.coconutcalendar.com/api/1.1/locations/{0}.json?access_token=e484196ed3214e886fd0cbae1a342617866f34eb",id);		
			using (WebClient wc = new WebClient ()) {
				var response = wc.DownloadString (url);
				var jsonResponse = JsonObject.Parse (response);

				var a  = new List<JsonValue> ();
				foreach (var i in jsonResponse["data"]["location"][0]["service"]){
					a.Add ((JsonValue)i);
				}

				return a;
			};
		}

		public List<JsonValue> getAppointmentsByLocation(string l){
		
			var req = "appointments.json?";
			var location = string.Format("location={0}&",l);
			var t = "e484196ed3214e886fd0cbae1a342617866f34eb";
			var token = string.Format ("access_token={0}",t);
			var url = "http://mobile.demo.coconutcalendar.com/api/1.1/";
			url = url + req+ location+ token;
			Console.Out.WriteLine ("Appointments Url by Location: "+url);

			using (WebClient wc = new WebClient ()) {
				var response = wc.DownloadString (url);
				var jsonResponse = JsonObject.Parse (response);

				var a = new List<JsonValue> ();
				foreach (var i in jsonResponse["data"]["appointment"]){
					a.Add ((JsonValue)i);
				}

				return a;
			};	 
		}


		public JsonValue getServicesByID (int id){
		
			var url = string.Format ("http://mobile.demo.coconutcalendar.com/api/1.1/services/{0}.json?&access_token=e484196ed3214e886fd0cbae1a342617866f34eb",id);
			using (WebClient wc = new WebClient ()) {
				var response = wc.DownloadString (url);
				var jsonResponse = JsonObject.Parse (response);

				//var a = new JsonValue ();
				var a = jsonResponse["data"]["service"][0];
				return a;
			};	 
			
		}

		public List<double> getServiceDurationAndPriceByID(int id){

			var url = string.Format ("http://mobile.demo.coconutcalendar.com/api/1.1/services/{0}.json?&access_token=e484196ed3214e886fd0cbae1a342617866f34eb",id);
			using (WebClient wc = new WebClient ()) {
				var response = wc.DownloadString (url);
				var jsonResponse = JsonObject.Parse (response);

				//var a = new JsonValue ();
				var a = jsonResponse["data"]["service"][0]["duration"];
				var b = Convert.ToDouble(a.ToString().Replace("\"",string.Empty));

				var c = jsonResponse["data"]["service"][0]["price"];
				var d = Convert.ToDouble(c.ToString().Replace("\"",string.Empty));

				var rtn = new List<double> ();
				rtn.Add (b);
				rtn.Add (d);
				return rtn;
			};	
		}

		public void getClientByID (){

			var url = "http://mobile.demo.coconutcalendar.com/api/1.1/clients.json?vendor_id=611&access_token=e484196ed3214e886fd0cbae1a342617866f34eb";
			using (WebClient wc = new WebClient ()) {
				var response = wc.DownloadString (url);
				var jsonResponse = JsonObject.Parse (response);

				Clients = new List<JsonValue> ();
				foreach (var i in jsonResponse["data"]["client"]){
					Clients.Add ((JsonValue)i);
				}

			};	 
		}

	}
}

