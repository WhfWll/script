package cn.domob.wall.core;

import android.content.Context;
import android.graphics.Bitmap;
import android.view.View;
import android.widget.ImageView;
import cn.domob.wall.core.bean.AdExtend;
import cn.domob.wall.core.bean.AdInfo;
import cn.domob.wall.core.bean.ControlInfo;
import cn.domob.wall.core.download.k;
import java.util.ArrayList;
import java.util.List;

public class DService
{
  private static String d = "online";
  private b a;
  private a b;
  private k c;
  
  public DService(Context paramContext, String paramString1, String paramString2)
  {
    a = new b(paramContext, paramString1, paramString2);
    b = new a(paramContext, a);
    c = k.a(paramContext);
  }
  
  public static String getEndpoint()
  {
    return d;
  }
  
  public static void setEndpoint(String paramString)
  {
    d = paramString;
  }
  
  public void doClickDetailsPageButtonReport(AdInfo paramAdInfo)
  {
    b.d(paramAdInfo);
  }
  
  public void doClickWallItemButtonReport(AdInfo paramAdInfo)
  {
    b.e(paramAdInfo);
  }
  
  public void doClickWallItemReport(AdInfo paramAdInfo)
  {
    b.f(paramAdInfo);
  }
  
  public void doDownLoadReport(AdInfo paramAdInfo, ReportDownLoadType paramReportDownLoadType)
  {
    b.a(paramAdInfo, paramReportDownLoadType);
  }
  
  public void doEWallReport(EWallReportType paramEWallReportType)
  {
    b.a(paramEWallReportType);
  }
  
  public void doImpReports(ArrayList<AdInfo> paramArrayList)
  {
    b.a(paramArrayList);
  }
  
  public void doUserActionReport(ReportUserActionType paramReportUserActionType)
  {
    b.a(paramReportUserActionType);
  }
  
  public View getEView(Context paramContext)
  {
    return a.a(paramContext);
  }
  
  public void onClickDetailsPageButton(AdInfo paramAdInfo)
  {
    b.a(paramAdInfo);
  }
  
  public void onClickWallItem(AdInfo paramAdInfo)
  {
    b.c(paramAdInfo);
  }
  
  public void onClickWallItemButton(AdInfo paramAdInfo)
  {
    b.b(paramAdInfo);
  }
  
  public void requestDataAsyn()
  {
    a.a();
  }
  
  public void requestDetailsDataAsyn(String paramString)
  {
    a.b(paramString);
  }
  
  public void requestHotSearchDataAsyn()
  {
    a.c();
  }
  
  public void requestImage(String paramString, ImageView paramImageView, OnImageDownload paramOnImageDownload)
  {
    c.a(paramString, paramImageView, paramOnImageDownload);
  }
  
  public void requestListsDataAsyn()
  {
    a.b();
  }
  
  public void requestSearchDataAsyn(String paramString)
  {
    a.a(paramString);
  }
  
  public void setReceiveDataListener(ReceiveDataListener paramReceiveDataListener)
  {
    a.a(paramReceiveDataListener);
  }
  
  public void setReceiveDetailsDataListener(ReceiveDetailsDataListener paramReceiveDetailsDataListener)
  {
    a.a(paramReceiveDetailsDataListener);
  }
  
  public void setReceiveHotSearchDataListener(ReceiveHotSearchDataListener paramReceiveHotSearchDataListener)
  {
    a.a(paramReceiveHotSearchDataListener);
  }
  
  public void setReceiveListDataListener(ReceiveListDataListener paramReceiveListDataListener)
  {
    a.a(paramReceiveListDataListener);
  }
  
  public void setReceiveSearchDataListener(ReceiveSearchDataListener paramReceiveSearchDataListener)
  {
    a.a(paramReceiveSearchDataListener);
  }
  
  public void setloadImgLock()
  {
    c.b();
  }
  
  public void setloadImgUnLock()
  {
    c.c();
  }
  
  public static enum EWallReportType
  {
    static
    {
      E_ENTRY_SHOW = new EWallReportType("E_ENTRY_SHOW", 1);
      E_ENTRY_CLICK = new EWallReportType("E_ENTRY_CLICK", 2);
      E_PAGE_REQ = new EWallReportType("E_PAGE_REQ", 3);
      E_PAGE_SHOW = new EWallReportType("E_PAGE_SHOW", 4);
    }
    
    private EWallReportType() {}
  }
  
  public static enum ErrorCode
  {
    private ErrorCode() {}
  }
  
  public static abstract interface OnImageDownload
  {
    public abstract void onDownloadFail(String paramString, ImageView paramImageView);
    
    public abstract void onDownloadSuc(Bitmap paramBitmap, String paramString, ImageView paramImageView);
  }
  
  public static abstract interface ReceiveDataListener
  {
    public abstract void onFailReceiveData(DService.ErrorCode paramErrorCode, String paramString);
    
    public abstract void onSuccessReceiveData(List<AdInfo> paramList1, List<AdInfo> paramList2, ControlInfo paramControlInfo, List<AdExtend> paramList);
  }
  
  public static abstract interface ReceiveDetailsDataListener
  {
    public abstract void onFailReceiveData(DService.ErrorCode paramErrorCode, String paramString);
    
    public abstract void onSuccessReceiveData(List<AdInfo> paramList);
  }
  
  public static abstract interface ReceiveHotSearchDataListener
  {
    public abstract void onFailReceiveData(DService.ErrorCode paramErrorCode, String paramString);
    
    public abstract void onSuccessReceiveData(List<String> paramList);
  }
  
  public static abstract interface ReceiveListDataListener
  {
    public abstract void onFailReceiveData(DService.ErrorCode paramErrorCode, String paramString);
    
    public abstract void onSuccessReceiveData(List<AdInfo> paramList1, List<AdInfo> paramList2, ControlInfo paramControlInfo, List<AdExtend> paramList);
  }
  
  public static abstract interface ReceiveSearchDataListener
  {
    public abstract void onFailReceiveData(DService.ErrorCode paramErrorCode, String paramString);
    
    public abstract void onSuccessReceiveData(List<AdInfo> paramList1, List<AdInfo> paramList2);
  }
  
  public static enum ReportDownLoadType
  {
    static
    {
      DL_START = new ReportDownLoadType("DL_START", 1);
      DL_REPEAT = new ReportDownLoadType("DL_REPEAT", 2);
      DL_FINISH = new ReportDownLoadType("DL_FINISH", 3);
      DL_FAILED = new ReportDownLoadType("DL_FAILED", 4);
      DL_CANCEL = new ReportDownLoadType("DL_CANCEL", 5);
      INSTALL_SUCCESS = new ReportDownLoadType("INSTALL_SUCCESS", 6);
    }
    
    private ReportDownLoadType() {}
  }
  
  public static enum ReportUserActionType
  {
    private ReportUserActionType() {}
  }
}
