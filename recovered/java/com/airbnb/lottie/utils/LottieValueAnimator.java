package com.airbnb.lottie.utils;

import android.animation.Animator;
import android.os.Build;
import android.view.Choreographer;
import androidx.annotation.FloatRange;
import androidx.annotation.MainThread;
import androidx.annotation.VisibleForTesting;
import com.airbnb.lottie.L;
import com.airbnb.lottie.LottieComposition;
import java.util.Iterator;

/* loaded from: classes.dex */
public class LottieValueAnimator extends BaseLottieAnimator implements Choreographer.FrameCallback {
    public LottieComposition j;
    public float c = 1.0f;
    public boolean d = false;
    public long e = 0;
    public float f = 0.0f;

    /* renamed from: g, reason: collision with root package name */
    public int f2720g = 0;
    public float h = -2.1474836E9f;
    public float i = 2.1474836E9f;

    @VisibleForTesting
    protected boolean running = false;

    @Override // android.animation.ValueAnimator
    public Object getAnimatedValue() {
        return Float.valueOf(getAnimatedValueAbsolute());
    }

    @FloatRange(from = 0.0d, to = 1.0d)
    public float getAnimatedValueAbsolute() {
        LottieComposition lottieComposition = this.j;
        if (lottieComposition == null) {
            return 0.0f;
        }
        return (this.f - lottieComposition.getStartFrame()) / (this.j.getEndFrame() - this.j.getStartFrame());
    }

    @Override // android.animation.ValueAnimator
    @FloatRange(from = 0.0d, to = 1.0d)
    public float getAnimatedFraction() {
        float minFrame;
        float maxFrame;
        float minFrame2;
        if (this.j == null) {
            return 0.0f;
        }
        if (c()) {
            minFrame = getMaxFrame() - this.f;
            maxFrame = getMaxFrame();
            minFrame2 = getMinFrame();
        } else {
            minFrame = this.f - getMinFrame();
            maxFrame = getMaxFrame();
            minFrame2 = getMinFrame();
        }
        return minFrame / (maxFrame - minFrame2);
    }

    @Override // android.animation.ValueAnimator, android.animation.Animator
    public long getDuration() {
        LottieComposition lottieComposition = this.j;
        if (lottieComposition == null) {
            return 0L;
        }
        return (long) lottieComposition.getDuration();
    }

    public float getFrame() {
        return this.f;
    }

    @Override // android.animation.ValueAnimator, android.animation.Animator
    public boolean isRunning() {
        return this.running;
    }

    @Override // android.animation.ValueAnimator, android.animation.Animator
    @MainThread
    public void cancel() {
        Iterator it = this.f2717b.iterator();
        while (it.hasNext()) {
            ((Animator.AnimatorListener) it.next()).onAnimationCancel(this);
        }
        removeFrameCallback();
    }

    @Override // android.view.Choreographer.FrameCallback
    public void doFrame(long j) {
        postFrameCallback();
        if (this.j == null || !isRunning()) {
            return;
        }
        L.beginSection("LottieValueAnimator#doFrame");
        long j2 = this.e;
        long j3 = j2 != 0 ? j - j2 : 0L;
        LottieComposition lottieComposition = this.j;
        float frameRate = j3 / (lottieComposition == null ? Float.MAX_VALUE : (1.0E9f / lottieComposition.getFrameRate()) / Math.abs(this.c));
        float f = this.f;
        if (c()) {
            frameRate = -frameRate;
        }
        float f2 = f + frameRate;
        this.f = f2;
        boolean zContains = MiscUtils.contains(f2, getMinFrame(), getMaxFrame());
        this.f = MiscUtils.clamp(this.f, getMinFrame(), getMaxFrame());
        this.e = j;
        b();
        if (!zContains) {
            if (getRepeatCount() == -1 || this.f2720g < getRepeatCount()) {
                Iterator it = this.f2717b.iterator();
                while (it.hasNext()) {
                    ((Animator.AnimatorListener) it.next()).onAnimationRepeat(this);
                }
                this.f2720g++;
                if (getRepeatMode() == 2) {
                    this.d = !this.d;
                    reverseAnimationSpeed();
                } else {
                    this.f = c() ? getMaxFrame() : getMinFrame();
                }
                this.e = j;
            } else {
                this.f = this.c < 0.0f ? getMinFrame() : getMaxFrame();
                removeFrameCallback();
                a(c());
            }
        }
        if (this.j != null) {
            float f3 = this.f;
            if (f3 < this.h || f3 > this.i) {
                throw new IllegalStateException(String.format("Frame must be [%f,%f]. It is %f", Float.valueOf(this.h), Float.valueOf(this.i), Float.valueOf(this.f)));
            }
        }
        L.endSection("LottieValueAnimator#doFrame");
    }

    public void clearComposition() {
        this.j = null;
        this.h = -2.1474836E9f;
        this.i = 2.1474836E9f;
    }

    public void setComposition(LottieComposition lottieComposition) {
        boolean z = this.j == null;
        this.j = lottieComposition;
        if (z) {
            setMinAndMaxFrames((int) Math.max(this.h, lottieComposition.getStartFrame()), (int) Math.min(this.i, lottieComposition.getEndFrame()));
        } else {
            setMinAndMaxFrames((int) lottieComposition.getStartFrame(), (int) lottieComposition.getEndFrame());
        }
        float f = this.f;
        this.f = 0.0f;
        setFrame((int) f);
        b();
    }

    public void setFrame(float f) {
        if (this.f == f) {
            return;
        }
        this.f = MiscUtils.clamp(f, getMinFrame(), getMaxFrame());
        this.e = 0L;
        b();
    }

    public void setMinFrame(int i) {
        setMinAndMaxFrames(i, (int) this.i);
    }

    public void setMaxFrame(float f) {
        setMinAndMaxFrames(this.h, f);
    }

    public void setMinAndMaxFrames(float f, float f2) {
        if (f > f2) {
            throw new IllegalArgumentException("minFrame (" + f + ") must be <= maxFrame (" + f2 + ")");
        }
        LottieComposition lottieComposition = this.j;
        float startFrame = lottieComposition == null ? -3.4028235E38f : lottieComposition.getStartFrame();
        LottieComposition lottieComposition2 = this.j;
        float endFrame = lottieComposition2 == null ? Float.MAX_VALUE : lottieComposition2.getEndFrame();
        this.h = MiscUtils.clamp(f, startFrame, endFrame);
        this.i = MiscUtils.clamp(f2, startFrame, endFrame);
        setFrame((int) MiscUtils.clamp(this.f, f, f2));
    }

    public void reverseAnimationSpeed() {
        setSpeed(-getSpeed());
    }

    public void setSpeed(float f) {
        this.c = f;
    }

    public float getSpeed() {
        return this.c;
    }

    @Override // android.animation.ValueAnimator
    public void setRepeatMode(int i) {
        super.setRepeatMode(i);
        if (i == 2 || !this.d) {
            return;
        }
        this.d = false;
        reverseAnimationSpeed();
    }

    @MainThread
    public void playAnimation() {
        this.running = true;
        boolean zC = c();
        Iterator it = this.f2717b.iterator();
        while (it.hasNext()) {
            Animator.AnimatorListener animatorListener = (Animator.AnimatorListener) it.next();
            if (Build.VERSION.SDK_INT >= 26) {
                animatorListener.onAnimationStart(this, zC);
            } else {
                animatorListener.onAnimationStart(this);
            }
        }
        setFrame((int) (c() ? getMaxFrame() : getMinFrame()));
        this.e = 0L;
        this.f2720g = 0;
        postFrameCallback();
    }

    @MainThread
    public void endAnimation() {
        removeFrameCallback();
        a(c());
    }

    @MainThread
    public void pauseAnimation() {
        removeFrameCallback();
    }

    @MainThread
    public void resumeAnimation() {
        this.running = true;
        postFrameCallback();
        this.e = 0L;
        if (c() && getFrame() == getMinFrame()) {
            this.f = getMaxFrame();
        } else {
            if (c() || getFrame() != getMaxFrame()) {
                return;
            }
            this.f = getMinFrame();
        }
    }

    public final boolean c() {
        return getSpeed() < 0.0f;
    }

    public float getMinFrame() {
        LottieComposition lottieComposition = this.j;
        if (lottieComposition == null) {
            return 0.0f;
        }
        float f = this.h;
        return f == -2.1474836E9f ? lottieComposition.getStartFrame() : f;
    }

    public float getMaxFrame() {
        LottieComposition lottieComposition = this.j;
        if (lottieComposition == null) {
            return 0.0f;
        }
        float f = this.i;
        return f == 2.1474836E9f ? lottieComposition.getEndFrame() : f;
    }

    public void postFrameCallback() {
        if (isRunning()) {
            removeFrameCallback(false);
            Choreographer.getInstance().postFrameCallback(this);
        }
    }

    @MainThread
    public void removeFrameCallback() {
        removeFrameCallback(true);
    }

    @MainThread
    public void removeFrameCallback(boolean z) {
        Choreographer.getInstance().removeFrameCallback(this);
        if (z) {
            this.running = false;
        }
    }
}
