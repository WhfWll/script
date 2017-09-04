package org.webrtc;

public class StatsReport
{
  public final String id;
  public final double timestamp;
  public final String type;
  public final StatsReport.Value[] values;
  
  public StatsReport(String paramString1, String paramString2, double paramDouble, StatsReport.Value[] paramArrayOfValue)
  {
    id = paramString1;
    type = paramString2;
    timestamp = paramDouble;
    values = paramArrayOfValue;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("id: ").append(id).append(", type: ").append(type).append(", timestamp: ").append(timestamp).append(", values: ");
    int i = 0;
    while (i < values.length)
    {
      localStringBuilder.append(values[i].toString()).append(", ");
      i += 1;
    }
    return localStringBuilder.toString();
  }
}
