package ss.ss.gK;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Locale;
import ss.ss.j;

final class i
  extends ThreadLocal<DateFormat>
{
  i() {}
  
  protected DateFormat a()
  {
    SimpleDateFormat localSimpleDateFormat = new SimpleDateFormat("EEE, dd MMM yyyy HH:mm:ss 'GMT'", Locale.US);
    localSimpleDateFormat.setLenient(false);
    localSimpleDateFormat.setTimeZone(j.d);
    return localSimpleDateFormat;
  }
}
