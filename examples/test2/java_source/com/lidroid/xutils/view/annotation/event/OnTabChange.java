package com.lidroid.xutils.view.annotation.event;

import android.widget.TabHost.OnTabChangeListener;
import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@EventBase(listenerSetter="setOnTabChangeListener", listenerType=TabHost.OnTabChangeListener.class, methodName="onTabChange")
@Retention(RetentionPolicy.RUNTIME)
@Target({java.lang.annotation.ElementType.METHOD})
public @interface OnTabChange
{
  int[] parentId() default {0};
  
  int[] value();
}
