import java.util.regex.*;

PFont f;

// Variable to store text currently being typed 
String typing = "";
// List to store saved text when return is hit 
ArrayList <String> saved = new ArrayList<String>();

// list containing triggerwords
String [] watchlist;

/* the programm is runing in two states
either it receives strings or it does not so saved strings will be displayed */
boolean receiving;

void setup() {
 size(300,700);
 
 f = createFont("Arial", 16, true);
 
 watchlist = loadStrings("watchlist.txt");
 
 receiving = true;
}

void draw() {
 background(255);
 
 int indent = 25;
 int textSpace = 170;
 
 textFont(f);
 fill(0);
 
 // Display commands
 text("Click in this window and type. \nHit return to save what you typed. \nType quit to exit.", indent, 40);
 // Display the string in which is being typed
 text(typing, indent, 130);

 if(!receiving) { // display all saved strings and find trigger words
   fill(0,255,0);
   
   for(String sentence: saved) { //<>//
     text(sentence, indent, textSpace);
     
      for(String watchword: watchlist) {
        Pattern pattern = Pattern.compile(watchword);
        Matcher matcher = pattern.matcher(sentence);
        
         while(matcher.find()) {
           fill(255,0,0);
           text(watchword, textWidth(sentence.substring(0, matcher.start())) + indent, textSpace);
         }
      }
      
      fill(0,255,0);
      textSpace += 15;
    }
  }
}

void keyPressed() {
 // If the return key is pressed, save the String and clear it
 if(key == '\n' && !typing.equals("quit")) { 
   saved.add(typing);
   typing = "";
 }
 else if(key == '\n' && typing.equals("quit")) {
   receiving = false; 
 }
 else { //otherwise, concatenate the String
  typing += key;
 }
}
