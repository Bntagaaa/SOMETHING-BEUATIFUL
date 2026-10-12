package androidx.constraintlayout.motion.utils;

import android.util.Log;
import androidx.constraintlayout.motion.widget.MotionInterpolator;

/* loaded from: classes.dex */
public class StopLogic extends MotionInterpolator {

    /* renamed from: a, reason: collision with root package name */
    public float f605a;

    /* renamed from: b, reason: collision with root package name */
    public float f606b;
    public float c;
    public float d;
    public float e;
    public float f;

    /* renamed from: g, reason: collision with root package name */
    public float f607g;
    public float h;
    public float i;
    public int j;
    public String k;
    public boolean l = false;
    public float m;
    public float n;

    public void debug(String str, String str2, float f) {
        StringBuilder sbQ = _COROUTINE.a.q(str2, " ===== ");
        sbQ.append(this.k);
        Log.v(str, sbQ.toString());
        StringBuilder sb = new StringBuilder();
        sb.append(str2);
        sb.append(this.l ? "backwards" : "forward ");
        sb.append(" time = ");
        sb.append(f);
        sb.append("  stages ");
        sb.append(this.j);
        Log.v(str, sb.toString());
        Log.v(str, str2 + " dur " + this.d + " vel " + this.f605a + " pos " + this.f607g);
        if (this.j > 1) {
            StringBuilder sbQ2 = _COROUTINE.a.q(str2, " dur ");
            sbQ2.append(this.e);
            sbQ2.append(" vel ");
            sbQ2.append(this.f606b);
            sbQ2.append(" pos ");
            sbQ2.append(this.h);
            Log.v(str, sbQ2.toString());
        }
        if (this.j > 2) {
            StringBuilder sbQ3 = _COROUTINE.a.q(str2, " dur ");
            sbQ3.append(this.f);
            sbQ3.append(" vel ");
            sbQ3.append(this.c);
            sbQ3.append(" pos ");
            sbQ3.append(this.i);
            Log.v(str, sbQ3.toString());
        }
        float f2 = this.d;
        if (f <= f2) {
            Log.v(str, str2 + "stage 0");
            return;
        }
        int i = this.j;
        if (i == 1) {
            Log.v(str, str2 + "end stage 0");
            return;
        }
        float f3 = f - f2;
        float f4 = this.e;
        if (f3 < f4) {
            Log.v(str, str2 + " stage 1");
            return;
        }
        if (i == 2) {
            Log.v(str, str2 + "end stage 1");
            return;
        }
        if (f3 - f4 < this.f) {
            Log.v(str, str2 + " stage 2");
            return;
        }
        Log.v(str, str2 + " end stage 2");
    }

    public float getVelocity(float f) {
        float f2;
        float f3;
        float f4 = this.d;
        if (f <= f4) {
            f2 = this.f605a;
            f3 = this.f606b;
        } else {
            int i = this.j;
            if (i == 1) {
                return 0.0f;
            }
            f -= f4;
            f4 = this.e;
            if (f >= f4) {
                if (i == 2) {
                    return this.h;
                }
                float f5 = f - f4;
                float f6 = this.f;
                if (f5 < f6) {
                    float f7 = this.c;
                    return f7 - ((f5 * f7) / f6);
                }
                return this.i;
            }
            f2 = this.f606b;
            f3 = this.c;
        }
        return (((f3 - f2) * f) / f4) + f2;
    }

    @Override // androidx.constraintlayout.motion.widget.MotionInterpolator, android.animation.TimeInterpolator
    public float getInterpolation(float f) {
        float f2;
        float f3 = this.d;
        if (f <= f3) {
            float f4 = this.f605a;
            f2 = ((((this.f606b - f4) * f) * f) / (f3 * 2.0f)) + (f4 * f);
        } else {
            int i = this.j;
            if (i == 1) {
                f2 = this.f607g;
            } else {
                float f5 = f - f3;
                float f6 = this.e;
                if (f5 < f6) {
                    float f7 = this.f607g;
                    float f8 = this.f606b;
                    f2 = ((((this.c - f8) * f5) * f5) / (f6 * 2.0f)) + (f8 * f5) + f7;
                } else if (i == 2) {
                    f2 = this.h;
                } else {
                    float f9 = f5 - f6;
                    float f10 = this.f;
                    if (f9 < f10) {
                        float f11 = this.h;
                        float f12 = this.c * f9;
                        f2 = (f11 + f12) - ((f12 * f9) / (f10 * 2.0f));
                    } else {
                        f2 = this.i;
                    }
                }
            }
        }
        this.n = f;
        return this.l ? this.m - f2 : this.m + f2;
    }

    public void config(float f, float f2, float f3, float f4, float f5, float f6) {
        this.m = f;
        boolean z = f > f2;
        this.l = z;
        if (z) {
            a(-f3, f - f2, f5, f6, f4);
        } else {
            a(f3, f2 - f, f5, f6, f4);
        }
    }

    @Override // androidx.constraintlayout.motion.widget.MotionInterpolator
    public float getVelocity() {
        return this.l ? -getVelocity(this.n) : getVelocity(this.n);
    }

    public final void a(float f, float f2, float f3, float f4, float f5) {
        if (f == 0.0f) {
            f = 1.0E-4f;
        }
        this.f605a = f;
        float f6 = f / f3;
        float f7 = (f6 * f) / 2.0f;
        if (f < 0.0f) {
            float fSqrt = (float) Math.sqrt((f2 - ((((-f) / f3) * f) / 2.0f)) * f3);
            if (fSqrt < f4) {
                this.k = "backward accelerate, decelerate";
                this.j = 2;
                this.f605a = f;
                this.f606b = fSqrt;
                this.c = 0.0f;
                float f8 = (fSqrt - f) / f3;
                this.d = f8;
                this.e = fSqrt / f3;
                this.f607g = ((f + fSqrt) * f8) / 2.0f;
                this.h = f2;
                this.i = f2;
                return;
            }
            this.k = "backward accelerate cruse decelerate";
            this.j = 3;
            this.f605a = f;
            this.f606b = f4;
            this.c = f4;
            float f9 = (f4 - f) / f3;
            this.d = f9;
            float f10 = f4 / f3;
            this.f = f10;
            float f11 = ((f + f4) * f9) / 2.0f;
            float f12 = (f10 * f4) / 2.0f;
            this.e = ((f2 - f11) - f12) / f4;
            this.f607g = f11;
            this.h = f2 - f12;
            this.i = f2;
            return;
        }
        if (f7 >= f2) {
            this.k = "hard stop";
            this.j = 1;
            this.f605a = f;
            this.f606b = 0.0f;
            this.f607g = f2;
            this.d = (2.0f * f2) / f;
            return;
        }
        float f13 = f2 - f7;
        float f14 = f13 / f;
        if (f14 + f6 < f5) {
            this.k = "cruse decelerate";
            this.j = 2;
            this.f605a = f;
            this.f606b = f;
            this.c = 0.0f;
            this.f607g = f13;
            this.h = f2;
            this.d = f14;
            this.e = f6;
            return;
        }
        float fSqrt2 = (float) Math.sqrt(((f * f) / 2.0f) + (f3 * f2));
        float f15 = (fSqrt2 - f) / f3;
        this.d = f15;
        float f16 = fSqrt2 / f3;
        this.e = f16;
        if (fSqrt2 < f4) {
            this.k = "accelerate decelerate";
            this.j = 2;
            this.f605a = f;
            this.f606b = fSqrt2;
            this.c = 0.0f;
            this.d = f15;
            this.e = f16;
            this.f607g = ((f + fSqrt2) * f15) / 2.0f;
            this.h = f2;
            return;
        }
        this.k = "accelerate cruse decelerate";
        this.j = 3;
        this.f605a = f;
        this.f606b = f4;
        this.c = f4;
        float f17 = (f4 - f) / f3;
        this.d = f17;
        float f18 = f4 / f3;
        this.f = f18;
        float f19 = ((f + f4) * f17) / 2.0f;
        float f20 = (f18 * f4) / 2.0f;
        this.e = ((f2 - f19) - f20) / f4;
        this.f607g = f19;
        this.h = f2 - f20;
        this.i = f2;
    }
}
