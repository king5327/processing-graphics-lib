//---------- Start of General Classes ----------\\

abstract class Item{ //This is meant to be a superclass to all loopable items, for use in the Loop class (itself loopable)
    void tick(){};
}

//---------- Start of Drawing Classes ----------\\

abstract class Shape extends Item{ //If it can be drawn, it should extend Shape
    float x, y; //Just as position. I'd add a colour, but that will get weird once the complex shapes get implemented.
    boolean visible = true;
    void draw(){}
}

interface PrimitiveDrawable{
    
    void setColor(Color c);
}

class Color{
    float r, g, b;
    public Color(int red, int green, int blue){
        r = red; g = green; b = blue;
    }
    
    public Color(float grey){
        r = grey; g = grey; b = grey;   
    }
}

class Rectangle extends Shape implements PrimitiveDrawable{
    float h, w;
    Color c;
    
    public Rectangle(float xpos, float ypos, float height, float width, Color c){
        x = xpos; y = ypos; h = height; w = width;
        this.c = c;
    }
    
    void setColor(Color c){
         this.c = c;  
    }
    
    void draw(){
        fill(c.r, c.b, c.g);
        rect(x, y, h, w);
    }
}

//---------- Start of Processing Classes ----------\\

interface Loop{
    void tick();
    
}

//---------- Start of Physics Classes ----------\\

//---------- Start of Control Classes ----------\\

//---------- Start of Special Classes ----------\\