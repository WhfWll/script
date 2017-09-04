package com.lidroid.xutils.task;

public abstract interface TaskHandler
{
  public abstract void cancel();
  
  public abstract boolean isCancelled();
  
  public abstract boolean isPaused();
  
  public abstract void pause();
  
  public abstract void resume();
  
  public abstract boolean supportCancel();
  
  public abstract boolean supportPause();
  
  public abstract boolean supportResume();
}
