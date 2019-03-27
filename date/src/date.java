import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public  class date
{
    @SuppressWarnings("deprecation")
	public static void displayDay(String date)throws ParseException
    {
        DateFormat d = new SimpleDateFormat("yyyy-MM-dd");
    	
        Date date1=new Date();
		date1 =d.parse(date);
		
		DateFormat dt = new SimpleDateFormat("EEEE");
		System.out.println(dt.format(date1));
		}
}
