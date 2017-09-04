package org.webrtc;

public abstract interface StatsObserver
{
  public abstract void onComplete(StatsReport[] paramArrayOfStatsReport);
}
