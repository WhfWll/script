package com.lidroid.xutils.view.annotation.event;

import android.view.View.OnClickListener;
import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@EventBase(listenerSetter="setOnClickListener", listenerType=View.OnClickListener.class, methodName="onClick")
@Retention(RetentionPolicy.RUNTIME)
@Target({java.lang.annotation.ElementType.METHOD})
public @interface OnClick
{
  int[] parentId() default {0};
  
  int[] value();
}
