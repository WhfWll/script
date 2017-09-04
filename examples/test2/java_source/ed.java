import android.content.Context;
import android.content.SharedPreferences;
import com.arrownock.push.PushCommandFetcher;
import org.json.JSONArray;

public final class ed
  implements Runnable
{
  public ed(Context paramContext, String paramString, ee paramEe, int paramInt) {}
  
  public final void run()
  {
    try
    {
      JSONArray localJSONArray = new df(jdField_a_of_type_AndroidContentContext).b(jdField_a_of_type_JavaLangString);
      localObject = jdField_a_of_type_Ee;
      if ((localJSONArray != null) && (localJSONArray.length() > 0))
      {
        bk.a().a(PushCommandFetcher.class.getName(), "Got push commands: " + localJSONArray.length());
        PushCommandFetcher localPushCommandFetcher = jdField_a_of_type_ComArrownockPushPushCommandFetcher;
        PushCommandFetcher.a(localJSONArray, jdField_a_of_type_AndroidContentContext);
        return;
      }
      bk.a().a(PushCommandFetcher.class.getName(), "Got offline push commands: 0");
      return;
    }
    catch (Exception localException)
    {
      Object localObject;
      bk.a().d(PushCommandFetcher.class.getName(), "Failed to fetch commands: " + localException.getMessage() + "; retry = " + jdField_a_of_type_Int);
      try
      {
        Thread.sleep(5000L);
        ee localEe = jdField_a_of_type_Ee;
        int i = jdField_a_of_type_Int;
        if (i < 5)
        {
          if (jdField_a_of_type_AndroidContentSharedPreferences.getString("fetchCommandOn", null) != null)
          {
            localObject = jdField_a_of_type_ComArrownockPushPushCommandFetcher;
            PushCommandFetcher.a(jdField_a_of_type_JavaLangString, jdField_a_of_type_AndroidContentContext, i + 1, localEe);
          }
        }
        else
        {
          bk.a().d(PushCommandFetcher.class.getName(), "Failed to fetch commands after " + i + " retry");
          return;
        }
      }
      catch (InterruptedException localInterruptedException)
      {
        for (;;) {}
      }
    }
  }
}
