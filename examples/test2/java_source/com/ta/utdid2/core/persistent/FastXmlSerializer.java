package com.ta.utdid2.core.persistent;

import com.bangcle.andjni.JniLib;
import java.io.IOException;
import java.io.OutputStream;
import java.io.Writer;
import java.nio.ByteBuffer;
import java.nio.charset.CharsetEncoder;
import org.xmlpull.v1.XmlSerializer;

class FastXmlSerializer
  implements XmlSerializer
{
  private static final int BUFFER_LEN = 8192;
  private static final String[] ESCAPE_TABLE;
  private ByteBuffer mBytes = ByteBuffer.allocate(8192);
  private CharsetEncoder mCharset;
  private boolean mInTag;
  private OutputStream mOutputStream;
  private int mPos;
  private final char[] mText = new char[' '];
  private Writer mWriter;
  
  static
  {
    JniLib.a(FastXmlSerializer.class, 1007);
    String[] arrayOfString = new String[64];
    arrayOfString[34] = "&quot;";
    arrayOfString[38] = "&amp;";
    arrayOfString[60] = "&lt;";
    arrayOfString[62] = "&gt;";
    ESCAPE_TABLE = arrayOfString;
  }
  
  FastXmlSerializer() {}
  
  private native void append(char paramChar)
    throws IOException;
  
  private native void append(String paramString)
    throws IOException;
  
  private native void append(String paramString, int paramInt1, int paramInt2)
    throws IOException;
  
  private native void append(char[] paramArrayOfChar, int paramInt1, int paramInt2)
    throws IOException;
  
  private native void escapeAndAppendString(String paramString)
    throws IOException;
  
  private native void escapeAndAppendString(char[] paramArrayOfChar, int paramInt1, int paramInt2)
    throws IOException;
  
  private native void flushBytes()
    throws IOException;
  
  public native XmlSerializer attribute(String paramString1, String paramString2, String paramString3)
    throws IOException, IllegalArgumentException, IllegalStateException;
  
  public native void cdsect(String paramString)
    throws IOException, IllegalArgumentException, IllegalStateException;
  
  public native void comment(String paramString)
    throws IOException, IllegalArgumentException, IllegalStateException;
  
  public native void docdecl(String paramString)
    throws IOException, IllegalArgumentException, IllegalStateException;
  
  public native void endDocument()
    throws IOException, IllegalArgumentException, IllegalStateException;
  
  public native XmlSerializer endTag(String paramString1, String paramString2)
    throws IOException, IllegalArgumentException, IllegalStateException;
  
  public native void entityRef(String paramString)
    throws IOException, IllegalArgumentException, IllegalStateException;
  
  public native void flush()
    throws IOException;
  
  public native int getDepth();
  
  public native boolean getFeature(String paramString);
  
  public native String getName();
  
  public native String getNamespace();
  
  public native String getPrefix(String paramString, boolean paramBoolean)
    throws IllegalArgumentException;
  
  public native Object getProperty(String paramString);
  
  public native void ignorableWhitespace(String paramString)
    throws IOException, IllegalArgumentException, IllegalStateException;
  
  public native void processingInstruction(String paramString)
    throws IOException, IllegalArgumentException, IllegalStateException;
  
  public native void setFeature(String paramString, boolean paramBoolean)
    throws IllegalArgumentException, IllegalStateException;
  
  public native void setOutput(OutputStream paramOutputStream, String paramString)
    throws IOException, IllegalArgumentException, IllegalStateException;
  
  public native void setOutput(Writer paramWriter)
    throws IOException, IllegalArgumentException, IllegalStateException;
  
  public native void setPrefix(String paramString1, String paramString2)
    throws IOException, IllegalArgumentException, IllegalStateException;
  
  public native void setProperty(String paramString, Object paramObject)
    throws IllegalArgumentException, IllegalStateException;
  
  public native void startDocument(String paramString, Boolean paramBoolean)
    throws IOException, IllegalArgumentException, IllegalStateException;
  
  public native XmlSerializer startTag(String paramString1, String paramString2)
    throws IOException, IllegalArgumentException, IllegalStateException;
  
  public native XmlSerializer text(String paramString)
    throws IOException, IllegalArgumentException, IllegalStateException;
  
  public native XmlSerializer text(char[] paramArrayOfChar, int paramInt1, int paramInt2)
    throws IOException, IllegalArgumentException, IllegalStateException;
}
