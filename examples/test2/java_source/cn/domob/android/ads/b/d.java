package cn.domob.android.ads.b;

import java.util.Map;

class d
  extends b
{
  d(Map<String, String> paramMap, m paramM)
  {
    super(paramMap, paramM);
  }
  
  void a()
  {
    int j = a("w");
    int k = a("h");
    String str = b("url");
    boolean bool1 = d("shouldUseCustomClose");
    boolean bool2 = d("lockOrientation");
    int i = j;
    if (j <= 0) {
      i = b.c().c;
    }
    j = k;
    if (k <= 0) {
      j = b.c().d;
    }
    b.c().a(str, i, j, bool1, bool2);
  }
}
