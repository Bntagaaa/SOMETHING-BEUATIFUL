package com.google.common.base;

import com.google.common.annotations.GwtCompatible;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.util.Arrays;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@GwtCompatible
/* loaded from: classes.dex */
public final class MoreObjects {
    public static <T> T firstNonNull(@NullableDecl T t, @NullableDecl T t2) {
        if (t != null) {
            return t;
        }
        if (t2 != null) {
            return t2;
        }
        throw new NullPointerException("Both parameters are null");
    }

    public static ToStringHelper toStringHelper(Object obj) {
        return new ToStringHelper(obj.getClass().getSimpleName());
    }

    public static ToStringHelper toStringHelper(Class<?> cls) {
        return new ToStringHelper(cls.getSimpleName());
    }

    public static ToStringHelper toStringHelper(String str) {
        return new ToStringHelper(str);
    }

    public static final class ToStringHelper {

        /* renamed from: a, reason: collision with root package name */
        public final String f3683a;

        /* renamed from: b, reason: collision with root package name */
        public final a f3684b;
        public a c;
        public boolean d;

        public ToStringHelper(String str) {
            a aVar = new a(0);
            this.f3684b = aVar;
            this.c = aVar;
            this.d = false;
            this.f3683a = (String) Preconditions.checkNotNull(str);
        }

        @CanIgnoreReturnValue
        public ToStringHelper omitNullValues() {
            this.d = true;
            return this;
        }

        @CanIgnoreReturnValue
        public ToStringHelper add(String str, @NullableDecl Object obj) {
            b(obj, str);
            return this;
        }

        @CanIgnoreReturnValue
        public ToStringHelper add(String str, boolean z) {
            b(String.valueOf(z), str);
            return this;
        }

        @CanIgnoreReturnValue
        public ToStringHelper add(String str, char c) {
            b(String.valueOf(c), str);
            return this;
        }

        @CanIgnoreReturnValue
        public ToStringHelper add(String str, double d) {
            b(String.valueOf(d), str);
            return this;
        }

        @CanIgnoreReturnValue
        public ToStringHelper add(String str, float f) {
            b(String.valueOf(f), str);
            return this;
        }

        @CanIgnoreReturnValue
        public ToStringHelper add(String str, int i) {
            b(String.valueOf(i), str);
            return this;
        }

        @CanIgnoreReturnValue
        public ToStringHelper add(String str, long j) {
            b(String.valueOf(j), str);
            return this;
        }

        @CanIgnoreReturnValue
        public ToStringHelper addValue(boolean z) {
            a().f3686b = String.valueOf(z);
            return this;
        }

        @CanIgnoreReturnValue
        public ToStringHelper addValue(char c) {
            a().f3686b = String.valueOf(c);
            return this;
        }

        @CanIgnoreReturnValue
        public ToStringHelper addValue(double d) {
            a().f3686b = String.valueOf(d);
            return this;
        }

        @CanIgnoreReturnValue
        public ToStringHelper addValue(float f) {
            a().f3686b = String.valueOf(f);
            return this;
        }

        @CanIgnoreReturnValue
        public ToStringHelper addValue(int i) {
            a().f3686b = String.valueOf(i);
            return this;
        }

        @CanIgnoreReturnValue
        public ToStringHelper addValue(long j) {
            a().f3686b = String.valueOf(j);
            return this;
        }

        public String toString() {
            boolean z = this.d;
            StringBuilder sb = new StringBuilder(32);
            sb.append(this.f3683a);
            sb.append('{');
            String str = "";
            for (a aVar = this.f3684b.c; aVar != null; aVar = aVar.c) {
                Object obj = aVar.f3686b;
                if (!z || obj != null) {
                    sb.append(str);
                    String str2 = aVar.f3685a;
                    if (str2 != null) {
                        sb.append(str2);
                        sb.append('=');
                    }
                    if (obj != null && obj.getClass().isArray()) {
                        String strDeepToString = Arrays.deepToString(new Object[]{obj});
                        sb.append((CharSequence) strDeepToString, 1, strDeepToString.length() - 1);
                    } else {
                        sb.append(obj);
                    }
                    str = ", ";
                }
            }
            sb.append('}');
            return sb.toString();
        }

        public final a a() {
            a aVar = new a(0);
            this.c.c = aVar;
            this.c = aVar;
            return aVar;
        }

        @CanIgnoreReturnValue
        public ToStringHelper addValue(@NullableDecl Object obj) {
            a().f3686b = obj;
            return this;
        }

        public final void b(Object obj, String str) {
            a aVarA = a();
            aVarA.f3686b = obj;
            aVarA.f3685a = (String) Preconditions.checkNotNull(str);
        }

        public static final class a {

            /* renamed from: a, reason: collision with root package name */
            public String f3685a;

            /* renamed from: b, reason: collision with root package name */
            public Object f3686b;
            public a c;

            private a() {
            }

            public /* synthetic */ a(int i) {
                this();
            }
        }
    }

    private MoreObjects() {
    }
}
