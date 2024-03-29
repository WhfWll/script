package com.lidroid.xutils.view.annotation.event;

import android.view.View.OnKeyListener;
import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@EventBase(listenerSetter="setOnKeyListener", listenerType=View.OnKeyListener.class, methodName="onKey")
@Retention(RetentionPolicy.RUNTIME)
@Target({java.lang.annotation.ElementType.METHOD})
public @interface OnKey
{
  int[] parentId() default {0};
  
  int[] value();
}
