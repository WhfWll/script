import android.content.Context;
import com.arrownock.exception.ArrownockException;
import com.arrownock.social.AnSocialFile;
import com.arrownock.social.AnSocialMethod;
import com.arrownock.social.IAnSocialCallback;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;

public final class ch
{
  public Context a;
  public bn a;
  public String a;
  
  public ch()
  {
    jdField_a_of_type_AndroidContentContext = null;
    jdField_a_of_type_JavaLangString = null;
    jdField_a_of_type_Bn = null;
    jdField_a_of_type_Bn = new bn();
  }
  
  public ch(String paramString, Context paramContext)
  {
    jdField_a_of_type_AndroidContentContext = null;
    jdField_a_of_type_JavaLangString = null;
    jdField_a_of_type_Bn = null;
    jdField_a_of_type_Bn = new bn();
    jdField_a_of_type_Bn.a(paramString);
    jdField_a_of_type_AndroidContentContext = paramContext;
    jdField_a_of_type_JavaLangString = paramString;
  }
  
  public static JSONObject a(AnSocialMethod paramAnSocialMethod, Map<String, Object> paramMap, String paramString, IAnSocialCallback paramIAnSocialCallback)
    throws ArrownockException
  {
    if ((paramString == null) || ("".equals(paramString.trim())))
    {
      a("Invalid path", -200002, paramIAnSocialCallback);
      return null;
    }
    if ((paramAnSocialMethod != AnSocialMethod.GET) && (paramAnSocialMethod != AnSocialMethod.POST))
    {
      a("Invalid methodType", -200006, paramIAnSocialCallback);
      return null;
    }
    paramAnSocialMethod = new JSONObject();
    paramMap = paramMap.entrySet().iterator();
    while (paramMap.hasNext())
    {
      paramString = (Map.Entry)paramMap.next();
      Object localObject;
      if (("photo".equals(paramString.getKey())) || ("file".equals(paramString.getKey())))
      {
        if (!(paramString.getValue() instanceof AnSocialFile))
        {
          a("Invalid AnSocialFile", -200005, paramIAnSocialCallback);
          return null;
        }
        localObject = (AnSocialFile)paramString.getValue();
        if ((localObject == null) || ((((AnSocialFile)localObject).getData() == null) && (((AnSocialFile)localObject).getInputStream() == null)))
        {
          a("Invalid AnSocialFile", -200005, paramIAnSocialCallback);
          return null;
        }
      }
      Map.Entry localEntry;
      try
      {
        if (!"custom_fields".equals(paramString.getKey())) {
          break label319;
        }
        if (!(paramString.getValue() instanceof Map))
        {
          a("Invalid custom_fields", -200005, paramIAnSocialCallback);
          return null;
        }
        localObject = (Map)paramString.getValue();
        paramString = new JSONObject();
        localObject = ((Map)localObject).entrySet().iterator();
        while (((Iterator)localObject).hasNext())
        {
          localEntry = (Map.Entry)((Iterator)localObject).next();
          paramString.put((String)localEntry.getKey(), localEntry.getValue());
        }
        paramAnSocialMethod.put("custom_fields", paramString);
      }
      catch (JSONException paramAnSocialMethod)
      {
        a("Invalid params", -200005, paramIAnSocialCallback);
        return null;
      }
      continue;
      label319:
      if ("choices".equals(paramString.getKey()))
      {
        if (!(paramString.getValue() instanceof Map))
        {
          a("Invalid choices", -200005, paramIAnSocialCallback);
          return null;
        }
        localObject = (Map)paramString.getValue();
        paramString = new JSONObject();
        localObject = ((Map)localObject).entrySet().iterator();
        while (((Iterator)localObject).hasNext())
        {
          localEntry = (Map.Entry)((Iterator)localObject).next();
          paramString.put((String)localEntry.getKey(), localEntry.getValue());
        }
        paramAnSocialMethod.put("choices", paramString);
      }
      else if ("resolutions".equals(paramString.getKey()))
      {
        if (!(paramString.getValue() instanceof Map))
        {
          a("Invalid resolutions", -200005, paramIAnSocialCallback);
          return null;
        }
        localObject = (Map)paramString.getValue();
        paramString = new JSONObject();
        localObject = ((Map)localObject).entrySet().iterator();
        while (((Iterator)localObject).hasNext())
        {
          localEntry = (Map.Entry)((Iterator)localObject).next();
          paramString.put((String)localEntry.getKey(), localEntry.getValue());
        }
        paramAnSocialMethod.put("resolutions", paramString);
      }
      else
      {
        paramAnSocialMethod.put((String)paramString.getKey(), paramString.getValue());
      }
    }
    return paramAnSocialMethod;
  }
  
  public static void a(String paramString, int paramInt, IAnSocialCallback paramIAnSocialCallback)
  {
    JSONObject localJSONObject1 = new JSONObject();
    JSONObject localJSONObject2 = new JSONObject();
    try
    {
      localJSONObject2.put("status", "fail");
      localJSONObject2.put("message", paramString);
      localJSONObject2.put("errorCode", paramInt);
      localJSONObject2.put("code", -1);
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
      if (paramIAnSocialCallback != null) {
        new Thread(new ci(paramIAnSocialCallback, localJSONObject1)).run();
      }
    }
  }
  
  public final void a(int paramInt)
  {
    jdField_a_of_type_Bn.a(paramInt);
  }
}
