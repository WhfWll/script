package cn.domob.android.a;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Message;
import cn.domob.android.offerwall.l;
import cn.domob.android.offerwall.m;
import java.io.File;
import java.util.Hashtable;

class b
  extends Handler
{
  b(a paramA) {}
  
  public void handleMessage(Message paramMessage)
  {
    super.handleMessage(paramMessage);
    if ((what - a.a(a) < 5) && (what != 100)) {}
    do
    {
      do
      {
        return;
        a.a(a, what);
        a.b(a, what);
        if (a.c())
        {
          a.d(a).setLatestEventInfo(a.d(), a.b(a) + "正在下载", "已下载" + what + "%", a.c(a));
          a.f(a).notify(a.e(a), a.d(a));
        }
      } while (a.g(a) != 100);
      a.e().a(a.class, a.b(a) + " download success");
      paramMessage = new File(a.h(a));
      if (a.h(a).endsWith(".temp"))
      {
        a.a(a, a.h(a).substring(0, a.h(a).length() - ".temp".length()));
        File localFile = new File(a.h(a));
        a.e().a(a.class, a.b(a) + "FileName change to " + localFile);
        paramMessage.renameTo(localFile);
      }
      a.a.remove(a.i(a));
      if (a.j(a) != null) {
        a.j(a).a(a.h(a));
      }
      a.b(a, 0);
    } while (!a.c());
    da).icon = 17301634;
    da).tickerText = (a.b(a) + "下载完毕");
    da).flags = 16;
    paramMessage = a.a(a.h(a));
    a.a(a, PendingIntent.getActivity(a.d(), a.e(a), paramMessage, 134217728));
    a.d(a).setLatestEventInfo(a.d(), a.b(a) + "下载完毕", "", a.c(a));
    a.f(a).notify(a.e(a), a.d(a));
    if ((a.k(a) != null) && (!a.k(a).equalsIgnoreCase(l.c(a.h(a)))))
    {
      a.j(a).b(a.i(a));
      a.e().b(a.d(), "md5 authorized failed");
      a.f(a).cancel(a.e(a));
      return;
    }
    paramMessage = a.a(a.h(a));
    paramMessage.addFlags(268435456);
    a.d().startActivity(paramMessage);
  }
}
