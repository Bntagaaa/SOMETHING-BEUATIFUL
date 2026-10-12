package com.google.android.material.transition.platform;

import android.graphics.RectF;
import androidx.annotation.RequiresApi;

@RequiresApi(21)
/* loaded from: classes.dex */
class i {

    /* renamed from: a, reason: collision with root package name */
    public static final a f3472a = new a();

    /* renamed from: b, reason: collision with root package name */
    public static final b f3473b = new b();

    public class a implements h {
        @Override // com.google.android.material.transition.platform.h
        public j evaluate(float f, float f2, float f3, float f4, float f5, float f6, float f7) {
            float fD = x.d(f4, f6, f2, f3, f, true);
            float f8 = fD / f4;
            float f9 = fD / f6;
            return new j(f8, f9, fD, f5 * f8, fD, f7 * f9);
        }

        @Override // com.google.android.material.transition.platform.h
        public boolean shouldMaskStartBounds(j jVar) {
            return jVar.d > jVar.f;
        }

        @Override // com.google.android.material.transition.platform.h
        public void applyMask(RectF rectF, float f, j jVar) {
            rectF.bottom -= Math.abs(jVar.f - jVar.d) * f;
        }
    }

    public class b implements h {
        @Override // com.google.android.material.transition.platform.h
        public j evaluate(float f, float f2, float f3, float f4, float f5, float f6, float f7) {
            float fD = x.d(f5, f7, f2, f3, f, true);
            float f8 = fD / f5;
            float f9 = fD / f7;
            return new j(f8, f9, f4 * f8, fD, f6 * f9, fD);
        }

        @Override // com.google.android.material.transition.platform.h
        public boolean shouldMaskStartBounds(j jVar) {
            return jVar.c > jVar.e;
        }

        @Override // com.google.android.material.transition.platform.h
        public void applyMask(RectF rectF, float f, j jVar) {
            float fAbs = (Math.abs(jVar.e - jVar.c) / 2.0f) * f;
            rectF.left += fAbs;
            rectF.right -= fAbs;
        }
    }

    private i() {
    }
}
