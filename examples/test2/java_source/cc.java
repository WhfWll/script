import org.json.JSONException;
import org.json.JSONObject;

final class cc
  extends ey
{
  cc(cb paramCb) {}
  
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
      if (a.a != null) {
        new Thread(new cf(this, localJSONObject1)).run();
      }
    }
  }
  
  public final void a(JSONObject paramJSONObject)
  {
    if (a.a != null) {
      new Thread(new cd(this, paramJSONObject)).run();
    }
  }
  
  public final void b(JSONObject paramJSONObject)
  {
    if (a.a != null) {
      new Thread(new ce(this, paramJSONObject)).run();
    }
  }
}
