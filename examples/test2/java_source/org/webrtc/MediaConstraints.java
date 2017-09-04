package org.webrtc;

import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

public class MediaConstraints
{
  public final List<MediaConstraints.KeyValuePair> mandatory = new LinkedList();
  public final List<MediaConstraints.KeyValuePair> optional = new LinkedList();
  
  public MediaConstraints() {}
  
  private static String stringifyKeyValuePairList(List<MediaConstraints.KeyValuePair> paramList)
  {
    StringBuilder localStringBuilder = new StringBuilder("[");
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      MediaConstraints.KeyValuePair localKeyValuePair = (MediaConstraints.KeyValuePair)paramList.next();
      if (localStringBuilder.length() > 1) {
        localStringBuilder.append(", ");
      }
      localStringBuilder.append(localKeyValuePair.toString());
    }
    return "]";
  }
  
  public String toString()
  {
    return "mandatory: " + stringifyKeyValuePairList(mandatory) + ", optional: " + stringifyKeyValuePairList(optional);
  }
}
