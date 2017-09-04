package com.sdu.didi.openapi.location;

import android.text.TextUtils;

public class Location
{
  private String lat = "";
  private String lng = "";
  private String mapType = "";
  
  public Location() {}
  
  public String getLat()
  {
    return lat;
  }
  
  public String getLng()
  {
    return lng;
  }
  
  public String getMapType()
  {
    return mapType;
  }
  
  public boolean isAvail()
  {
    return (!TextUtils.isEmpty(lat)) && (!TextUtils.isEmpty(lng)) && (!TextUtils.isEmpty(mapType));
  }
  
  public void reset()
  {
    lat = "";
    lng = "";
    mapType = "";
  }
  
  public void setLat(String paramString)
  {
    lat = paramString;
  }
  
  public void setLng(String paramString)
  {
    lng = paramString;
  }
  
  public void setMapType(String paramString)
  {
    mapType = paramString;
  }
  
  public String toString()
  {
    return "Location{lat='" + lat + '\'' + ", lng='" + lng + '\'' + ", mapType='" + mapType + '\'' + '}';
  }
}
