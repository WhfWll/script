import android.os.Message;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONTokener;

public class ey
  extends ev
{
  public ey() {}
  
  private static Object a(String paramString)
    throws JSONException
  {
    Object localObject = null;
    String str = paramString.trim();
    if (!str.startsWith("{"))
    {
      paramString = localObject;
      if (!str.startsWith("[")) {}
    }
    else
    {
      paramString = new JSONTokener(str).nextValue();
    }
    if (paramString == null) {
      return str;
    }
    return paramString;
  }
  
  protected final void a(int paramInt, String paramString)
  {
    if (paramInt != 204) {
      try
      {
        b(a(100, new Object[] { Integer.valueOf(paramInt), a(paramString) }));
        return;
      }
      catch (JSONException localJSONException)
      {
        a(localJSONException, paramString);
        return;
      }
    }
    b(a(100, new Object[] { Integer.valueOf(paramInt), new JSONObject() }));
  }
  
  protected final void a(Message paramMessage)
  {
    switch (what)
    {
    default: 
      super.a(paramMessage);
    }
    do
    {
      return;
      paramMessage = (Object[])obj;
      ((Integer)paramMessage[0]).intValue();
      paramMessage = paramMessage[1];
      if ((paramMessage instanceof JSONObject))
      {
        b((JSONObject)paramMessage);
        return;
      }
    } while ((paramMessage instanceof JSONArray));
    new JSONException("Unexpected type " + paramMessage.getClass().getName());
    a(null);
  }
  
  public void a(JSONObject paramJSONObject) {}
  
  protected final void b(String paramString)
  {
    if (paramString != null) {
      try
      {
        Object localObject = a(paramString);
        if ((localObject instanceof JSONObject))
        {
          a((JSONObject)localObject);
          return;
        }
        if ((localObject instanceof JSONArray)) {
          return;
        }
        a(paramString);
        return;
      }
      catch (JSONException localJSONException)
      {
        a(paramString);
        return;
      }
    }
    a("");
  }
  
  public void b(JSONObject paramJSONObject) {}
}
