package com.google.common.io;

import com.google.appinventor.components.runtime.repackaged.org.json.HTTP;
import com.google.common.annotations.GwtIncompatible;
import java.io.IOException;

@GwtIncompatible
/* loaded from: classes.dex */
abstract class i {

    /* renamed from: a, reason: collision with root package name */
    public StringBuilder f4682a = new StringBuilder();

    /* renamed from: b, reason: collision with root package name */
    public boolean f4683b;

    public abstract void handleLine(String str, String str2) throws IOException;

    /* JADX WARN: Removed duplicated region for block: B:12:0x0019  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void add(char[] r7, int r8, int r9) throws java.io.IOException {
        /*
            r6 = this;
            boolean r0 = r6.f4683b
            r1 = 0
            r2 = 10
            r3 = 1
            if (r0 == 0) goto L19
            if (r9 <= 0) goto L19
            char r0 = r7[r8]
            if (r0 != r2) goto L10
            r0 = 1
            goto L11
        L10:
            r0 = 0
        L11:
            r6.a(r0)
            if (r0 == 0) goto L19
            int r0 = r8 + 1
            goto L1a
        L19:
            r0 = r8
        L1a:
            int r8 = r8 + r9
            r9 = r0
        L1c:
            if (r0 >= r8) goto L51
            char r4 = r7[r0]
            if (r4 == r2) goto L44
            r5 = 13
            if (r4 == r5) goto L27
            goto L4f
        L27:
            java.lang.StringBuilder r4 = r6.f4682a
            int r5 = r0 - r9
            r4.append(r7, r9, r5)
            r6.f4683b = r3
            int r9 = r0 + 1
            if (r9 >= r8) goto L41
            char r4 = r7[r9]
            if (r4 != r2) goto L3a
            r4 = 1
            goto L3b
        L3a:
            r4 = 0
        L3b:
            r6.a(r4)
            if (r4 == 0) goto L41
            r0 = r9
        L41:
            int r9 = r0 + 1
            goto L4f
        L44:
            java.lang.StringBuilder r4 = r6.f4682a
            int r5 = r0 - r9
            r4.append(r7, r9, r5)
            r6.a(r3)
            goto L41
        L4f:
            int r0 = r0 + r3
            goto L1c
        L51:
            java.lang.StringBuilder r0 = r6.f4682a
            int r8 = r8 - r9
            r0.append(r7, r9, r8)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.io.i.add(char[], int, int):void");
    }

    public final void a(boolean z) throws IOException {
        handleLine(this.f4682a.toString(), this.f4683b ? z ? HTTP.CRLF : "\r" : z ? "\n" : "");
        this.f4682a = new StringBuilder();
        this.f4683b = false;
    }

    public void finish() throws IOException {
        if (this.f4683b || this.f4682a.length() > 0) {
            a(false);
        }
    }
}
