package com.tencent.mm.sdk.b;

import android.os.Looper;
import java.lang.ref.WeakReference;
import java.util.LinkedList;
import java.util.concurrent.ConcurrentHashMap;

public final class d
  implements e.a
{
  private e aJ;
  private ConcurrentHashMap<Runnable, WeakReference<g>> aK = new ConcurrentHashMap();
  private int aL;
  private LinkedList<WeakReference<g>> aM = new LinkedList();
  
  public d()
  {
    aJ = new e(this);
    if (aJ.getLooper().getThread().getName().equals("initThread")) {
      b.a("MicroMsg.MMHandler", "MMHandler can not init handler with initThread looper, stack %s", new Object[] { h.u() });
    }
  }
  
  public d(Looper paramLooper)
  {
    aJ = new e(paramLooper, this);
    if (paramLooper.getThread().getName().equals("initThread")) {
      b.a("MicroMsg.MMHandler", "MMHandler can not init handler with initThread looper, stack %s", new Object[] { h.u() });
    }
  }
  
  public final void a(Runnable paramRunnable, g paramG)
  {
    aK.put(paramRunnable, new WeakReference(paramG));
  }
  
  public final void b(Runnable paramRunnable, g paramG)
  {
    WeakReference localWeakReference = (WeakReference)aK.get(paramRunnable);
    if ((localWeakReference != null) && (localWeakReference.get() != null) && (localWeakReference.get() == paramG))
    {
      aK.remove(paramRunnable);
      if (aL > 0)
      {
        if (aM.size() == aL) {
          aM.pop();
        }
        aM.add(localWeakReference);
      }
    }
  }
  
  public final boolean post(Runnable paramRunnable)
  {
    return aJ.post(paramRunnable);
  }
  
  public final String toString()
  {
    return "MMHandler(" + getClass().getName() + ")";
  }
}
