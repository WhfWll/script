package org.webrtc.voiceengine;

import android.content.Context;
import android.media.AudioManager;
import android.media.AudioTrack;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Process;
import android.util.Log;
import java.nio.ByteBuffer;
import java.util.concurrent.locks.ReentrantLock;

class WebRtcAudioTrack
{
  private AudioManager _audioManager;
  private AudioTrack _audioTrack = null;
  private int _bufferedPlaySamples = 0;
  private Context _context;
  private boolean _doPlayInit = true;
  private boolean _doRecInit = true;
  private boolean _isPlaying = false;
  private boolean _isRecording = false;
  private ByteBuffer _playBuffer;
  private final ReentrantLock _playLock = new ReentrantLock();
  private int _playPosition = 0;
  private byte[] _tempBufPlay;
  final String logTag = "WebRTC AD java";
  
  WebRtcAudioTrack()
  {
    try
    {
      _playBuffer = ByteBuffer.allocateDirect(960);
      _tempBufPlay = new byte['π'];
      return;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        DoLog(localException.getMessage());
      }
    }
  }
  
  private void DoLog(String paramString)
  {
    Log.d("WebRTC AD java", paramString);
  }
  
  private void DoLogErr(String paramString)
  {
    Log.e("WebRTC AD java", paramString);
  }
  
  private int GetPlayoutVolume()
  {
    if ((_audioManager == null) && (_context != null)) {
      _audioManager = ((AudioManager)_context.getSystemService("audio"));
    }
    int i = -1;
    if (_audioManager != null) {
      i = _audioManager.getStreamVolume(0);
    }
    return i;
  }
  
  private int InitPlayback(int paramInt)
  {
    int j = AudioTrack.getMinBufferSize(paramInt, 4, 2);
    int i = j;
    if (j < 6000) {
      i = j << 1;
    }
    _bufferedPlaySamples = 0;
    if (_audioTrack != null)
    {
      _audioTrack.release();
      _audioTrack = null;
    }
    try
    {
      _audioTrack = new AudioTrack(0, paramInt, 4, 2, i, 1);
      if (_audioTrack.getState() != 1) {
        return -1;
      }
    }
    catch (Exception localException)
    {
      DoLog(localException.getMessage());
      return -1;
    }
    if ((_audioManager == null) && (_context != null)) {
      _audioManager = ((AudioManager)_context.getSystemService("audio"));
    }
    if (_audioManager == null) {
      return 0;
    }
    return _audioManager.getStreamMaxVolume(0);
  }
  
  private int PlayAudio(int paramInt)
  {
    _playLock.lock();
    try
    {
      AudioTrack localAudioTrack = _audioTrack;
      if (localAudioTrack == null) {
        return -2;
      }
      boolean bool = _doPlayInit;
      if (bool == true) {}
      try
      {
        Process.setThreadPriority(-19);
        _doPlayInit = false;
        _playBuffer.get(_tempBufPlay);
        int i = _audioTrack.write(_tempBufPlay, 0, paramInt);
        _playBuffer.rewind();
        _bufferedPlaySamples += (i >> 1);
        int j = _audioTrack.getPlaybackHeadPosition();
        if (j < _playPosition) {
          _playPosition = 0;
        }
        _bufferedPlaySamples -= j - _playPosition;
        _playPosition = j;
        if (i != paramInt) {
          return -1;
        }
      }
      catch (Exception localException)
      {
        for (;;)
        {
          DoLog("Set play thread priority failed: " + localException.getMessage());
        }
      }
    }
    finally
    {
      _playLock.unlock();
    }
    return _bufferedPlaySamples;
  }
  
  private int SetPlayoutSpeaker(boolean paramBoolean)
  {
    if ((_audioManager == null) && (_context != null)) {
      _audioManager = ((AudioManager)_context.getSystemService("audio"));
    }
    if (_audioManager == null)
    {
      Log.e("WebRTC AD java", "Could not change audio routing - no audio manager");
      return -1;
    }
    int i = Build.VERSION.SDK_INT;
    if ((3 == i) || (4 == i)) {
      if (paramBoolean) {
        _audioManager.setMode(0);
      }
    }
    for (;;)
    {
      return 0;
      _audioManager.setMode(2);
      continue;
      if (((Build.BRAND.equals("Samsung")) || (Build.BRAND.equals("samsung"))) && ((5 == i) || (6 == i) || (7 == i)))
      {
        if (paramBoolean) {
          _audioManager.setMode(2);
        }
      }
      else
      {
        _audioManager.setSpeakerphoneOn(paramBoolean);
        continue;
      }
      _audioManager.setSpeakerphoneOn(paramBoolean);
      _audioManager.setMode(0);
    }
  }
  
  private int SetPlayoutVolume(int paramInt)
  {
    if ((_audioManager == null) && (_context != null)) {
      _audioManager = ((AudioManager)_context.getSystemService("audio"));
    }
    int i = -1;
    if (_audioManager != null)
    {
      _audioManager.setStreamVolume(0, paramInt, 0);
      i = 0;
    }
    return i;
  }
  
  private int StartPlayback()
  {
    try
    {
      _audioTrack.play();
      _isPlaying = true;
      return 0;
    }
    catch (IllegalStateException localIllegalStateException)
    {
      localIllegalStateException.printStackTrace();
    }
    return -1;
  }
  
  /* Error */
  private int StopPlayback()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 39	org/webrtc/voiceengine/WebRtcAudioTrack:_playLock	Ljava/util/concurrent/locks/ReentrantLock;
    //   4: invokevirtual 127	java/util/concurrent/locks/ReentrantLock:lock	()V
    //   7: aload_0
    //   8: getfield 34	org/webrtc/voiceengine/WebRtcAudioTrack:_audioTrack	Landroid/media/AudioTrack;
    //   11: invokevirtual 213	android/media/AudioTrack:getPlayState	()I
    //   14: istore_1
    //   15: iload_1
    //   16: iconst_3
    //   17: if_icmpne +17 -> 34
    //   20: aload_0
    //   21: getfield 34	org/webrtc/voiceengine/WebRtcAudioTrack:_audioTrack	Landroid/media/AudioTrack;
    //   24: invokevirtual 216	android/media/AudioTrack:stop	()V
    //   27: aload_0
    //   28: getfield 34	org/webrtc/voiceengine/WebRtcAudioTrack:_audioTrack	Landroid/media/AudioTrack;
    //   31: invokevirtual 219	android/media/AudioTrack:flush	()V
    //   34: aload_0
    //   35: getfield 34	org/webrtc/voiceengine/WebRtcAudioTrack:_audioTrack	Landroid/media/AudioTrack;
    //   38: invokevirtual 114	android/media/AudioTrack:release	()V
    //   41: aload_0
    //   42: aconst_null
    //   43: putfield 34	org/webrtc/voiceengine/WebRtcAudioTrack:_audioTrack	Landroid/media/AudioTrack;
    //   46: aload_0
    //   47: iconst_1
    //   48: putfield 41	org/webrtc/voiceengine/WebRtcAudioTrack:_doPlayInit	Z
    //   51: aload_0
    //   52: getfield 39	org/webrtc/voiceengine/WebRtcAudioTrack:_playLock	Ljava/util/concurrent/locks/ReentrantLock;
    //   55: invokevirtual 130	java/util/concurrent/locks/ReentrantLock:unlock	()V
    //   58: aload_0
    //   59: iconst_0
    //   60: putfield 47	org/webrtc/voiceengine/WebRtcAudioTrack:_isPlaying	Z
    //   63: iconst_0
    //   64: ireturn
    //   65: astore_2
    //   66: aload_2
    //   67: invokevirtual 209	java/lang/IllegalStateException:printStackTrace	()V
    //   70: aload_0
    //   71: iconst_1
    //   72: putfield 41	org/webrtc/voiceengine/WebRtcAudioTrack:_doPlayInit	Z
    //   75: aload_0
    //   76: getfield 39	org/webrtc/voiceengine/WebRtcAudioTrack:_playLock	Ljava/util/concurrent/locks/ReentrantLock;
    //   79: invokevirtual 130	java/util/concurrent/locks/ReentrantLock:unlock	()V
    //   82: iconst_m1
    //   83: ireturn
    //   84: astore_2
    //   85: aload_0
    //   86: iconst_1
    //   87: putfield 41	org/webrtc/voiceengine/WebRtcAudioTrack:_doPlayInit	Z
    //   90: aload_0
    //   91: getfield 39	org/webrtc/voiceengine/WebRtcAudioTrack:_playLock	Ljava/util/concurrent/locks/ReentrantLock;
    //   94: invokevirtual 130	java/util/concurrent/locks/ReentrantLock:unlock	()V
    //   97: aload_2
    //   98: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	99	0	this	WebRtcAudioTrack
    //   14	4	1	i	int
    //   65	2	2	localIllegalStateException	IllegalStateException
    //   84	14	2	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   20	27	65	java/lang/IllegalStateException
    //   7	15	84	finally
    //   20	27	84	finally
    //   27	34	84	finally
    //   34	46	84	finally
    //   66	70	84	finally
  }
}
