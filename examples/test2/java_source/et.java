import java.io.IOException;
import java.io.InputStream;
import java.util.zip.GZIPInputStream;
import org.apache.http.HttpEntity;
import org.apache.http.entity.HttpEntityWrapper;

final class et
  extends HttpEntityWrapper
{
  public et(HttpEntity paramHttpEntity)
  {
    super(paramHttpEntity);
  }
  
  public final InputStream getContent()
    throws IOException
  {
    return new GZIPInputStream(wrappedEntity.getContent());
  }
  
  public final long getContentLength()
  {
    return -1L;
  }
}
