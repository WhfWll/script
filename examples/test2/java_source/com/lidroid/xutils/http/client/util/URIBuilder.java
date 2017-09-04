package com.lidroid.xutils.http.client.util;

import android.text.TextUtils;
import com.lidroid.xutils.util.LogUtils;
import java.net.URI;
import java.net.URISyntaxException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.apache.http.NameValuePair;
import org.apache.http.conn.util.InetAddressUtils;
import org.apache.http.message.BasicNameValuePair;

public class URIBuilder
{
  private String encodedAuthority;
  private String encodedFragment;
  private String encodedPath;
  private String encodedQuery;
  private String encodedSchemeSpecificPart;
  private String encodedUserInfo;
  private String fragment;
  private String host;
  private String path;
  private int port;
  private List<NameValuePair> queryParams;
  private String scheme;
  private String userInfo;
  
  public URIBuilder()
  {
    port = -1;
  }
  
  public URIBuilder(String paramString)
  {
    try
    {
      digestURI(new URI(paramString));
      return;
    }
    catch (URISyntaxException paramString)
    {
      LogUtils.e(paramString.getMessage(), paramString);
    }
  }
  
  public URIBuilder(URI paramURI)
  {
    digestURI(paramURI);
  }
  
  private String buildString(Charset paramCharset)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    if (scheme != null) {
      localStringBuilder.append(scheme).append(':');
    }
    if (encodedSchemeSpecificPart != null)
    {
      localStringBuilder.append(encodedSchemeSpecificPart);
      if (encodedFragment == null) {
        break label320;
      }
      localStringBuilder.append("#").append(encodedFragment);
    }
    for (;;)
    {
      return localStringBuilder.toString();
      if (encodedAuthority != null)
      {
        localStringBuilder.append("//").append(encodedAuthority);
        label92:
        if (encodedPath == null) {
          break label264;
        }
        localStringBuilder.append(normalizePath(encodedPath));
      }
      for (;;)
      {
        if (encodedQuery == null) {
          break label291;
        }
        localStringBuilder.append("?").append(encodedQuery);
        break;
        if (host == null) {
          break label92;
        }
        localStringBuilder.append("//");
        if (encodedUserInfo != null)
        {
          localStringBuilder.append(encodedUserInfo).append("@");
          label170:
          if (!InetAddressUtils.isIPv6Address(host)) {
            break label252;
          }
          localStringBuilder.append("[").append(host).append("]");
        }
        for (;;)
        {
          if (port < 0) {
            break label262;
          }
          localStringBuilder.append(":").append(port);
          break;
          if (userInfo == null) {
            break label170;
          }
          localStringBuilder.append(encodeUserInfo(userInfo, paramCharset)).append("@");
          break label170;
          label252:
          localStringBuilder.append(host);
        }
        label262:
        break label92;
        label264:
        if (path != null) {
          localStringBuilder.append(encodePath(normalizePath(path), paramCharset));
        }
      }
      label291:
      if (queryParams == null) {
        break;
      }
      localStringBuilder.append("?").append(encodeQuery(queryParams, paramCharset));
      break;
      label320:
      if (fragment != null) {
        localStringBuilder.append("#").append(encodeFragment(fragment, paramCharset));
      }
    }
  }
  
  private void digestURI(URI paramURI)
  {
    scheme = paramURI.getScheme();
    encodedSchemeSpecificPart = paramURI.getRawSchemeSpecificPart();
    encodedAuthority = paramURI.getRawAuthority();
    host = paramURI.getHost();
    port = paramURI.getPort();
    encodedUserInfo = paramURI.getRawUserInfo();
    userInfo = paramURI.getUserInfo();
    encodedPath = paramURI.getRawPath();
    path = paramURI.getPath();
    encodedQuery = paramURI.getRawQuery();
    queryParams = parseQuery(paramURI.getRawQuery());
    encodedFragment = paramURI.getRawFragment();
    fragment = paramURI.getFragment();
  }
  
  private String encodeFragment(String paramString, Charset paramCharset)
  {
    return URLEncodedUtils.encFragment(paramString, paramCharset);
  }
  
  private String encodePath(String paramString, Charset paramCharset)
  {
    return URLEncodedUtils.encPath(paramString, paramCharset).replace("+", "20%");
  }
  
  private String encodeQuery(List<NameValuePair> paramList, Charset paramCharset)
  {
    return URLEncodedUtils.format(paramList, paramCharset);
  }
  
  private String encodeUserInfo(String paramString, Charset paramCharset)
  {
    return URLEncodedUtils.encUserInfo(paramString, paramCharset);
  }
  
  private static String normalizePath(String paramString)
  {
    String str;
    if (paramString == null)
    {
      str = null;
      return str;
    }
    int i = 0;
    for (;;)
    {
      if (i >= paramString.length()) {}
      while (paramString.charAt(i) != '/')
      {
        str = paramString;
        if (i <= 1) {
          break;
        }
        return paramString.substring(i - 1);
      }
      i += 1;
    }
  }
  
  private List<NameValuePair> parseQuery(String paramString)
  {
    if (!TextUtils.isEmpty(paramString)) {
      return URLEncodedUtils.parse(paramString);
    }
    return null;
  }
  
  public URIBuilder addParameter(String paramString1, String paramString2)
  {
    if (queryParams == null) {
      queryParams = new ArrayList();
    }
    queryParams.add(new BasicNameValuePair(paramString1, paramString2));
    encodedQuery = null;
    encodedSchemeSpecificPart = null;
    return this;
  }
  
  public URI build(Charset paramCharset)
    throws URISyntaxException
  {
    return new URI(buildString(paramCharset));
  }
  
  public String getFragment()
  {
    return fragment;
  }
  
  public String getHost()
  {
    return host;
  }
  
  public String getPath()
  {
    return path;
  }
  
  public int getPort()
  {
    return port;
  }
  
  public List<NameValuePair> getQueryParams()
  {
    if (queryParams != null) {
      return new ArrayList(queryParams);
    }
    return new ArrayList();
  }
  
  public String getScheme()
  {
    return scheme;
  }
  
  public String getUserInfo()
  {
    return userInfo;
  }
  
  public URIBuilder setFragment(String paramString)
  {
    fragment = paramString;
    encodedFragment = null;
    return this;
  }
  
  public URIBuilder setHost(String paramString)
  {
    host = paramString;
    encodedSchemeSpecificPart = null;
    encodedAuthority = null;
    return this;
  }
  
  public URIBuilder setParameter(String paramString1, String paramString2)
  {
    if (queryParams == null) {
      queryParams = new ArrayList();
    }
    Iterator localIterator;
    if (!queryParams.isEmpty()) {
      localIterator = queryParams.iterator();
    }
    for (;;)
    {
      if (!localIterator.hasNext())
      {
        queryParams.add(new BasicNameValuePair(paramString1, paramString2));
        encodedQuery = null;
        encodedSchemeSpecificPart = null;
        return this;
      }
      if (((NameValuePair)localIterator.next()).getName().equals(paramString1)) {
        localIterator.remove();
      }
    }
  }
  
  public URIBuilder setPath(String paramString)
  {
    path = paramString;
    encodedSchemeSpecificPart = null;
    encodedPath = null;
    return this;
  }
  
  public URIBuilder setPort(int paramInt)
  {
    int i = paramInt;
    if (paramInt < 0) {
      i = -1;
    }
    port = i;
    encodedSchemeSpecificPart = null;
    encodedAuthority = null;
    return this;
  }
  
  public URIBuilder setQuery(String paramString)
  {
    queryParams = parseQuery(paramString);
    encodedQuery = null;
    encodedSchemeSpecificPart = null;
    return this;
  }
  
  public URIBuilder setScheme(String paramString)
  {
    scheme = paramString;
    return this;
  }
  
  public URIBuilder setUserInfo(String paramString)
  {
    userInfo = paramString;
    encodedSchemeSpecificPart = null;
    encodedAuthority = null;
    encodedUserInfo = null;
    return this;
  }
  
  public URIBuilder setUserInfo(String paramString1, String paramString2)
  {
    return setUserInfo(paramString1 + ':' + paramString2);
  }
}
