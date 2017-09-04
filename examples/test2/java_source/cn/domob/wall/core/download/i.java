package cn.domob.wall.core.download;

import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.BitmapFactory;
import android.os.Environment;
import android.os.StatFs;
import android.util.Log;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Arrays;
import java.util.Comparator;

public class i
{
  private static final String a = "DrwCach";
  private static final String b = ".cach";
  private static final int c = 1048576;
  private static final int d = 10;
  private static final int e = 10;
  
  public i()
  {
    c(b());
  }
  
  private int a()
  {
    StatFs localStatFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
    double d1 = localStatFs.getAvailableBlocks();
    return (int)(localStatFs.getBlockSize() * d1 / 1048576.0D);
  }
  
  private String b()
  {
    return c() + "/" + "DrwCach";
  }
  
  private String c()
  {
    File localFile = null;
    if (Environment.getExternalStorageState().equals("mounted")) {
      localFile = Environment.getExternalStorageDirectory();
    }
    if (localFile != null) {
      return localFile.toString();
    }
    return "";
  }
  
  private boolean c(String paramString)
  {
    boolean bool2 = false;
    paramString = new File(paramString).listFiles();
    boolean bool1;
    if (paramString == null) {
      bool1 = true;
    }
    do
    {
      do
      {
        return bool1;
        bool1 = bool2;
      } while (!Environment.getExternalStorageState().equals("mounted"));
      int i = 0;
      int k;
      for (int j = 0; i < paramString.length; j = k)
      {
        k = j;
        if (paramString[i].getName().contains(".cach")) {
          k = (int)(j + paramString[i].length());
        }
        i += 1;
      }
      if ((j > 10485760) || (10 > a()))
      {
        j = (int)(0.4D * paramString.length + 1.0D);
        Arrays.sort(paramString, new a(null));
        i = 0;
        while (i < j)
        {
          if (paramString[i].getName().contains(".cach")) {
            paramString[i].delete();
          }
          i += 1;
        }
      }
      bool1 = bool2;
    } while (a() <= 10);
    return true;
  }
  
  private String d(String paramString)
  {
    paramString = paramString.split("/");
    return paramString[(paramString.length - 1)] + ".cach";
  }
  
  public Bitmap a(String paramString)
  {
    paramString = b() + "/" + d(paramString);
    File localFile = new File(paramString);
    Bitmap localBitmap;
    if (localFile.exists())
    {
      localBitmap = BitmapFactory.decodeFile(paramString);
      if (localBitmap == null) {
        localFile.delete();
      }
    }
    else
    {
      return null;
    }
    b(paramString);
    return localBitmap;
  }
  
  public void a(Bitmap paramBitmap, String paramString)
  {
    if (paramBitmap == null) {}
    while (10 > a()) {
      return;
    }
    paramString = d(paramString);
    String str = b();
    File localFile = new File(str);
    if (!localFile.exists()) {
      localFile.mkdirs();
    }
    paramString = new File(str + "/" + paramString);
    try
    {
      paramString.createNewFile();
      paramString = new FileOutputStream(paramString);
      paramBitmap.compress(Bitmap.CompressFormat.PNG, 100, paramString);
      paramString.flush();
      paramString.close();
      return;
    }
    catch (FileNotFoundException paramBitmap)
    {
      Log.w("ImageFileCache", "FileNotFoundException");
      return;
    }
    catch (IOException paramBitmap)
    {
      Log.w("ImageFileCache", "IOException");
    }
  }
  
  public void b(String paramString)
  {
    new File(paramString).setLastModified(System.currentTimeMillis());
  }
  
  private class a
    implements Comparator<File>
  {
    private a() {}
    
    public int a(File paramFile1, File paramFile2)
    {
      if (paramFile1.lastModified() > paramFile2.lastModified()) {
        return 1;
      }
      if (paramFile1.lastModified() == paramFile2.lastModified()) {
        return 0;
      }
      return -1;
    }
  }
}
