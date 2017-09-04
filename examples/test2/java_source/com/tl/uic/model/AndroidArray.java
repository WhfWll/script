package com.tl.uic.model;

import com.bangcle.andjni.JniLib;
import java.io.Serializable;
import org.json.JSONObject;

public class AndroidArray
  implements JsonBase, Serializable
{
  private static final long serialVersionUID = 5789545949290791966L;
  private String brand;
  private String fingerPrint;
  private KeyboardType keyboardType;
  
  static
  {
    JniLib.a(AndroidArray.class, 1033);
  }
  
  public AndroidArray() {}
  
  public final native Boolean clean();
  
  public final native String getBrand();
  
  public final native String getFingerPrint();
  
  public final native JSONObject getJSON();
  
  public final native KeyboardType getKeyboardType();
  
  public final native void setBrand(String paramString);
  
  public final native void setFingerPrint(String paramString);
  
  public final native void setKeyboardType(KeyboardType paramKeyboardType);
}
