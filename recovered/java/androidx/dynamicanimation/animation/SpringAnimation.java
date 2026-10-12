package androidx.dynamicanimation.animation;

import android.os.Looper;
import android.util.AndroidRuntimeException;
import androidx.dynamicanimation.animation.DynamicAnimation;

/* loaded from: classes.dex */
public final class SpringAnimation extends DynamicAnimation<SpringAnimation> {
    public SpringForce m;
    public float n;
    public boolean o;

    @Override // androidx.dynamicanimation.animation.DynamicAnimation
    public final void c(float f) {
    }

    public SpringAnimation(FloatValueHolder floatValueHolder) {
        super(floatValueHolder);
        this.m = null;
        this.n = Float.MAX_VALUE;
        this.o = false;
    }

    public <K> SpringAnimation(K k, FloatPropertyCompat<K> floatPropertyCompat) {
        super(k, floatPropertyCompat);
        this.m = null;
        this.n = Float.MAX_VALUE;
        this.o = false;
    }

    public <K> SpringAnimation(K k, FloatPropertyCompat<K> floatPropertyCompat, float f) {
        super(k, floatPropertyCompat);
        this.m = null;
        this.n = Float.MAX_VALUE;
        this.o = false;
        this.m = new SpringForce(f);
    }

    public SpringForce getSpring() {
        return this.m;
    }

    public SpringAnimation setSpring(SpringForce springForce) {
        this.m = springForce;
        return this;
    }

    public void animateToFinalPosition(float f) {
        if (isRunning()) {
            this.n = f;
            return;
        }
        if (this.m == null) {
            this.m = new SpringForce(f);
        }
        this.m.setFinalPosition(f);
        start();
    }

    public void skipToEnd() {
        if (!canSkipToEnd()) {
            throw new UnsupportedOperationException("Spring animations can only come to an end when there is damping");
        }
        if (Looper.myLooper() != Looper.getMainLooper()) {
            throw new AndroidRuntimeException("Animations may only be started on the main thread");
        }
        if (this.f) {
            this.o = true;
        }
    }

    public boolean canSkipToEnd() {
        return this.m.f1487b > 0.0d;
    }

    @Override // androidx.dynamicanimation.animation.DynamicAnimation
    public void start() {
        SpringForce springForce = this.m;
        if (springForce == null) {
            throw new UnsupportedOperationException("Incomplete SpringAnimation: Either final position or a spring force needs to be set.");
        }
        double finalPosition = springForce.getFinalPosition();
        if (finalPosition > this.f1479g) {
            throw new UnsupportedOperationException("Final position of the spring cannot be greater than the max value.");
        }
        if (finalPosition >= this.h) {
            SpringForce springForce2 = this.m;
            double d = this.j * 0.75f;
            springForce2.getClass();
            double dAbs = Math.abs(d);
            springForce2.d = dAbs;
            springForce2.e = dAbs * 62.5d;
            super.start();
            return;
        }
        throw new UnsupportedOperationException("Final position of the spring cannot be less than the min value.");
    }

    @Override // androidx.dynamicanimation.animation.DynamicAnimation
    public final boolean d(long j) {
        if (this.o) {
            float f = this.n;
            if (f != Float.MAX_VALUE) {
                this.m.setFinalPosition(f);
                this.n = Float.MAX_VALUE;
            }
            this.f1478b = this.m.getFinalPosition();
            this.f1477a = 0.0f;
            this.o = false;
            return true;
        }
        if (this.n != Float.MAX_VALUE) {
            this.m.getFinalPosition();
            long j2 = j / 2;
            DynamicAnimation.o oVarA = this.m.a(j2, this.f1478b, this.f1477a);
            this.m.setFinalPosition(this.n);
            this.n = Float.MAX_VALUE;
            DynamicAnimation.o oVarA2 = this.m.a(j2, oVarA.f1480a, oVarA.f1481b);
            this.f1478b = oVarA2.f1480a;
            this.f1477a = oVarA2.f1481b;
        } else {
            DynamicAnimation.o oVarA3 = this.m.a(j, this.f1478b, this.f1477a);
            this.f1478b = oVarA3.f1480a;
            this.f1477a = oVarA3.f1481b;
        }
        float fMax = Math.max(this.f1478b, this.h);
        this.f1478b = fMax;
        float fMin = Math.min(fMax, this.f1479g);
        this.f1478b = fMin;
        if (!this.m.isAtEquilibrium(fMin, this.f1477a)) {
            return false;
        }
        this.f1478b = this.m.getFinalPosition();
        this.f1477a = 0.0f;
        return true;
    }
}
