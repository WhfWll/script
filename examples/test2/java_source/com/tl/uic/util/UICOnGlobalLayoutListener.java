package com.tl.uic.util;

import android.view.View;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import com.bangcle.andjni.JniLib;
import com.tl.uic.app.UICActivity;

public class UICOnGlobalLayoutListener
  implements ViewTreeObserver.OnGlobalLayoutListener
{
  private final UICActivity uicActivity;
  private final View view;
  
  static
  {
    JniLib.a(UICOnGlobalLayoutListener.class, 1069);
  }
  
  public UICOnGlobalLayoutListener(UICActivity paramUICActivity, View paramView)
  {
    uicActivity = paramUICActivity;
    view = paramView;
  }
  
  public final native void onGlobalLayout();
  
  public final native void setListenersOnChildren(View paramView);
}
