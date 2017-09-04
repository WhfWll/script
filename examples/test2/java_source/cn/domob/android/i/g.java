package cn.domob.android.i;

import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.graphics.Paint;
import android.view.View;
import android.view.ViewGroup;
import java.lang.reflect.Method;

public class g
{
  private static f a = new f(g.class.getSimpleName());
  
  public g() {}
  
  public static int a(Context paramContext, int paramInt)
  {
    return (int)(c.p(paramContext) * paramInt);
  }
  
  public static void a(Context paramContext, String paramString1, String paramString2)
  {
    new AlertDialog.Builder(paramContext).setTitle(paramString1).setMessage(paramString2).setNegativeButton("确定", new DialogInterface.OnClickListener()
    {
      public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        ((Activity)a).finish();
      }
    }).show();
  }
  
  public static void a(View paramView)
  {
    if ((paramView != null) && (c.a(11, true))) {}
    try
    {
      paramView.getClass().getMethod("setLayerType", new Class[] { Integer.TYPE, Paint.class }).invoke(paramView, new Object[] { Integer.valueOf(1), null });
      return;
    }
    catch (Exception paramView)
    {
      a.a(paramView);
    }
  }
  
  public static boolean a(Context paramContext, ViewGroup paramViewGroup)
  {
    return (paramViewGroup != null) && (paramViewGroup.isShown()) && (paramViewGroup.hasWindowFocus()) && (paramViewGroup.getWindowVisibility() == 0) && (c.D(paramContext));
  }
  
  public static int b(Context paramContext, int paramInt)
  {
    return (int)(Double.parseDouble(String.valueOf(paramInt)) / c.p(paramContext));
  }
}
