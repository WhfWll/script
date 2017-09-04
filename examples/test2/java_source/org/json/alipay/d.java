package org.json.alipay;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;

public final class d
{
  private int a;
  private Reader b;
  private char c;
  private boolean d;
  
  private d(Reader paramReader)
  {
    if (paramReader.markSupported()) {}
    for (;;)
    {
      b = paramReader;
      d = false;
      a = 0;
      return;
      paramReader = new BufferedReader(paramReader);
    }
  }
  
  public d(String paramString)
  {
    this(new StringReader(paramString));
  }
  
  private String a(int paramInt)
  {
    int i = 0;
    if (paramInt == 0) {
      return "";
    }
    char[] arrayOfChar = new char[paramInt];
    if (d)
    {
      d = false;
      arrayOfChar[0] = c;
      i = 1;
    }
    while (i < paramInt) {
      try
      {
        int j = b.read(arrayOfChar, i, paramInt - i);
        if (j != -1) {
          i += j;
        }
      }
      catch (IOException localIOException)
      {
        throw new a(localIOException);
      }
    }
    a += i;
    if (i < paramInt) {
      throw a("Substring bounds error");
    }
    c = localIOException[(paramInt - 1)];
    return new String(localIOException);
  }
  
  public final a a(String paramString)
  {
    return new a(paramString + toString());
  }
  
  public final void a()
  {
    if ((d) || (a <= 0)) {
      throw new a("Stepping back two steps is not supported");
    }
    a -= 1;
    d = true;
  }
  
  public final char b()
  {
    if (d)
    {
      d = false;
      if (c != 0) {
        a += 1;
      }
      return c;
    }
    int i;
    try
    {
      i = b.read();
      if (i <= 0)
      {
        c = '\000';
        return '\000';
      }
    }
    catch (IOException localIOException)
    {
      throw new a(localIOException);
    }
    a += 1;
    c = ((char)i);
    return c;
  }
  
  public final char c()
  {
    char c1;
    do
    {
      for (;;)
      {
        c1 = b();
        int i;
        if (c1 == '/')
        {
          switch (b())
          {
          default: 
            a();
            return '/';
          case '/': 
            do
            {
              i = b();
              if ((i == 10) || (i == 13)) {
                break;
              }
            } while (i != 0);
            break;
          case '*': 
            do
            {
              if (i == 42)
              {
                if (b() == '/') {
                  break;
                }
                a();
              }
              i = b();
            } while (i != 0);
            throw a("Unclosed comment");
          }
        }
        else
        {
          if (c1 != '#') {
            break;
          }
          do
          {
            i = b();
            if ((i == 10) || (i == 13)) {
              break;
            }
          } while (i != 0);
        }
      }
    } while ((c1 != 0) && (c1 <= ' '));
    return c1;
  }
  
  public final Object d()
  {
    char c2 = c();
    char c1;
    switch (c2)
    {
    default: 
      localObject = new StringBuffer();
      c1 = c2;
    }
    while ((c1 >= ' ') && (",:]}/\\\"[{;=#".indexOf(c1) < 0))
    {
      ((StringBuffer)localObject).append(c1);
      c1 = b();
      continue;
      localObject = new StringBuffer();
      for (;;)
      {
        c1 = b();
        switch (c1)
        {
        default: 
          if (c1 == c2) {
            return ((StringBuffer)localObject).toString();
          }
          break;
        case '\000': 
        case '\n': 
        case '\r': 
          throw a("Unterminated string");
        case '\\': 
          c1 = b();
          switch (c1)
          {
          default: 
            ((StringBuffer)localObject).append(c1);
            break;
          case 'b': 
            ((StringBuffer)localObject).append('\b');
            break;
          case 't': 
            ((StringBuffer)localObject).append('\t');
            break;
          case 'n': 
            ((StringBuffer)localObject).append('\n');
            break;
          case 'f': 
            ((StringBuffer)localObject).append('\f');
            break;
          case 'r': 
            ((StringBuffer)localObject).append('\r');
            break;
          case 'u': 
            ((StringBuffer)localObject).append((char)Integer.parseInt(a(4), 16));
            break;
          case 'x': 
            ((StringBuffer)localObject).append((char)Integer.parseInt(a(2), 16));
          }
          break;
        }
        ((StringBuffer)localObject).append(c1);
      }
      a();
      return new c(this);
      a();
      return new b(this);
    }
    a();
    Object localObject = ((StringBuffer)localObject).toString().trim();
    if (((String)localObject).equals("")) {
      throw a("Missing value");
    }
    if (((String)localObject).equalsIgnoreCase("true")) {
      return Boolean.TRUE;
    }
    if (((String)localObject).equalsIgnoreCase("false")) {
      return Boolean.FALSE;
    }
    if (((String)localObject).equalsIgnoreCase("null")) {
      return c.a;
    }
    if (((c2 >= '0') && (c2 <= '9')) || (c2 == '.') || (c2 == '-') || (c2 == '+'))
    {
      if (c2 == '0')
      {
        if ((((String)localObject).length() <= 2) || ((((String)localObject).charAt(1) != 'x') && (((String)localObject).charAt(1) != 'X'))) {
          break label574;
        }
        try
        {
          Integer localInteger1 = new Integer(Integer.parseInt(((String)localObject).substring(2), 16));
          return localInteger1;
        }
        catch (Exception localException1) {}
      }
      for (;;)
      {
        try
        {
          Integer localInteger2 = new Integer((String)localObject);
          return localInteger2;
        }
        catch (Exception localException2)
        {
          try
          {
            Long localLong = new Long((String)localObject);
            return localLong;
          }
          catch (Exception localException3)
          {
            try
            {
              Double localDouble = new Double((String)localObject);
              return localDouble;
            }
            catch (Exception localException4)
            {
              return localObject;
            }
          }
        }
        try
        {
          label574:
          Integer localInteger3 = new Integer(Integer.parseInt((String)localObject, 8));
          return localInteger3;
        }
        catch (Exception localException5) {}
      }
    }
    return localObject;
  }
  
  public final String toString()
  {
    return " at character " + a;
  }
}
