/*
function getWidth() {
    return Math.max(
        document.body.scrollWidth,
        document.documentElement.scrollWidth,
        document.body.offsetWidth,
        document.documentElement.offsetWidth,
        document.documentElement.clientWidth
    );
}

function myFunction() {

    alert('message delayd by secs.')

}

var b = document.getElementById('button')
var c = document.getElementById('desktop-container')

b.addEventListener('click', function(eventt) {
    alert('the width is' + getWidth());
});

*/

//c = setTimeout(myFunction, 3000)

/*burger content*/
var burger = document.getElementById('burger');
var isMenuShowed = false;

/*burger lines*/
var topLine = document.getElementById('top-line');
var midLine = document.getElementById('mid-line');
var bottomLine = document.getElementById('bottom-line');

var name =

    burger.addEventListener('click', function(event) {
        //toggle
        if (isMenuShowed == false) {
            isMenuShowed = true;
            if (isMenuShowed == true) {
                document.getElementById('drop-menu').style.height = '170px';
                document.getElementById('drop-menu').style.visibility = 'visible';
                topLine.style.transform = 'rotate(45deg)';
                topLine.style.top = '16px';
                midLine.style.width = '0%';
                midLine.style.marginLeft = '-50%';
                bottomLine.style.transform = 'rotate(135deg)'
                bottomLine.style.top = '16px';
            }
        } else {
            isMenuShowed = false;
            if (isMenuShowed == false) {
                document.getElementById('drop-menu').style.height = '0px';
                document.getElementById('drop-menu').style.visibility = 'hidden';
                topLine.style.transform = 'rotate(0deg)';
                topLine.style.top = '8px';
                midLine.style.width = '100%';
                midLine.style.marginLeft = '0%';
                bottomLine.style.transform = 'rotate(0deg)';
                bottomLine.style.top = '24px';
            }
        }
        //change image snippet-->
        //document.getElementById("burger").src = isMenuShowed ? "/images/cancel.png" : "/images/burger.png";

    });

var selectedSide = document.getElementById("selected-side");
var skillsToggle = document.getElementById('skills-toggle');
var workToggle = document.getElementById('work-toggle');
var isSelected = false;

workToggle.addEventListener('click', selectWork);
skillsToggle.addEventListener('click', selectSkills);

function selectWork() {
    console.log('workm pressed')
    if (isSelected == false) {
        isSelected = true;
        if (isSelected == true) {
            selectedSide.style.marginLeft = '45%';
            workToggle.style.fontWeight = "Bold";
            skillsToggle.style.fontWeight = "normal";
        }
    }
}

function selectSkills() {
    if (isSelected == true) {
        isSelected = false;
        if (isSelected == false) {
            selectedSide.style.marginLeft = '0%';
            workToggle.style.fontWeight = "normal";
            skillsToggle.style.fontWeight = "Bold";
        }
    }
}