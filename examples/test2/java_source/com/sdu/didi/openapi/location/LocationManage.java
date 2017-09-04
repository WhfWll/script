package com.sdu.didi.openapi.location;

import android.content.Context;
import android.os.Looper;
import com.sdu.didi.openapi.DIOpenSDK;
import com.sdu.didi.openapi.DIOpenSDK.MapLocationType;

public class LocationManage
{
  private SdkHub sdkHub;
  
  public LocationManage() {}
  
  private void findRealType()
  {
    if (findSdk("com.amap.api.location.AMapLocationClient")) {
      DIOpenSDK.setMapSdkType(DIOpenSDK.MapLocationType.GAODE);
    }
    if (findSdk("com.baidu.location.LocationClient")) {
      DIOpenSDK.setMapSdkType(DIOpenSDK.MapLocationType.BAIDU);
    }
    if (findSdk("com.tencent.map.geolocation.TencentLocationManager")) {
      DIOpenSDK.setMapSdkType(DIOpenSDK.MapLocationType.SOSO);
    }
  }
  
  private boolean findSdk(String paramString)
  {
    try
    {
      Class.forName(paramString);
      return true;
    }
    catch (ClassNotFoundException paramString) {}
    return false;
  }
  
  protected void init(Context paramContext)
  {
    if (DIOpenSDK.getMapSdkType() == DIOpenSDK.MapLocationType.SYSTEM) {
      findRealType();
    }
    switch (LocationManage.1.$SwitchMap$com$sdu$didi$openapi$DIOpenSDK$MapLocationType[DIOpenSDK.getMapSdkType().ordinal()])
    {
    default: 
      sdkHub = new SystemSDK(paramContext);
      return;
    case 1: 
      sdkHub = new GaodeSdk(paramContext);
      return;
    case 2: 
      sdkHub = new BaiduSdk(paramContext);
      return;
    }
    sdkHub = new SosoSdk(paramContext);
  }
  
  protected void registListener(Looper paramLooper, LocationHelper.LocationListener paramLocationListener)
  {
    sdkHub.registListener(paramLooper, paramLocationListener);
  }
  
  protected void unRegistListener()
  {
    sdkHub.unRegistListener();
  }
}
