package androidx.core.text;

import java.nio.CharBuffer;
import java.util.Locale;

/* loaded from: classes.dex */
public final class TextDirectionHeuristicsCompat {
    public static final TextDirectionHeuristicCompat ANYRTL_LTR;
    public static final TextDirectionHeuristicCompat FIRSTSTRONG_LTR;
    public static final TextDirectionHeuristicCompat FIRSTSTRONG_RTL;
    public static final TextDirectionHeuristicCompat LOCALE;
    public static final TextDirectionHeuristicCompat LTR = new e(null, false);
    public static final TextDirectionHeuristicCompat RTL = new e(null, true);

    public interface c {
        int checkRtl(CharSequence charSequence, int i, int i2);
    }

    static {
        b bVar = b.f1211a;
        FIRSTSTRONG_LTR = new e(bVar, false);
        FIRSTSTRONG_RTL = new e(bVar, true);
        ANYRTL_LTR = new e(a.f1210a, false);
        LOCALE = f.f1214b;
    }

    public static abstract class d implements TextDirectionHeuristicCompat {

        /* renamed from: a, reason: collision with root package name */
        public final c f1212a;

        public abstract boolean defaultIsRtl();

        public d(c cVar) {
            this.f1212a = cVar;
        }

        @Override // androidx.core.text.TextDirectionHeuristicCompat
        public boolean isRtl(char[] cArr, int i, int i2) {
            return isRtl(CharBuffer.wrap(cArr), i, i2);
        }

        @Override // androidx.core.text.TextDirectionHeuristicCompat
        public boolean isRtl(CharSequence charSequence, int i, int i2) {
            if (charSequence == null || i < 0 || i2 < 0 || charSequence.length() - i2 < i) {
                throw new IllegalArgumentException();
            }
            c cVar = this.f1212a;
            if (cVar == null) {
                return defaultIsRtl();
            }
            int iCheckRtl = cVar.checkRtl(charSequence, i, i2);
            if (iCheckRtl == 0) {
                return true;
            }
            if (iCheckRtl != 1) {
                return defaultIsRtl();
            }
            return false;
        }
    }

    public static class e extends d {

        /* renamed from: b, reason: collision with root package name */
        public final boolean f1213b;

        public e(c cVar, boolean z) {
            super(cVar);
            this.f1213b = z;
        }

        @Override // androidx.core.text.TextDirectionHeuristicsCompat.d
        public boolean defaultIsRtl() {
            return this.f1213b;
        }
    }

    public static class b implements c {

        /* renamed from: a, reason: collision with root package name */
        public static final b f1211a = new b();

        /* JADX WARN: Removed duplicated region for block: B:11:0x001d  */
        /* JADX WARN: Removed duplicated region for block: B:12:0x001f  */
        @Override // androidx.core.text.TextDirectionHeuristicsCompat.c
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public int checkRtl(java.lang.CharSequence r5, int r6, int r7) {
            /*
                r4 = this;
                r0 = 1
                int r7 = r7 + r6
                r1 = 2
                r2 = 2
            L4:
                if (r6 >= r7) goto L22
                if (r2 != r1) goto L22
                char r2 = r5.charAt(r6)
                byte r2 = java.lang.Character.getDirectionality(r2)
                androidx.core.text.TextDirectionHeuristicCompat r3 = androidx.core.text.TextDirectionHeuristicsCompat.LTR
                if (r2 == 0) goto L1f
                if (r2 == r0) goto L1d
                if (r2 == r1) goto L1d
                switch(r2) {
                    case 14: goto L1f;
                    case 15: goto L1f;
                    case 16: goto L1d;
                    case 17: goto L1d;
                    default: goto L1b;
                }
            L1b:
                r2 = 2
                goto L20
            L1d:
                r2 = 0
                goto L20
            L1f:
                r2 = 1
            L20:
                int r6 = r6 + r0
                goto L4
            L22:
                return r2
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.core.text.TextDirectionHeuristicsCompat.b.checkRtl(java.lang.CharSequence, int, int):int");
        }

        private b() {
        }
    }

    public static class a implements c {

        /* renamed from: a, reason: collision with root package name */
        public static final a f1210a = new a();

        @Override // androidx.core.text.TextDirectionHeuristicsCompat.c
        public int checkRtl(CharSequence charSequence, int i, int i2) {
            int i3 = i2 + i;
            boolean z = false;
            while (true) {
                char c = 2;
                if (i >= i3) {
                    return z ? 1 : 2;
                }
                byte directionality = Character.getDirectionality(charSequence.charAt(i));
                TextDirectionHeuristicCompat textDirectionHeuristicCompat = TextDirectionHeuristicsCompat.LTR;
                if (directionality == 0) {
                    c = 1;
                } else if (directionality == 1 || directionality == 2) {
                    c = 0;
                }
                if (c == 0) {
                    return 0;
                }
                if (c == 1) {
                    z = true;
                }
                i++;
            }
        }
    }

    public static class f extends d {

        /* renamed from: b, reason: collision with root package name */
        public static final f f1214b = new f();

        public f() {
            super(null);
        }

        @Override // androidx.core.text.TextDirectionHeuristicsCompat.d
        public boolean defaultIsRtl() {
            return TextUtilsCompat.getLayoutDirectionFromLocale(Locale.getDefault()) == 1;
        }
    }

    private TextDirectionHeuristicsCompat() {
    }
}
