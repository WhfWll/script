package cn.domob.ui.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseExpandableListAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import cn.domob.ui.item.DownLoadListItem;
import cn.domob.ui.main.Logger;
import cn.domob.ui.utility.DId;
import cn.domob.ui.utility.DLayout;
import cn.domob.wall.core.DService;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class DownloadManagerListAdapter
  extends BaseExpandableListAdapter
{
  private static Logger mLogger = new Logger(DownloadManagerListAdapter.class.getSimpleName());
  private ArrayList<List<DownLoadListItem>> mChildList;
  private Context mContext;
  private ArrayList<String> mGroupList;
  private int[] mPos;
  private View mSlidingMenu;
  private View mViewStub;
  private Map<int[], View> mViewStubMap;
  
  public DownloadManagerListAdapter(Context paramContext, DService paramDService, ArrayList<String> paramArrayList, ArrayList<List<DownLoadListItem>> paramArrayList1, Map<int[], View> paramMap)
  {
    mContext = paramContext;
    mChildList = paramArrayList1;
    mGroupList = paramArrayList;
    mViewStubMap = paramMap;
  }
  
  public Object getChild(int paramInt1, int paramInt2)
  {
    return ((List)mChildList.get(paramInt1)).get(paramInt2);
  }
  
  public long getChildId(int paramInt1, int paramInt2)
  {
    return paramInt2;
  }
  
  public ArrayList<List<DownLoadListItem>> getChildList()
  {
    return mChildList;
  }
  
  public View getChildView(int paramInt1, int paramInt2, boolean paramBoolean, View paramView, ViewGroup paramViewGroup)
  {
    paramViewGroup = paramView;
    if (paramView == null)
    {
      mLogger.debugLog("convertView is null");
      paramViewGroup = (LinearLayout)LayoutInflater.from(mContext).inflate(DLayout.getLayoutInt(mContext, "l_download_list_item"), null);
    }
    mSlidingMenu = paramViewGroup.findViewById(DId.getIdInt(mContext, "ll_sliding_menu"));
    paramView = mViewStubMap.entrySet().iterator();
    while (paramView.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)paramView.next();
      mPos = ((int[])localEntry.getKey());
      mViewStub = ((View)localEntry.getValue());
    }
    if (mPos != null)
    {
      if ((mPos[0] != paramInt1) || (mPos[1] != paramInt2)) {
        mSlidingMenu.setVisibility(8);
      }
      if ((mPos[0] == paramInt1) && (mPos[1] == paramInt2)) {
        mViewStub.setVisibility(8);
      }
    }
    ((DownLoadListItem)((List)mChildList.get(paramInt1)).get(paramInt2)).bindViews(paramViewGroup, paramInt1, paramInt2);
    return paramViewGroup;
  }
  
  public int getChildrenCount(int paramInt)
  {
    return ((List)mChildList.get(paramInt)).size();
  }
  
  public Object getGroup(int paramInt)
  {
    return mGroupList.get(paramInt);
  }
  
  public int getGroupCount()
  {
    return mGroupList.size();
  }
  
  public long getGroupId(int paramInt)
  {
    return paramInt;
  }
  
  public ArrayList<String> getGroupList()
  {
    return mGroupList;
  }
  
  public View getGroupView(int paramInt, boolean paramBoolean, View paramView, ViewGroup paramViewGroup)
  {
    paramView = (LinearLayout)LayoutInflater.from(mContext).inflate(DLayout.getLayoutInt(mContext, "l_download_group_item"), null);
    ((TextView)paramView.findViewById(DId.getIdInt(mContext, "tv_download"))).setText(getGroup(paramInt).toString());
    return paramView;
  }
  
  public boolean hasStableIds()
  {
    return true;
  }
  
  public boolean isChildSelectable(int paramInt1, int paramInt2)
  {
    return true;
  }
  
  public void setChildList(ArrayList<List<DownLoadListItem>> paramArrayList)
  {
    mChildList = paramArrayList;
  }
  
  public void setGroupList(ArrayList<String> paramArrayList)
  {
    mGroupList = paramArrayList;
  }
  
  static class a
  {
    ImageView a;
    TextView b;
    ProgressBar c;
    TextView d;
    TextView e;
    ImageView f;
    TextView g;
    TextView h;
    
    a() {}
  }
}
