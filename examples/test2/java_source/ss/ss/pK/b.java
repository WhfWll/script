package ss.ss.pK;

import java.io.File;
import java.io.IOException;

final class b
  implements a
{
  b() {}
  
  public void a(File paramFile)
    throws IOException
  {
    if ((!paramFile.delete()) && (paramFile.exists())) {
      throw new IOException("failed to delete " + paramFile);
    }
  }
  
  public void a(File paramFile1, File paramFile2)
    throws IOException
  {
    a(paramFile2);
    if (!paramFile1.renameTo(paramFile2)) {
      throw new IOException("failed to rename " + paramFile1 + " to " + paramFile2);
    }
  }
  
  public boolean b(File paramFile)
  {
    return paramFile.exists();
  }
  
  public long c(File paramFile)
  {
    return paramFile.length();
  }
}
