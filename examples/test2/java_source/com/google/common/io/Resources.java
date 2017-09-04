package com.google.common.io;

import com.bangcle.andjni.JniLib;
import com.google.common.annotations.Beta;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.URL;
import java.nio.charset.Charset;
import java.util.List;

@Beta
public final class Resources
{
  static
  {
    JniLib.a(Resources.class, 903);
  }
  
  private Resources() {}
  
  public static native void copy(URL paramURL, OutputStream paramOutputStream)
    throws IOException;
  
  public static native URL getResource(Class<?> paramClass, String paramString);
  
  public static native URL getResource(String paramString);
  
  public static native InputSupplier<InputStream> newInputStreamSupplier(URL paramURL);
  
  public static native InputSupplier<InputStreamReader> newReaderSupplier(URL paramURL, Charset paramCharset);
  
  public static native <T> T readLines(URL paramURL, Charset paramCharset, LineProcessor<T> paramLineProcessor)
    throws IOException;
  
  public static native List<String> readLines(URL paramURL, Charset paramCharset)
    throws IOException;
  
  public static native byte[] toByteArray(URL paramURL)
    throws IOException;
  
  public static native String toString(URL paramURL, Charset paramCharset)
    throws IOException;
}
