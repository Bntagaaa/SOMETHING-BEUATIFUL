package com.google.android.material.transition.platform;

import androidx.annotation.RequiresApi;

@RequiresApi(21)
/* loaded from: classes.dex */
class b {

    /* renamed from: a, reason: collision with root package name */
    public static final a f3460a = new a();

    /* renamed from: b, reason: collision with root package name */
    public static final C0047b f3461b = new C0047b();
    public static final c c = new c();
    public static final d d = new d();

    public class a implements com.google.android.material.transition.platform.a {
        @Override // com.google.android.material.transition.platform.a
        public com.google.android.material.transition.platform.c evaluate(float f, float f2, float f3, float f4) {
            return new com.google.android.material.transition.platform.c(255, x.e(0, 255, f2, f3, f), true);
        }
    }

    /* renamed from: com.google.android.material.transition.platform.b$b, reason: collision with other inner class name */
    public class C0047b implements com.google.android.material.transition.platform.a {
        @Override // com.google.android.material.transition.platform.a
        public com.google.android.material.transition.platform.c evaluate(float f, float f2, float f3, float f4) {
            return new com.google.android.material.transition.platform.c(x.e(255, 0, f2, f3, f), 255, false);
        }
    }

    public class c implements com.google.android.material.transition.platform.a {
        @Override // com.google.android.material.transition.platform.a
        public com.google.android.material.transition.platform.c evaluate(float f, float f2, float f3, float f4) {
            return new com.google.android.material.transition.platform.c(x.e(255, 0, f2, f3, f), x.e(0, 255, f2, f3, f), false);
        }
    }

    public class d implements com.google.android.material.transition.platform.a {
        @Override // com.google.android.material.transition.platform.a
        public com.google.android.material.transition.platform.c evaluate(float f, float f2, float f3, float f4) {
            float fA = _COROUTINE.a.a(f3, f2, f4, f2);
            return new com.google.android.material.transition.platform.c(x.e(255, 0, f2, fA, f), x.e(0, 255, fA, f3, f), false);
        }
    }

    private b() {
    }
}
