package com.tencent.wxop.stat;

import android.app.ListActivity;

public class EasyListActivity
  extends ListActivity
{
  public EasyListActivity() {}
  
  protected void onPause()
  {
    super.onPause();
    StatService.onPause(this);
  }
  
  protected void onResume()
  {
    super.onResume();
    StatService.onResume(this);
  }
}
