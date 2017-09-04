import android.util.Log;
import com.arrownock.live.VideoView;
import java.nio.FloatBuffer;
import java.util.concurrent.LinkedBlockingQueue;
import org.webrtc.VideoRenderer.Callbacks;
import org.webrtc.VideoRenderer.I420Frame;

public final class cx
  implements VideoRenderer.Callbacks
{
  private float jdField_a_of_type_Float;
  private int jdField_a_of_type_Int;
  private long jdField_a_of_type_Long = -1L;
  private VideoView jdField_a_of_type_ComArrownockLiveVideoView;
  private cv jdField_a_of_type_Cv;
  private cw jdField_a_of_type_Cw;
  private final Object jdField_a_of_type_JavaLangObject = new Object();
  private FloatBuffer jdField_a_of_type_JavaNioFloatBuffer;
  private LinkedBlockingQueue<VideoRenderer.I420Frame> jdField_a_of_type_JavaUtilConcurrentLinkedBlockingQueue;
  private VideoRenderer.I420Frame jdField_a_of_type_OrgWebrtcVideoRenderer$I420Frame;
  private boolean jdField_a_of_type_Boolean;
  private float[] jdField_a_of_type_ArrayOfFloat = new float[16];
  private int[] jdField_a_of_type_ArrayOfInt = { -1, -1, -1 };
  private float jdField_b_of_type_Float;
  private int jdField_b_of_type_Int;
  private long jdField_b_of_type_Long;
  private FloatBuffer jdField_b_of_type_JavaNioFloatBuffer;
  private VideoRenderer.I420Frame jdField_b_of_type_OrgWebrtcVideoRenderer$I420Frame;
  private boolean jdField_b_of_type_Boolean;
  private float jdField_c_of_type_Float;
  private int jdField_c_of_type_Int;
  private long jdField_c_of_type_Long;
  private boolean jdField_c_of_type_Boolean;
  private float jdField_d_of_type_Float;
  private int jdField_d_of_type_Int = -1;
  private int e;
  private int f;
  private int g;
  private int h;
  private int i;
  private int j;
  private int k;
  
  private cx(ct paramCt, VideoView paramVideoView, int paramInt, cw paramCw, boolean paramBoolean)
  {
    Log.d("MediaStreamsRenderer", "YuvImageRenderer.Create id: " + paramInt);
    jdField_a_of_type_ComArrownockLiveVideoView = paramVideoView;
    jdField_a_of_type_Int = paramInt;
    jdField_a_of_type_Cw = paramCw;
    jdField_a_of_type_Boolean = paramBoolean;
    jdField_a_of_type_JavaUtilConcurrentLinkedBlockingQueue = new LinkedBlockingQueue(1);
    jdField_a_of_type_Float = -1.0F;
    jdField_c_of_type_Float = 1.0F;
    jdField_b_of_type_Float = Math.min(1.0F, 1.0F);
    jdField_d_of_type_Float = Math.max(-1.0F, -1.0F);
    jdField_a_of_type_JavaNioFloatBuffer = ct.a(new float[] { jdField_a_of_type_Float, jdField_c_of_type_Float, jdField_a_of_type_Float, jdField_d_of_type_Float, jdField_b_of_type_Float, jdField_c_of_type_Float, jdField_b_of_type_Float, jdField_d_of_type_Float });
    jdField_b_of_type_JavaNioFloatBuffer = ct.a(new float[] { 0.0F, 0.0F, 0.0F, 1.0F, 1.0F, 0.0F, 1.0F, 1.0F });
    jdField_c_of_type_Boolean = false;
  }
  
  public final void a(int paramInt1, int paramInt2)
  {
    synchronized (jdField_a_of_type_JavaLangObject)
    {
      h = paramInt1;
      i = paramInt2;
      jdField_c_of_type_Boolean = true;
      return;
    }
  }
  
  public final void renderFrame(VideoRenderer.I420Frame paramI420Frame)
  {
    long l1;
    for (;;)
    {
      try
      {
        l1 = System.nanoTime();
        e += 1;
        if ((jdField_a_of_type_OrgWebrtcVideoRenderer$I420Frame == null) || (jdField_b_of_type_OrgWebrtcVideoRenderer$I420Frame == null))
        {
          f += 1;
          return;
        }
        if (!yuvFrame) {
          break label225;
        }
        if ((yuvStrides[0] != width) || (yuvStrides[1] != width / 2) || (yuvStrides[2] != width / 2))
        {
          Log.e("MediaStreamsRenderer", "Incorrect strides " + yuvStrides[0] + ", " + yuvStrides[1] + ", " + yuvStrides[2]);
          continue;
        }
        if (width != jdField_a_of_type_OrgWebrtcVideoRenderer$I420Frame.width) {
          break label185;
        }
      }
      finally {}
      if (height != jdField_a_of_type_OrgWebrtcVideoRenderer$I420Frame.height) {
        label185:
        throw new RuntimeException("Wrong frame size " + width + " x " + height);
      }
      label225:
      if (jdField_a_of_type_JavaUtilConcurrentLinkedBlockingQueue.size() <= 0) {
        break;
      }
      f += 1;
    }
    if (yuvFrame)
    {
      jdField_a_of_type_OrgWebrtcVideoRenderer$I420Frame.copyFrom(paramI420Frame);
      jdField_a_of_type_Cv = cv.jdField_a_of_type_Cv;
      jdField_a_of_type_JavaUtilConcurrentLinkedBlockingQueue.offer(jdField_a_of_type_OrgWebrtcVideoRenderer$I420Frame);
    }
    for (;;)
    {
      long l2 = jdField_c_of_type_Long;
      jdField_c_of_type_Long = (System.nanoTime() - l1 + l2);
      jdField_b_of_type_Boolean = true;
      jdField_a_of_type_ComArrownockLiveVideoView.requestRender();
      break;
      jdField_b_of_type_OrgWebrtcVideoRenderer$I420Frame.copyFrom(paramI420Frame);
      jdField_a_of_type_Cv = cv.b;
      jdField_a_of_type_JavaUtilConcurrentLinkedBlockingQueue.offer(jdField_b_of_type_OrgWebrtcVideoRenderer$I420Frame);
    }
  }
  
  public final void setSize(int paramInt1, int paramInt2)
  {
    Log.d("MediaStreamsRenderer", "ID: " + jdField_a_of_type_Int + ". YuvImageRenderer.setSize: " + paramInt1 + " x " + paramInt2);
    jdField_a_of_type_ComArrownockLiveVideoView.a(paramInt1, paramInt2);
    j = paramInt1;
    k = paramInt2;
    int m = paramInt1 / 2;
    int n = paramInt1 / 2;
    synchronized (jdField_a_of_type_JavaUtilConcurrentLinkedBlockingQueue)
    {
      jdField_a_of_type_JavaUtilConcurrentLinkedBlockingQueue.poll();
      jdField_a_of_type_OrgWebrtcVideoRenderer$I420Frame = new VideoRenderer.I420Frame(paramInt1, paramInt2, new int[] { paramInt1, m, n }, null);
      jdField_b_of_type_OrgWebrtcVideoRenderer$I420Frame = new VideoRenderer.I420Frame(paramInt1, paramInt2, null, -1);
      jdField_c_of_type_Boolean = true;
      return;
    }
  }
}
