package com.google.zxing.qrcode.decoder;

/* loaded from: classes2.dex */
abstract class c {

    /* renamed from: a, reason: collision with root package name */
    public static final c[] f5327a;

    public abstract boolean a(int i2, int i3);

    public /* synthetic */ c(int i2) {
        this();
    }

    static {
        int i2 = 0;
        f5327a = new c[]{new b(i2), new C0151c(i2), new d(i2), new e(i2), new f(i2), new g(i2), new h(i2), new i(i2)};
    }

    private c() {
    }

    public static final class b extends c {
        @Override // com.google.zxing.qrcode.decoder.c
        public final boolean a(int i, int i2) {
            return ((i + i2) & 1) == 0;
        }

        private b() {
            super(0);
        }

        public /* synthetic */ b(int i) {
            this();
        }
    }

    /* renamed from: com.google.zxing.qrcode.decoder.c$c, reason: collision with other inner class name */
    public static final class C0151c extends c {
        @Override // com.google.zxing.qrcode.decoder.c
        public final boolean a(int i, int i2) {
            return (i & 1) == 0;
        }

        private C0151c() {
            super(0);
        }

        public /* synthetic */ C0151c(int i) {
            this();
        }
    }

    public static final class d extends c {
        private d() {
            super(0);
        }

        public /* synthetic */ d(int i) {
            this();
        }

        @Override // com.google.zxing.qrcode.decoder.c
        public final boolean a(int i, int i2) {
            return i2 % 3 == 0;
        }
    }

    public static final class e extends c {
        private e() {
            super(0);
        }

        public /* synthetic */ e(int i) {
            this();
        }

        @Override // com.google.zxing.qrcode.decoder.c
        public final boolean a(int i, int i2) {
            return (i + i2) % 3 == 0;
        }
    }

    public static final class f extends c {
        private f() {
            super(0);
        }

        public /* synthetic */ f(int i) {
            this();
        }

        @Override // com.google.zxing.qrcode.decoder.c
        public final boolean a(int i, int i2) {
            return (((i2 / 3) + (i >>> 1)) & 1) == 0;
        }
    }

    public static final class g extends c {
        private g() {
            super(0);
        }

        public /* synthetic */ g(int i) {
            this();
        }

        @Override // com.google.zxing.qrcode.decoder.c
        public final boolean a(int i, int i2) {
            int i3 = i * i2;
            return (i3 % 3) + (i3 & 1) == 0;
        }
    }

    public static final class h extends c {
        private h() {
            super(0);
        }

        public /* synthetic */ h(int i) {
            this();
        }

        @Override // com.google.zxing.qrcode.decoder.c
        public final boolean a(int i, int i2) {
            int i3 = i * i2;
            return (((i3 % 3) + (i3 & 1)) & 1) == 0;
        }
    }

    public static final class i extends c {
        private i() {
            super(0);
        }

        public /* synthetic */ i(int i) {
            this();
        }

        @Override // com.google.zxing.qrcode.decoder.c
        public final boolean a(int i, int i2) {
            return ((((i * i2) % 3) + ((i + i2) & 1)) & 1) == 0;
        }
    }
}
