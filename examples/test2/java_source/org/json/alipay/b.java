package org.json.alipay;

import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Collection;

public class b
{
  private ArrayList a;
  
  public b()
  {
    a = new ArrayList();
  }
  
  public b(Object paramObject)
  {
    this();
    if (paramObject.getClass().isArray())
    {
      int j = Array.getLength(paramObject);
      int i = 0;
      while (i < j)
      {
        Object localObject = Array.get(paramObject, i);
        a.add(localObject);
        i += 1;
      }
    }
    throw new a("JSONArray initial value should be a string or collection or array.");
  }
  
  public b(String paramString)
  {
    this(new d(paramString));
  }
  
  public b(Collection paramCollection)
  {
    if (paramCollection == null) {}
    for (paramCollection = new ArrayList();; paramCollection = new ArrayList(paramCollection))
    {
      a = paramCollection;
      return;
    }
  }
  
  public b(d paramD)
  {
    this();
    int i = paramD.c();
    char c;
    if (i == 91)
    {
      c = ']';
      if (paramD.c() != ']') {
        break label47;
      }
    }
    label47:
    do
    {
      return;
      if (i == 40)
      {
        c = ')';
        break;
      }
      throw paramD.a("A JSONArray text must start with '['");
      paramD.a();
      for (;;)
      {
        if (paramD.c() == ',')
        {
          paramD.a();
          a.add(null);
        }
        for (;;)
        {
          i = paramD.c();
          switch (i)
          {
          default: 
            throw paramD.a("Expected a ',' or ']'");
            paramD.a();
            a.add(paramD.d());
          }
        }
        if (paramD.c() == ']') {
          break;
        }
        paramD.a();
      }
    } while (c == i);
    throw paramD.a("Expected a '" + new Character(c) + "'");
  }
  
  private String a(String paramString)
  {
    int j = a.size();
    StringBuffer localStringBuffer = new StringBuffer();
    int i = 0;
    while (i < j)
    {
      if (i > 0) {
        localStringBuffer.append(paramString);
      }
      localStringBuffer.append(c.a(a.get(i)));
      i += 1;
    }
    return localStringBuffer.toString();
  }
  
  public final int a()
  {
    return a.size();
  }
  
  public final Object a(int paramInt)
  {
    if ((paramInt < 0) || (paramInt >= a.size())) {}
    for (Object localObject = null; localObject == null; localObject = a.get(paramInt)) {
      throw new a("JSONArray[" + paramInt + "] not found.");
    }
    return localObject;
  }
  
  public String toString()
  {
    try
    {
      String str = "[" + a(",") + ']';
      return str;
    }
    catch (Exception localException) {}
    return null;
  }
}
