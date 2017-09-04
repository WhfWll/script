package com.bangcle.andjni;

import android.app.Application;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.os.Build;
import android.os.Build.VERSION;
import android.util.Log;
import com.secneo.apkwrapper.Helper;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Method;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;

public class JniLib
  extends Application
{
  private static final String LIB_DIR = "lib";
  private static final String TAG = "LibraryLoaderHelper";
  private static boolean sLibrariesWereUnpacked;
  
  static
  {
    boolean bool;
    if (!JniLib.class.desiredAssertionStatus()) {
      bool = true;
    }
    for (;;)
    {
      $assertionsDisabled = bool;
      try
      {
        System.loadLibrary("DexHelper");
        if (Helper.PPATH != null) {
          System.load(Helper.PPATH);
        }
        sLibrariesWereUnpacked = false;
        return;
        bool = false;
      }
      catch (UnsatisfiedLinkError localUnsatisfiedLinkError)
      {
        for (;;)
        {
          try
          {
            tryLoadLibraryUsingWorkaround(getApplicationUsingReflection().getApplicationContext(), "DexHelper");
          }
          catch (Exception localException)
          {
            localException.printStackTrace();
          }
        }
      }
    }
  }
  
  public JniLib() {}
  
  public static native void a(Class paramClass, int paramInt);
  
  public static void b() {}
  
  private static void deleteDirectorySync(File paramFile)
  {
    for (;;)
    {
      int i;
      try
      {
        File[] arrayOfFile = paramFile.listFiles();
        if (arrayOfFile != null)
        {
          int j = arrayOfFile.length;
          i = 0;
          if (i < j)
          {
            File localFile = arrayOfFile[i];
            if (localFile.delete()) {
              break label111;
            }
            Log.e("LibraryLoaderHelper", "Failed to remove " + localFile.getAbsolutePath());
            break label111;
          }
        }
        if (!paramFile.delete()) {
          Log.w("LibraryLoaderHelper", "Failed to remove " + paramFile.getAbsolutePath());
        }
        return;
      }
      catch (Exception paramFile)
      {
        Log.e("LibraryLoaderHelper", "Failed to remove old libs, ", paramFile);
        return;
      }
      label111:
      i += 1;
    }
  }
  
  public static Application getApplicationUsingReflection()
    throws Exception
  {
    return (Application)Class.forName("android.app.ActivityThread").getMethod("currentApplication", new Class[0]).invoke(null, (Object[])null);
  }
  
  private static String getJniNameInApk(String paramString)
  {
    return "lib/" + Build.CPU_ABI + "/" + System.mapLibraryName(paramString);
  }
  
  private static String[] getSupportAbis()
  {
    if ((Build.VERSION.SDK_INT >= 21) && (Build.SUPPORTED_ABIS.length > 0)) {
      return Build.SUPPORTED_ABIS;
    }
    if ((Build.CPU_ABI.equals("armeabi")) || (Build.CPU_ABI.equals("armeabi-v7a"))) {
      return new String[] { "armeabi", "armeabi-v7a" };
    }
    return new String[] { Build.CPU_ABI };
  }
  
  public static File getWorkaroundLibDir(Context paramContext)
  {
    return paramContext.getDir("lib", 0);
  }
  
  private static File getWorkaroundLibFile(Context paramContext, String paramString)
  {
    paramString = System.mapLibraryName(paramString);
    return new File(getWorkaroundLibDir(paramContext), paramString);
  }
  
  private static ZipEntry getZipEntry(ZipFile paramZipFile, String paramString)
  {
    String[] arrayOfString = getSupportAbis();
    int j = arrayOfString.length;
    int i = 0;
    while (i < j)
    {
      Object localObject = arrayOfString[i];
      localObject = paramZipFile.getEntry("lib" + File.separatorChar + (String)localObject + File.separatorChar + System.mapLibraryName(paramString));
      if (localObject != null) {
        return localObject;
      }
      i += 1;
    }
    return null;
  }
  
  static boolean tryLoadLibraryUsingWorkaround(Context paramContext, String paramString)
  {
    assert (paramContext != null);
    File localFile = getWorkaroundLibFile(paramContext, paramString);
    if ((!localFile.exists()) && (!unpackLibrariesOnce(paramContext, paramString))) {
      return false;
    }
    try
    {
      System.load(localFile.getAbsolutePath());
      return true;
    }
    catch (UnsatisfiedLinkError paramContext) {}
    return false;
  }
  
  private static boolean unpackLibrariesOnce(Context paramContext, String paramString)
  {
    if (sLibrariesWereUnpacked) {
      return false;
    }
    sLibrariesWereUnpacked = true;
    File localFile1 = getWorkaroundLibDir(paramContext);
    deleteDirectorySync(localFile1);
    ZipFile localZipFile;
    Object localObject3;
    File localFile2;
    try
    {
      localApplicationInfo = paramContext.getApplicationInfo();
      localZipFile = new ZipFile(new File(sourceDir), 1);
      localObject3 = getZipEntry(localZipFile, paramString);
      if (localObject3 == null)
      {
        Log.e("LibraryLoaderHelper", sourceDir + " doesn't have file " + ((ZipEntry)localObject3).getName());
        localZipFile.close();
        deleteDirectorySync(localFile1);
        return false;
      }
      localFile2 = getWorkaroundLibFile(paramContext, paramString);
      Log.i("LibraryLoaderHelper", "Extracting native libraries into " + localFile2.getAbsolutePath());
      if ((!$assertionsDisabled) && (localFile2.exists())) {
        throw new AssertionError();
      }
    }
    catch (IOException paramContext)
    {
      Log.e("LibraryLoaderHelper", "Failed to unpack native libraries", paramContext);
      deleteDirectorySync(localFile1);
      return false;
    }
    try
    {
      if (!localFile2.createNewFile()) {
        throw new IOException();
      }
    }
    catch (IOException paramContext)
    {
      if ((localFile2.exists()) && (!localFile2.delete())) {
        Log.e("LibraryLoaderHelper", "Failed to delete " + localFile2.getAbsolutePath());
      }
      localZipFile.close();
      throw paramContext;
    }
    paramContext = null;
    ApplicationInfo localApplicationInfo = null;
    for (;;)
    {
      try
      {
        paramString = localZipFile.getInputStream((ZipEntry)localObject3);
        paramContext = paramString;
        localObject3 = new FileOutputStream(localFile2);
        try
        {
          paramContext = new byte['䀀'];
          int i = paramString.read(paramContext);
          if (i > 0)
          {
            ((FileOutputStream)localObject3).write(paramContext, 0, i);
            continue;
            if (paramString == null) {}
          }
        }
        finally
        {
          paramContext = (Context)localObject3;
        }
      }
      finally
      {
        paramString = paramContext;
        paramContext = localObject1;
        Object localObject2 = localObject4;
        continue;
      }
      try
      {
        paramString.close();
        if (paramContext != null) {
          paramContext.close();
        }
        throw localObject1;
      }
      finally
      {
        if (paramContext == null) {
          continue;
        }
        paramContext.close();
      }
    }
    if (paramString != null) {}
    try
    {
      paramString.close();
      if (localObject3 != null) {
        ((FileOutputStream)localObject3).close();
      }
      localFile2.setReadable(true, false);
      localFile2.setExecutable(true, false);
      localFile2.setWritable(true);
      localZipFile.close();
      return true;
    }
    finally
    {
      if (localObject3 != null) {
        ((FileOutputStream)localObject3).close();
      }
    }
  }
}
