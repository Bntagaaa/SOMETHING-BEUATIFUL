package com.google.android.material.transition;

/* loaded from: classes.dex */
class b {

    /* renamed from: a, reason: collision with root package name */
    public static final a f3414a = new a();

    /* renamed from: b, reason: collision with root package name */
    public static final C0046b f3415b = new C0046b();
    public static final c c = new c();
    public static final d d = new d();

    public class a implements com.google.android.material.transition.a {
        @Override // com.google.android.material.transition.a
        public com.google.android.material.transition.c evaluate(float f, float f2, float f3, float f4) {
            return new com.google.android.material.transition.c(255, u.e(0, 255, f2, f3, f), true);
        }
    }

    /* renamed from: com.google.android.material.transition.b$b, reason: collision with other inner class name */
    public class C0046b implements com.google.android.material.transition.a {
        @Override // com.google.android.material.transition.a
        public com.google.android.material.transition.c evaluate(float f, float f2, float f3, float f4) {
            return new com.google.android.material.transition.c(u.e(255, 0, f2, f3, f), 255, false);
        }
    }

    public class c implements com.google.android.material.transition.a {
        @Override // com.google.android.material.transition.a
        public com.google.android.material.transition.c evaluate(float f, float f2, float f3, float f4) {
            return new com.google.android.material.transition.c(u.e(255, 0, f2, f3, f), u.e(0, 255, f2, f3, f), false);
        }
    }

    public class d implements com.google.android.material.transition.a {
        @Override // com.google.android.material.transition.a
        public com.google.android.material.transition.c evaluate(float f, float f2, float f3, float f4) {
            float fA = _COROUTINE.a.a(f3, f2, f4, f2);
            return new com.google.android.material.transition.c(u.e(255, 0, f2, fA, f), u.e(0, 255, fA, f3, f), false);
        }
    }

    private b() {
    }
}
