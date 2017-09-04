package org.apache.cordova;

import android.os.Bundle;

public class StandAlone
  extends DroidGap
{
  public StandAlone() {}
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    super.loadUrl("file:///android_asset/www/index.html");
  }
}
