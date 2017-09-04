package cn.domob.ui.view;

import android.content.Context;
import android.graphics.Bitmap;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import cn.domob.ui.main.Logger;
import cn.domob.ui.utility.DDrawable;
import cn.domob.ui.utility.DId;
import cn.domob.ui.utility.DLayout;
import cn.domob.wall.core.DService;
import cn.domob.wall.core.DService.OnImageDownload;

public class HandleView
{
  private static Logger mLogger = new Logger(HandleView.class.getSimpleName());
  private Context mContext;
  private DService mDService;
  private String mHandlerUrl;
  
  public HandleView(Context paramContext, DService paramDService, String paramString)
  {
    mContext = paramContext;
    mDService = paramDService;
    mHandlerUrl = paramString;
  }
  
  public View initHandleView()
  {
    RelativeLayout localRelativeLayout1 = (RelativeLayout)LayoutInflater.from(mContext).inflate(DLayout.getLayoutInt(mContext, "l_handle"), null);
    ImageView localImageView = (ImageView)localRelativeLayout1.findViewById(DId.getIdInt(mContext, "handle_background"));
    RelativeLayout localRelativeLayout2 = (RelativeLayout)localRelativeLayout1.findViewById(DId.getIdInt(mContext, "handle_num_background"));
    TextView localTextView = (TextView)localRelativeLayout1.findViewById(DId.getIdInt(mContext, "handle_num"));
    ((RelativeLayout)localRelativeLayout1.findViewById(DId.getIdInt(mContext, "handleRelativeLayout"))).setVisibility(0);
    if ((mHandlerUrl != null) && (mHandlerUrl != ""))
    {
      mLogger.debugLog("入口图片URL：" + mHandlerUrl);
      String str = mHandlerUrl;
      localImageView.setTag(str);
      mDService.requestImage(str, localImageView, new DService.OnImageDownload()
      {
        public void onDownloadFail(String paramAnonymousString, ImageView paramAnonymousImageView)
        {
          HandleView.mLogger.debugLog("fetch handler fail");
          paramAnonymousImageView.setImageResource(DDrawable.getDrawableInt(mContext, "u_handle_background"));
        }
        
        public void onDownloadSuc(Bitmap paramAnonymousBitmap, String paramAnonymousString, ImageView paramAnonymousImageView)
        {
          if (paramAnonymousImageView.getTag().equals(paramAnonymousString))
          {
            HandleView.mLogger.debugLog("fetch handler success");
            if (paramAnonymousBitmap != null) {
              paramAnonymousImageView.setImageBitmap(paramAnonymousBitmap);
            }
          }
        }
      });
    }
    for (;;)
    {
      localRelativeLayout2.setVisibility(4);
      localTextView.setVisibility(4);
      return localRelativeLayout1;
      localImageView.setImageResource(DDrawable.getDrawableInt(mContext, "u_handle_background"));
    }
  }
}
