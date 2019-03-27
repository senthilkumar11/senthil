import java.text.ParseException;
import java.util.Scanner;
import java.text.DateFormat;
import java.text.SimpleDateFormat;

import java.util.Date;
public class Main {

    @SuppressWarnings("deprecation")
	public static void main(String[] args) throws ParseException {
		Scanner p=new Scanner(System.in);
	String date=p.nextLine();
	String date3=p.nextLine();
	 DateFormat d = new SimpleDateFormat("yyyy-MM-dd");
 	
     Date date4=new Date();
		date4 =d.parse(date);
		Date date5=new Date();
		date5=d.parse(date3);
		int y,m;

	     Date date1=new Date();

	     Date date2=new Date();
		if(date4.after(date5))
		{
			date1=date4;
			date2=date5;
		}
		else
		{

			date1=date5;
			date2=date4;
		}
		y=date1.getYear()-date2.getYear();
		if(date1.getMonth()>date2.getMonth())
		m=date1.getMonth()-date2.getMonth();
		else
		{
			m=12+date1.getMonth()-date2.getMonth();
			y--;	
		}
		if(date1.getDate()<date2.getDate())
			m--;
			
	
	System.out.println("Difference between "+date+" and "+date3+": "+y+" Years and "+m+" Months");
	}

}