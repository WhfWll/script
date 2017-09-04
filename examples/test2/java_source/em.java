import android.content.Context;
import android.util.Log;
import com.arrownock.exception.ArrownockException;
import com.arrownock.push.PushService;

public final class em
  implements Runnable
{
  public em(Context paramContext, String paramString, eo paramEo) {}
  
  public final void run()
  {
    try
    {
      cp localCp = new df(jdField_a_of_type_AndroidContentContext).a(jdField_a_of_type_JavaLangString);
      if ((localCp != null) && (a != null) && (!"".equals(a)))
      {
        eo localEo = jdField_a_of_type_Eo;
        String str = (String)a;
        int i = ((Integer)b).intValue();
        if ((str != null) && (!"".equals(str.trim())))
        {
          PushService.a(a, str, i);
          return;
        }
        bk.a().d(PushService.LOGGER_TAG, "Cannot find push server.");
        a.scheduleReconnect(PushService.a(a));
        return;
      }
    }
    catch (ArrownockException localArrownockException)
    {
      jdField_a_of_type_Eo.a(localArrownockException);
      return;
    }
    Log.w(PushService.LOGGER_TAG, "Push server is null.");
  }
}
