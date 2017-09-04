package org.webrtc;

import java.util.LinkedList;

public class MediaStream
{
  public final LinkedList<AudioTrack> audioTracks = new LinkedList();
  final long nativeStream;
  public final LinkedList<VideoTrack> videoTracks = new LinkedList();
  
  public MediaStream(long paramLong)
  {
    nativeStream = paramLong;
  }
  
  private static native void free(long paramLong);
  
  private static native boolean nativeAddAudioTrack(long paramLong1, long paramLong2);
  
  private static native boolean nativeAddVideoTrack(long paramLong1, long paramLong2);
  
  private static native String nativeLabel(long paramLong);
  
  private static native boolean nativeRemoveAudioTrack(long paramLong1, long paramLong2);
  
  private static native boolean nativeRemoveVideoTrack(long paramLong1, long paramLong2);
  
  public boolean addTrack(AudioTrack paramAudioTrack)
  {
    if (nativeAddAudioTrack(nativeStream, nativeTrack))
    {
      audioTracks.add(paramAudioTrack);
      return true;
    }
    return false;
  }
  
  public boolean addTrack(VideoTrack paramVideoTrack)
  {
    if (nativeAddVideoTrack(nativeStream, nativeTrack))
    {
      videoTracks.add(paramVideoTrack);
      return true;
    }
    return false;
  }
  
  public void dispose()
  {
    Object localObject;
    while (!audioTracks.isEmpty())
    {
      localObject = (AudioTrack)audioTracks.getFirst();
      removeTrack((AudioTrack)localObject);
      ((AudioTrack)localObject).dispose();
    }
    while (!videoTracks.isEmpty())
    {
      localObject = (VideoTrack)videoTracks.getFirst();
      removeTrack((VideoTrack)localObject);
      ((VideoTrack)localObject).dispose();
    }
    free(nativeStream);
  }
  
  public String label()
  {
    return nativeLabel(nativeStream);
  }
  
  public boolean removeTrack(AudioTrack paramAudioTrack)
  {
    if (nativeRemoveAudioTrack(nativeStream, nativeTrack))
    {
      audioTracks.remove(paramAudioTrack);
      return true;
    }
    return false;
  }
  
  public boolean removeTrack(VideoTrack paramVideoTrack)
  {
    if (nativeRemoveVideoTrack(nativeStream, nativeTrack))
    {
      videoTracks.remove(paramVideoTrack);
      return true;
    }
    return false;
  }
  
  public String toString()
  {
    return "[" + label() + ":A=" + audioTracks.size() + ":V=" + videoTracks.size() + "]";
  }
}
