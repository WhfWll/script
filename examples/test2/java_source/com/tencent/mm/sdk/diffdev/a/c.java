package com.tencent.mm.sdk.diffdev.a;

import com.tencent.mm.sdk.diffdev.OAuthListener;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

final class c
  implements Runnable
{
  c(b paramB) {}
  
  public final void run()
  {
    Object localObject = new ArrayList();
    ((List)localObject).addAll(a.a(ah.ag));
    localObject = ((List)localObject).iterator();
    while (((Iterator)localObject).hasNext()) {
      ((OAuthListener)((Iterator)localObject).next()).onQrcodeScanned();
    }
  }
}
