package cn.dbox.ui.card;

import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.util.AttributeSet;
import android.widget.AbsListView;
import android.widget.AbsListView.LayoutParams;
import android.widget.AbsListView.OnScrollListener;
import android.widget.GridView;

public class c
  extends GridView
{
  private a mGridViewScrollListener;
  private int mLastVisiblePosition = 0;
  AbsListView.OnScrollListener mOnScrollListener = new AbsListView.OnScrollListener()
  {
    public void onScroll(AbsListView paramAnonymousAbsListView, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
    
    public void onScrollStateChanged(AbsListView paramAnonymousAbsListView, int paramAnonymousInt)
    {
      if ((paramAnonymousAbsListView.getLastVisiblePosition() > 0) && (paramAnonymousInt == 0))
      {
        int j = paramAnonymousAbsListView.getLastVisiblePosition();
        c localC = c.this;
        int i = j;
        if (mLastVisiblePosition > j) {
          i = mLastVisiblePosition;
        }
        c.access$002(localC, i);
      }
      if ((paramAnonymousAbsListView.getLastVisiblePosition() > 0) && (paramAnonymousAbsListView.getLastVisiblePosition() == paramAnonymousAbsListView.getCount() - 1) && (paramAnonymousInt == 0) && (mGridViewScrollListener != null)) {
        mGridViewScrollListener.a();
      }
    }
  };
  
  public c(Context paramContext)
  {
    super(paramContext);
    initView(paramContext);
  }
  
  public c(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    initView(paramContext);
  }
  
  public c(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    initView(paramContext);
  }
  
  public int getGridViewLastVisiblePosition()
  {
    if (mLastVisiblePosition == 0) {
      mLastVisiblePosition = getLastVisiblePosition();
    }
    return mLastVisiblePosition;
  }
  
  public void initView(Context paramContext)
  {
    setBackgroundColor(-789000);
    setLayoutParams(new AbsListView.LayoutParams(-1, -2));
    setCacheColorHint(-1);
    setStretchMode(2);
    setSelector(new ColorDrawable(0));
    setOnScrollListener(mOnScrollListener);
    setVerticalScrollBarEnabled(false);
  }
  
  public void setOnGridViewScrollListener(a paramA)
  {
    mGridViewScrollListener = paramA;
  }
  
  public static abstract interface a
  {
    public abstract void a();
  }
}
