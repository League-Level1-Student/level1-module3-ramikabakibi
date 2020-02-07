package _05_netflix;

public class Runner {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
Movie movie=new Movie("Rise of Skywalker", 4);
Movie movie1=new Movie("The Martian", 5);
Movie movie2=new Movie("Jumanji", 3);
Movie movie3=new Movie("Minions",2);
Movie movie4=new Movie("Up",5 );
String ticketprice=movie.getTicketPrice();
System.out.println(ticketprice);
NetflixQueue queue= new NetflixQueue();
queue.addMovie(movie);
queue.addMovie(movie1);
queue.addMovie(movie2);
queue.addMovie(movie3);
queue.addMovie(movie4);
queue.printMovies();

Movie bestmovie=queue.getBestMovie();
System.out.println("The best movie is "+bestmovie );
queue.sortMoviesByRating();
Movie secondbestmovie=queue.getMovie(1);
System.out.println("The second best movie is"+secondbestmovie.getTitle());

	}

}
