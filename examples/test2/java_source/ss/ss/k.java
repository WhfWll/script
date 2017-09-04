package ss.ss;

import java.util.concurrent.ThreadFactory;

final class k
  implements ThreadFactory
{
  k(String paramString, boolean paramBoolean) {}
  
  public Thread newThread(Runnable paramRunnable)
  {
    paramRunnable = new Thread(paramRunnable, a);
    paramRunnable.setDaemon(b);
    return paramRunnable;
  }
}
