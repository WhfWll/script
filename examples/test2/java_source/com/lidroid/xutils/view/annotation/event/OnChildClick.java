package com.lidroid.xutils.view.annotation.event;

import android.widget.ExpandableListView.OnChildClickListener;
import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@EventBase(listenerSetter="setOnChildClickListener", listenerType=ExpandableListView.OnChildClickListener.class, methodName="onChildClick")
@Retention(RetentionPolicy.RUNTIME)
@Target({java.lang.annotation.ElementType.METHOD})
public @interface OnChildClick
{
  int[] parentId() default {0};
  
  int[] value();
}
