import android.opengl.EGL14;
import android.opengl.GLES20;
import android.opengl.GLSurfaceView.Renderer;
import android.os.Build.VERSION;
import android.util.Log;
import com.arrownock.live.VideoView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.CountDownLatch;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.opengles.GL10;

public final class ct
  implements GLSurfaceView.Renderer
{
  private static final int e = Build.VERSION.SDK_INT;
  private int jdField_a_of_type_Int;
  private VideoView jdField_a_of_type_ComArrownockLiveVideoView;
  private ArrayList<cx> jdField_a_of_type_JavaUtilArrayList;
  private boolean jdField_a_of_type_Boolean;
  private int b;
  private int c;
  private int d;
  
  public ct(VideoView paramVideoView)
  {
    jdField_a_of_type_ComArrownockLiveVideoView = paramVideoView;
    paramVideoView.setPreserveEGLContextOnPause(true);
    paramVideoView.setEGLContextClientVersion(2);
    paramVideoView.setRenderer(this);
    paramVideoView.setRenderMode(0);
    jdField_a_of_type_JavaUtilArrayList = new ArrayList();
  }
  
  private static int a(int paramInt, String paramString)
  {
    int[] arrayOfInt = new int[1];
    arrayOfInt[0] = 0;
    int i = GLES20.glCreateShader(paramInt);
    GLES20.glShaderSource(i, paramString);
    GLES20.glCompileShader(i);
    GLES20.glGetShaderiv(i, 35713, arrayOfInt, 0);
    if (arrayOfInt[0] != 1)
    {
      Log.e("MediaStreamsRenderer", "Could not compile shader " + paramInt + ":" + GLES20.glGetShaderInfoLog(i));
      throw new RuntimeException(GLES20.glGetShaderInfoLog(i));
    }
    b();
    return i;
  }
  
  private static int a(String paramString1, String paramString2)
  {
    int i = a(35633, paramString1);
    int j = a(35632, paramString2);
    int k = GLES20.glCreateProgram();
    if (k == 0) {
      throw new RuntimeException("Could not create program");
    }
    GLES20.glAttachShader(k, i);
    GLES20.glAttachShader(k, j);
    GLES20.glLinkProgram(k);
    paramString1 = new int[1];
    paramString1[0] = 0;
    GLES20.glGetProgramiv(k, 35714, paramString1, 0);
    if (paramString1[0] != 1)
    {
      Log.e("MediaStreamsRenderer", "Could not link program: " + GLES20.glGetProgramInfoLog(k));
      throw new RuntimeException(GLES20.glGetProgramInfoLog(k));
    }
    b();
    return k;
  }
  
  private static void b()
  {
    int j = GLES20.glGetError();
    if (j == 0) {}
    for (int i = 1;; i = 0)
    {
      String str = "GLES20 error: " + j;
      if (i != 0) {
        break;
      }
      throw new RuntimeException(str);
    }
  }
  
  public final cx a(cw arg1, boolean paramBoolean)
  {
    cx localCx = new cx(this, jdField_a_of_type_ComArrownockLiveVideoView, jdField_a_of_type_JavaUtilArrayList.size(), ???, paramBoolean, (byte)0);
    synchronized (jdField_a_of_type_JavaUtilArrayList)
    {
      CountDownLatch localCountDownLatch;
      if (jdField_a_of_type_Boolean)
      {
        localCountDownLatch = new CountDownLatch(1);
        jdField_a_of_type_ComArrownockLiveVideoView.queueEvent(new cu(this, localCx, localCountDownLatch));
      }
      try
      {
        localCountDownLatch.await();
        jdField_a_of_type_JavaUtilArrayList.add(localCx);
        return localCx;
      }
      catch (InterruptedException localInterruptedException)
      {
        throw new RuntimeException(localInterruptedException);
      }
    }
  }
  
  public final void onDrawFrame(GL10 arg1)
  {
    GLES20.glClear(16384);
    synchronized (jdField_a_of_type_JavaUtilArrayList)
    {
      Iterator localIterator = jdField_a_of_type_JavaUtilArrayList.iterator();
      if (localIterator.hasNext()) {
        cx.a((cx)localIterator.next());
      }
    }
  }
  
  public final void onSurfaceChanged(GL10 arg1, int paramInt1, int paramInt2)
  {
    jdField_a_of_type_Int = paramInt1;
    b = paramInt2;
    GLES20.glViewport(0, 0, paramInt1, paramInt2);
    synchronized (jdField_a_of_type_JavaUtilArrayList)
    {
      Iterator localIterator = jdField_a_of_type_JavaUtilArrayList.iterator();
      if (localIterator.hasNext()) {
        ((cx)localIterator.next()).a(jdField_a_of_type_Int, b);
      }
    }
  }
  
  public final void onSurfaceCreated(GL10 arg1, EGLConfig paramEGLConfig)
  {
    if (e >= 17) {
      EGL14.eglGetCurrentContext();
    }
    c = a("varying vec2 interp_tc;\nattribute vec4 in_pos;\nattribute vec2 in_tc;\n\nvoid main() {\n  gl_Position = in_pos;\n  interp_tc = in_tc;\n}\n", "precision mediump float;\nvarying vec2 interp_tc;\n\nuniform sampler2D y_tex;\nuniform sampler2D u_tex;\nuniform sampler2D v_tex;\n\nvoid main() {\n  float y = texture2D(y_tex, interp_tc).r;\n  float u = texture2D(u_tex, interp_tc).r - 0.5;\n  float v = texture2D(v_tex, interp_tc).r - 0.5;\n  gl_FragColor = vec4(y + 1.403 * v,                       y - 0.344 * u - 0.714 * v,                       y + 1.77 * u, 1);\n}\n");
    d = a("varying vec2 interp_tc;\nattribute vec4 in_pos;\nattribute vec2 in_tc;\n\nvoid main() {\n  gl_Position = in_pos;\n  interp_tc = in_tc;\n}\n", "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 interp_tc;\n\nuniform samplerExternalOES oes_tex;\n\nvoid main() {\n  gl_FragColor = texture2D(oes_tex, interp_tc);\n}\n");
    synchronized (jdField_a_of_type_JavaUtilArrayList)
    {
      paramEGLConfig = jdField_a_of_type_JavaUtilArrayList.iterator();
      if (paramEGLConfig.hasNext()) {
        cx.a((cx)paramEGLConfig.next(), c, d);
      }
    }
    jdField_a_of_type_Boolean = true;
    b();
    GLES20.glClearColor(0.15F, 0.15F, 0.15F, 1.0F);
  }
}
