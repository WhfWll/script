package com.google.common.base;

import com.bangcle.andjni.JniLib;
import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import java.util.Arrays;
import java.util.List;

@Beta
@GwtCompatible
public abstract class CharMatcher
  implements Predicate<Character>
{
  public static final CharMatcher ANY = new CharMatcher()
  {
    static
    {
      JniLib.a(6.class, 320);
    }
    
    public native CharMatcher and(CharMatcher paramAnonymousCharMatcher);
    
    public native String collapseFrom(CharSequence paramAnonymousCharSequence, char paramAnonymousChar);
    
    public native int countIn(CharSequence paramAnonymousCharSequence);
    
    public native int indexIn(CharSequence paramAnonymousCharSequence);
    
    public native int indexIn(CharSequence paramAnonymousCharSequence, int paramAnonymousInt);
    
    public native int lastIndexIn(CharSequence paramAnonymousCharSequence);
    
    public native boolean matches(char paramAnonymousChar);
    
    public native boolean matchesAllOf(CharSequence paramAnonymousCharSequence);
    
    public native boolean matchesNoneOf(CharSequence paramAnonymousCharSequence);
    
    public native CharMatcher negate();
    
    public native CharMatcher or(CharMatcher paramAnonymousCharMatcher);
    
    public native CharMatcher precomputed();
    
    public native String removeFrom(CharSequence paramAnonymousCharSequence);
    
    public native String replaceFrom(CharSequence paramAnonymousCharSequence, char paramAnonymousChar);
    
    public native String replaceFrom(CharSequence paramAnonymousCharSequence1, CharSequence paramAnonymousCharSequence2);
    
    public native String trimFrom(CharSequence paramAnonymousCharSequence);
  };
  public static final CharMatcher ASCII;
  public static final CharMatcher BREAKING_WHITESPACE;
  private static final String BREAKING_WHITESPACE_CHARS = "\t\n\013\f\r     　";
  public static final CharMatcher DIGIT;
  public static final CharMatcher INVISIBLE;
  public static final CharMatcher JAVA_DIGIT;
  public static final CharMatcher JAVA_ISO_CONTROL;
  public static final CharMatcher JAVA_LETTER;
  public static final CharMatcher JAVA_LETTER_OR_DIGIT;
  public static final CharMatcher JAVA_LOWER_CASE;
  public static final CharMatcher JAVA_UPPER_CASE;
  public static final CharMatcher JAVA_WHITESPACE;
  public static final CharMatcher NONE = new CharMatcher()
  {
    static
    {
      JniLib.a(7.class, 321);
    }
    
    public native CharMatcher and(CharMatcher paramAnonymousCharMatcher);
    
    public native String collapseFrom(CharSequence paramAnonymousCharSequence, char paramAnonymousChar);
    
    public native int countIn(CharSequence paramAnonymousCharSequence);
    
    public native int indexIn(CharSequence paramAnonymousCharSequence);
    
    public native int indexIn(CharSequence paramAnonymousCharSequence, int paramAnonymousInt);
    
    public native int lastIndexIn(CharSequence paramAnonymousCharSequence);
    
    public native boolean matches(char paramAnonymousChar);
    
    public native boolean matchesAllOf(CharSequence paramAnonymousCharSequence);
    
    public native boolean matchesNoneOf(CharSequence paramAnonymousCharSequence);
    
    public native CharMatcher negate();
    
    public native CharMatcher or(CharMatcher paramAnonymousCharMatcher);
    
    public native CharMatcher precomputed();
    
    public native String removeFrom(CharSequence paramAnonymousCharSequence);
    
    public native String replaceFrom(CharSequence paramAnonymousCharSequence, char paramAnonymousChar);
    
    public native String replaceFrom(CharSequence paramAnonymousCharSequence1, CharSequence paramAnonymousCharSequence2);
    
    native void setBits(CharMatcher.LookupTable paramAnonymousLookupTable);
    
    public native String trimFrom(CharSequence paramAnonymousCharSequence);
  };
  private static final String NON_BREAKING_WHITESPACE_CHARS = " ᠎ ";
  public static final CharMatcher SINGLE_WIDTH;
  public static final CharMatcher WHITESPACE = anyOf("\t\n\013\f\r     　 ᠎ ").or(inRange(' ', ' ')).precomputed();
  
  static
  {
    BREAKING_WHITESPACE = anyOf("\t\n\013\f\r     　").or(inRange(' ', ' ')).or(inRange(' ', ' ')).precomputed();
    ASCII = inRange('\000', '');
    CharMatcher localCharMatcher = inRange('0', '9');
    char[] arrayOfChar = "٠۰߀०০੦૦୦௦౦೦൦๐໐༠၀႐០᠐᥆᧐᭐᮰᱀᱐꘠꣐꤀꩐０".toCharArray();
    int j = arrayOfChar.length;
    int i = 0;
    while (i < j)
    {
      char c = arrayOfChar[i];
      localCharMatcher = localCharMatcher.or(inRange(c, (char)(c + '\t')));
      i += 1;
    }
    DIGIT = localCharMatcher.precomputed();
    JAVA_WHITESPACE = inRange('\t', '\r').or(inRange('\034', ' ')).or(is(' ')).or(is('᠎')).or(inRange(' ', ' ')).or(inRange(' ', '​')).or(inRange(' ', ' ')).or(is(' ')).or(is('　')).precomputed();
    JAVA_DIGIT = new CharMatcher()
    {
      static
      {
        JniLib.a(1.class, 315);
      }
      
      public native boolean matches(char paramAnonymousChar);
    };
    JAVA_LETTER = new CharMatcher()
    {
      static
      {
        JniLib.a(2.class, 316);
      }
      
      public native boolean matches(char paramAnonymousChar);
    };
    JAVA_LETTER_OR_DIGIT = new CharMatcher()
    {
      static
      {
        JniLib.a(3.class, 317);
      }
      
      public native boolean matches(char paramAnonymousChar);
    };
    JAVA_UPPER_CASE = new CharMatcher()
    {
      static
      {
        JniLib.a(4.class, 318);
      }
      
      public native boolean matches(char paramAnonymousChar);
    };
    JAVA_LOWER_CASE = new CharMatcher()
    {
      static
      {
        JniLib.a(5.class, 319);
      }
      
      public native boolean matches(char paramAnonymousChar);
    };
    JAVA_ISO_CONTROL = inRange('\000', '\037').or(inRange('', ''));
    INVISIBLE = inRange('\000', ' ').or(inRange('', ' ')).or(is('­')).or(inRange('؀', '؃')).or(anyOf("۝܏ ឴឵᠎")).or(inRange(' ', '‏')).or(inRange(' ', ' ')).or(inRange(' ', '⁤')).or(inRange('⁪', '⁯')).or(is('　')).or(inRange(55296, 63743)).or(anyOf("﻿￹￺￻")).precomputed();
    SINGLE_WIDTH = inRange('\000', 'ӹ').or(is('־')).or(inRange('א', 'ת')).or(is('׳')).or(is('״')).or(inRange('؀', 'ۿ')).or(inRange('ݐ', 'ݿ')).or(inRange('฀', '๿')).or(inRange('Ḁ', '₯')).or(inRange('℀', '℺')).or(inRange(64336, 65023)).or(inRange(65136, 65279)).or(inRange(65377, 65500)).precomputed();
  }
  
  public CharMatcher() {}
  
  public static CharMatcher anyOf(CharSequence paramCharSequence)
  {
    switch (paramCharSequence.length())
    {
    default: 
      paramCharSequence = paramCharSequence.toString().toCharArray();
      Arrays.sort(paramCharSequence);
      new CharMatcher()
      {
        static
        {
          JniLib.a(11.class, 310);
        }
        
        public native boolean matches(char paramAnonymousChar);
        
        native void setBits(CharMatcher.LookupTable paramAnonymousLookupTable);
      };
    case 0: 
      return NONE;
    case 1: 
      return is(paramCharSequence.charAt(0));
    }
    new CharMatcher()
    {
      static
      {
        JniLib.a(10.class, 309);
      }
      
      public native boolean matches(char paramAnonymousChar);
      
      public native CharMatcher precomputed();
      
      native void setBits(CharMatcher.LookupTable paramAnonymousLookupTable);
    };
  }
  
  public static CharMatcher forPredicate(Predicate<? super Character> paramPredicate)
  {
    Preconditions.checkNotNull(paramPredicate);
    if ((paramPredicate instanceof CharMatcher)) {
      return (CharMatcher)paramPredicate;
    }
    new CharMatcher()
    {
      static
      {
        JniLib.a(13.class, 312);
      }
      
      public native boolean apply(Character paramAnonymousCharacter);
      
      public native boolean matches(char paramAnonymousChar);
    };
  }
  
  public static CharMatcher inRange(char paramChar1, final char paramChar2)
  {
    if (paramChar2 >= paramChar1) {}
    for (boolean bool = true;; bool = false)
    {
      Preconditions.checkArgument(bool);
      new CharMatcher()
      {
        static
        {
          JniLib.a(12.class, 311);
        }
        
        public native boolean matches(char paramAnonymousChar);
        
        public native CharMatcher precomputed();
        
        native void setBits(CharMatcher.LookupTable paramAnonymousLookupTable);
      };
    }
  }
  
  public static CharMatcher is(char paramChar)
  {
    new CharMatcher()
    {
      static
      {
        JniLib.a(8.class, 322);
      }
      
      public native CharMatcher and(CharMatcher paramAnonymousCharMatcher);
      
      public native boolean matches(char paramAnonymousChar);
      
      public native CharMatcher negate();
      
      public native CharMatcher or(CharMatcher paramAnonymousCharMatcher);
      
      public native CharMatcher precomputed();
      
      public native String replaceFrom(CharSequence paramAnonymousCharSequence, char paramAnonymousChar);
      
      native void setBits(CharMatcher.LookupTable paramAnonymousLookupTable);
    };
  }
  
  public static CharMatcher isNot(char paramChar)
  {
    new CharMatcher()
    {
      static
      {
        JniLib.a(9.class, 323);
      }
      
      public native CharMatcher and(CharMatcher paramAnonymousCharMatcher);
      
      public native boolean matches(char paramAnonymousChar);
      
      public native CharMatcher negate();
      
      public native CharMatcher or(CharMatcher paramAnonymousCharMatcher);
    };
  }
  
  public static CharMatcher noneOf(CharSequence paramCharSequence)
  {
    return anyOf(paramCharSequence).negate();
  }
  
  public CharMatcher and(CharMatcher paramCharMatcher)
  {
    return new And(Arrays.asList(new CharMatcher[] { this, (CharMatcher)Preconditions.checkNotNull(paramCharMatcher) }));
  }
  
  public boolean apply(Character paramCharacter)
  {
    return matches(paramCharacter.charValue());
  }
  
  public String collapseFrom(CharSequence paramCharSequence, char paramChar)
  {
    int i = indexIn(paramCharSequence);
    if (i == -1) {
      return paramCharSequence.toString();
    }
    StringBuilder localStringBuilder = new StringBuilder(paramCharSequence.length()).append(paramCharSequence.subSequence(0, i)).append(paramChar);
    int k = 1;
    int j = i + 1;
    if (j < paramCharSequence.length())
    {
      char c = paramCharSequence.charAt(j);
      if (apply(Character.valueOf(c)))
      {
        i = k;
        if (k == 0) {
          localStringBuilder.append(paramChar);
        }
      }
      for (i = 1;; i = 0)
      {
        j += 1;
        k = i;
        break;
        localStringBuilder.append(c);
      }
    }
    return localStringBuilder.toString();
  }
  
  public int countIn(CharSequence paramCharSequence)
  {
    int j = 0;
    int i = 0;
    while (i < paramCharSequence.length())
    {
      int k = j;
      if (matches(paramCharSequence.charAt(i))) {
        k = j + 1;
      }
      i += 1;
      j = k;
    }
    return j;
  }
  
  public int indexIn(CharSequence paramCharSequence)
  {
    int j = paramCharSequence.length();
    int i = 0;
    while (i < j)
    {
      if (matches(paramCharSequence.charAt(i))) {
        return i;
      }
      i += 1;
    }
    return -1;
  }
  
  public int indexIn(CharSequence paramCharSequence, int paramInt)
  {
    int i = paramCharSequence.length();
    Preconditions.checkPositionIndex(paramInt, i);
    while (paramInt < i)
    {
      if (matches(paramCharSequence.charAt(paramInt))) {
        return paramInt;
      }
      paramInt += 1;
    }
    return -1;
  }
  
  public int lastIndexIn(CharSequence paramCharSequence)
  {
    int i = paramCharSequence.length() - 1;
    while (i >= 0)
    {
      if (matches(paramCharSequence.charAt(i))) {
        return i;
      }
      i -= 1;
    }
    return -1;
  }
  
  public abstract boolean matches(char paramChar);
  
  public boolean matchesAllOf(CharSequence paramCharSequence)
  {
    int i = paramCharSequence.length() - 1;
    while (i >= 0)
    {
      if (!matches(paramCharSequence.charAt(i))) {
        return false;
      }
      i -= 1;
    }
    return true;
  }
  
  public boolean matchesAnyOf(CharSequence paramCharSequence)
  {
    return !matchesNoneOf(paramCharSequence);
  }
  
  public boolean matchesNoneOf(CharSequence paramCharSequence)
  {
    return indexIn(paramCharSequence) == -1;
  }
  
  public CharMatcher negate()
  {
    new CharMatcher()
    {
      static
      {
        JniLib.a(14.class, 313);
      }
      
      public native int countIn(CharSequence paramAnonymousCharSequence);
      
      public native boolean matches(char paramAnonymousChar);
      
      public native boolean matchesAllOf(CharSequence paramAnonymousCharSequence);
      
      public native boolean matchesNoneOf(CharSequence paramAnonymousCharSequence);
      
      public native CharMatcher negate();
    };
  }
  
  public CharMatcher or(CharMatcher paramCharMatcher)
  {
    return new Or(Arrays.asList(new CharMatcher[] { this, (CharMatcher)Preconditions.checkNotNull(paramCharMatcher) }));
  }
  
  public CharMatcher precomputed()
  {
    return Platform.precomputeCharMatcher(this);
  }
  
  CharMatcher precomputedInternal()
  {
    final LookupTable localLookupTable = new LookupTable(null);
    setBits(localLookupTable);
    new CharMatcher()
    {
      static
      {
        JniLib.a(15.class, 314);
      }
      
      public native boolean matches(char paramAnonymousChar);
      
      public native CharMatcher precomputed();
    };
  }
  
  public String removeFrom(CharSequence paramCharSequence)
  {
    paramCharSequence = paramCharSequence.toString();
    int i = indexIn(paramCharSequence);
    if (i == -1) {
      return paramCharSequence;
    }
    paramCharSequence = paramCharSequence.toCharArray();
    int j = 1;
    i += 1;
    for (;;)
    {
      if (i == paramCharSequence.length) {
        return new String(paramCharSequence, 0, i - j);
      }
      if (matches(paramCharSequence[i]))
      {
        j += 1;
        break;
      }
      paramCharSequence[(i - j)] = paramCharSequence[i];
      i += 1;
    }
  }
  
  public String replaceFrom(CharSequence paramCharSequence, char paramChar)
  {
    paramCharSequence = paramCharSequence.toString();
    int i = indexIn(paramCharSequence);
    if (i == -1) {
      return paramCharSequence;
    }
    paramCharSequence = paramCharSequence.toCharArray();
    paramCharSequence[i] = paramChar;
    i += 1;
    while (i < paramCharSequence.length)
    {
      if (matches(paramCharSequence[i])) {
        paramCharSequence[i] = paramChar;
      }
      i += 1;
    }
    return new String(paramCharSequence);
  }
  
  public String replaceFrom(CharSequence paramCharSequence1, CharSequence paramCharSequence2)
  {
    int i = paramCharSequence2.length();
    if (i == 0) {
      paramCharSequence1 = removeFrom(paramCharSequence1);
    }
    String str;
    do
    {
      return paramCharSequence1;
      if (i == 1) {
        return replaceFrom(paramCharSequence1, paramCharSequence2.charAt(0));
      }
      str = paramCharSequence1.toString();
      i = indexIn(str);
      paramCharSequence1 = str;
    } while (i == -1);
    int n = str.length();
    paramCharSequence1 = new StringBuilder(n * 3 / 2 + 16);
    int j = 0;
    int k;
    int m;
    do
    {
      paramCharSequence1.append(str, j, i);
      paramCharSequence1.append(paramCharSequence2);
      k = i + 1;
      m = indexIn(str, k);
      j = k;
      i = m;
    } while (m != -1);
    paramCharSequence1.append(str, k, n);
    return paramCharSequence1.toString();
  }
  
  public String retainFrom(CharSequence paramCharSequence)
  {
    return negate().removeFrom(paramCharSequence);
  }
  
  void setBits(LookupTable paramLookupTable)
  {
    int j;
    for (int i = 0;; i = j)
    {
      if (matches(i)) {
        paramLookupTable.set(i);
      }
      j = (char)(i + 1);
      if (i == 65535) {
        return;
      }
    }
  }
  
  public String trimAndCollapseFrom(CharSequence paramCharSequence, char paramChar)
  {
    int k = negate().indexIn(paramCharSequence);
    if (k == -1) {
      return "";
    }
    StringBuilder localStringBuilder = new StringBuilder(paramCharSequence.length());
    int i = 0;
    if (k < paramCharSequence.length())
    {
      char c = paramCharSequence.charAt(k);
      if (apply(Character.valueOf(c))) {}
      int j;
      for (i = 1;; i = j)
      {
        k += 1;
        break;
        j = i;
        if (i != 0)
        {
          localStringBuilder.append(paramChar);
          j = 0;
        }
        localStringBuilder.append(c);
      }
    }
    return localStringBuilder.toString();
  }
  
  public String trimFrom(CharSequence paramCharSequence)
  {
    int j = paramCharSequence.length();
    int i = 0;
    if ((i >= j) || (!matches(paramCharSequence.charAt(i)))) {
      j -= 1;
    }
    for (;;)
    {
      if ((j <= i) || (!matches(paramCharSequence.charAt(j))))
      {
        return paramCharSequence.subSequence(i, j + 1).toString();
        i += 1;
        break;
      }
      j -= 1;
    }
  }
  
  public String trimLeadingFrom(CharSequence paramCharSequence)
  {
    int j = paramCharSequence.length();
    int i = 0;
    for (;;)
    {
      if ((i >= j) || (!matches(paramCharSequence.charAt(i)))) {
        return paramCharSequence.subSequence(i, j).toString();
      }
      i += 1;
    }
  }
  
  public String trimTrailingFrom(CharSequence paramCharSequence)
  {
    int i = paramCharSequence.length() - 1;
    for (;;)
    {
      if ((i < 0) || (!matches(paramCharSequence.charAt(i)))) {
        return paramCharSequence.subSequence(0, i + 1).toString();
      }
      i -= 1;
    }
  }
  
  private static class And
    extends CharMatcher
  {
    List<CharMatcher> components;
    
    static
    {
      JniLib.a(And.class, 324);
    }
    
    And(List<CharMatcher> paramList)
    {
      components = paramList;
    }
    
    public native CharMatcher and(CharMatcher paramCharMatcher);
    
    public native boolean matches(char paramChar);
  }
  
  private static final class LookupTable
  {
    int[] data = new int['ࠀ'];
    
    static
    {
      JniLib.a(LookupTable.class, 325);
    }
    
    private LookupTable() {}
    
    native boolean get(char paramChar);
    
    native void set(char paramChar);
  }
  
  private static class Or
    extends CharMatcher
  {
    List<CharMatcher> components;
    
    static
    {
      JniLib.a(Or.class, 326);
    }
    
    Or(List<CharMatcher> paramList)
    {
      components = paramList;
    }
    
    public native boolean matches(char paramChar);
    
    public native CharMatcher or(CharMatcher paramCharMatcher);
    
    native void setBits(CharMatcher.LookupTable paramLookupTable);
  }
}
