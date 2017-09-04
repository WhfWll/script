import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.PowerManager;
import android.os.PowerManager.WakeLock;
import com.arrownock.push.PushNotificationFetcher;
import com.arrownock.push.PushService;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class ef
  implements Runnable
{
  public ef(Context paramContext, String paramString, eg paramEg, int paramInt) {}
  
  public final void run()
  {
    try
    {
      localObject2 = new df(jdField_a_of_type_AndroidContentContext).a(jdField_a_of_type_JavaLangString);
      localEg2 = jdField_a_of_type_Eg;
      if ((localObject2 == null) || (((JSONArray)localObject2).length() <= 0)) {
        break label293;
      }
      bk.a().a(PushNotificationFetcher.class.getName(), "Got offline push notifications: " + ((JSONArray)localObject2).length());
      bk.a().a(PushNotificationFetcher.class.getName(), "Acquiring wakelock...");
      localObject1 = jdField_a_of_type_AndroidContentContext;
      localObject3 = jdField_a_of_type_AndroidContentContext;
      localObject3 = ((PowerManager)((Context)localObject1).getSystemService("power")).newWakeLock(1, "anPush.notification");
      ((PowerManager.WakeLock)localObject3).acquire();
      i = 0;
    }
    catch (Exception localJSONException2)
    {
      try
      {
        int j;
        localObject4 = ((JSONArray)localObject2).getJSONObject(i);
        if (localObject4 == null) {
          break label450;
        }
        localObject1 = ((JSONObject)localObject4).getString("message");
        if (localObject1 == null) {
          break label450;
        }
      }
      catch (JSONException localJSONException2)
      {
        int i;
        try
        {
          eg localEg2;
          Object localObject1 = new JSONObject(((JSONObject)localObject4).getString("message"));
          localObject4 = new Intent(PushService.ACTION_MSG_ARRIVAL);
          ((Intent)localObject4).setPackage(jdField_a_of_type_AndroidContentContext.getPackageName());
          ((Intent)localObject4).putExtra("payload", ((JSONObject)localObject1).toString());
          jdField_a_of_type_AndroidContentContext.sendBroadcast((Intent)localObject4);
        }
        catch (JSONException localJSONException1)
        {
          Object localObject2;
          Object localObject3;
          for (;;)
          {
            Object localObject4;
            JSONObject localJSONObject1 = new JSONObject();
            JSONObject localJSONObject2 = new JSONObject();
            try
            {
              localJSONObject2.put("alert", ((JSONObject)localObject4).getString("message"));
              localJSONObject1.put("android", localJSONObject2);
            }
            catch (JSONException localJSONException3) {}
          }
          ((PowerManager.WakeLock)localObject3).release();
          bk.a().a(PushNotificationFetcher.class.getName(), "Wakelock released");
          return;
          label293:
          bk.a().a(PushNotificationFetcher.class.getName(), "Got offline push notifications: 0");
          return;
          localException1 = localException1;
          bk.a().d(PushNotificationFetcher.class.getName(), "Failed to fetch notifications: " + localException1.getMessage() + "; retry = " + jdField_a_of_type_Int);
          try
          {
            Thread.sleep(5000L);
            eg localEg1 = jdField_a_of_type_Eg;
            i = jdField_a_of_type_Int;
            if (i < 5)
            {
              if (jdField_a_of_type_AndroidContentSharedPreferences.getString("fetchNotificationOn", null) == null) {
                return;
              }
              localObject2 = jdField_a_of_type_ComArrownockPushPushNotificationFetcher;
              PushNotificationFetcher.a(jdField_a_of_type_JavaLangString, jdField_a_of_type_AndroidContentContext, i + 1, localEg1);
              return;
            }
            bk.a().d(PushNotificationFetcher.class.getName(), "Failed to fetch notifications after " + i + " retry");
            return;
          }
          catch (InterruptedException localInterruptedException)
          {
            for (;;) {}
          }
          localJSONException2 = localJSONException2;
        }
        catch (Exception localException2) {}
        label450:
        i += 1;
      }
    }
    j = ((JSONArray)localObject2).length();
    if (i < j) {}
  }
}
