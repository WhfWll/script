package com.tl.uic.app;

import android.app.Activity;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.Window;
import com.tl.uic.Tealeaf;
import com.tl.uic.util.UICOnGlobalLayoutListener;
import java.util.Date;

public abstract class UICActivity
  extends Activity
{
  private int imageBackground = -16777216;
  private String logicalPageName = "";
  private long millisecondSnapshotDelay = 0L;
  private int numOnGlobalLayoutListener = 0;
  private Boolean takeSnapshotAfterCreate = Boolean.valueOf(false);
  private Boolean tookImage = Boolean.valueOf(false);
  private View view;
  
  public UICActivity() {}
  
  public final int getImageBackground()
  {
    return imageBackground;
  }
  
  public final String getLogicalPageName()
  {
    if ((logicalPageName == null) || (logicalPageName.equals(""))) {
      logicalPageName = (getClass().getName().substring(getClass().getName().lastIndexOf('.') + 1) + "_" + new Date().getTime());
    }
    return logicalPageName;
  }
  
  public final long getMillisecondSnapshotDelay()
  {
    return millisecondSnapshotDelay;
  }
  
  public final int getNumOnGlobalLayoutListener()
  {
    return numOnGlobalLayoutListener;
  }
  
  public final Boolean getTakeSnapshotAfterCreate()
  {
    return takeSnapshotAfterCreate;
  }
  
  public final Boolean getTookImage()
  {
    return tookImage;
  }
  
  public final View getView()
  {
    return view;
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    view = ((ViewGroup)getWindow().getDecorView()).getChildAt(0);
    view.setBackgroundColor(getImageBackground());
    view.getViewTreeObserver().addOnGlobalLayoutListener(new UICOnGlobalLayoutListener(this, view));
    numOnGlobalLayoutListener += 1;
  }
  
  protected void onDestroy()
  {
    Tealeaf.onDestroy(this, getLogicalPageName());
    super.onDestroy();
  }
  
  protected void onPause()
  {
    Tealeaf.onPause(this, getLogicalPageName());
    super.onPause();
  }
  
  protected void onResume()
  {
    Tealeaf.onResume(this, getLogicalPageName());
    super.onResume();
  }
  
  public final void setImageBackground(int paramInt)
  {
    imageBackground = paramInt;
  }
  
  public final void setLogicalPageName(String paramString)
  {
    logicalPageName = paramString;
  }
  
  public final void setMillisecondSnapshotDelay(long paramLong)
  {
    millisecondSnapshotDelay = paramLong;
  }
  
  public final void setNumOnGlobalLayoutListener(int paramInt)
  {
    numOnGlobalLayoutListener = paramInt;
  }
  
  public final void setTakeSnapshotAfterCreate(Boolean paramBoolean)
  {
    takeSnapshotAfterCreate = paramBoolean;
  }
  
  public final void setTookImage(Boolean paramBoolean)
  {
    tookImage = paramBoolean;
  }
  
  public final void setView(View paramView)
  {
    view = paramView;
  }
}
