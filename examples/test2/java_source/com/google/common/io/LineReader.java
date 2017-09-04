package com.google.common.io;

import com.bangcle.andjni.JniLib;
import com.google.common.annotations.Beta;
import com.google.common.base.Preconditions;
import java.io.IOException;
import java.io.Reader;
import java.nio.CharBuffer;
import java.util.LinkedList;
import java.util.Queue;

@Beta
public final class LineReader
{
  private final char[] buf = new char['က'];
  private final CharBuffer cbuf = CharBuffer.wrap(buf);
  private final LineBuffer lineBuf = new LineBuffer()
  {
    static
    {
      JniLib.a(1.class, 894);
    }
    
    protected native void handleLine(String paramAnonymousString1, String paramAnonymousString2);
  };
  private final Queue<String> lines = new LinkedList();
  private final Readable readable;
  private final Reader reader;
  
  static
  {
    JniLib.a(LineReader.class, 895);
  }
  
  public LineReader(Readable paramReadable)
  {
    Preconditions.checkNotNull(paramReadable);
    readable = paramReadable;
    if ((paramReadable instanceof Reader)) {}
    for (paramReadable = (Reader)paramReadable;; paramReadable = null)
    {
      reader = paramReadable;
      return;
    }
  }
  
  public native String readLine()
    throws IOException;
}
