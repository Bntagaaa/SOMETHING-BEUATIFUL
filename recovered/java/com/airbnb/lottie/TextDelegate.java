package com.airbnb.lottie;

import androidx.annotation.VisibleForTesting;
import java.util.HashMap;

/* loaded from: classes.dex */
public class TextDelegate {

    /* renamed from: a, reason: collision with root package name */
    public final HashMap f2507a;

    /* renamed from: b, reason: collision with root package name */
    public final LottieAnimationView f2508b;
    public final LottieDrawable c;
    public boolean d;

    @VisibleForTesting
    public TextDelegate() {
        this.f2507a = new HashMap();
        this.d = true;
        this.f2508b = null;
        this.c = null;
    }

    public TextDelegate(LottieAnimationView lottieAnimationView) {
        this.f2507a = new HashMap();
        this.d = true;
        this.f2508b = lottieAnimationView;
        this.c = null;
    }

    public TextDelegate(LottieDrawable lottieDrawable) {
        this.f2507a = new HashMap();
        this.d = true;
        this.c = lottieDrawable;
        this.f2508b = null;
    }

    public void setText(String str, String str2) {
        this.f2507a.put(str, str2);
        LottieAnimationView lottieAnimationView = this.f2508b;
        if (lottieAnimationView != null) {
            lottieAnimationView.invalidate();
        }
        LottieDrawable lottieDrawable = this.c;
        if (lottieDrawable != null) {
            lottieDrawable.invalidateSelf();
        }
    }

    public void setCacheText(boolean z) {
        this.d = z;
    }

    public void invalidateText(String str) {
        this.f2507a.remove(str);
        LottieAnimationView lottieAnimationView = this.f2508b;
        if (lottieAnimationView != null) {
            lottieAnimationView.invalidate();
        }
        LottieDrawable lottieDrawable = this.c;
        if (lottieDrawable != null) {
            lottieDrawable.invalidateSelf();
        }
    }

    public void invalidateAllText() {
        this.f2507a.clear();
        LottieAnimationView lottieAnimationView = this.f2508b;
        if (lottieAnimationView != null) {
            lottieAnimationView.invalidate();
        }
        LottieDrawable lottieDrawable = this.c;
        if (lottieDrawable != null) {
            lottieDrawable.invalidateSelf();
        }
    }

    public final String getTextInternal(String str) {
        boolean z = this.d;
        HashMap map = this.f2507a;
        if (z && map.containsKey(str)) {
            return (String) map.get(str);
        }
        if (this.d) {
            map.put(str, str);
        }
        return str;
    }
}
