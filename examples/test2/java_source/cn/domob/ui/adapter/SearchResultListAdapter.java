package cn.domob.ui.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import cn.domob.ui.item.SearchListItem;
import cn.domob.ui.utility.DLayout;
import cn.domob.wall.core.DService;
import java.util.List;

public class SearchResultListAdapter
  extends BaseAdapter
{
  private Context mContext;
  private LayoutInflater mInflater;
  private List<SearchListItem> mListItems;
  
  public SearchResultListAdapter(Context paramContext, DService paramDService, List<SearchListItem> paramList)
  {
    mContext = paramContext;
    mListItems = paramList;
    mInflater = LayoutInflater.from(paramContext);
  }
  
  public int getCount()
  {
    return mListItems.size();
  }
  
  public Object getItem(int paramInt)
  {
    return mListItems.get(paramInt);
  }
  
  public long getItemId(int paramInt)
  {
    return paramInt;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    paramViewGroup = paramView;
    if (paramView == null) {
      paramViewGroup = mInflater.inflate(DLayout.getLayoutInt(mContext, "l_search_result_item"), null);
    }
    ((SearchListItem)mListItems.get(paramInt)).bindViews(paramViewGroup, paramInt);
    return paramViewGroup;
  }
}
