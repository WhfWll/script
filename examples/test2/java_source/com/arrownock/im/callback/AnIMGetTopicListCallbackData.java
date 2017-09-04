package com.arrownock.im.callback;

import com.arrownock.exception.ArrownockException;
import com.bangcle.andjni.JniLib;
import java.util.List;
import org.json.JSONObject;

public class AnIMGetTopicListCallbackData
  extends AnIMBaseRequestCallbackData
{
  String clientId = null;
  List<JSONObject> topicList = null;
  
  static
  {
    JniLib.a(AnIMGetTopicListCallbackData.class, 202);
  }
  
  public AnIMGetTopicListCallbackData(boolean paramBoolean, ArrownockException paramArrownockException, List<JSONObject> paramList, String paramString)
  {
    super(paramBoolean, paramArrownockException);
    topicList = paramList;
    clientId = paramString;
  }
  
  public native String getClientId();
  
  public native List<JSONObject> getTopicList();
}
