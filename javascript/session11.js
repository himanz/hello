var currentdate = new Date();
var dayList = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]
var suffix = (currentdate.getHours() > 12) ? "PM" : "AM";
var datetime = "Today is " + dayList[currentdate.getDay()] + " " 
                + currentdate.getHours() + ":"
                + currentdate.getMinutes() + ":"
                + currentdate.getSeconds() + " " +suffix

alert(datetime)

var randomNumber = Math.ceil(Math.random() * 10);

var guess = prompt("Guess a number between 1 and 10");

while(true) {
    if (guess == randomNumber) {
        alert("Matched!");
        break;
    } else if (guess == "break") {
        break; 
    } else {
        alert("Not matched!");
    }
}
    