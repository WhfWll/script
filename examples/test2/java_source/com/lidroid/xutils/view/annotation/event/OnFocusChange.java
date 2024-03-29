package com.lidroid.xutils.view.annotation.event;

import android.view.View.OnFocusChangeListener;
import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@EventBase(listenerSetter="setOnFocusChangeListener", listenerType=View.OnFocusChangeListener.class, methodName="onFocusChange")
@Retention(RetentionPolicy.RUNTIME)
@Target({java.lang.annotation.ElementType.METHOD})
public @interface OnFocusChange
{
  int[] parentId() default {0};
  
  int[] value();
}
