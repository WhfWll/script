package cn.domob.android.ads;

import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.TranslateAnimation;
import cn.domob.android.i.f;

class L
{
  private static f a = new f(L.class.getSimpleName());
  private static AnimationSet[] b;
  private static AnimationSet[] c;
  private static AnimationSet[] d;
  private static AnimationSet[] e;
  private static AnimationSet[] f;
  private static final long g = 700L;
  
  L() {}
  
  private static AnimationSet[] a()
  {
    if (b == null)
    {
      Object localObject = new TranslateAnimation(1, 0.0F, 1, 0.0F, 1, 1.0F, 1, 0.0F);
      ((TranslateAnimation)localObject).setDuration(700L);
      TranslateAnimation localTranslateAnimation = new TranslateAnimation(1, 0.0F, 1, 0.0F, 1, 0.0F, 1, -1.0F);
      localTranslateAnimation.setDuration(700L);
      AlphaAnimation localAlphaAnimation2 = new AlphaAnimation(0.0F, 1.0F);
      localAlphaAnimation2.setDuration(700L);
      AlphaAnimation localAlphaAnimation1 = new AlphaAnimation(1.0F, 0.0F);
      localAlphaAnimation1.setDuration(700L);
      AnimationSet localAnimationSet = new AnimationSet(true);
      localAnimationSet.addAnimation((Animation)localObject);
      localAnimationSet.addAnimation(localAlphaAnimation2);
      localObject = new AnimationSet(true);
      ((AnimationSet)localObject).addAnimation(localTranslateAnimation);
      ((AnimationSet)localObject).addAnimation(localAlphaAnimation1);
      b = new AnimationSet[] { localAnimationSet, localObject };
    }
    return b;
  }
  
  protected static AnimationSet[] a(a paramA)
  {
    switch (1.a[paramA.ordinal()])
    {
    default: 
      a.e(L.class.getSimpleName(), "Invalid animation type.");
      return null;
    case 1: 
      return a();
    case 2: 
      return b();
    case 3: 
      return c();
    case 4: 
      return d();
    }
    return e();
  }
  
  private static AnimationSet[] b()
  {
    if (c == null)
    {
      Object localObject = new TranslateAnimation(1, 0.0F, 1, 0.0F, 1, -1.0F, 1, 0.0F);
      ((TranslateAnimation)localObject).setDuration(700L);
      TranslateAnimation localTranslateAnimation = new TranslateAnimation(1, 0.0F, 1, 0.0F, 1, 0.0F, 1, 1.0F);
      localTranslateAnimation.setDuration(700L);
      AlphaAnimation localAlphaAnimation2 = new AlphaAnimation(0.0F, 1.0F);
      localAlphaAnimation2.setDuration(700L);
      AlphaAnimation localAlphaAnimation1 = new AlphaAnimation(1.0F, 0.0F);
      localAlphaAnimation1.setDuration(700L);
      AnimationSet localAnimationSet = new AnimationSet(true);
      localAnimationSet.addAnimation((Animation)localObject);
      localAnimationSet.addAnimation(localAlphaAnimation2);
      localObject = new AnimationSet(true);
      ((AnimationSet)localObject).addAnimation(localTranslateAnimation);
      ((AnimationSet)localObject).addAnimation(localAlphaAnimation1);
      c = new AnimationSet[] { localAnimationSet, localObject };
    }
    return c;
  }
  
  private static AnimationSet[] c()
  {
    if (d == null)
    {
      Object localObject = new TranslateAnimation(1, -1.0F, 1, 0.0F, 1, 0.0F, 1, 0.0F);
      ((TranslateAnimation)localObject).setDuration(700L);
      TranslateAnimation localTranslateAnimation = new TranslateAnimation(1, 0.0F, 1, 1.0F, 1, 0.0F, 1, 0.0F);
      localTranslateAnimation.setDuration(700L);
      AlphaAnimation localAlphaAnimation2 = new AlphaAnimation(0.0F, 1.0F);
      localAlphaAnimation2.setDuration(700L);
      AlphaAnimation localAlphaAnimation1 = new AlphaAnimation(1.0F, 0.0F);
      localAlphaAnimation1.setDuration(700L);
      AnimationSet localAnimationSet = new AnimationSet(true);
      localAnimationSet.addAnimation((Animation)localObject);
      localAnimationSet.addAnimation(localAlphaAnimation2);
      localObject = new AnimationSet(true);
      ((AnimationSet)localObject).addAnimation(localTranslateAnimation);
      ((AnimationSet)localObject).addAnimation(localAlphaAnimation1);
      d = new AnimationSet[] { localAnimationSet, localObject };
    }
    return d;
  }
  
  private static AnimationSet[] d()
  {
    if (e == null)
    {
      Object localObject = new TranslateAnimation(1, 1.0F, 1, 0.0F, 1, 0.0F, 1, 0.0F);
      ((TranslateAnimation)localObject).setDuration(700L);
      TranslateAnimation localTranslateAnimation = new TranslateAnimation(1, 0.0F, 1, -1.0F, 1, 0.0F, 1, 0.0F);
      localTranslateAnimation.setDuration(700L);
      AlphaAnimation localAlphaAnimation2 = new AlphaAnimation(0.0F, 1.0F);
      localAlphaAnimation2.setDuration(700L);
      AlphaAnimation localAlphaAnimation1 = new AlphaAnimation(1.0F, 0.0F);
      localAlphaAnimation1.setDuration(700L);
      AnimationSet localAnimationSet = new AnimationSet(true);
      localAnimationSet.addAnimation((Animation)localObject);
      localAnimationSet.addAnimation(localAlphaAnimation2);
      localObject = new AnimationSet(true);
      ((AnimationSet)localObject).addAnimation(localTranslateAnimation);
      ((AnimationSet)localObject).addAnimation(localAlphaAnimation1);
      e = new AnimationSet[] { localAnimationSet, localObject };
    }
    return e;
  }
  
  private static AnimationSet[] e()
  {
    if (f == null)
    {
      Object localObject = new AlphaAnimation(0.0F, 1.0F);
      ((AlphaAnimation)localObject).setDuration(700L);
      AlphaAnimation localAlphaAnimation = new AlphaAnimation(1.0F, 0.0F);
      localAlphaAnimation.setDuration(700L);
      AnimationSet localAnimationSet = new AnimationSet(true);
      localAnimationSet.addAnimation((Animation)localObject);
      localObject = new AnimationSet(true);
      ((AnimationSet)localObject).addAnimation(localAlphaAnimation);
      f = new AnimationSet[] { localAnimationSet, localObject };
    }
    return f;
  }
  
  protected static enum a
  {
    private a() {}
  }
}
