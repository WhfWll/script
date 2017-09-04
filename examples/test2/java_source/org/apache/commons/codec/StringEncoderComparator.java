package org.apache.commons.codec;

import java.util.Comparator;

public class StringEncoderComparator
  implements Comparator
{
  private final StringEncoder stringEncoder;
  
  public StringEncoderComparator()
  {
    stringEncoder = null;
  }
  
  public StringEncoderComparator(StringEncoder paramStringEncoder)
  {
    stringEncoder = paramStringEncoder;
  }
  
  public int compare(Object paramObject1, Object paramObject2)
  {
    try
    {
      int i = ((Comparable)stringEncoder.encode(paramObject1)).compareTo((Comparable)stringEncoder.encode(paramObject2));
      return i;
    }
    catch (EncoderException paramObject1) {}
    return 0;
  }
}
