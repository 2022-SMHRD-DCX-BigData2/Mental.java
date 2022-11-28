<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html lang='en'>
  <head>
    <meta charset='utf-8' />
	<link href='/fullcalendar/main.css' rel='stylesheet' />
	<script src='/fullcalendar/main.js'></script>
	<script type='text/javascript'>
	
	document.addEventListener('DOMContentLoaded', function() {
	  var calendarEl = document.getElementById('calendar');
	
	  var calendar = new FullCalendar.Calendar(calendarEl, {
	    googleCalendarApiKey: 'AIzaSyA6D5Bop9sKpDQZakVMmPDVP7hmJ4ThXGg',
	    eventSources: [
	    {
	          googleCalendarId: '970b8710ccc0d0a380e3829d5c68df3e5ddf2ed36901314b722d8c452a36d8c0@group.calendar.google.com',
	          className: '웹디자인기능사',
	          color: '#be5683', //rgb,#ffffff 등의 형식으로 할 수 있어요.
	          //textColor: 'black' 
	        },
	      {
	          googleCalendarId: '970b8710ccc0d0a380e3829d5c68df3e5ddf2ed36901314b722d8c452a36d8c0@group.calendar.google.com',
	          className: '정보처리기능사',
	            color: '#204051',
	            //textColor: 'black' 
	        },
	      {
	          googleCalendarId: '970b8710ccc0d0a380e3829d5c68df3e5ddf2ed36901314b722d8c452a36d8c0@group.calendar.google.com',
	          className: '정보처리기사',
	            color: '#3b6978',
	            //textColor: 'black' 
	        }
	    ]
	  });
	  calendar.render();
	});
	</script>
	<style>
	#calendar{
	   width:60%;
	   margin:20px auto;
	}
	</style>
	  </head>
	  <body>
	    <div id='calendar'></div>
	  </body>
</html>