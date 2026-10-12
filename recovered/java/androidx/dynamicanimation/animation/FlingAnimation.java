package androidx.dynamicanimation.animation;

import androidx.annotation.FloatRange;
import androidx.dynamicanimation.animation.DynamicAnimation;

/* loaded from: classes.dex */
public final class FlingAnimation extends DynamicAnimation<FlingAnimation> {
    public final a m;

    public FlingAnimation(FloatValueHolder floatValueHolder) {
        super(floatValueHolder);
        a aVar = new a();
        this.m = aVar;
        aVar.f1483b = this.j * 0.75f * 62.5f;
    }

    public <K> FlingAnimation(K k, FloatPropertyCompat<K> floatPropertyCompat) {
        super(k, floatPropertyCompat);
        a aVar = new a();
        this.m = aVar;
        aVar.f1483b = this.j * 0.75f * 62.5f;
    }

    @Override // androidx.dynamicanimation.animation.DynamicAnimation
    public FlingAnimation setMinValue(float f) {
        super.setMinValue(f);
        return this;
    }

    @Override // androidx.dynamicanimation.animation.DynamicAnimation
    public FlingAnimation setMaxValue(float f) {
        super.setMaxValue(f);
        return this;
    }

    @Override // androidx.dynamicanimation.animation.DynamicAnimation
    public FlingAnimation setStartVelocity(float f) {
        super.setStartVelocity(f);
        return this;
    }

    @Override // androidx.dynamicanimation.animation.DynamicAnimation
    public final boolean d(long j) {
        float f = this.f1478b;
        float f2 = this.f1477a;
        float f3 = j;
        a aVar = this.m;
        double dExp = Math.exp((f3 / 1000.0f) * aVar.f1482a);
        DynamicAnimation.o oVar = aVar.c;
        oVar.f1481b = (float) (dExp * f2);
        float fExp = (float) ((Math.exp((r2 * f3) / 1000.0f) * (f2 / aVar.f1482a)) + (f - r1));
        oVar.f1480a = fExp;
        if (aVar.isAtEquilibrium(fExp, oVar.f1481b)) {
            oVar.f1481b = 0.0f;
        }
        float f4 = oVar.f1480a;
        this.f1478b = f4;
        float f5 = oVar.f1481b;
        this.f1477a = f5;
        float f6 = this.h;
        if (f4 < f6) {
            this.f1478b = f6;
            return true;
        }
        float f7 = this.f1479g;
        if (f4 <= f7) {
            return f4 >= f7 || f4 <= f6 || aVar.isAtEquilibrium(f4, f5);
        }
        this.f1478b = f7;
        return true;
    }

    public FlingAnimation setFriction(@FloatRange(from = 0.0d, fromInclusive = false) float f) {
        if (f <= 0.0f) {
            throw new IllegalArgumentException("Friction must be positive");
        }
        this.m.f1482a = f * (-4.2f);
        return this;
    }

    public float getFriction() {
        return this.m.f1482a / (-4.2f);
    }

    public static final class a implements e {

        /* renamed from: b, reason: collision with root package name */
        public float f1483b;

        /* renamed from: a, reason: collision with root package name */
        public float f1482a = -4.2f;
        public final DynamicAnimation.o c = new DynamicAnimation.o();

        public boolean isAtEquilibrium(float f, float f2) {
            return Math.abs(f2) < this.f1483b;
        }
    }

    @Override // androidx.dynamicanimation.animation.DynamicAnimation
    public final void c(float f) {
        this.m.f1483b = f * 62.5f;
    }
}
