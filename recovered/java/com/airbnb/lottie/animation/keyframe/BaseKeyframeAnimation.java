package com.airbnb.lottie.animation.keyframe;

import android.view.animation.Interpolator;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.airbnb.lottie.L;
import com.airbnb.lottie.value.Keyframe;
import com.airbnb.lottie.value.LottieValueCallback;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public abstract class BaseKeyframeAnimation<K, A> {
    public final c c;

    @Nullable
    protected LottieValueCallback<A> valueCallback;

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f2548a = new ArrayList(1);

    /* renamed from: b, reason: collision with root package name */
    public boolean f2549b = false;
    protected float progress = 0.0f;
    public Object d = null;
    public float e = -1.0f;
    public float f = -1.0f;

    public interface AnimationListener {
        void onValueChanged();
    }

    public interface c<T> {
        Keyframe<T> getCurrentKeyframe();

        @FloatRange(from = 0.0d, to = 1.0d)
        float getEndProgress();

        @FloatRange(from = 0.0d, to = 1.0d)
        float getStartDelayProgress();

        boolean isCachedValueEnabled(float f);

        boolean isEmpty();

        boolean isValueChanged(float f);
    }

    public abstract Object getValue(Keyframe keyframe, float f);

    public BaseKeyframeAnimation(List list) {
        c dVar;
        c bVar;
        int i = 0;
        if (list.isEmpty()) {
            bVar = new b(i);
        } else {
            if (list.size() == 1) {
                dVar = new e(list);
            } else {
                dVar = new d(list);
            }
            bVar = dVar;
        }
        this.c = bVar;
    }

    public void setIsDiscrete() {
        this.f2549b = true;
    }

    public void addUpdateListener(AnimationListener animationListener) {
        this.f2548a.add(animationListener);
    }

    public void setProgress(@FloatRange(from = 0.0d, to = 1.0d) float f) {
        c cVar = this.c;
        if (cVar.isEmpty()) {
            return;
        }
        if (this.e == -1.0f) {
            this.e = cVar.getStartDelayProgress();
        }
        float f2 = this.e;
        if (f < f2) {
            if (f2 == -1.0f) {
                this.e = cVar.getStartDelayProgress();
            }
            f = this.e;
        } else if (f > a()) {
            f = a();
        }
        if (f == this.progress) {
            return;
        }
        this.progress = f;
        if (cVar.isValueChanged(f)) {
            notifyListeners();
        }
    }

    public void notifyListeners() {
        int i = 0;
        while (true) {
            ArrayList arrayList = this.f2548a;
            if (i >= arrayList.size()) {
                return;
            }
            ((AnimationListener) arrayList.get(i)).onValueChanged();
            i++;
        }
    }

    public Keyframe<K> getCurrentKeyframe() {
        L.beginSection("BaseKeyframeAnimation#getCurrentKeyframe");
        Keyframe<K> currentKeyframe = this.c.getCurrentKeyframe();
        L.endSection("BaseKeyframeAnimation#getCurrentKeyframe");
        return currentKeyframe;
    }

    public final float b() {
        if (this.f2549b) {
            return 0.0f;
        }
        Keyframe<K> currentKeyframe = getCurrentKeyframe();
        if (currentKeyframe.isStatic()) {
            return 0.0f;
        }
        return (this.progress - currentKeyframe.getStartProgress()) / (currentKeyframe.getEndProgress() - currentKeyframe.getStartProgress());
    }

    public float getInterpolatedCurrentKeyframeProgress() {
        Keyframe<K> currentKeyframe = getCurrentKeyframe();
        if (currentKeyframe.isStatic()) {
            return 0.0f;
        }
        return currentKeyframe.interpolator.getInterpolation(b());
    }

    public float a() {
        if (this.f == -1.0f) {
            this.f = this.c.getEndProgress();
        }
        return this.f;
    }

    public A getValue() {
        A value;
        float fB = b();
        if (this.valueCallback == null && this.c.isCachedValueEnabled(fB)) {
            return (A) this.d;
        }
        Keyframe<K> currentKeyframe = getCurrentKeyframe();
        Interpolator interpolator = currentKeyframe.xInterpolator;
        if (interpolator != null && currentKeyframe.yInterpolator != null) {
            value = getValue(currentKeyframe, fB, interpolator.getInterpolation(fB), currentKeyframe.yInterpolator.getInterpolation(fB));
        } else {
            value = (A) getValue(currentKeyframe, getInterpolatedCurrentKeyframeProgress());
        }
        this.d = value;
        return value;
    }

    public float getProgress() {
        return this.progress;
    }

    public void setValueCallback(@Nullable LottieValueCallback<A> lottieValueCallback) {
        LottieValueCallback<A> lottieValueCallback2 = this.valueCallback;
        if (lottieValueCallback2 != null) {
            lottieValueCallback2.setAnimation(null);
        }
        this.valueCallback = lottieValueCallback;
        if (lottieValueCallback != null) {
            lottieValueCallback.setAnimation(this);
        }
    }

    public A getValue(Keyframe<K> keyframe, float f, float f2, float f3) {
        throw new UnsupportedOperationException("This animation does not support split dimensions!");
    }

    public static final class b<T> implements c<T> {
        @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation.c
        public float getEndProgress() {
            return 1.0f;
        }

        @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation.c
        public float getStartDelayProgress() {
            return 0.0f;
        }

        @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation.c
        public boolean isEmpty() {
            return true;
        }

        @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation.c
        public boolean isValueChanged(float f) {
            return false;
        }

        private b() {
        }

        public /* synthetic */ b(int i) {
            this();
        }

        @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation.c
        public Keyframe<T> getCurrentKeyframe() {
            throw new IllegalStateException("not implemented");
        }

        @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation.c
        public boolean isCachedValueEnabled(float f) {
            throw new IllegalStateException("not implemented");
        }
    }

    public static final class e<T> implements c<T> {

        /* renamed from: a, reason: collision with root package name */
        public final Keyframe f2552a;

        /* renamed from: b, reason: collision with root package name */
        public float f2553b = -1.0f;

        @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation.c
        public boolean isEmpty() {
            return false;
        }

        public e(List list) {
            this.f2552a = (Keyframe) list.get(0);
        }

        @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation.c
        public boolean isValueChanged(float f) {
            return !this.f2552a.isStatic();
        }

        @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation.c
        public Keyframe<T> getCurrentKeyframe() {
            return this.f2552a;
        }

        @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation.c
        public float getStartDelayProgress() {
            return this.f2552a.getStartProgress();
        }

        @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation.c
        public float getEndProgress() {
            return this.f2552a.getEndProgress();
        }

        @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation.c
        public boolean isCachedValueEnabled(float f) {
            if (this.f2553b == f) {
                return true;
            }
            this.f2553b = f;
            return false;
        }
    }

    public static final class d<T> implements c<T> {

        /* renamed from: a, reason: collision with root package name */
        public final List f2550a;
        public Keyframe c = null;
        public float d = -1.0f;

        /* renamed from: b, reason: collision with root package name */
        public Keyframe f2551b = a(0.0f);

        @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation.c
        public boolean isEmpty() {
            return false;
        }

        public d(List list) {
            this.f2550a = list;
        }

        @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation.c
        public boolean isValueChanged(float f) {
            if (this.f2551b.containsProgress(f)) {
                return !this.f2551b.isStatic();
            }
            this.f2551b = a(f);
            return true;
        }

        public final Keyframe a(float f) {
            List list = this.f2550a;
            Keyframe keyframe = (Keyframe) list.get(list.size() - 1);
            if (f >= keyframe.getStartProgress()) {
                return keyframe;
            }
            for (int size = list.size() - 2; size >= 1; size--) {
                Keyframe keyframe2 = (Keyframe) list.get(size);
                if (this.f2551b != keyframe2 && keyframe2.containsProgress(f)) {
                    return keyframe2;
                }
            }
            return (Keyframe) list.get(0);
        }

        @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation.c
        @NonNull
        public Keyframe<T> getCurrentKeyframe() {
            return this.f2551b;
        }

        @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation.c
        public float getStartDelayProgress() {
            return ((Keyframe) this.f2550a.get(0)).getStartProgress();
        }

        @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation.c
        public float getEndProgress() {
            return ((Keyframe) this.f2550a.get(r0.size() - 1)).getEndProgress();
        }

        @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation.c
        public boolean isCachedValueEnabled(float f) {
            Keyframe keyframe = this.c;
            Keyframe keyframe2 = this.f2551b;
            if (keyframe == keyframe2 && this.d == f) {
                return true;
            }
            this.c = keyframe2;
            this.d = f;
            return false;
        }
    }
}
