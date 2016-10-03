

//Loop Drawing
float Followme;
float speed;

void setup(){
  
  size(600,600);
  background(0);
  
}



void draw(){
  background(0);
WhySoSerious();

 Followme+= speed;
  if(height > Followme){
    
    
    speed++;
    
  } if(height <= Followme){
    
    
    speed--;
    
  }
  
  }
  


void WhySoSerious(){
  
  for(int i= 0; i <= 20; i++){
    
    
    float PosX = map(i,0,22,0,width);
   fill( 255 );
  noStroke();
  arc(PosX,Followme, 202,202 , 0.28 , 2.85 ); 
  fill(#FCFAFA );
  noStroke();
  arc(PosX,Followme, 200,200 , 3.3 , 6.1 );
  fill(#FCFAFA );
  noStroke();
  arc(PosX,Followme , 195,195 , 3.3 , 6.1 );
  fill( 154 , 132 , 120 );
  noStroke();
  arc(PosX,Followme , 185,185 , 3.3 , 6.1 );
  fill( 194 , 180 , 154 );
  noStroke();
  arc(PosX,Followme , 175,175 , 3.3 , 6.1 );
  fill( #FCFAFA);
  noStroke();
  arc(PosX,Followme , 203,203 , 0.28 , 2.85 );
  fill( 234 , 231 , 220 );
  noStroke();
  arc(PosX,Followme , 160,160 , 3.3 , 6.1 );
  fill(#FF2929 );
  noStroke();
  ellipse( PosX,Followme , 80 , 80 );
  fill( 0 );
  noStroke();
  ellipse(PosX+50,Followme, 50 , 50 );
  }
  
 
  
  
  
  

    
    

  }
  
  
  