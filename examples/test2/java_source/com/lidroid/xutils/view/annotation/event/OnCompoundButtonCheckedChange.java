package com.lidroid.xutils.view.annotation.event;

import android.widget.CompoundButton.OnCheckedChangeListener;
import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@EventBase(listenerSetter="setOnCheckedChangeListener", listenerType=CompoundButton.OnCheckedChangeListener.class, methodName="onCheckedChanged")
@Retention(RetentionPolicy.RUNTIME)
@Target({java.lang.annotation.ElementType.METHOD})
public @interface OnCompoundButtonCheckedChange
{
  int[] parentId() default {0};
  
  int[] value();
}
