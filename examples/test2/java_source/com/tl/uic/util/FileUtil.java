package com.tl.uic.util;

import com.bangcle.andjni.JniLib;
import com.tl.uic.model.TLFCacheFile;
import java.io.File;
import java.util.Comparator;
import java.util.List;

public final class FileUtil
{
  private static volatile FileUtil _myInstance;
  
  static
  {
    JniLib.a(FileUtil.class, 1056);
  }
  
  private FileUtil() {}
  
  public static native Boolean deleteFile(String paramString1, String paramString2);
  
  public static native FileUtil getInstance();
  
  public static native Object getObject(File paramFile);
  
  public static native List<TLFCacheFile> getObjects(String paramString);
  
  public static native Boolean saveObject(Object paramObject, String paramString1, String paramString2);
}
