package org.webrtc.voiceengine;

import android.content.Context;
import android.media.AudioRecord;
import android.media.audiofx.AcousticEchoCanceler;
import android.media.audiofx.AudioEffect.Descriptor;
import android.os.Build.VERSION;
import android.util.Log;
import java.nio.ByteBuffer;
import java.util.concurrent.locks.ReentrantLock;

class WebRtcAudioRecord
{
  private AcousticEchoCanceler _aec = null;
  private AudioRecord _audioRecord = null;
  private int _bufferedRecSamples = 0;
  private Context _context;
  private boolean _doRecInit = true;
  private boolean _isRecording = false;
  private ByteBuffer _recBuffer;
  private final ReentrantLock _recLock = new ReentrantLock();
  private byte[] _tempBufRec;
  private boolean _useBuiltInAEC = false;
  final String logTag = "WebRtcAudioRecord-Java";
  
  WebRtcAudioRecord()
  {
    try
    {
      _recBuffer = ByteBuffer.allocateDirect(960);
      _tempBufRec = new byte['π'];
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
  
  public static boolean BuiltInAECIsAvailable()
  {
    if (!runningOnJellyBeanOrHigher()) {
      return false;
    }
    return AcousticEchoCanceler.isAvailable();
  }
  
  private void DoLog(String paramString)
  {
    Log.d("WebRtcAudioRecord-Java", paramString);
  }
  
  private void DoLogErr(String paramString)
  {
    Log.e("WebRtcAudioRecord-Java", paramString);
  }
  
  private int EnableBuiltInAEC(boolean paramBoolean)
  {
    DoLog("EnableBuiltInAEC(" + paramBoolean + ')');
    if (!runningOnJellyBeanOrHigher()) {
      return -1;
    }
    _useBuiltInAEC = paramBoolean;
    if (_aec != null)
    {
      if (_aec.setEnabled(paramBoolean) != 0)
      {
        DoLogErr("AcousticEchoCanceler.setEnabled failed");
        return -1;
      }
      DoLog("AcousticEchoCanceler.getEnabled: " + _aec.getEnabled());
    }
    return 0;
  }
  
  private int InitRecording(int paramInt1, int paramInt2)
  {
    Log.d("WebRtcAudioRecord-Java", "InitRecording");
    paramInt1 = AudioRecord.getMinBufferSize(paramInt2, 16, 2);
    _bufferedRecSamples = (paramInt2 / 200);
    if (_aec != null)
    {
      _aec.release();
      _aec = null;
    }
    if (_audioRecord != null)
    {
      _audioRecord.release();
      _audioRecord = null;
    }
    try
    {
      _audioRecord = new AudioRecord(7, paramInt2, 16, 2, paramInt1 << 1);
      if (_audioRecord.getState() != 1) {
        return -1;
      }
    }
    catch (Exception localException)
    {
      DoLog(localException.getMessage());
      return -1;
    }
    DoLog("AcousticEchoCanceler.isAvailable: " + BuiltInAECIsAvailable());
    if (!BuiltInAECIsAvailable()) {
      return _bufferedRecSamples;
    }
    _aec = AcousticEchoCanceler.create(_audioRecord.getAudioSessionId());
    if (_aec == null)
    {
      DoLogErr("AcousticEchoCanceler.create failed");
      return -1;
    }
    if (_aec.setEnabled(_useBuiltInAEC) != 0)
    {
      DoLogErr("AcousticEchoCanceler.setEnabled failed");
      return -1;
    }
    AudioEffect.Descriptor localDescriptor = _aec.getDescriptor();
    DoLog("AcousticEchoCanceler name: " + name + ", implementor: " + implementor + ", uuid: " + uuid);
    DoLog("AcousticEchoCanceler.getEnabled: " + _aec.getEnabled());
    return _bufferedRecSamples;
  }
  
  /* Error */
  private int RecordAudio(int paramInt)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 37	org/webrtc/voiceengine/WebRtcAudioRecord:_recLock	Ljava/util/concurrent/locks/ReentrantLock;
    //   4: invokevirtual 186	java/util/concurrent/locks/ReentrantLock:lock	()V
    //   7: aload_0
    //   8: getfield 32	org/webrtc/voiceengine/WebRtcAudioRecord:_audioRecord	Landroid/media/AudioRecord;
    //   11: astore 4
    //   13: aload 4
    //   15: ifnonnull +13 -> 28
    //   18: aload_0
    //   19: getfield 37	org/webrtc/voiceengine/WebRtcAudioRecord:_recLock	Ljava/util/concurrent/locks/ReentrantLock;
    //   22: invokevirtual 189	java/util/concurrent/locks/ReentrantLock:unlock	()V
    //   25: bipush -2
    //   27: ireturn
    //   28: aload_0
    //   29: getfield 39	org/webrtc/voiceengine/WebRtcAudioRecord:_doRecInit	Z
    //   32: istore_3
    //   33: iload_3
    //   34: iconst_1
    //   35: if_icmpne +13 -> 48
    //   38: bipush -19
    //   40: invokestatic 195	android/os/Process:setThreadPriority	(I)V
    //   43: aload_0
    //   44: iconst_0
    //   45: putfield 39	org/webrtc/voiceengine/WebRtcAudioRecord:_doRecInit	Z
    //   48: aload_0
    //   49: getfield 59	org/webrtc/voiceengine/WebRtcAudioRecord:_recBuffer	Ljava/nio/ByteBuffer;
    //   52: invokevirtual 199	java/nio/ByteBuffer:rewind	()Ljava/nio/Buffer;
    //   55: pop
    //   56: aload_0
    //   57: getfield 32	org/webrtc/voiceengine/WebRtcAudioRecord:_audioRecord	Landroid/media/AudioRecord;
    //   60: aload_0
    //   61: getfield 61	org/webrtc/voiceengine/WebRtcAudioRecord:_tempBufRec	[B
    //   64: iconst_0
    //   65: iload_1
    //   66: invokevirtual 203	android/media/AudioRecord:read	([BII)I
    //   69: istore_2
    //   70: aload_0
    //   71: getfield 59	org/webrtc/voiceengine/WebRtcAudioRecord:_recBuffer	Ljava/nio/ByteBuffer;
    //   74: aload_0
    //   75: getfield 61	org/webrtc/voiceengine/WebRtcAudioRecord:_tempBufRec	[B
    //   78: invokevirtual 207	java/nio/ByteBuffer:put	([B)Ljava/nio/ByteBuffer;
    //   81: pop
    //   82: iload_2
    //   83: iload_1
    //   84: if_icmpeq +79 -> 163
    //   87: aload_0
    //   88: getfield 37	org/webrtc/voiceengine/WebRtcAudioRecord:_recLock	Ljava/util/concurrent/locks/ReentrantLock;
    //   91: invokevirtual 189	java/util/concurrent/locks/ReentrantLock:unlock	()V
    //   94: iconst_m1
    //   95: ireturn
    //   96: astore 4
    //   98: aload_0
    //   99: new 94	java/lang/StringBuilder
    //   102: dup
    //   103: ldc -47
    //   105: invokespecial 98	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   108: aload 4
    //   110: invokevirtual 65	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   113: invokevirtual 167	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   116: invokevirtual 108	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   119: invokespecial 69	org/webrtc/voiceengine/WebRtcAudioRecord:DoLog	(Ljava/lang/String;)V
    //   122: goto -79 -> 43
    //   125: astore 4
    //   127: aload_0
    //   128: new 94	java/lang/StringBuilder
    //   131: dup
    //   132: ldc -45
    //   134: invokespecial 98	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   137: aload 4
    //   139: invokevirtual 65	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   142: invokevirtual 167	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   145: invokevirtual 108	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   148: invokespecial 115	org/webrtc/voiceengine/WebRtcAudioRecord:DoLogErr	(Ljava/lang/String;)V
    //   151: aload_0
    //   152: getfield 37	org/webrtc/voiceengine/WebRtcAudioRecord:_recLock	Ljava/util/concurrent/locks/ReentrantLock;
    //   155: invokevirtual 189	java/util/concurrent/locks/ReentrantLock:unlock	()V
    //   158: aload_0
    //   159: getfield 43	org/webrtc/voiceengine/WebRtcAudioRecord:_bufferedRecSamples	I
    //   162: ireturn
    //   163: aload_0
    //   164: getfield 37	org/webrtc/voiceengine/WebRtcAudioRecord:_recLock	Ljava/util/concurrent/locks/ReentrantLock;
    //   167: invokevirtual 189	java/util/concurrent/locks/ReentrantLock:unlock	()V
    //   170: goto -12 -> 158
    //   173: astore 4
    //   175: aload_0
    //   176: getfield 37	org/webrtc/voiceengine/WebRtcAudioRecord:_recLock	Ljava/util/concurrent/locks/ReentrantLock;
    //   179: invokevirtual 189	java/util/concurrent/locks/ReentrantLock:unlock	()V
    //   182: aload 4
    //   184: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	185	0	this	WebRtcAudioRecord
    //   0	185	1	paramInt	int
    //   69	16	2	i	int
    //   32	4	3	bool	boolean
    //   11	3	4	localAudioRecord	AudioRecord
    //   96	13	4	localException1	Exception
    //   125	13	4	localException2	Exception
    //   173	10	4	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   38	43	96	java/lang/Exception
    //   7	13	125	java/lang/Exception
    //   28	33	125	java/lang/Exception
    //   43	48	125	java/lang/Exception
    //   48	82	125	java/lang/Exception
    //   98	122	125	java/lang/Exception
    //   7	13	173	finally
    //   28	33	173	finally
    //   38	43	173	finally
    //   43	48	173	finally
    //   48	82	173	finally
    //   98	122	173	finally
    //   127	151	173	finally
  }
  
  private int StartRecording()
  {
    Log.d("WebRtcAudioRecord-Java", "StartRecording");
    try
    {
      _audioRecord.startRecording();
      _isRecording = true;
      return 0;
    }
    catch (IllegalStateException localIllegalStateException)
    {
      localIllegalStateException.printStackTrace();
    }
    return -1;
  }
  
  /* Error */
  private int StopRecording()
  {
    // Byte code:
    //   0: ldc 49
    //   2: ldc -33
    //   4: invokestatic 86	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   7: pop
    //   8: aload_0
    //   9: getfield 37	org/webrtc/voiceengine/WebRtcAudioRecord:_recLock	Ljava/util/concurrent/locks/ReentrantLock;
    //   12: invokevirtual 186	java/util/concurrent/locks/ReentrantLock:lock	()V
    //   15: aload_0
    //   16: getfield 32	org/webrtc/voiceengine/WebRtcAudioRecord:_audioRecord	Landroid/media/AudioRecord;
    //   19: invokevirtual 226	android/media/AudioRecord:getRecordingState	()I
    //   22: istore_1
    //   23: iload_1
    //   24: iconst_3
    //   25: if_icmpne +10 -> 35
    //   28: aload_0
    //   29: getfield 32	org/webrtc/voiceengine/WebRtcAudioRecord:_audioRecord	Landroid/media/AudioRecord;
    //   32: invokevirtual 229	android/media/AudioRecord:stop	()V
    //   35: aload_0
    //   36: getfield 45	org/webrtc/voiceengine/WebRtcAudioRecord:_aec	Landroid/media/audiofx/AcousticEchoCanceler;
    //   39: ifnull +15 -> 54
    //   42: aload_0
    //   43: getfield 45	org/webrtc/voiceengine/WebRtcAudioRecord:_aec	Landroid/media/audiofx/AcousticEchoCanceler;
    //   46: invokevirtual 132	android/media/audiofx/AcousticEchoCanceler:release	()V
    //   49: aload_0
    //   50: aconst_null
    //   51: putfield 45	org/webrtc/voiceengine/WebRtcAudioRecord:_aec	Landroid/media/audiofx/AcousticEchoCanceler;
    //   54: aload_0
    //   55: getfield 32	org/webrtc/voiceengine/WebRtcAudioRecord:_audioRecord	Landroid/media/AudioRecord;
    //   58: invokevirtual 133	android/media/AudioRecord:release	()V
    //   61: aload_0
    //   62: aconst_null
    //   63: putfield 32	org/webrtc/voiceengine/WebRtcAudioRecord:_audioRecord	Landroid/media/AudioRecord;
    //   66: aload_0
    //   67: iconst_1
    //   68: putfield 39	org/webrtc/voiceengine/WebRtcAudioRecord:_doRecInit	Z
    //   71: aload_0
    //   72: getfield 37	org/webrtc/voiceengine/WebRtcAudioRecord:_recLock	Ljava/util/concurrent/locks/ReentrantLock;
    //   75: invokevirtual 189	java/util/concurrent/locks/ReentrantLock:unlock	()V
    //   78: aload_0
    //   79: iconst_0
    //   80: putfield 41	org/webrtc/voiceengine/WebRtcAudioRecord:_isRecording	Z
    //   83: iconst_0
    //   84: ireturn
    //   85: astore_2
    //   86: aload_2
    //   87: invokevirtual 221	java/lang/IllegalStateException:printStackTrace	()V
    //   90: aload_0
    //   91: iconst_1
    //   92: putfield 39	org/webrtc/voiceengine/WebRtcAudioRecord:_doRecInit	Z
    //   95: aload_0
    //   96: getfield 37	org/webrtc/voiceengine/WebRtcAudioRecord:_recLock	Ljava/util/concurrent/locks/ReentrantLock;
    //   99: invokevirtual 189	java/util/concurrent/locks/ReentrantLock:unlock	()V
    //   102: iconst_m1
    //   103: ireturn
    //   104: astore_2
    //   105: aload_0
    //   106: iconst_1
    //   107: putfield 39	org/webrtc/voiceengine/WebRtcAudioRecord:_doRecInit	Z
    //   110: aload_0
    //   111: getfield 37	org/webrtc/voiceengine/WebRtcAudioRecord:_recLock	Ljava/util/concurrent/locks/ReentrantLock;
    //   114: invokevirtual 189	java/util/concurrent/locks/ReentrantLock:unlock	()V
    //   117: aload_2
    //   118: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	119	0	this	WebRtcAudioRecord
    //   22	4	1	i	int
    //   85	2	2	localIllegalStateException	IllegalStateException
    //   104	14	2	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   28	35	85	java/lang/IllegalStateException
    //   15	23	104	finally
    //   28	35	104	finally
    //   35	54	104	finally
    //   54	66	104	finally
    //   86	90	104	finally
  }
  
  private static boolean runningOnJellyBeanOrHigher()
  {
    return Build.VERSION.SDK_INT >= 16;
  }
}
