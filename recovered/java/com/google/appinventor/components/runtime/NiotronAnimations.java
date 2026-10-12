package com.google.appinventor.components.runtime;

import android.animation.Animator;
import android.app.Activity;
import android.content.Context;
import com.daimajia.androidanimations.library.Techniques;
import com.daimajia.androidanimations.library.YoYo;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.Options;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.UsesLibraries;
import com.google.appinventor.components.common.Animation;
import com.google.appinventor.components.common.ComponentCategory;
import java.util.HashMap;

@DesignerComponent(category = ComponentCategory.ANIMATION, description = "You can show many animations with with component", iconName = "images/animations.png", nonVisible = true, version = 2)
@UsesLibraries(libraries = "animations.jar")
@SimpleObject
/* loaded from: classes.dex */
public final class NiotronAnimations extends AndroidNonvisibleComponent {
    private Activity activity;
    private YoYo.AnimationComposer animation;
    java.util.Map<String, YoYo.YoYoString> animationControllerMap;
    private ComponentContainer container;
    private Context context;

    public NiotronAnimations(ComponentContainer componentContainer) {
        super(componentContainer.$form());
        this.animationControllerMap = new HashMap();
        this.context = componentContainer.$context();
        this.activity = componentContainer.$context();
    }

    @SimpleFunction(description = "Shows animation in the given component, with duration of animation and selected animation type, set repeat to true for repeating the animation")
    public void ShowAnimation(AndroidViewComponent androidViewComponent, int i, int i2, final String str, @Options(Animation.class) String str2) {
        YoYo.AnimationComposer animationComposerWithListener = YoYo.with(Techniques.valueOf(str2)).duration(i).repeat(i2).withListener(new Animator.AnimatorListener() { // from class: com.google.appinventor.components.runtime.NiotronAnimations.1
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                NiotronAnimations.this.AnimationStart(str);
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                NiotronAnimations.this.AnimationEnd(str);
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                NiotronAnimations.this.AnimationCancel(str);
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
                NiotronAnimations.this.AnimationRepeat(str);
            }
        });
        this.animation = animationComposerWithListener;
        this.animationControllerMap.put(str, animationComposerWithListener.playOn(androidViewComponent.getView()));
    }

    @SimpleFunction(description = "Shows animation in the given component, with duration of animation and selected animation type, set repeat to true for repeating the animation")
    public void ShowAnimationPivot(AndroidViewComponent androidViewComponent, int i, int i2, final String str, @Options(Animation.class) String str2, int i3, int i4) {
        YoYo.AnimationComposer animationComposerPivot = YoYo.with(Techniques.valueOf(str2)).duration(i).repeat(i2).withListener(new Animator.AnimatorListener() { // from class: com.google.appinventor.components.runtime.NiotronAnimations.2
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                NiotronAnimations.this.AnimationStart(str);
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                NiotronAnimations.this.AnimationEnd(str);
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                NiotronAnimations.this.AnimationCancel(str);
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
                NiotronAnimations.this.AnimationRepeat(str);
            }
        }).pivot(i3, i4);
        this.animation = animationComposerPivot;
        this.animationControllerMap.put(str, animationComposerPivot.playOn(androidViewComponent.getView()));
    }

    @SimpleFunction(description = "is animation going on")
    public boolean IsRunning(String str) {
        return this.animationControllerMap.get(str).isRunning();
    }

    @SimpleFunction(description = "Stops the animation")
    public void Stop(String str) {
        this.animationControllerMap.get(str).stop(true);
    }

    @SimpleEvent(description = "Animation starts")
    public void AnimationStart(String str) {
        EventDispatcher.dispatchEvent(this, "AnimationStart", str);
    }

    @SimpleEvent(description = "Animations ends")
    public void AnimationEnd(String str) {
        EventDispatcher.dispatchEvent(this, "AnimationEnd", str);
    }

    @SimpleEvent(description = "Animation canceled")
    public void AnimationCancel(String str) {
        EventDispatcher.dispatchEvent(this, "AnimationCancel", str);
    }

    @SimpleEvent(description = "Animation repeated")
    public void AnimationRepeat(String str) {
        EventDispatcher.dispatchEvent(this, "AnimationRepeat", str);
    }
}
