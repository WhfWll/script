package com.lidroid.xutils.view.annotation.event;

import android.widget.AdapterView.OnItemSelectedListener;
import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@EventBase(listenerSetter="setOnItemSelectedListener", listenerType=AdapterView.OnItemSelectedListener.class, methodName="onNothingSelected")
@Retention(RetentionPolicy.RUNTIME)
@Target({java.lang.annotation.ElementType.METHOD})
public @interface OnNothingSelected
{
  int[] parentId() default {0};
  
  int[] value();
}
