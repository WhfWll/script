package com.lidroid.xutils.view.annotation.event;

import android.widget.AbsListView.OnScrollListener;
import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@EventBase(listenerSetter="setOnScrollListener", listenerType=AbsListView.OnScrollListener.class, methodName="onScroll")
@Retention(RetentionPolicy.RUNTIME)
@Target({java.lang.annotation.ElementType.METHOD})
public @interface OnScroll
{
  int[] parentId() default {0};
  
  int[] value();
}
