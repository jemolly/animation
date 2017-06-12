var xPositions = [];
var yPositions = [];
var colorDrops = [];

for (var i = 0; i < 50; i++) {
 xPositions.push(random(0, 400));
 yPositions.push(random(0, 400));
 var col4 = color(random(0, 255), random(0, 255), random(0, 255));
 colorDrops.push(col4);
}

void setup()
{
  size(400,400);

}


void draw() {
    background(114, 125, 184);
    
    // you click - and new drop of random color appears 
    mouseClicked = function() {
    var col4 = color(random(0, 255), random(0, 255), random(0, 255));
    xPositions.push(mouseX);
    yPositions.push(mouseY);
    colorDrops.push(col4);
    };

    // for each number in the array (x+y+color) - a drop and and image
    for (var i = 0; i < xPositions.length; i++) {
            noStroke();
            fill(colorDrops[i]);
            ellipse(xPositions[i], yPositions[i], 10, 10);
            yPositions[i] += 4;
            if (yPositions[i] > 410) {
            yPositions[i] -=410;
         }
        
    }
      
};

