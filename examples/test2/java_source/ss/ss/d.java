package ss.ss;

import java.util.logging.Logger;
import javax.net.ssl.SSLSocket;
import ss.a;
import ss.ac;
import ss.l;
import ss.n;
import ss.ss.gK.w;
import ss.ss.pK.c;
import ss.w.a;

public abstract class d
{
  public static final Logger a = Logger.getLogger(ac.class.getName());
  public static d b;
  
  public d() {}
  
  public abstract e a(ac paramAc);
  
  public abstract i a(l paramL);
  
  public abstract c a(l paramL, a paramA, w paramW);
  
  public abstract void a(n paramN, SSLSocket paramSSLSocket, boolean paramBoolean);
  
  public abstract void a(w.a paramA, String paramString);
  
  public abstract boolean a(l paramL, c paramC);
  
  public abstract void b(l paramL, c paramC);
}
