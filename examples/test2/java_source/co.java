import javax.security.auth.x500.X500Principal;

public final class co
{
  private final int jdField_a_of_type_Int;
  private final String jdField_a_of_type_JavaLangString;
  private char[] jdField_a_of_type_ArrayOfChar;
  private int b;
  private int c;
  private int d;
  private int e;
  
  public co(X500Principal paramX500Principal)
  {
    jdField_a_of_type_JavaLangString = paramX500Principal.getName("RFC2253");
    jdField_a_of_type_Int = jdField_a_of_type_JavaLangString.length();
  }
  
  private char a()
  {
    b += 1;
    if (b == jdField_a_of_type_Int) {
      throw new IllegalStateException("Unexpected end of DN: " + jdField_a_of_type_JavaLangString);
    }
    switch (jdField_a_of_type_ArrayOfChar[b])
    {
    default: 
      return b();
    }
    return jdField_a_of_type_ArrayOfChar[b];
  }
  
  private int a(int paramInt)
  {
    if (paramInt + 1 >= jdField_a_of_type_Int) {
      throw new IllegalStateException("Malformed DN: " + jdField_a_of_type_JavaLangString);
    }
    int i = jdField_a_of_type_ArrayOfChar[paramInt];
    if ((i >= 48) && (i <= 57))
    {
      i -= 48;
      paramInt = jdField_a_of_type_ArrayOfChar[(paramInt + 1)];
      if ((paramInt < 48) || (paramInt > 57)) {
        break label160;
      }
      paramInt -= 48;
    }
    for (;;)
    {
      return (i << 4) + paramInt;
      if ((i >= 97) && (i <= 102))
      {
        i -= 87;
        break;
      }
      if ((i >= 65) && (i <= 70))
      {
        i -= 55;
        break;
      }
      throw new IllegalStateException("Malformed DN: " + jdField_a_of_type_JavaLangString);
      label160:
      if ((paramInt >= 97) && (paramInt <= 102))
      {
        paramInt -= 87;
      }
      else
      {
        if ((paramInt < 65) || (paramInt > 70)) {
          break label200;
        }
        paramInt -= 55;
      }
    }
    label200:
    throw new IllegalStateException("Malformed DN: " + jdField_a_of_type_JavaLangString);
  }
  
  private String a()
  {
    while ((b < jdField_a_of_type_Int) && (jdField_a_of_type_ArrayOfChar[b] == ' ')) {
      b += 1;
    }
    if (b == jdField_a_of_type_Int) {
      return null;
    }
    c = b;
    for (b += 1; (b < jdField_a_of_type_Int) && (jdField_a_of_type_ArrayOfChar[b] != '=') && (jdField_a_of_type_ArrayOfChar[b] != ' '); b += 1) {}
    if (b >= jdField_a_of_type_Int) {
      throw new IllegalStateException("Unexpected end of DN: " + jdField_a_of_type_JavaLangString);
    }
    d = b;
    if (jdField_a_of_type_ArrayOfChar[b] == ' ')
    {
      while ((b < jdField_a_of_type_Int) && (jdField_a_of_type_ArrayOfChar[b] != '=') && (jdField_a_of_type_ArrayOfChar[b] == ' ')) {
        b += 1;
      }
      if ((jdField_a_of_type_ArrayOfChar[b] != '=') || (b == jdField_a_of_type_Int)) {
        throw new IllegalStateException("Unexpected end of DN: " + jdField_a_of_type_JavaLangString);
      }
    }
    do
    {
      b += 1;
    } while ((b < jdField_a_of_type_Int) && (jdField_a_of_type_ArrayOfChar[b] == ' '));
    if ((d - c > 4) && (jdField_a_of_type_ArrayOfChar[(c + 3)] == '.') && ((jdField_a_of_type_ArrayOfChar[c] == 'O') || (jdField_a_of_type_ArrayOfChar[c] == 'o')) && ((jdField_a_of_type_ArrayOfChar[(c + 1)] == 'I') || (jdField_a_of_type_ArrayOfChar[(c + 1)] == 'i')) && ((jdField_a_of_type_ArrayOfChar[(c + 2)] == 'D') || (jdField_a_of_type_ArrayOfChar[(c + 2)] == 'd'))) {
      c += 4;
    }
    return new String(jdField_a_of_type_ArrayOfChar, c, d - c);
  }
  
  private char b()
  {
    int i = a(b);
    b += 1;
    if (i < 128) {
      return (char)i;
    }
    if ((i >= 192) && (i <= 247))
    {
      int j;
      int m;
      int k;
      if (i <= 223)
      {
        j = 1;
        i &= 0x1F;
        m = 0;
        k = i;
        i = m;
      }
      for (;;)
      {
        if (i >= j) {
          break label198;
        }
        b += 1;
        if ((b == jdField_a_of_type_Int) || (jdField_a_of_type_ArrayOfChar[b] != '\\'))
        {
          return '?';
          if (i <= 239)
          {
            j = 2;
            i &= 0xF;
            break;
          }
          j = 3;
          i &= 0x7;
          break;
        }
        b += 1;
        m = a(b);
        b += 1;
        if ((m & 0xC0) != 128) {
          return '?';
        }
        k = (k << 6) + (m & 0x3F);
        i += 1;
      }
      label198:
      return (char)k;
    }
    return '?';
  }
  
  private String b()
  {
    if (b + 4 >= jdField_a_of_type_Int) {
      throw new IllegalStateException("Unexpected end of DN: " + jdField_a_of_type_JavaLangString);
    }
    c = b;
    int k;
    for (b += 1;; b += 1)
    {
      if ((b == jdField_a_of_type_Int) || (jdField_a_of_type_ArrayOfChar[b] == '+') || (jdField_a_of_type_ArrayOfChar[b] == ',') || (jdField_a_of_type_ArrayOfChar[b] == ';')) {
        d = b;
      }
      for (;;)
      {
        k = d - c;
        if ((k >= 5) && ((k & 0x1) != 0)) {
          break label301;
        }
        throw new IllegalStateException("Unexpected end of DN: " + jdField_a_of_type_JavaLangString);
        if (jdField_a_of_type_ArrayOfChar[b] != ' ') {
          break;
        }
        d = b;
        for (b += 1; (b < jdField_a_of_type_Int) && (jdField_a_of_type_ArrayOfChar[b] == ' '); b += 1) {}
      }
      if ((jdField_a_of_type_ArrayOfChar[b] >= 'A') && (jdField_a_of_type_ArrayOfChar[b] <= 'F'))
      {
        localObject = jdField_a_of_type_ArrayOfChar;
        i = b;
        localObject[i] = ((char)(localObject[i] + ' '));
      }
    }
    label301:
    Object localObject = new byte[k / 2];
    int i = 0;
    int j = c + 1;
    while (i < localObject.length)
    {
      localObject[i] = ((byte)a(j));
      j += 2;
      i += 1;
    }
    return new String(jdField_a_of_type_ArrayOfChar, c, k);
  }
  
  private String c()
  {
    c = b;
    d = b;
    do
    {
      for (;;)
      {
        if (b >= jdField_a_of_type_Int) {
          return new String(jdField_a_of_type_ArrayOfChar, c, d - c);
        }
        switch (jdField_a_of_type_ArrayOfChar[b])
        {
        default: 
          arrayOfChar = jdField_a_of_type_ArrayOfChar;
          i = d;
          d = (i + 1);
          arrayOfChar[i] = jdField_a_of_type_ArrayOfChar[b];
          b += 1;
          break;
        case '+': 
        case ',': 
        case ';': 
          return new String(jdField_a_of_type_ArrayOfChar, c, d - c);
        case '\\': 
          arrayOfChar = jdField_a_of_type_ArrayOfChar;
          i = d;
          d = (i + 1);
          arrayOfChar[i] = a();
          b += 1;
        }
      }
      e = d;
      b += 1;
      char[] arrayOfChar = jdField_a_of_type_ArrayOfChar;
      int i = d;
      d = (i + 1);
      arrayOfChar[i] = ' ';
      while ((b < jdField_a_of_type_Int) && (jdField_a_of_type_ArrayOfChar[b] == ' '))
      {
        arrayOfChar = jdField_a_of_type_ArrayOfChar;
        i = d;
        d = (i + 1);
        arrayOfChar[i] = ' ';
        b += 1;
      }
    } while ((b != jdField_a_of_type_Int) && (jdField_a_of_type_ArrayOfChar[b] != ',') && (jdField_a_of_type_ArrayOfChar[b] != '+') && (jdField_a_of_type_ArrayOfChar[b] != ';'));
    return new String(jdField_a_of_type_ArrayOfChar, c, e - c);
  }
  
  public final String a(String paramString)
  {
    b = 0;
    c = 0;
    d = 0;
    e = 0;
    jdField_a_of_type_ArrayOfChar = jdField_a_of_type_JavaLangString.toCharArray();
    String str1 = a();
    String str2 = str1;
    if (str1 == null)
    {
      str1 = null;
      return str1;
    }
    label379:
    do
    {
      str1 = "";
      if (b == jdField_a_of_type_Int) {
        return null;
      }
      switch (jdField_a_of_type_ArrayOfChar[b])
      {
      default: 
        str1 = c();
      }
      while (!paramString.equalsIgnoreCase(str2))
      {
        if (b < jdField_a_of_type_Int) {
          break label379;
        }
        return null;
        b += 1;
        c = b;
        d = c;
        if (b == jdField_a_of_type_Int) {
          throw new IllegalStateException("Unexpected end of DN: " + jdField_a_of_type_JavaLangString);
        }
        if (jdField_a_of_type_ArrayOfChar[b] == '"') {
          for (b += 1; (b < jdField_a_of_type_Int) && (jdField_a_of_type_ArrayOfChar[b] == ' '); b += 1) {}
        }
        if (jdField_a_of_type_ArrayOfChar[b] == '\\') {
          jdField_a_of_type_ArrayOfChar[d] = a();
        }
        for (;;)
        {
          b += 1;
          d += 1;
          break;
          jdField_a_of_type_ArrayOfChar[d] = jdField_a_of_type_ArrayOfChar[b];
        }
        str1 = new String(jdField_a_of_type_ArrayOfChar, c, d - c);
        continue;
        str1 = b();
      }
      if ((jdField_a_of_type_ArrayOfChar[b] != ',') && (jdField_a_of_type_ArrayOfChar[b] != ';') && (jdField_a_of_type_ArrayOfChar[b] != '+')) {
        throw new IllegalStateException("Malformed DN: " + jdField_a_of_type_JavaLangString);
      }
      b += 1;
      str1 = a();
      str2 = str1;
    } while (str1 != null);
    throw new IllegalStateException("Malformed DN: " + jdField_a_of_type_JavaLangString);
  }
}
