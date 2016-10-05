

//Loop Drawing


void setup(){
  
  size(600,600);
  background(0);
  
}



void draw(){
  background(0);
  
  
  for(int i = 0; i< 10; i++){
  
  WhySoSerious(50+i * 60,300);
  
  }


  
  }
  


void WhySoSerious(float PosX, float PosY){
  
 
  fill( 255 );
  noStroke();
  arc(PosX,PosY, 202,202 , 0.28 , 2.85 ); 
  fill(#FCFAFA );
  noStroke();
  arc(PosX,PosY, 200,200 , 3.3 , 6.1 );
  fill(#FCFAFA );
  noStroke();
  arc(PosX,PosY, 195,195 , 3.3 , 6.1 );
  fill( 154 , 132 , 120 );
  noStroke();
  arc(PosX,PosY, 185,185 , 3.3 , 6.1 );
  fill( 194 , 180 , 154 );
  noStroke();
  arc(PosX,PosY, 175,175 , 3.3 , 6.1 );
  fill( #FCFAFA);
  noStroke();
  arc(PosX,PosY, 203,203 , 0.28 , 2.85 );
  fill( 234 , 231 , 220 );
  noStroke();
  arc(PosX,PosY, 160,160 , 3.3 , 6.1 );
  fill(#FF2929 );
  noStroke();
  ellipse(PosX,PosY, 80 , 80 );
  fill( 0 );
  noStroke();
  ellipse(PosX,PosY, 50 , 50 );

    
    

  }
  
  
  