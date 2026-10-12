package com.google.appinventor.components.runtime.util;

import android.app.Activity;
import android.util.Log;
import android.view.View;
import android.view.animation.AnimationSet;
import android.view.animation.TranslateAnimation;
import com.google.appinventor.components.common.ScreenAnimation;

/* loaded from: classes.dex */
public final class AnimationUtil {
    private AnimationUtil() {
    }

    private static void ApplyHorizontalScrollAnimation(View view, boolean z, int i) {
        float f = z ? 1.0f : -1.0f;
        AnimationSet animationSet = new AnimationSet(true);
        animationSet.setRepeatCount(-1);
        animationSet.setRepeatMode(1);
        TranslateAnimation translateAnimation = new TranslateAnimation(2, f * 0.7f, 2, f * (-0.7f), 2, 0.0f, 2, 0.0f);
        translateAnimation.setStartOffset(0L);
        translateAnimation.setDuration(i);
        translateAnimation.setFillAfter(true);
        animationSet.addAnimation(translateAnimation);
        view.startAnimation(animationSet);
    }

    public static void ApplyAnimation(View view, String str) {
        if (str.equals("ScrollRightSlow")) {
            ApplyHorizontalScrollAnimation(view, false, 8000);
            return;
        }
        if (str.equals("ScrollRight")) {
            ApplyHorizontalScrollAnimation(view, false, 4000);
            return;
        }
        if (str.equals("ScrollRightFast")) {
            ApplyHorizontalScrollAnimation(view, false, 1000);
            return;
        }
        if (str.equals("ScrollLeftSlow")) {
            ApplyHorizontalScrollAnimation(view, true, 8000);
            return;
        }
        if (str.equals("ScrollLeft")) {
            ApplyHorizontalScrollAnimation(view, true, 4000);
        } else if (str.equals("ScrollLeftFast")) {
            ApplyHorizontalScrollAnimation(view, true, 1000);
        } else if (str.equals("Stop")) {
            view.clearAnimation();
        }
    }

    public static void ApplyOpenScreenAnimation(Activity activity, String str) {
        ApplyOpenScreenAnimation(activity, ScreenAnimation.fromUnderlyingValue(str));
    }

    public static void ApplyOpenScreenAnimation(Activity activity, ScreenAnimation screenAnimation) {
        int identifier;
        int identifier2;
        int identifier3;
        int identifier4;
        if (screenAnimation == null) {
            return;
        }
        if (SdkLevel.getLevel() <= 4) {
            Log.e("AnimationUtil", "Screen animations are not available on android versions less than 2.0.");
            return;
        }
        int i = AnonymousClass1.$SwitchMap$com$google$appinventor$components$common$ScreenAnimation[screenAnimation.ordinal()];
        if (i != 1) {
            if (i == 2) {
                identifier3 = activity.getResources().getIdentifier("zoom_exit", "anim", activity.getPackageName());
                identifier4 = activity.getResources().getIdentifier("zoom_enter", "anim", activity.getPackageName());
            } else if (i == 3) {
                identifier3 = activity.getResources().getIdentifier("slide_exit", "anim", activity.getPackageName());
                identifier4 = activity.getResources().getIdentifier("slide_enter", "anim", activity.getPackageName());
            } else if (i == 4) {
                identifier3 = activity.getResources().getIdentifier("slide_v_exit", "anim", activity.getPackageName());
                identifier4 = activity.getResources().getIdentifier("slide_v_enter", "anim", activity.getPackageName());
            } else {
                if (i != 5) {
                    return;
                }
                identifier = 0;
                identifier2 = 0;
            }
            int i2 = identifier4;
            identifier2 = identifier3;
            identifier = i2;
        } else {
            identifier = activity.getResources().getIdentifier("fadein", "anim", activity.getPackageName());
            identifier2 = activity.getResources().getIdentifier("hold", "anim", activity.getPackageName());
        }
        EclairUtil.overridePendingTransitions(activity, identifier, identifier2);
    }

    /* renamed from: com.google.appinventor.components.runtime.util.AnimationUtil$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$google$appinventor$components$common$ScreenAnimation;

        static {
            int[] iArr = new int[ScreenAnimation.values().length];
            $SwitchMap$com$google$appinventor$components$common$ScreenAnimation = iArr;
            try {
                iArr[ScreenAnimation.Fade.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$google$appinventor$components$common$ScreenAnimation[ScreenAnimation.Zoom.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$google$appinventor$components$common$ScreenAnimation[ScreenAnimation.SlideHorizontal.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$google$appinventor$components$common$ScreenAnimation[ScreenAnimation.SlideVertical.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$google$appinventor$components$common$ScreenAnimation[ScreenAnimation.None.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public static void ApplyCloseScreenAnimation(Activity activity, String str) {
        ApplyCloseScreenAnimation(activity, ScreenAnimation.fromUnderlyingValue(str));
    }

    public static void ApplyCloseScreenAnimation(Activity activity, ScreenAnimation screenAnimation) {
        int identifier;
        int identifier2;
        int i;
        int i2;
        if (screenAnimation == null) {
            return;
        }
        if (SdkLevel.getLevel() <= 4) {
            Log.e("AnimationUtil", "Screen animations are not available on android versions less than 2.0.");
            return;
        }
        int i3 = AnonymousClass1.$SwitchMap$com$google$appinventor$components$common$ScreenAnimation[screenAnimation.ordinal()];
        if (i3 == 1) {
            identifier = activity.getResources().getIdentifier("fadeout", "anim", activity.getPackageName());
            identifier2 = activity.getResources().getIdentifier("hold", "anim", activity.getPackageName());
        } else if (i3 == 2) {
            identifier = activity.getResources().getIdentifier("zoom_exit_reverse", "anim", activity.getPackageName());
            identifier2 = activity.getResources().getIdentifier("zoom_enter_reverse", "anim", activity.getPackageName());
        } else if (i3 == 3) {
            identifier = activity.getResources().getIdentifier("slide_exit_reverse", "anim", activity.getPackageName());
            identifier2 = activity.getResources().getIdentifier("slide_enter_reverse", "anim", activity.getPackageName());
        } else {
            if (i3 != 4) {
                if (i3 != 5) {
                    return;
                }
                i2 = 0;
                i = 0;
                EclairUtil.overridePendingTransitions(activity, i2, i);
            }
            identifier = activity.getResources().getIdentifier("slide_v_exit_reverse", "anim", activity.getPackageName());
            identifier2 = activity.getResources().getIdentifier("slide_v_enter_reverse", "anim", activity.getPackageName());
        }
        int i4 = identifier2;
        i = identifier;
        i2 = i4;
        EclairUtil.overridePendingTransitions(activity, i2, i);
    }
}
