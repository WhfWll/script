package com.alipay.sdk.tid;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.bangcle.andjni.JniLib;
import java.lang.ref.WeakReference;
import java.util.List;

public final class a
  extends SQLiteOpenHelper
{
  private static final String a = "msp.db";
  private static final int b = 1;
  private WeakReference<Context> c;
  
  static
  {
    JniLib.a(a.class, 170);
  }
  
  public a(Context paramContext)
  {
    super(paramContext, "msp.db", null, 1);
    c = new WeakReference(paramContext);
  }
  
  private native List<String> a();
  
  private static native void a(SQLiteDatabase paramSQLiteDatabase);
  
  private static native void a(SQLiteDatabase paramSQLiteDatabase, String paramString);
  
  private native void a(SQLiteDatabase paramSQLiteDatabase, String paramString1, String paramString2, String paramString3, String paramString4);
  
  private static native boolean a(SQLiteDatabase paramSQLiteDatabase, String paramString1, String paramString2);
  
  private native void b(SQLiteDatabase paramSQLiteDatabase, String paramString1, String paramString2, String paramString3, String paramString4);
  
  private native long d(String paramString1, String paramString2);
  
  private static native String e(String paramString1, String paramString2);
  
  public final native void a(String paramString1, String paramString2);
  
  public final native void a(String paramString1, String paramString2, String paramString3, String paramString4);
  
  public final native String b(String paramString1, String paramString2);
  
  public final native String c(String paramString1, String paramString2);
  
  public final native void onCreate(SQLiteDatabase paramSQLiteDatabase);
  
  public final native void onUpgrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2);
}
