package org.codehaus.jackson.sym;

import java.util.Arrays;
import org.codehaus.jackson.util.InternCache;

public final class BytesToNameCanonicalizer
{
  protected static final int DEFAULT_TABLE_SIZE = 64;
  static final int INITIAL_COLLISION_LEN = 32;
  static final int LAST_VALID_BUCKET = 254;
  static final int MAX_ENTRIES_FOR_REUSE = 6000;
  protected static final int MAX_TABLE_SIZE = 65536;
  static final int MIN_HASH_SIZE = 16;
  private int _collCount;
  private int _collEnd;
  private Bucket[] _collList;
  private boolean _collListShared;
  private int _count;
  final boolean _intern;
  private int[] _mainHash;
  private int _mainHashMask;
  private boolean _mainHashShared;
  private Name[] _mainNames;
  private boolean _mainNamesShared;
  private transient boolean _needRehash;
  final BytesToNameCanonicalizer _parent;
  
  private BytesToNameCanonicalizer(int paramInt, boolean paramBoolean)
  {
    _parent = null;
    _intern = paramBoolean;
    int i;
    if (paramInt < 16) {
      i = 16;
    }
    for (;;)
    {
      initTables(i);
      return;
      i = paramInt;
      if ((paramInt - 1 & paramInt) != 0)
      {
        i = 16;
        while (i < paramInt) {
          i += i;
        }
      }
    }
  }
  
  private BytesToNameCanonicalizer(BytesToNameCanonicalizer paramBytesToNameCanonicalizer, boolean paramBoolean)
  {
    _parent = paramBytesToNameCanonicalizer;
    _intern = paramBoolean;
    _count = _count;
    _mainHashMask = _mainHashMask;
    _mainHash = _mainHash;
    _mainNames = _mainNames;
    _collList = _collList;
    _collCount = _collCount;
    _collEnd = _collEnd;
    _needRehash = false;
    _mainHashShared = true;
    _mainNamesShared = true;
    _collListShared = true;
  }
  
  private void _addSymbol(int paramInt, Name paramName)
  {
    if (_mainHashShared) {
      unshareMain();
    }
    if (_needRehash) {
      rehash();
    }
    _count += 1;
    int j = paramInt & _mainHashMask;
    int i;
    if (_mainNames[j] == null)
    {
      _mainHash[j] = (paramInt << 8);
      if (_mainNamesShared) {
        unshareNames();
      }
      _mainNames[j] = paramName;
      paramInt = _mainHash.length;
      if (_count > paramInt >> 1)
      {
        i = paramInt >> 2;
        if (_count <= paramInt - i) {
          break label254;
        }
        _needRehash = true;
      }
    }
    label199:
    label254:
    while (_collCount < i)
    {
      return;
      if (_collListShared) {
        unshareCollision();
      }
      _collCount += 1;
      int k = _mainHash[j];
      paramInt = k & 0xFF;
      if (paramInt == 0) {
        if (_collEnd <= 254)
        {
          i = _collEnd;
          _collEnd += 1;
          paramInt = i;
          if (i >= _collList.length)
          {
            expandCollision();
            paramInt = i;
          }
          _mainHash[j] = (k & 0xFF00 | paramInt + 1);
        }
      }
      for (;;)
      {
        _collList[paramInt] = new Bucket(paramName, _collList[paramInt]);
        break;
        paramInt = findBestBucket();
        break label199;
        paramInt -= 1;
      }
    }
    _needRehash = true;
  }
  
  public static final int calcHash(int paramInt)
  {
    paramInt ^= paramInt >>> 16;
    return paramInt ^ paramInt >>> 8;
  }
  
  public static final int calcHash(int paramInt1, int paramInt2)
  {
    paramInt1 = paramInt1 * 31 + paramInt2;
    paramInt1 ^= paramInt1 >>> 16;
    return paramInt1 ^ paramInt1 >>> 8;
  }
  
  public static final int calcHash(int[] paramArrayOfInt, int paramInt)
  {
    int j = paramArrayOfInt[0];
    int i = 1;
    while (i < paramInt)
    {
      j = j * 31 + paramArrayOfInt[i];
      i += 1;
    }
    paramInt = j ^ j >>> 16;
    return paramInt ^ paramInt >>> 8;
  }
  
  private static Name constructName(int paramInt1, String paramString, int paramInt2, int paramInt3)
  {
    if (paramInt3 == 0) {
      return new Name1(paramString, paramInt1, paramInt2);
    }
    return new Name2(paramString, paramInt1, paramInt2, paramInt3);
  }
  
  private static Name constructName(int paramInt1, String paramString, int[] paramArrayOfInt, int paramInt2)
  {
    if (paramInt2 < 4) {}
    int[] arrayOfInt;
    int i;
    switch (paramInt2)
    {
    default: 
      arrayOfInt = new int[paramInt2];
      i = 0;
    }
    while (i < paramInt2)
    {
      arrayOfInt[i] = paramArrayOfInt[i];
      i += 1;
      continue;
      return new Name1(paramString, paramInt1, paramArrayOfInt[0]);
      return new Name2(paramString, paramInt1, paramArrayOfInt[0], paramArrayOfInt[1]);
      return new Name3(paramString, paramInt1, paramArrayOfInt[0], paramArrayOfInt[1], paramArrayOfInt[2]);
    }
    return new NameN(paramString, paramInt1, arrayOfInt, paramInt2);
  }
  
  public static BytesToNameCanonicalizer createRoot()
  {
    return new BytesToNameCanonicalizer(64, true);
  }
  
  private void expandCollision()
  {
    Bucket[] arrayOfBucket = _collList;
    int i = arrayOfBucket.length;
    _collList = new Bucket[i + i];
    System.arraycopy(arrayOfBucket, 0, _collList, 0, i);
  }
  
  private int findBestBucket()
  {
    Bucket[] arrayOfBucket = _collList;
    int j = Integer.MAX_VALUE;
    int k = -1;
    int i = 0;
    int i1 = _collEnd;
    while (i < i1)
    {
      int n = arrayOfBucket[i].length();
      int m = j;
      if (n < j)
      {
        if (n == 1) {
          return i;
        }
        m = n;
        k = i;
      }
      i += 1;
      j = m;
    }
    return k;
  }
  
  public static Name getEmptyName()
  {
    return Name1.getEmptyName();
  }
  
  private void initTables(int paramInt)
  {
    _count = 0;
    _mainHash = new int[paramInt];
    _mainNames = new Name[paramInt];
    _mainHashShared = false;
    _mainNamesShared = false;
    _mainHashMask = (paramInt - 1);
    _collListShared = true;
    _collList = null;
    _collEnd = 0;
    _needRehash = false;
  }
  
  private void markAsShared()
  {
    _mainHashShared = true;
    _mainNamesShared = true;
    _collListShared = true;
  }
  
  private void mergeChild(BytesToNameCanonicalizer paramBytesToNameCanonicalizer)
  {
    for (;;)
    {
      try
      {
        int i = _count;
        int j = _count;
        if (i <= j) {
          return;
        }
        if (paramBytesToNameCanonicalizer.size() > 6000)
        {
          initTables(64);
          continue;
        }
        _count = _count;
      }
      finally {}
      _mainHash = _mainHash;
      _mainNames = _mainNames;
      _mainHashShared = true;
      _mainNamesShared = true;
      _mainHashMask = _mainHashMask;
      _collList = _collList;
      _collCount = _collCount;
      _collEnd = _collEnd;
    }
  }
  
  private void nukeSymbols()
  {
    _count = 0;
    Arrays.fill(_mainHash, 0);
    Arrays.fill(_mainNames, null);
    Arrays.fill(_collList, null);
    _collCount = 0;
    _collEnd = 0;
  }
  
  private void rehash()
  {
    _needRehash = false;
    _mainNamesShared = false;
    int m = _mainHash.length;
    int i = m + m;
    if (i > 65536) {
      nukeSymbols();
    }
    label336:
    do
    {
      Object localObject;
      int k;
      int n;
      do
      {
        return;
        _mainHash = new int[i];
        _mainHashMask = (i - 1);
        localObject = _mainNames;
        _mainNames = new Name[i];
        i = 0;
        j = 0;
        while (j < m)
        {
          arrayOfBucket = localObject[j];
          k = i;
          if (arrayOfBucket != null)
          {
            k = i + 1;
            i = arrayOfBucket.hashCode();
            n = i & _mainHashMask;
            _mainNames[n] = arrayOfBucket;
            _mainHash[n] = (i << 8);
          }
          j += 1;
          i = k;
        }
        n = _collEnd;
      } while (n == 0);
      _collCount = 0;
      _collEnd = 0;
      _collListShared = false;
      Bucket[] arrayOfBucket = _collList;
      _collList = new Bucket[arrayOfBucket.length];
      int j = 0;
      while (j < n)
      {
        localObject = arrayOfBucket[j];
        while (localObject != null)
        {
          k = i + 1;
          Name localName = _name;
          i = localName.hashCode();
          int i1 = i & _mainHashMask;
          int i2 = _mainHash[i1];
          if (_mainNames[i1] == null)
          {
            _mainHash[i1] = (i << 8);
            _mainNames[i1] = localName;
            localObject = _next;
            i = k;
          }
          else
          {
            _collCount += 1;
            i = i2 & 0xFF;
            if (i == 0) {
              if (_collEnd <= 254)
              {
                m = _collEnd;
                _collEnd += 1;
                i = m;
                if (m >= _collList.length)
                {
                  expandCollision();
                  i = m;
                }
                _mainHash[i1] = (i2 & 0xFF00 | i + 1);
              }
            }
            for (;;)
            {
              _collList[i] = new Bucket(localName, _collList[i]);
              break;
              i = findBestBucket();
              break label336;
              i -= 1;
            }
          }
        }
        j += 1;
      }
    } while (i == _count);
    throw new RuntimeException("Internal error: count after rehash " + i + "; should be " + _count);
  }
  
  private void unshareCollision()
  {
    Bucket[] arrayOfBucket = _collList;
    if (arrayOfBucket == null) {
      _collList = new Bucket[32];
    }
    for (;;)
    {
      _collListShared = false;
      return;
      int i = arrayOfBucket.length;
      _collList = new Bucket[i];
      System.arraycopy(arrayOfBucket, 0, _collList, 0, i);
    }
  }
  
  private void unshareMain()
  {
    int[] arrayOfInt = _mainHash;
    int i = _mainHash.length;
    _mainHash = new int[i];
    System.arraycopy(arrayOfInt, 0, _mainHash, 0, i);
    _mainHashShared = false;
  }
  
  private void unshareNames()
  {
    Name[] arrayOfName = _mainNames;
    int i = arrayOfName.length;
    _mainNames = new Name[i];
    System.arraycopy(arrayOfName, 0, _mainNames, 0, i);
    _mainNamesShared = false;
  }
  
  public Name addName(String paramString, int paramInt1, int paramInt2)
  {
    String str = paramString;
    if (_intern) {
      str = InternCache.instance.intern(paramString);
    }
    if (paramInt2 == 0) {}
    for (int i = calcHash(paramInt1);; i = calcHash(paramInt1, paramInt2))
    {
      paramString = constructName(i, str, paramInt1, paramInt2);
      _addSymbol(i, paramString);
      return paramString;
    }
  }
  
  public Name addName(String paramString, int[] paramArrayOfInt, int paramInt)
  {
    String str = paramString;
    if (_intern) {
      str = InternCache.instance.intern(paramString);
    }
    int i = calcHash(paramArrayOfInt, paramInt);
    paramString = constructName(i, str, paramArrayOfInt, paramInt);
    _addSymbol(i, paramString);
    return paramString;
  }
  
  public Name findName(int paramInt)
  {
    int i = calcHash(paramInt);
    int j = i & _mainHashMask;
    int k = _mainHash[j];
    if ((k >> 8 ^ i) << 8 == 0)
    {
      localName = _mainNames[j];
      if (localName == null) {
        localObject = null;
      }
      do
      {
        return localObject;
        localObject = localName;
      } while (localName.equals(paramInt));
    }
    while (k != 0)
    {
      Name localName;
      j = k & 0xFF;
      if (j <= 0) {
        break;
      }
      Object localObject = _collList[(j - 1)];
      if (localObject == null) {
        break;
      }
      return ((Bucket)localObject).find(i, paramInt, 0);
    }
    return null;
    return null;
  }
  
  public Name findName(int paramInt1, int paramInt2)
  {
    int i = calcHash(paramInt1, paramInt2);
    int j = i & _mainHashMask;
    int k = _mainHash[j];
    if ((k >> 8 ^ i) << 8 == 0)
    {
      localName = _mainNames[j];
      if (localName == null) {
        localObject = null;
      }
      do
      {
        return localObject;
        localObject = localName;
      } while (localName.equals(paramInt1, paramInt2));
    }
    while (k != 0)
    {
      Name localName;
      j = k & 0xFF;
      if (j <= 0) {
        break;
      }
      Object localObject = _collList[(j - 1)];
      if (localObject == null) {
        break;
      }
      return ((Bucket)localObject).find(i, paramInt1, paramInt2);
    }
    return null;
    return null;
  }
  
  public Name findName(int[] paramArrayOfInt, int paramInt)
  {
    int i = calcHash(paramArrayOfInt, paramInt);
    int j = i & _mainHashMask;
    int k = _mainHash[j];
    Object localObject;
    if ((k >> 8 ^ i) << 8 == 0)
    {
      localObject = _mainNames[j];
      if ((localObject == null) || (((Name)localObject).equals(paramArrayOfInt, paramInt))) {
        return localObject;
      }
    }
    else if (k == 0)
    {
      return null;
    }
    j = k & 0xFF;
    if (j > 0)
    {
      localObject = _collList[(j - 1)];
      if (localObject != null) {
        return ((Bucket)localObject).find(i, paramArrayOfInt, paramInt);
      }
    }
    return null;
  }
  
  public BytesToNameCanonicalizer makeChild(boolean paramBoolean1, boolean paramBoolean2)
  {
    try
    {
      BytesToNameCanonicalizer localBytesToNameCanonicalizer = new BytesToNameCanonicalizer(this, paramBoolean2);
      return localBytesToNameCanonicalizer;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public boolean maybeDirty()
  {
    return !_mainHashShared;
  }
  
  public void release()
  {
    if ((maybeDirty()) && (_parent != null))
    {
      _parent.mergeChild(this);
      markAsShared();
    }
  }
  
  public int size()
  {
    return _count;
  }
  
  static final class Bucket
  {
    protected final Name _name;
    protected final Bucket _next;
    
    Bucket(Name paramName, Bucket paramBucket)
    {
      _name = paramName;
      _next = paramBucket;
    }
    
    public Name find(int paramInt1, int paramInt2, int paramInt3)
    {
      Object localObject;
      if ((_name.hashCode() == paramInt1) && (_name.equals(paramInt2, paramInt3)))
      {
        localObject = _name;
        return localObject;
      }
      for (Bucket localBucket = _next;; localBucket = _next)
      {
        if (localBucket == null) {
          break label83;
        }
        Name localName = _name;
        if (localName.hashCode() == paramInt1)
        {
          localObject = localName;
          if (localName.equals(paramInt2, paramInt3)) {
            break;
          }
        }
      }
      label83:
      return null;
    }
    
    public Name find(int paramInt1, int[] paramArrayOfInt, int paramInt2)
    {
      Object localObject;
      if ((_name.hashCode() == paramInt1) && (_name.equals(paramArrayOfInt, paramInt2)))
      {
        localObject = _name;
        return localObject;
      }
      for (Bucket localBucket = _next;; localBucket = _next)
      {
        if (localBucket == null) {
          break label83;
        }
        Name localName = _name;
        if (localName.hashCode() == paramInt1)
        {
          localObject = localName;
          if (localName.equals(paramArrayOfInt, paramInt2)) {
            break;
          }
        }
      }
      label83:
      return null;
    }
    
    public int length()
    {
      int i = 1;
      for (Bucket localBucket = _next; localBucket != null; localBucket = _next) {
        i += 1;
      }
      return i;
    }
  }
}
