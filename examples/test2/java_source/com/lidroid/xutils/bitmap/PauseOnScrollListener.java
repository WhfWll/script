package com.lidroid.xutils.bitmap;

import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;
import com.lidroid.xutils.task.TaskHandler;

public class PauseOnScrollListener
  implements AbsListView.OnScrollListener
{
  private final AbsListView.OnScrollListener externalListener;
  private final boolean pauseOnFling;
  private final boolean pauseOnScroll;
  private TaskHandler taskHandler;
  
  public PauseOnScrollListener(TaskHandler paramTaskHandler, boolean paramBoolean1, boolean paramBoolean2)
  {
    this(paramTaskHandler, paramBoolean1, paramBoolean2, null);
  }
  
  public PauseOnScrollListener(TaskHandler paramTaskHandler, boolean paramBoolean1, boolean paramBoolean2, AbsListView.OnScrollListener paramOnScrollListener)
  {
    taskHandler = paramTaskHandler;
    pauseOnScroll = paramBoolean1;
    pauseOnFling = paramBoolean2;
    externalListener = paramOnScrollListener;
  }
  
  public void onScroll(AbsListView paramAbsListView, int paramInt1, int paramInt2, int paramInt3)
  {
    if (externalListener != null) {
      externalListener.onScroll(paramAbsListView, paramInt1, paramInt2, paramInt3);
    }
  }
  
  public void onScrollStateChanged(AbsListView paramAbsListView, int paramInt)
  {
    switch (paramInt)
    {
    }
    for (;;)
    {
      if (externalListener != null) {
        externalListener.onScrollStateChanged(paramAbsListView, paramInt);
      }
      return;
      taskHandler.resume();
      continue;
      if (pauseOnScroll)
      {
        taskHandler.pause();
        continue;
        if (pauseOnFling) {
          taskHandler.pause();
        }
      }
    }
  }
}
