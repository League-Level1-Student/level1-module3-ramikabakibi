package _01_intro_to_static;

public class Athlete {
	 static int nextBibNumber=1;
	    static String raceLocation = "New York";
	    static String raceStartTime = "9.00am";

	    String name;
	    int speed;
	    int bibNumber;

	    Athlete (String name, int speed){
	        this.name = name;
	        this.speed = speed;
	       
	        bibNumber=nextBibNumber++;
	    }
	  
	    public static void main(String[] args) {
	 Athlete bob=new Athlete("Bob", 20);
	 Athlete daniel=new Athlete("Daniel", 1);
	 System.out.println(bob.bibNumber);
	 System.out.println(daniel.bibNumber);
	 System.out.println(bob.raceLocation);
	 System.out.println(daniel.raceLocation);
	        //create two athletes
	        //print their names, bibNumbers, and the location of their race. 
	    }
	}

