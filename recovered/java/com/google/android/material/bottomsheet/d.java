package com.google.android.material.bottomsheet;

import android.view.View;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.WindowInsetsCompat;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.bottomsheet.BottomSheetDialog;

/* loaded from: classes.dex */
class d implements OnApplyWindowInsetsListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ BottomSheetDialog f2840a;

    @Override // androidx.core.view.OnApplyWindowInsetsListener
    public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
        BottomSheetDialog bottomSheetDialog = this.f2840a;
        BottomSheetBehavior.BottomSheetCallback bottomSheetCallback = bottomSheetDialog.m;
        if (bottomSheetCallback != null) {
            bottomSheetDialog.e.removeBottomSheetCallback(bottomSheetCallback);
        }
        if (windowInsetsCompat != null) {
            BottomSheetDialog.b bVar = new BottomSheetDialog.b(bottomSheetDialog.h, windowInsetsCompat);
            bottomSheetDialog.m = bVar;
            bottomSheetDialog.e.addBottomSheetCallback(bVar);
        }
        return windowInsetsCompat;
    }

    public d(BottomSheetDialog bottomSheetDialog) {
        this.f2840a = bottomSheetDialog;
    }
}
