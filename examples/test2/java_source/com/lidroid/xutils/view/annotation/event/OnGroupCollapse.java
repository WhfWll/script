package com.lidroid.xutils.view.annotation.event;

import android.widget.ExpandableListView.OnGroupCollapseListener;
import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@EventBase(listenerSetter="setOnGroupCollapseListener", listenerType=ExpandableListView.OnGroupCollapseListener.class, methodName="onGroupCollapse")
@Retention(RetentionPolicy.RUNTIME)
@Target({java.lang.annotation.ElementType.METHOD})
public @interface OnGroupCollapse
{
  int[] parentId() default {0};
  
  int[] value();
}
