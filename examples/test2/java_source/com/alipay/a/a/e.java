package com.alipay.a.a;

import com.bangcle.andjni.JniLib;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.List;

public final class e
{
  static List<i> a;
  
  static
  {
    JniLib.a(e.class, 27);
    ArrayList localArrayList = new ArrayList();
    a = localArrayList;
    localArrayList.add(new l());
    a.add(new d());
    a.add(new c());
    a.add(new h());
    a.add(new k());
    a.add(new b());
    a.add(new a());
    a.add(new g());
  }
  
  public static final native <T> T a(Object paramObject, Type paramType);
  
  public static final native Object a(String paramString, Type paramType);
}
