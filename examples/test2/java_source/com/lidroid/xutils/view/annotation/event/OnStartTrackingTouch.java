package com.lidroid.xutils.view.annotation.event;

import android.widget.SeekBar.OnSeekBarChangeListener;
import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@EventBase(listenerSetter="setOnSeekBarChangeListener", listenerType=SeekBar.OnSeekBarChangeListener.class, methodName="onStartTrackingTouch")
@Retention(RetentionPolicy.RUNTIME)
@Target({java.lang.annotation.ElementType.METHOD})
public @interface OnStartTrackingTouch
{
  int[] parentId() default {0};
  
  int[] value();
}
