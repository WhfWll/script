import com.arrownock.exception.ArrownockException;
import com.arrownock.im.callback.AnIMMessageSentCallbackData;
import com.arrownock.im.callback.IAnIMCallback;
import java.util.HashSet;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

final class ap
  implements Runnable
{
  ap(f paramF, String paramString1, String paramString2, String paramString3, String paramString4) {}
  
  public final void run()
  {
    JSONObject localJSONObject;
    Object localObject2;
    try
    {
      localJSONObject = new JSONObject(jdField_a_of_type_JavaLangString);
      Object localObject1 = new HashSet();
      Object localObject3 = localJSONObject.optJSONArray("recipients");
      if (localObject3 != null)
      {
        localObject2 = new HashSet();
        int i = 0;
        for (;;)
        {
          localObject1 = localObject2;
          if (i >= ((JSONArray)localObject3).length()) {
            break;
          }
          ((Set)localObject2).add(((JSONArray)localObject3).getString(i));
          i += 1;
        }
      }
      ((Set)localObject1).add(f.c(jdField_a_of_type_F));
      localObject2 = jdField_a_of_type_F.a((Set)localObject1);
      if (localObject2 == null) {
        break label320;
      }
      if ("".equals(jdField_a_of_type_F.a(f.a(jdField_a_of_type_F), (String)localObject2)))
      {
        localObject3 = jdField_a_of_type_F;
        localObject1 = f.a((Set)localObject1, ",");
        try
        {
          f.a(jdField_a_of_type_F, b, (String)localObject2, (String)localObject1);
          jdField_a_of_type_F.b(f.a(jdField_a_of_type_F), (String)localObject2, (String)localObject1);
          localJSONObject.remove("recipients");
          localJSONObject.put("session_key", localObject2);
          jdField_a_of_type_F.a(c, d, localJSONObject.toString());
          return;
        }
        catch (ArrownockException localArrownockException)
        {
          AnIMMessageSentCallbackData localAnIMMessageSentCallbackData1 = new AnIMMessageSentCallbackData(true, localArrownockException, c, -1L);
          f.a(jdField_a_of_type_F).messageSent(localAnIMMessageSentCallbackData1);
          return;
        }
      }
      localJSONObject.remove("recipients");
    }
    catch (JSONException localJSONException)
    {
      localAnIMMessageSentCallbackData2 = new AnIMMessageSentCallbackData(true, new ArrownockException("Failed to send message.", localJSONException, 3104), c, -1L);
      f.a(jdField_a_of_type_F).messageSent(localAnIMMessageSentCallbackData2);
      return;
    }
    localJSONObject.put("session_key", localObject2);
    jdField_a_of_type_F.a(c, d, localJSONObject.toString());
    return;
    label320:
    AnIMMessageSentCallbackData localAnIMMessageSentCallbackData2 = new AnIMMessageSentCallbackData(true, new ArrownockException("Failed to send message, error when calculating session info.", 3104), c, -1L);
    f.a(jdField_a_of_type_F).messageSent(localAnIMMessageSentCallbackData2);
  }
}
