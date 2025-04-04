var drawPinkFlower = loadImage("https://png.pngtree.com/png-vector/20240124/ourmid/pngtree-the-magenta-flower-png-image_11479357.png")
var drawMintFlower = loadImage("https://www.pngkey.com/png/full/39-399927_mint-transparent-flower-crown-mint-green-flower-png.png")
var drawWhiteFlower = loadImage("https://static.vecteezy.com/system/resources/previews/019/984/226/original/white-flower-transparent-png.png")
var drawYellowFlower = loadImage("https://cdn.glitch.global/b00400d5-78dd-4f23-9143-ea8d136e27e7/Flower_Yellow_Transparent_Clip_Art.png?v=1743695165918")

var xPositions = [100,220,360,480]
var yPositions = [100,420,220,100]
var imgXY = 0;
var i = 0;
var drawFlower = ["🌼", "🌺", "🌻","🌸"];
var drawJavaFlowerValueX = [70,300,450]
var drawJavaFlowerValueY = [-30,-180,130]



setup = function() {
   size(600, 450); 
   background(104, 155, 20,40);
  
  
}




draw = function(){


while(imgXY < 600){
   image(drawMintFlower, (imgXY*150)-25, (imgXY*50)-150,47,45);
   image(drawPinkFlower, (imgXY*150)+35, (imgXY*50),55,55);
   image(drawWhiteFlower, (imgXY*150)-30, (imgXY*50)+100,50,50);
   image(drawYellowFlower, (imgXY*150)+40, (imgXY*50)+250,50,50);
   image(drawMintFlower, (imgXY*150)-25, (imgXY*50)+350,47,45);
imgXY=imgXY+1;
}

imgXY = 0;


textSize(60);
   for (var i = 0; i < yPositions.length; i++) {
        text("🌻", xPositions[i], yPositions[i]);
    }


i = 0;

while(i < drawJavaFlowerValueX.length){
   drawJavaFlower(drawJavaFlowerValueX[i], drawJavaFlowerValueY[i]);
   i++;
 }


i=0;




while(i < drawFlower.length){
   text(drawFlower[i], xPositions[i], yPositions[i]);
   i++;
 }


  if(mousePressed){
   xPositions.push(mouseX-35);
   yPositions.push(mouseY+15);
   }

   
   
   
   

   
   }
   
   
   
   
   
   
   
var drawJavaFlower = function(drawJavaFlowerValueX,drawJavaFlowerValueY){
  
  stroke(100,0,170)
  fill(150,50,210)
  ellipse(drawJavaFlowerValueX,200+drawJavaFlowerValueY,20,20)
  ellipse(16+drawJavaFlowerValueX,209+drawJavaFlowerValueY,20,20)
  ellipse(16+drawJavaFlowerValueX,226+drawJavaFlowerValueY,20,20)
  ellipse(drawJavaFlowerValueX,235+drawJavaFlowerValueY,20,20)
  ellipse(-16+drawJavaFlowerValueX,226+drawJavaFlowerValueY,20,20)
  ellipse(-16+drawJavaFlowerValueX,209+drawJavaFlowerValueY,20,20)
  
  
  
  fill(250,170,0)
  ellipse(drawJavaFlowerValueX,218+drawJavaFlowerValueY,24,24)
  stroke(250,170,0)
  fill(250,200,0)
  ellipse(1+drawJavaFlowerValueX,215+drawJavaFlowerValueY,17,15)
  }





