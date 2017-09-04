package cn.domob.ui.adapter;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import cn.domob.ui.item.AppListItem;
import java.util.ArrayList;
import java.util.List;

public class HomeGalleryAdapter
  extends BaseAdapter
{
  private List<AppListItem> mBannerList = new ArrayList();
  private Context mContext;
  
  public HomeGalleryAdapter(Context paramContext)
  {
    mContext = paramContext;
  }
  
  public List<AppListItem> getBannerList()
  {
    return mBannerList;
  }
  
  public int getCount()
  {
    return Integer.MAX_VALUE;
  }
  
  public Object getItem(int paramInt)
  {
    if (mBannerList.size() == 0) {
      return null;
    }
    return mBannerList.get(paramInt % mBannerList.size());
  }
  
  public long getItemId(int paramInt)
  {
    return paramInt;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    paramViewGroup = paramView;
    if (mBannerList.size() > 0)
    {
      paramInt %= mBannerList.size();
      paramViewGroup = ((AppListItem)mBannerList.get(paramInt)).bindBannerViews(paramView, paramInt);
    }
    return paramViewGroup;
  }
  
  public Context getmContext()
  {
    return mContext;
  }
  
  public void setBannerList(List<AppListItem> paramList)
  {
    mBannerList = paramList;
  }
}
