package androidx.core.os;

import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Locale;

/* loaded from: classes.dex */
final class d implements e {
    public static final Locale[] c = new Locale[0];
    public static final Locale d = new Locale("en", "XA");
    public static final Locale e = new Locale("ar", "XB");

    /* renamed from: a, reason: collision with root package name */
    public final Locale[] f1146a;

    /* renamed from: b, reason: collision with root package name */
    public final String f1147b;

    @Override // androidx.core.os.e
    @Nullable
    public Object getLocaleList() {
        return null;
    }

    static {
        LocaleListCompat.a("en-Latn");
    }

    @Override // androidx.core.os.e
    public Locale get(int i) {
        if (i < 0) {
            return null;
        }
        Locale[] localeArr = this.f1146a;
        if (i < localeArr.length) {
            return localeArr[i];
        }
        return null;
    }

    @Override // androidx.core.os.e
    public boolean isEmpty() {
        return this.f1146a.length == 0;
    }

    @Override // androidx.core.os.e
    public int size() {
        return this.f1146a.length;
    }

    @Override // androidx.core.os.e
    public int indexOf(Locale locale) {
        int i = 0;
        while (true) {
            Locale[] localeArr = this.f1146a;
            if (i >= localeArr.length) {
                return -1;
            }
            if (localeArr[i].equals(locale)) {
                return i;
            }
            i++;
        }
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof d)) {
            return false;
        }
        Locale[] localeArr = ((d) obj).f1146a;
        Locale[] localeArr2 = this.f1146a;
        if (localeArr2.length != localeArr.length) {
            return false;
        }
        for (int i = 0; i < localeArr2.length; i++) {
            if (!localeArr2[i].equals(localeArr[i])) {
                return false;
            }
        }
        return true;
    }

    public int hashCode() {
        int iHashCode = 1;
        for (Locale locale : this.f1146a) {
            iHashCode = (iHashCode * 31) + locale.hashCode();
        }
        return iHashCode;
    }

    @NonNull
    public String toString() {
        StringBuilder sb = new StringBuilder("[");
        int i = 0;
        while (true) {
            Locale[] localeArr = this.f1146a;
            if (i < localeArr.length) {
                sb.append(localeArr[i]);
                if (i < localeArr.length - 1) {
                    sb.append(',');
                }
                i++;
            } else {
                sb.append("]");
                return sb.toString();
            }
        }
    }

    @Override // androidx.core.os.e
    public String toLanguageTags() {
        return this.f1147b;
    }

    public d(Locale... localeArr) {
        if (localeArr.length == 0) {
            this.f1146a = c;
            this.f1147b = "";
            return;
        }
        ArrayList arrayList = new ArrayList();
        HashSet hashSet = new HashSet();
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < localeArr.length; i++) {
            Locale locale = localeArr[i];
            if (locale == null) {
                throw new NullPointerException(_COROUTINE.a.e(i, "list[", "] is null"));
            }
            if (!hashSet.contains(locale)) {
                Locale locale2 = (Locale) locale.clone();
                arrayList.add(locale2);
                sb.append(locale2.getLanguage());
                String country = locale2.getCountry();
                if (country != null && !country.isEmpty()) {
                    sb.append('-');
                    sb.append(locale2.getCountry());
                }
                if (i < localeArr.length - 1) {
                    sb.append(',');
                }
                hashSet.add(locale2);
            }
        }
        this.f1146a = (Locale[]) arrayList.toArray(new Locale[0]);
        this.f1147b = sb.toString();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:16:0x003a  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x004b  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00a6 A[LOOP:1: B:12:0x002f->B:47:0x00a6, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x00ac A[EDGE_INSN: B:68:0x00ac->B:49:0x00ac BREAK  A[LOOP:1: B:12:0x002f->B:47:0x00a6], SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r8v6 */
    /* JADX WARN: Type inference failed for: r8v7 */
    /* JADX WARN: Type inference failed for: r8v8 */
    /* JADX WARN: Type inference failed for: r8v9 */
    @Override // androidx.core.os.e
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.Locale getFirstMatch(@androidx.annotation.NonNull java.lang.String[] r13) {
        /*
            r12 = this;
            java.util.List r13 = java.util.Arrays.asList(r13)
            java.util.Locale[] r0 = r12.f1146a
            int r1 = r0.length
            r2 = 0
            r3 = 1
            r4 = -1
            if (r1 != r3) goto Le
            goto Lb8
        Le:
            int r1 = r0.length
            if (r1 != 0) goto L14
            r2 = -1
            goto Lb8
        L14:
            java.util.Iterator r13 = r13.iterator()
            r1 = 2147483647(0x7fffffff, float:NaN)
            r5 = 2147483647(0x7fffffff, float:NaN)
        L1e:
            boolean r6 = r13.hasNext()
            if (r6 == 0) goto Lb4
            java.lang.Object r6 = r13.next()
            java.lang.String r6 = (java.lang.String) r6
            java.util.Locale r6 = androidx.core.os.LocaleListCompat.a(r6)
            r7 = 0
        L2f:
            int r8 = r0.length
            if (r7 >= r8) goto La9
            r8 = r0[r7]
            boolean r9 = r6.equals(r8)
            if (r9 == 0) goto L3d
        L3a:
            r8 = 1
            goto La3
        L3d:
            java.lang.String r9 = r6.getLanguage()
            java.lang.String r10 = r8.getLanguage()
            boolean r9 = r9.equals(r10)
            if (r9 != 0) goto L4d
        L4b:
            r8 = 0
            goto La3
        L4d:
            java.util.Locale r9 = androidx.core.os.d.d
            boolean r10 = r9.equals(r6)
            if (r10 != 0) goto L4b
            java.util.Locale r10 = androidx.core.os.d.e
            boolean r11 = r10.equals(r6)
            if (r11 == 0) goto L5e
            goto L4b
        L5e:
            boolean r9 = r9.equals(r8)
            if (r9 != 0) goto L4b
            boolean r9 = r10.equals(r8)
            if (r9 == 0) goto L6b
            goto L4b
        L6b:
            java.lang.String r9 = androidx.core.os.d.a.a(r6)
            boolean r10 = r9.isEmpty()
            java.lang.String r11 = ""
            if (r10 != 0) goto L78
            goto L79
        L78:
            r9 = r11
        L79:
            boolean r10 = r9.isEmpty()
            if (r10 == 0) goto L94
            java.lang.String r9 = r6.getCountry()
            boolean r10 = r9.isEmpty()
            if (r10 != 0) goto L3a
            java.lang.String r8 = r8.getCountry()
            boolean r8 = r9.equals(r8)
            if (r8 == 0) goto L4b
            goto L3a
        L94:
            java.lang.String r8 = androidx.core.os.d.a.a(r8)
            boolean r10 = r8.isEmpty()
            if (r10 != 0) goto L9f
            r11 = r8
        L9f:
            boolean r8 = r9.equals(r11)
        La3:
            if (r8 <= 0) goto La6
            goto Lac
        La6:
            int r7 = r7 + 1
            goto L2f
        La9:
            r7 = 2147483647(0x7fffffff, float:NaN)
        Lac:
            if (r7 != 0) goto Laf
            goto Lb8
        Laf:
            if (r7 >= r5) goto L1e
            r5 = r7
            goto L1e
        Lb4:
            if (r5 != r1) goto Lb7
            goto Lb8
        Lb7:
            r2 = r5
        Lb8:
            if (r2 != r4) goto Lbc
            r13 = 0
            return r13
        Lbc:
            r13 = r0[r2]
            return r13
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.os.d.getFirstMatch(java.lang.String[]):java.util.Locale");
    }

    @RequiresApi(21)
    public static class a {
        private a() {
        }

        @DoNotInline
        public static String a(Locale locale) {
            return locale.getScript();
        }
    }
}
