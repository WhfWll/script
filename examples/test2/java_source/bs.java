import com.arrownock.social.IAnSocialCallback;
import org.json.JSONException;
import org.json.JSONObject;

final class bs
  extends ey
{
  bs(IAnSocialCallback paramIAnSocialCallback) {}
  
  public final void a(String paramString)
  {
    JSONObject localJSONObject1 = new JSONObject();
    JSONObject localJSONObject2 = new JSONObject();
    try
    {
      localJSONObject2.put("status", "fail");
      localJSONObject2.put("message", paramString);
      localJSONObject1.put("meta", localJSONObject2);
      return;
    }
    catch (JSONException paramString)
    {
      paramString.printStackTrace();
      return;
    }
    finally
    {
      if (a != null) {
        new Thread(new bv(this, localJSONObject1)).run();
      }
    }
  }
  
  public final void a(JSONObject paramJSONObject)
  {
    if (a != null) {
      new Thread(new bt(this, paramJSONObject)).run();
    }
  }
  
  public final void b(JSONObject paramJSONObject)
  {
    if (a != null) {
      new Thread(new bu(this, paramJSONObject)).run();
    }
  }
}
