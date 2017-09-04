package com.lidroid.xutils.view.annotation.event;

import android.widget.AdapterView.OnItemClickListener;
import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@EventBase(listenerSetter="setOnItemClickListener", listenerType=AdapterView.OnItemClickListener.class, methodName="onItemClick")
@Retention(RetentionPolicy.RUNTIME)
@Target({java.lang.annotation.ElementType.METHOD})
public @interface OnItemClick
{
  int[] parentId() default {0};
  
  int[] value();
}
