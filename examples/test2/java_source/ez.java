import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import org.apache.http.HttpEntity;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.utils.URLEncodedUtils;
import org.apache.http.message.BasicNameValuePair;

public final class ez
{
  private static String jdField_a_of_type_JavaLangString = "UTF-8";
  private ConcurrentHashMap<String, String> jdField_a_of_type_JavaUtilConcurrentConcurrentHashMap;
  private ConcurrentHashMap<String, fa> b;
  private ConcurrentHashMap<String, ArrayList<String>> c;
  
  public ez()
  {
    a();
  }
  
  public ez(Map<String, String> paramMap)
  {
    a();
    paramMap = paramMap.entrySet().iterator();
    while (paramMap.hasNext())
    {
      Object localObject = (Map.Entry)paramMap.next();
      String str = (String)((Map.Entry)localObject).getKey();
      localObject = (String)((Map.Entry)localObject).getValue();
      if ((str != null) && (localObject != null)) {
        jdField_a_of_type_JavaUtilConcurrentConcurrentHashMap.put(str, localObject);
      }
    }
  }
  
  private List<BasicNameValuePair> a()
  {
    LinkedList localLinkedList = new LinkedList();
    Iterator localIterator1 = jdField_a_of_type_JavaUtilConcurrentConcurrentHashMap.entrySet().iterator();
    Map.Entry localEntry;
    while (localIterator1.hasNext())
    {
      localEntry = (Map.Entry)localIterator1.next();
      localLinkedList.add(new BasicNameValuePair((String)localEntry.getKey(), (String)localEntry.getValue()));
    }
    localIterator1 = c.entrySet().iterator();
    while (localIterator1.hasNext())
    {
      localEntry = (Map.Entry)localIterator1.next();
      Iterator localIterator2 = ((ArrayList)localEntry.getValue()).iterator();
      while (localIterator2.hasNext())
      {
        String str = (String)localIterator2.next();
        localLinkedList.add(new BasicNameValuePair((String)localEntry.getKey(), str));
      }
    }
    return localLinkedList;
  }
  
  private void a()
  {
    jdField_a_of_type_JavaUtilConcurrentConcurrentHashMap = new ConcurrentHashMap();
    b = new ConcurrentHashMap();
    c = new ConcurrentHashMap();
  }
  
  protected final String a()
  {
    return URLEncodedUtils.format(a(), jdField_a_of_type_JavaLangString);
  }
  
  public final HttpEntity a()
  {
    Object localObject1;
    if (!b.isEmpty())
    {
      fc localFc = new fc();
      localObject1 = jdField_a_of_type_JavaUtilConcurrentConcurrentHashMap.entrySet().iterator();
      while (((Iterator)localObject1).hasNext())
      {
        localObject2 = (Map.Entry)((Iterator)localObject1).next();
        localFc.a((String)((Map.Entry)localObject2).getKey(), (String)((Map.Entry)localObject2).getValue());
      }
      int j = b.entrySet().size();
      Object localObject2 = b.entrySet().iterator();
      int i = 0;
      Object localObject3;
      label163:
      String str;
      if (((Iterator)localObject2).hasNext())
      {
        localObject1 = (Map.Entry)((Iterator)localObject2).next();
        localObject3 = (fa)((Map.Entry)localObject1).getValue();
        boolean bool;
        if (jdField_a_of_type_JavaIoInputStream != null)
        {
          if (i != j - 1) {
            break label212;
          }
          bool = true;
          str = (String)((Map.Entry)localObject1).getKey();
          if (jdField_a_of_type_JavaLangString == null) {
            break label217;
          }
        }
        label212:
        label217:
        for (localObject1 = jdField_a_of_type_JavaLangString;; localObject1 = "nofilename")
        {
          localFc.a(str, (String)localObject1, jdField_a_of_type_JavaIoInputStream, bool);
          i += 1;
          break;
          bool = false;
          break label163;
        }
      }
      localObject1 = c.entrySet().iterator();
      while (((Iterator)localObject1).hasNext())
      {
        localObject2 = (Map.Entry)((Iterator)localObject1).next();
        localObject3 = ((ArrayList)((Map.Entry)localObject2).getValue()).iterator();
        while (((Iterator)localObject3).hasNext())
        {
          str = (String)((Iterator)localObject3).next();
          localFc.a((String)((Map.Entry)localObject2).getKey(), str);
        }
      }
      return localFc;
    }
    try
    {
      localObject1 = new UrlEncodedFormEntity(a(), jdField_a_of_type_JavaLangString);
      return localObject1;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      localUnsupportedEncodingException.printStackTrace();
    }
    return null;
  }
  
  public final void a(String paramString1, InputStream paramInputStream, String paramString2)
  {
    if ((paramString1 != null) && (paramInputStream != null)) {
      b.put(paramString1, new fa(paramInputStream, paramString2));
    }
  }
  
  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    Iterator localIterator1 = jdField_a_of_type_JavaUtilConcurrentConcurrentHashMap.entrySet().iterator();
    Map.Entry localEntry;
    while (localIterator1.hasNext())
    {
      localEntry = (Map.Entry)localIterator1.next();
      if (localStringBuilder.length() > 0) {
        localStringBuilder.append("&");
      }
      localStringBuilder.append((String)localEntry.getKey());
      localStringBuilder.append("=");
      localStringBuilder.append((String)localEntry.getValue());
    }
    localIterator1 = b.entrySet().iterator();
    while (localIterator1.hasNext())
    {
      localEntry = (Map.Entry)localIterator1.next();
      if (localStringBuilder.length() > 0) {
        localStringBuilder.append("&");
      }
      localStringBuilder.append((String)localEntry.getKey());
      localStringBuilder.append("=");
      localStringBuilder.append("FILE");
    }
    localIterator1 = c.entrySet().iterator();
    while (localIterator1.hasNext())
    {
      localEntry = (Map.Entry)localIterator1.next();
      if (localStringBuilder.length() > 0) {
        localStringBuilder.append("&");
      }
      ArrayList localArrayList = (ArrayList)localEntry.getValue();
      Iterator localIterator2 = localArrayList.iterator();
      while (localIterator2.hasNext())
      {
        String str = (String)localIterator2.next();
        if (localArrayList.indexOf(str) != 0) {
          localStringBuilder.append("&");
        }
        localStringBuilder.append((String)localEntry.getKey());
        localStringBuilder.append("=");
        localStringBuilder.append(str);
      }
    }
    return localStringBuilder.toString();
  }
}
