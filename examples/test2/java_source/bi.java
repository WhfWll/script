import com.arrownock.exception.ArrownockException;
import com.arrownock.live.AnLive;
import com.arrownock.live.IAnLiveEventListener;
import com.arrownock.live.IStartCallCallback;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

public final class bi
{
  public bi(AnLive paramAnLive) {}
  
  public final void a(String paramString1, List<String> paramList, String paramString2, ArrownockException paramArrownockException)
  {
    if ((paramArrownockException == null) || (AnLive.access$100(a) != null)) {}
    try
    {
      AnLive.access$100(a).onFailure(paramArrownockException);
      for (;;)
      {
        AnLive.access$102(a, null);
        return;
        AnLive.access$202(a, paramString1);
        AnLive.access$302(a, true);
        paramArrownockException = paramList.iterator();
        while (paramArrownockException.hasNext())
        {
          String str = (String)paramArrownockException.next();
          if ((str != null) && (!str.equals(AnLive.access$400(a).getPartyId()))) {
            AnLive.access$502(a, str);
          }
        }
        if (AnLive.access$100(a) != null) {}
        try
        {
          AnLive.access$100(a).onReady(paramString1);
          if (AnLive.access$400(a) == null) {
            continue;
          }
          try
          {
            AnLive.access$400(a).sendInvitations(paramString1, paramList, paramString2, AnLive.access$600(a));
          }
          catch (Exception paramList)
          {
            AnLive.access$400(a).terminateSession(paramString1);
          }
        }
        catch (Exception paramArrownockException)
        {
          for (;;) {}
        }
      }
    }
    catch (Exception paramString1)
    {
      for (;;) {}
    }
  }
  
  public final void a(boolean paramBoolean, String paramString1, List<String> paramList, String paramString2, Date paramDate)
  {
    if (paramBoolean)
    {
      AnLive.access$202(a, paramString1);
      AnLive.access$302(a, true);
      AnLive.access$802(a, paramString2);
      AnLive.access$502(a, (String)paramList.get(0));
      try
      {
        AnLive.access$900(a).onReceivedInvitation(true, paramString1, (String)paramList.get(0), paramString2, paramDate);
        return;
      }
      catch (Exception paramString1)
      {
        paramString1.printStackTrace();
        return;
      }
    }
    if (paramList != null) {}
    try
    {
      if (paramList.size() == 0)
      {
        AnLive.access$900(a).onReceivedInvitation(false, null, null, null, null);
        return;
      }
    }
    catch (Exception paramString1)
    {
      paramString1.printStackTrace();
      return;
    }
    AnLive.access$900(a).onReceivedInvitation(false, paramString1, (String)paramList.get(0), paramString2, paramDate);
  }
}
