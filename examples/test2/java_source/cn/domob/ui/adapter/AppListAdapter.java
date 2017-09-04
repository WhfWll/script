package cn.domob.ui.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.RelativeLayout;
import cn.domob.ui.item.AppListItem;
import cn.domob.ui.main.Logger;
import cn.domob.ui.utility.DLayout;
import java.util.ArrayList;
import java.util.List;

public class AppListAdapter
  extends BaseAdapter
{
  private static Logger mLogger = new Logger(AppListAdapter.class.getSimpleName());
  private Context mContext;
  private int mCount = 0;
  private List<AppListItem> mItemList = new ArrayList();
  private ListItemShowListener mListItemShowListener;
  private boolean mNeedNotify = true;
  
  public AppListAdapter(Context paramContext)
  {
    mContext = paramContext;
  }
  
  public int getCount()
  {
    if (mCount < mItemList.size()) {
      return mCount;
    }
    return mItemList.size();
  }
  
  public Object getItem(int paramInt)
  {
    return mItemList.get(paramInt);
  }
  
  public long getItemId(int paramInt)
  {
    return paramInt;
  }
  
  public int getItemSize()
  {
    return mItemList.size();
  }
  
  public ListItemShowListener getListItemShowListener()
  {
    return mListItemShowListener;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    mLogger.debugLog("getListView: " + paramInt);
    mLogger.ptLog("Start to get view " + paramInt);
    if ((mNeedNotify) && (mListItemShowListener != null))
    {
      mListItemShowListener.onListItemStartToShow();
      mNeedNotify = false;
    }
    paramViewGroup = paramView;
    if (paramView == null)
    {
      mLogger.ptLog("Start to init convertView " + paramInt);
      paramViewGroup = (RelativeLayout)LayoutInflater.from(mContext).inflate(DLayout.getLayoutInt(mContext, "l_home_list_element"), null);
      mLogger.ptLog("Finish to init convertView " + paramInt);
    }
    ((AppListItem)mItemList.get(paramInt)).bindListViews(paramViewGroup, paramInt);
    mLogger.ptLog("Finish to get view " + paramInt);
    return paramViewGroup;
  }
  
  public void setCount(int paramInt)
  {
    if (paramInt < mItemList.size()) {}
    for (;;)
    {
      mCount = paramInt;
      return;
      paramInt = mItemList.size();
    }
  }
  
  public void setItemList(List<AppListItem> paramList, int paramInt)
  {
    mItemList = paramList;
    mNeedNotify = true;
    if (paramList.size() > paramInt) {}
    for (;;)
    {
      mCount = paramInt;
      return;
      paramInt = paramList.size();
    }
  }
  
  public void setListItemShowListener(ListItemShowListener paramListItemShowListener)
  {
    mListItemShowListener = paramListItemShowListener;
  }
  
  public static abstract interface ListItemShowListener
  {
    public abstract void onListItemStartToShow();
  }
}
