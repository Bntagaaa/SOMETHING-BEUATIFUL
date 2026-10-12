package com.google.android.material.bottomsheet;

import com.google.android.material.internal.ViewUtils;

/* loaded from: classes.dex */
class b implements ViewUtils.OnApplyWindowInsetsListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ boolean f2836a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ BottomSheetBehavior f2837b;

    public b(BottomSheetBehavior bottomSheetBehavior, boolean z) {
        this.f2837b = bottomSheetBehavior;
        this.f2836a = z;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0083  */
    @Override // com.google.android.material.internal.ViewUtils.OnApplyWindowInsetsListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public androidx.core.view.WindowInsetsCompat onApplyWindowInsets(android.view.View r12, androidx.core.view.WindowInsetsCompat r13, com.google.android.material.internal.ViewUtils.RelativePadding r14) {
        /*
            r11 = this;
            int r0 = androidx.core.view.WindowInsetsCompat.Type.systemBars()
            androidx.core.graphics.Insets r0 = r13.getInsets(r0)
            int r1 = androidx.core.view.WindowInsetsCompat.Type.mandatorySystemGestures()
            androidx.core.graphics.Insets r1 = r13.getInsets(r1)
            int r2 = r0.top
            com.google.android.material.bottomsheet.BottomSheetBehavior r3 = r11.f2837b
            r3.w = r2
            boolean r2 = com.google.android.material.internal.ViewUtils.isLayoutRtl(r12)
            int r4 = r12.getPaddingBottom()
            int r5 = r12.getPaddingLeft()
            int r6 = r12.getPaddingRight()
            boolean r7 = r3.o
            if (r7 == 0) goto L35
            int r4 = r13.getSystemWindowInsetBottom()
            r3.v = r4
            int r4 = r14.bottom
            int r7 = r3.v
            int r4 = r4 + r7
        L35:
            boolean r7 = r3.p
            if (r7 == 0) goto L43
            if (r2 == 0) goto L3e
            int r5 = r14.end
            goto L40
        L3e:
            int r5 = r14.start
        L40:
            int r7 = r0.left
            int r5 = r5 + r7
        L43:
            boolean r7 = r3.q
            if (r7 == 0) goto L52
            if (r2 == 0) goto L4c
            int r14 = r14.start
            goto L4e
        L4c:
            int r14 = r14.end
        L4e:
            int r2 = r0.right
            int r6 = r14 + r2
        L52:
            android.view.ViewGroup$LayoutParams r14 = r12.getLayoutParams()
            android.view.ViewGroup$MarginLayoutParams r14 = (android.view.ViewGroup.MarginLayoutParams) r14
            boolean r2 = r3.s
            r7 = 0
            r8 = 1
            if (r2 == 0) goto L68
            int r2 = r14.leftMargin
            int r9 = r0.left
            if (r2 == r9) goto L68
            r14.leftMargin = r9
            r2 = 1
            goto L69
        L68:
            r2 = 0
        L69:
            boolean r9 = r3.t
            if (r9 == 0) goto L76
            int r9 = r14.rightMargin
            int r10 = r0.right
            if (r9 == r10) goto L76
            r14.rightMargin = r10
            r2 = 1
        L76:
            boolean r9 = r3.u
            if (r9 == 0) goto L83
            int r9 = r14.topMargin
            int r0 = r0.top
            if (r9 == r0) goto L83
            r14.topMargin = r0
            goto L84
        L83:
            r8 = r2
        L84:
            if (r8 == 0) goto L89
            r12.setLayoutParams(r14)
        L89:
            int r14 = r12.getPaddingTop()
            r12.setPadding(r5, r14, r6, r4)
            boolean r12 = r11.f2836a
            if (r12 == 0) goto L98
            int r14 = r1.bottom
            r3.m = r14
        L98:
            boolean r14 = r3.o
            if (r14 != 0) goto La0
            if (r12 == 0) goto L9f
            goto La0
        L9f:
            return r13
        La0:
            r3.m(r7)
            return r13
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.bottomsheet.b.onApplyWindowInsets(android.view.View, androidx.core.view.WindowInsetsCompat, com.google.android.material.internal.ViewUtils$RelativePadding):androidx.core.view.WindowInsetsCompat");
    }
}
