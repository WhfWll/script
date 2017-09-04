package com.lidroid.xutils.view.annotation.event;

import android.preference.Preference.OnPreferenceClickListener;
import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@EventBase(listenerSetter="setOnPreferenceClickListener", listenerType=Preference.OnPreferenceClickListener.class, methodName="onPreferenceClick")
@Retention(RetentionPolicy.RUNTIME)
@Target({java.lang.annotation.ElementType.METHOD})
public @interface OnPreferenceClick
{
  String[] value();
}
