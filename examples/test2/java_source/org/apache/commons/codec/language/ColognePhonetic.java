package org.apache.commons.codec.language;

import java.util.Locale;
import org.apache.commons.codec.EncoderException;
import org.apache.commons.codec.StringEncoder;

public class ColognePhonetic
  implements StringEncoder
{
  private static final char[][] PREPROCESS_MAP = { { 196, 65 }, { 220, 85 }, { 214, 79 }, { 223, 83 } };
  static Class class$java$lang$String;
  
  public ColognePhonetic() {}
  
  private static boolean arrayContains(char[] paramArrayOfChar, char paramChar)
  {
    int i = 0;
    while (i < paramArrayOfChar.length)
    {
      if (paramArrayOfChar[i] == paramChar) {
        return true;
      }
      i += 1;
    }
    return false;
  }
  
  static Class class$(String paramString)
  {
    try
    {
      paramString = Class.forName(paramString);
      return paramString;
    }
    catch (ClassNotFoundException paramString)
    {
      throw new NoClassDefFoundError().initCause(paramString);
    }
  }
  
  private String preprocess(String paramString)
  {
    paramString = paramString.toUpperCase(Locale.GERMAN).toCharArray();
    int i = 0;
    if (i < paramString.length)
    {
      int j;
      if (paramString[i] > 'Z') {
        j = 0;
      }
      for (;;)
      {
        if (j < PREPROCESS_MAP.length)
        {
          if (paramString[i] == PREPROCESS_MAP[j][0]) {
            paramString[i] = PREPROCESS_MAP[j][1];
          }
        }
        else
        {
          i += 1;
          break;
        }
        j += 1;
      }
    }
    return new String(paramString);
  }
  
  public String colognePhonetic(String paramString)
  {
    if (paramString == null) {
      return null;
    }
    Object localObject = preprocess(paramString);
    paramString = new CologneOutputBuffer(((String)localObject).length() * 2);
    localObject = new CologneInputBuffer(((String)localObject).toCharArray());
    char c1 = '-';
    char c4 = '/';
    int i = ((CologneInputBuffer)localObject).length();
    if (i > 0)
    {
      char c2 = ((CologneInputBuffer)localObject).removeNext();
      int j = ((CologneInputBuffer)localObject).length();
      char c3;
      if (j > 0)
      {
        c3 = ((CologneInputBuffer)localObject).getNextChar();
        label88:
        if (!arrayContains(new char[] { 65, 69, 73, 74, 79, 85, 89 }, c2)) {
          break label199;
        }
        c1 = '0';
        i = j;
      }
      for (;;)
      {
        if ((c1 != '-') && (((c4 != c1) && ((c1 != '0') || (c4 == '/'))) || (c1 < '0') || (c1 > '8'))) {
          paramString.addRight(c1);
        }
        c4 = c1;
        c1 = c2;
        break;
        c3 = '-';
        break label88;
        label199:
        if ((c2 == 'H') || (c2 < 'A') || (c2 > 'Z'))
        {
          i = j;
          if (c4 == '/') {
            break;
          }
          c1 = '-';
          i = j;
          continue;
        }
        if ((c2 == 'B') || ((c2 == 'P') && (c3 != 'H')))
        {
          c1 = '1';
          i = j;
        }
        else
        {
          if ((c2 == 'D') || (c2 == 'T')) {
            if (!arrayContains(new char[] { 83, 67, 90 }, c3))
            {
              c1 = '2';
              i = j;
              continue;
            }
          }
          if (arrayContains(new char[] { 87, 70, 80, 86 }, c2))
          {
            c1 = '3';
            i = j;
          }
          else if (arrayContains(new char[] { 71, 75, 81 }, c2))
          {
            c1 = '4';
            i = j;
          }
          else
          {
            if (c2 == 'X') {
              if (!arrayContains(new char[] { 67, 75, 81 }, c1))
              {
                c1 = '4';
                ((CologneInputBuffer)localObject).addLeft('S');
                i = j + 1;
                continue;
              }
            }
            if ((c2 == 'S') || (c2 == 'Z'))
            {
              c1 = '8';
              i = j;
            }
            else if (c2 == 'C')
            {
              if (c4 == '/')
              {
                if (arrayContains(new char[] { 65, 72, 75, 76, 79, 81, 82, 85, 88 }, c3))
                {
                  c1 = '4';
                  i = j;
                }
                else
                {
                  c1 = '8';
                  i = j;
                }
              }
              else
              {
                if (!arrayContains(new char[] { 83, 90 }, c1))
                {
                  if (arrayContains(new char[] { 65, 72, 79, 85, 75, 81, 88 }, c3)) {}
                }
                else
                {
                  c1 = '8';
                  i = j;
                  continue;
                }
                c1 = '4';
                i = j;
              }
            }
            else if (arrayContains(new char[] { 84, 68, 88 }, c2))
            {
              c1 = '8';
              i = j;
            }
            else if (c2 == 'R')
            {
              c1 = '7';
              i = j;
            }
            else if (c2 == 'L')
            {
              c1 = '5';
              i = j;
            }
            else if ((c2 == 'M') || (c2 == 'N'))
            {
              c1 = '6';
              i = j;
            }
            else
            {
              c1 = c2;
              i = j;
            }
          }
        }
      }
    }
    return paramString.toString();
  }
  
  public Object encode(Object paramObject)
    throws EncoderException
  {
    if (!(paramObject instanceof String))
    {
      StringBuffer localStringBuffer = new StringBuffer().append("This method’s parameter was expected to be of the type ");
      Class localClass;
      if (class$java$lang$String == null)
      {
        localClass = class$("java.lang.String");
        class$java$lang$String = localClass;
      }
      for (;;)
      {
        throw new EncoderException(localClass.getName() + ". But actually it was of the type " + paramObject.getClass().getName() + ".");
        localClass = class$java$lang$String;
      }
    }
    return encode((String)paramObject);
  }
  
  public String encode(String paramString)
  {
    return colognePhonetic(paramString);
  }
  
  public boolean isEncodeEqual(String paramString1, String paramString2)
  {
    return colognePhonetic(paramString1).equals(colognePhonetic(paramString2));
  }
  
  private abstract class CologneBuffer
  {
    protected final char[] data;
    protected int length = 0;
    
    public CologneBuffer(int paramInt)
    {
      data = new char[paramInt];
      length = 0;
    }
    
    public CologneBuffer(char[] paramArrayOfChar)
    {
      data = paramArrayOfChar;
      length = paramArrayOfChar.length;
    }
    
    protected abstract char[] copyData(int paramInt1, int paramInt2);
    
    public int length()
    {
      return length;
    }
    
    public String toString()
    {
      return new String(copyData(0, length));
    }
  }
  
  private class CologneInputBuffer
    extends ColognePhonetic.CologneBuffer
  {
    public CologneInputBuffer(char[] paramArrayOfChar)
    {
      super(paramArrayOfChar);
    }
    
    public void addLeft(char paramChar)
    {
      length += 1;
      data[getNextPos()] = paramChar;
    }
    
    protected char[] copyData(int paramInt1, int paramInt2)
    {
      char[] arrayOfChar = new char[paramInt2];
      System.arraycopy(data, data.length - length + paramInt1, arrayOfChar, 0, paramInt2);
      return arrayOfChar;
    }
    
    public char getNextChar()
    {
      return data[getNextPos()];
    }
    
    protected int getNextPos()
    {
      return data.length - length;
    }
    
    public char removeNext()
    {
      char c = getNextChar();
      length -= 1;
      return c;
    }
  }
  
  private class CologneOutputBuffer
    extends ColognePhonetic.CologneBuffer
  {
    public CologneOutputBuffer(int paramInt)
    {
      super(paramInt);
    }
    
    public void addRight(char paramChar)
    {
      data[length] = paramChar;
      length += 1;
    }
    
    protected char[] copyData(int paramInt1, int paramInt2)
    {
      char[] arrayOfChar = new char[paramInt2];
      System.arraycopy(data, paramInt1, arrayOfChar, 0, paramInt2);
      return arrayOfChar;
    }
  }
}
