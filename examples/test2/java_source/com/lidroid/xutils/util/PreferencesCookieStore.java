package com.lidroid.xutils.util;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.text.TextUtils;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import org.apache.http.client.CookieStore;
import org.apache.http.cookie.Cookie;
import org.apache.http.impl.cookie.BasicClientCookie;

public class PreferencesCookieStore
  implements CookieStore
{
  private static final String COOKIE_NAME_PREFIX = "cookie_";
  private static final String COOKIE_NAME_STORE = "names";
  private static final String COOKIE_PREFS = "CookiePrefsFile";
  private final SharedPreferences cookiePrefs;
  private final ConcurrentHashMap<String, Cookie> cookies;
  
  public PreferencesCookieStore(Context paramContext)
  {
    cookiePrefs = paramContext.getSharedPreferences("CookiePrefsFile", 0);
    cookies = new ConcurrentHashMap();
    paramContext = cookiePrefs.getString("names", null);
    int j;
    if (paramContext != null)
    {
      paramContext = TextUtils.split(paramContext, ",");
      j = paramContext.length;
    }
    for (;;)
    {
      if (i >= j)
      {
        clearExpired(new Date());
        return;
      }
      String str = paramContext[i];
      Object localObject = cookiePrefs.getString("cookie_" + str, null);
      if (localObject != null)
      {
        localObject = decodeCookie((String)localObject);
        if (localObject != null) {
          cookies.put(str, localObject);
        }
      }
      i += 1;
    }
  }
  
  public void addCookie(Cookie paramCookie)
  {
    String str = paramCookie.getName();
    if (!paramCookie.isExpired(new Date())) {
      cookies.put(str, paramCookie);
    }
    for (;;)
    {
      SharedPreferences.Editor localEditor = cookiePrefs.edit();
      localEditor.putString("names", TextUtils.join(",", cookies.keySet()));
      localEditor.putString("cookie_" + str, encodeCookie(new SerializableCookie(paramCookie)));
      localEditor.commit();
      return;
      cookies.remove(str);
    }
  }
  
  protected String byteArrayToHexString(byte[] paramArrayOfByte)
  {
    StringBuffer localStringBuffer = new StringBuffer(paramArrayOfByte.length * 2);
    int j = paramArrayOfByte.length;
    int i = 0;
    for (;;)
    {
      if (i >= j) {
        return localStringBuffer.toString().toUpperCase();
      }
      int k = paramArrayOfByte[i] & 0xFF;
      if (k < 16) {
        localStringBuffer.append('0');
      }
      localStringBuffer.append(Integer.toHexString(k));
      i += 1;
    }
  }
  
  public void clear()
  {
    SharedPreferences.Editor localEditor = cookiePrefs.edit();
    Iterator localIterator = cookies.keySet().iterator();
    for (;;)
    {
      if (!localIterator.hasNext())
      {
        localEditor.remove("names");
        localEditor.commit();
        cookies.clear();
        return;
      }
      String str = (String)localIterator.next();
      localEditor.remove("cookie_" + str);
    }
  }
  
  public boolean clearExpired(Date paramDate)
  {
    boolean bool = false;
    SharedPreferences.Editor localEditor = cookiePrefs.edit();
    Iterator localIterator = cookies.entrySet().iterator();
    for (;;)
    {
      if (!localIterator.hasNext())
      {
        if (bool) {
          localEditor.putString("names", TextUtils.join(",", cookies.keySet()));
        }
        localEditor.commit();
        return bool;
      }
      Object localObject = (Map.Entry)localIterator.next();
      String str = (String)((Map.Entry)localObject).getKey();
      localObject = (Cookie)((Map.Entry)localObject).getValue();
      if ((((Cookie)localObject).getExpiryDate() == null) || (((Cookie)localObject).isExpired(paramDate)))
      {
        cookies.remove(str);
        localEditor.remove("cookie_" + str);
        bool = true;
      }
    }
  }
  
  protected Cookie decodeCookie(String paramString)
  {
    paramString = new ByteArrayInputStream(hexStringToByteArray(paramString));
    try
    {
      paramString = ((SerializableCookie)new ObjectInputStream(paramString).readObject()).getCookie();
      return paramString;
    }
    catch (Throwable paramString)
    {
      LogUtils.e(paramString.getMessage(), paramString);
    }
    return null;
  }
  
  protected String encodeCookie(SerializableCookie paramSerializableCookie)
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    try
    {
      new ObjectOutputStream(localByteArrayOutputStream).writeObject(paramSerializableCookie);
      return byteArrayToHexString(localByteArrayOutputStream.toByteArray());
    }
    catch (Throwable paramSerializableCookie) {}
    return null;
  }
  
  public Cookie getCookie(String paramString)
  {
    return (Cookie)cookies.get(paramString);
  }
  
  public List<Cookie> getCookies()
  {
    return new ArrayList(cookies.values());
  }
  
  protected byte[] hexStringToByteArray(String paramString)
  {
    int j = paramString.length();
    byte[] arrayOfByte = new byte[j / 2];
    int i = 0;
    for (;;)
    {
      if (i >= j) {
        return arrayOfByte;
      }
      arrayOfByte[(i / 2)] = ((byte)((Character.digit(paramString.charAt(i), 16) << 4) + Character.digit(paramString.charAt(i + 1), 16)));
      i += 2;
    }
  }
  
  public class SerializableCookie
    implements Serializable
  {
    private static final long serialVersionUID = 6374381828722046732L;
    private transient BasicClientCookie clientCookie;
    private final transient Cookie cookie;
    
    public SerializableCookie(Cookie paramCookie)
    {
      cookie = paramCookie;
    }
    
    private void readObject(ObjectInputStream paramObjectInputStream)
      throws IOException, ClassNotFoundException
    {
      clientCookie = new BasicClientCookie((String)paramObjectInputStream.readObject(), (String)paramObjectInputStream.readObject());
      clientCookie.setComment((String)paramObjectInputStream.readObject());
      clientCookie.setDomain((String)paramObjectInputStream.readObject());
      clientCookie.setExpiryDate((Date)paramObjectInputStream.readObject());
      clientCookie.setPath((String)paramObjectInputStream.readObject());
      clientCookie.setVersion(paramObjectInputStream.readInt());
      clientCookie.setSecure(paramObjectInputStream.readBoolean());
    }
    
    private void writeObject(ObjectOutputStream paramObjectOutputStream)
      throws IOException
    {
      paramObjectOutputStream.writeObject(cookie.getName());
      paramObjectOutputStream.writeObject(cookie.getValue());
      paramObjectOutputStream.writeObject(cookie.getComment());
      paramObjectOutputStream.writeObject(cookie.getDomain());
      paramObjectOutputStream.writeObject(cookie.getExpiryDate());
      paramObjectOutputStream.writeObject(cookie.getPath());
      paramObjectOutputStream.writeInt(cookie.getVersion());
      paramObjectOutputStream.writeBoolean(cookie.isSecure());
    }
    
    public Cookie getCookie()
    {
      Object localObject = cookie;
      if (clientCookie != null) {
        localObject = clientCookie;
      }
      return localObject;
    }
  }
}
