
var bodyX = 125;
var bodyY = 200;
var bodyW = 120;
var bodyH = 120;
var goLeft = false;
var goRight = true;

void setup()
{
  size(400,400);

}

void draw() {
    
    var smallEyeW = bodyW/24;
    var smallEyeH = bodyH/28;
    
    background(207, 254, 255);
    fill(54, 48, 21);   
        
        beginShape(); //needls
    vertex(bodyX, bodyY);
    vertex(bodyX-95/120*bodyW, bodyY+20/140*bodyH);
    vertex(bodyX-80/120*bodyW, bodyY+5/140*bodyH);
    vertex(bodyX-95/120*bodyW, bodyY-10/140*bodyH);
    vertex(bodyX-84/120*bodyW, bodyY-20/140*bodyH);
    vertex(bodyX-95/120*bodyW, bodyY-35/140*bodyH);
    vertex(bodyX-80/120*bodyW, bodyY-43/140*bodyH);
    vertex(bodyX-90/120*bodyW, bodyY-60/140*bodyH);
    vertex(bodyX-70/120*bodyW, bodyY-65/140*bodyH);
    vertex(bodyX-80/120*bodyW, bodyY-78/140*bodyH);
    vertex(bodyX-60/120*bodyW, bodyY-78/140*bodyH);
    vertex(bodyX-60/120*bodyW, bodyY-97/140*bodyH);
    vertex(bodyX-40/120*bodyW, bodyY-88/140*bodyH);
    vertex(bodyX-30/120*bodyW, bodyY-105/140*bodyH);
    vertex(bodyX-15/120*bodyW, bodyY-90/140*bodyH);
    vertex(bodyX, bodyY-110/140*bodyH);
    vertex(bodyX+5/120*bodyW, bodyY-84/140*bodyH);
    vertex(bodyX+25/120*bodyW, bodyY-100/140*bodyH);
    vertex(bodyX+20/120*bodyW, bodyY-70/140*bodyH);
    vertex(bodyX+40/120*bodyW, bodyY-80/140*bodyH);
    endShape(CLOSE);
    
    noStroke();

    ellipse(bodyX-20/120*bodyW, bodyY-20/140*bodyH, bodyW+10, bodyH+5); // behind body
    
    stroke(23, 17, 17);

    fill(207, 181, 149);
    //left ear
    ellipse(bodyX-60/120*bodyW, bodyY-28/140*bodyH, bodyW/6, bodyH/7); 
    //right ear
    ellipse(bodyX+55/120*bodyW, bodyY-35/140*bodyH, bodyW*3/20, bodyH*9/70); 
    
    ellipse(bodyX, bodyY, bodyW, bodyH); // body
    
    fill(43, 45, 64);
    ellipse(bodyX+20/120*bodyW, bodyY-40/140*bodyH, smallEyeW*9/5, smallEyeH*3); //right eye
    ellipse(bodyX-10/120*bodyW, bodyY-40/140*bodyH, smallEyeW*9/5, smallEyeH*3); //left eye
    
    fill(252, 247, 247);
    ellipse(bodyX+20/120*bodyW, bodyY-40/140*bodyH, smallEyeW, smallEyeH); //right eye2 white
    ellipse(bodyX-10/120*bodyW, bodyY-40/140*bodyH, smallEyeW, smallEyeH); //left eye2 white
    
    fill(153, 144, 144);
    ellipse(bodyX+10/120*bodyW, bodyY-20/140*bodyH, smallEyeW*2, smallEyeH*2); //nose
    
    //mouth
    fill(191, 55, 55);
    ellipse(bodyX+9/120*bodyW, bodyY-5/140*bodyH, smallEyeW*3, smallEyeH*3/2);
    
    fill(107, 101, 101); // arms
    ellipse(bodyX+20/120*bodyW, bodyY+30/140*bodyH, smallEyeW*4, smallEyeH*2);
    ellipse(bodyX-1/120*bodyW, bodyY+30/140*bodyH, smallEyeW*4, smallEyeH*2);
    
    //legs
    ellipse(bodyX+30/120*bodyW, bodyY+65/140*bodyH, smallEyeW*4, smallEyeH*2);
    ellipse(bodyX-19/120*bodyW, bodyY+66/140*bodyH, smallEyeW*4, smallEyeH*2);
    
    if (bodyX < 125)
    {goLeft = false;
     goRight = true;
     bodyW = 120;
    }
    if (bodyX > 325)
    {goLeft = true;
     goRight = false;
     bodyW = -120;
    }
    
    if (goRight)
    {bodyX += 1;}
    if (goLeft)
    {bodyX -= 1;}
    
};