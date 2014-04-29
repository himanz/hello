var currentdate = new Date();
var dayList = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]
var suffix = (currentdate.getHours() > 12) ? "PM" : "AM";
var datetime = "Today is " + dayList[currentdate.getDay()] + " " 
                + currentdate.getHours() + ":"
                + currentdate.getMinutes() + ":"
                + currentdate.getSeconds() + " " +suffix

alert(datetime)