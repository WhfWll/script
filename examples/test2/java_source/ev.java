import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.io.IOException;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.HttpResponseException;
import org.apache.http.entity.BufferedHttpEntity;
import org.apache.http.util.EntityUtils;

public class ev
{
  private Handler a;
  
  public ev()
  {
    if (Looper.myLooper() != null) {
      a = new ew(this);
    }
  }
  
  protected final Message a(int paramInt, Object paramObject)
  {
    if (a != null) {
      return a.obtainMessage(paramInt, paramObject);
    }
    Message localMessage = new Message();
    what = paramInt;
    obj = paramObject;
    return localMessage;
  }
  
  protected final void a()
  {
    b(a(2, null));
  }
  
  protected void a(int paramInt, String paramString)
  {
    b(a(0, new Object[] { new Integer(paramInt), paramString }));
  }
  
  protected void a(Message paramMessage)
  {
    switch (what)
    {
    default: 
      return;
    case 0: 
      ((Integer)((Object[])obj)[0]).intValue();
      return;
    }
    b((String)((Object[])obj)[1]);
  }
  
  public void a(String paramString) {}
  
  protected final void a(Throwable paramThrowable, String paramString)
  {
    b(a(1, new Object[] { paramThrowable, paramString }));
  }
  
  protected void a(Throwable paramThrowable, byte[] paramArrayOfByte)
  {
    b(a(1, new Object[] { paramThrowable, paramArrayOfByte }));
  }
  
  void a(HttpResponse paramHttpResponse)
  {
    Object localObject = null;
    StatusLine localStatusLine = paramHttpResponse.getStatusLine();
    try
    {
      HttpEntity localHttpEntity = paramHttpResponse.getEntity();
      paramHttpResponse = localObject;
      if (localHttpEntity != null) {
        paramHttpResponse = EntityUtils.toString(new BufferedHttpEntity(localHttpEntity), "UTF-8");
      }
    }
    catch (IOException paramHttpResponse)
    {
      for (;;)
      {
        a(paramHttpResponse, null);
        paramHttpResponse = localObject;
      }
      a(localStatusLine.getStatusCode(), paramHttpResponse);
    }
    if (localStatusLine.getStatusCode() >= 300)
    {
      a(new HttpResponseException(localStatusLine.getStatusCode(), localStatusLine.getReasonPhrase()), paramHttpResponse);
      return;
    }
  }
  
  protected final void b()
  {
    b(a(3, null));
  }
  
  protected final void b(Message paramMessage)
  {
    if (a != null)
    {
      a.sendMessage(paramMessage);
      return;
    }
    a(paramMessage);
  }
  
  protected void b(String paramString)
  {
    a(paramString);
  }
}
