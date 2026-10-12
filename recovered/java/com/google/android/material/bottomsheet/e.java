package com.google.android.material.bottomsheet;

import android.R;
import android.content.res.TypedArray;
import android.view.View;

/* loaded from: classes.dex */
class e implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ BottomSheetDialog f2841a;

    public e(BottomSheetDialog bottomSheetDialog) {
        this.f2841a = bottomSheetDialog;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        BottomSheetDialog bottomSheetDialog = this.f2841a;
        if (bottomSheetDialog.j && bottomSheetDialog.isShowing()) {
            if (!bottomSheetDialog.l) {
                TypedArray typedArrayObtainStyledAttributes = bottomSheetDialog.getContext().obtainStyledAttributes(new int[]{R.attr.windowCloseOnTouchOutside});
                bottomSheetDialog.k = typedArrayObtainStyledAttributes.getBoolean(0, true);
                typedArrayObtainStyledAttributes.recycle();
                bottomSheetDialog.l = true;
            }
            if (bottomSheetDialog.k) {
                bottomSheetDialog.cancel();
            }
        }
    }
}
