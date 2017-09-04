package cn.dm.download.util;

import android.app.Notification;
import android.app.NotificationManager;
import android.content.Context;

public final class a
{
  private static a aw;
  private static int ax = 0;
  private Context mContext;
  private NotificationManager mNotificationManager;
  
  private a(Context paramContext)
  {
    mContext = paramContext;
    mNotificationManager = ((NotificationManager)paramContext.getSystemService("notification"));
  }
  
  private void a(int paramInt)
  {
    if (mNotificationManager == null) {
      mNotificationManager = ((NotificationManager)mContext.getSystemService("notification"));
    }
    ax += 1;
    Notificationax"个应用正在下载"currentTimeMillisflags = 16;
  }
  
  private static a c(Context paramContext)
  {
    if (aw == null) {
      aw = new a(paramContext);
    }
    return aw;
  }
}
