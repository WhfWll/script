package cn.domob.android.j;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import cn.domob.android.i.f;
import cn.domob.android.i.h;

public class c
  extends BroadcastReceiver
{
  private static f a = new f(c.class.getSimpleName());
  private Context b;
  private IntentFilter c;
  private a d;
  
  public c(Context paramContext, a paramA)
  {
    b = paramContext.getApplicationContext();
    c = new IntentFilter();
    c.addAction("android.intent.action.SCREEN_ON");
    c.addAction("android.intent.action.SCREEN_OFF");
    d = paramA;
  }
  
  public void a()
  {
    if (b != null) {
      b.registerReceiver(this, c);
    }
  }
  
  public void a(a paramA)
  {
    d = paramA;
  }
  
  public void b()
  {
    if (b != null) {
      b.unregisterReceiver(this);
    }
  }
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    paramContext = paramIntent.getAction();
    if ((d != null) && (!h.e(paramContext)))
    {
      if (!paramContext.equals("android.intent.action.SCREEN_OFF")) {
        break label46;
      }
      a.b("screen off");
      d.b();
    }
    label46:
    while (!paramContext.equals("android.intent.action.SCREEN_ON")) {
      return;
    }
    a.b("screen on");
    d.a();
  }
  
  public static abstract interface a
  {
    public abstract void a();
    
    public abstract void b();
  }
}
