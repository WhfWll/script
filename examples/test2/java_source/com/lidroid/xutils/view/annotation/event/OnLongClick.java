package com.lidroid.xutils.view.annotation.event;

import android.view.View.OnLongClickListener;
import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@EventBase(listenerSetter="setOnLongClickListener", listenerType=View.OnLongClickListener.class, methodName="onLongClick")
@Retention(RetentionPolicy.RUNTIME)
@Target({java.lang.annotation.ElementType.METHOD})
public @interface OnLongClick
{
  int[] parentId() default {0};
  
  int[] value();
}
