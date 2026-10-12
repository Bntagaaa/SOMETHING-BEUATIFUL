package com.airbnb.lottie.model;

import androidx.annotation.CheckResult;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* loaded from: classes.dex */
public class KeyPath {
    public static final KeyPath COMPOSITION = new KeyPath("COMPOSITION");

    /* renamed from: a, reason: collision with root package name */
    public final List f2583a;

    /* renamed from: b, reason: collision with root package name */
    public KeyPathElement f2584b;

    public KeyPath(String... strArr) {
        this.f2583a = Arrays.asList(strArr);
    }

    public KeyPath(KeyPath keyPath) {
        this.f2583a = new ArrayList(keyPath.f2583a);
        this.f2584b = keyPath.f2584b;
    }

    @CheckResult
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public KeyPath addKey(String str) {
        KeyPath keyPath = new KeyPath(this);
        keyPath.f2583a.add(str);
        return keyPath;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public KeyPath resolve(KeyPathElement keyPathElement) {
        KeyPath keyPath = new KeyPath(this);
        keyPath.f2584b = keyPathElement;
        return keyPath;
    }

    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public KeyPathElement getResolvedElement() {
        return this.f2584b;
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x0088 A[RETURN] */
    @androidx.annotation.RestrictTo({androidx.annotation.RestrictTo.Scope.LIBRARY})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean fullyResolvesTo(java.lang.String r8, int r9) {
        /*
            r7 = this;
            java.util.List r0 = r7.f2583a
            int r1 = r0.size()
            r2 = 0
            if (r9 < r1) goto Lb
            goto L91
        Lb:
            int r1 = r0.size()
            r3 = 1
            int r1 = r1 - r3
            if (r9 != r1) goto L15
            r1 = 1
            goto L16
        L15:
            r1 = 0
        L16:
            java.lang.Object r4 = r0.get(r9)
            java.lang.String r4 = (java.lang.String) r4
            java.lang.String r5 = "**"
            boolean r6 = r4.equals(r5)
            if (r6 != 0) goto L54
            boolean r8 = r4.equals(r8)
            if (r8 != 0) goto L35
            java.lang.String r8 = "*"
            boolean r8 = r4.equals(r8)
            if (r8 == 0) goto L33
            goto L35
        L33:
            r8 = 0
            goto L36
        L35:
            r8 = 1
        L36:
            if (r1 != 0) goto L51
            int r1 = r0.size()
            int r1 = r1 + (-2)
            if (r9 != r1) goto L91
            int r9 = r0.size()
            int r9 = r9 - r3
            java.lang.Object r9 = r0.get(r9)
            java.lang.String r9 = (java.lang.String) r9
            boolean r9 = r9.equals(r5)
            if (r9 == 0) goto L91
        L51:
            if (r8 == 0) goto L91
            goto L88
        L54:
            if (r1 != 0) goto L86
            int r4 = r9 + 1
            java.lang.Object r4 = r0.get(r4)
            java.lang.String r4 = (java.lang.String) r4
            boolean r4 = r4.equals(r8)
            if (r4 == 0) goto L86
            int r8 = r0.size()
            int r8 = r8 + (-2)
            if (r9 == r8) goto L88
            int r8 = r0.size()
            int r8 = r8 + (-3)
            if (r9 != r8) goto L91
            int r8 = r0.size()
            int r8 = r8 - r3
            java.lang.Object r8 = r0.get(r8)
            java.lang.String r8 = (java.lang.String) r8
            boolean r8 = r8.equals(r5)
            if (r8 == 0) goto L91
            goto L88
        L86:
            if (r1 == 0) goto L89
        L88:
            return r3
        L89:
            int r9 = r9 + r3
            int r1 = r0.size()
            int r1 = r1 - r3
            if (r9 >= r1) goto L92
        L91:
            return r2
        L92:
            java.lang.Object r9 = r0.get(r9)
            java.lang.String r9 = (java.lang.String) r9
            boolean r8 = r9.equals(r8)
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.airbnb.lottie.model.KeyPath.fullyResolvesTo(java.lang.String, int):boolean");
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public boolean propagateToChildren(String str, int i) {
        if ("__container".equals(str)) {
            return true;
        }
        List list = this.f2583a;
        return i < list.size() - 1 || ((String) list.get(i)).equals("**");
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public int incrementDepthBy(String str, int i) {
        if ("__container".equals(str)) {
            return 0;
        }
        List list = this.f2583a;
        if (((String) list.get(i)).equals("**")) {
            return (i != list.size() - 1 && ((String) list.get(i + 1)).equals(str)) ? 2 : 0;
        }
        return 1;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public boolean matches(String str, int i) {
        if ("__container".equals(str)) {
            return true;
        }
        List list = this.f2583a;
        if (i >= list.size()) {
            return false;
        }
        return ((String) list.get(i)).equals(str) || ((String) list.get(i)).equals("**") || ((String) list.get(i)).equals("*");
    }

    public String keysToString() {
        return this.f2583a.toString();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("KeyPath{keys=");
        sb.append(this.f2583a);
        sb.append(",resolved=");
        sb.append(this.f2584b != null);
        sb.append('}');
        return sb.toString();
    }
}
