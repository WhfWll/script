package com.lidroid.xutils.view;

import android.app.Activity;
import android.content.Context;
import android.preference.Preference;
import android.preference.PreferenceActivity;
import android.preference.PreferenceGroup;
import android.view.View;

public class ViewFinder
{
  private Activity activity;
  private PreferenceActivity preferenceActivity;
  private PreferenceGroup preferenceGroup;
  private View view;
  
  public ViewFinder(Activity paramActivity)
  {
    activity = paramActivity;
  }
  
  public ViewFinder(PreferenceActivity paramPreferenceActivity)
  {
    preferenceActivity = paramPreferenceActivity;
    activity = paramPreferenceActivity;
  }
  
  public ViewFinder(PreferenceGroup paramPreferenceGroup)
  {
    preferenceGroup = paramPreferenceGroup;
  }
  
  public ViewFinder(View paramView)
  {
    view = paramView;
  }
  
  public Preference findPreference(CharSequence paramCharSequence)
  {
    if (preferenceGroup == null) {
      return preferenceActivity.findPreference(paramCharSequence);
    }
    return preferenceGroup.findPreference(paramCharSequence);
  }
  
  public View findViewById(int paramInt)
  {
    if (activity == null) {
      return view.findViewById(paramInt);
    }
    return activity.findViewById(paramInt);
  }
  
  public View findViewById(int paramInt1, int paramInt2)
  {
    View localView = null;
    if (paramInt2 > 0) {
      localView = findViewById(paramInt2);
    }
    if (localView != null) {
      return localView.findViewById(paramInt1);
    }
    return findViewById(paramInt1);
  }
  
  public View findViewByInfo(ViewInjectInfo paramViewInjectInfo)
  {
    return findViewById(((Integer)value).intValue(), parentId);
  }
  
  public Context getContext()
  {
    if (view != null) {
      return view.getContext();
    }
    if (activity != null) {
      return activity;
    }
    if (preferenceActivity != null) {
      return preferenceActivity;
    }
    return null;
  }
}
