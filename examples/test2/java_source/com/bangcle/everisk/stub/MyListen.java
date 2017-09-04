package com.bangcle.everisk.stub;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.bangcle.everisk.shell.b;

class MyListen
  implements DialogInterface.OnClickListener
{
  private NewActivity S = null;
  
  MyListen() {}
  
  final MyListen a(NewActivity paramNewActivity)
  {
    S = paramNewActivity;
    return this;
  }
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    b.u();
    S.finish();
  }
}
