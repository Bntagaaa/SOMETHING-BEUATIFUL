package com.google.android.material.bottomsheet;

import android.app.Dialog;
import android.os.Bundle;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatDialogFragment;
import com.google.android.material.bottomsheet.BottomSheetBehavior;

/* loaded from: classes.dex */
public class BottomSheetDialogFragment extends AppCompatDialogFragment {
    public boolean r0;

    public class b extends BottomSheetBehavior.BottomSheetCallback {
        @Override // com.google.android.material.bottomsheet.BottomSheetBehavior.BottomSheetCallback
        public void onSlide(@NonNull View view, float f) {
        }

        @Override // com.google.android.material.bottomsheet.BottomSheetBehavior.BottomSheetCallback
        public void onStateChanged(@NonNull View view, int i) {
            if (i == 5) {
                BottomSheetDialogFragment.this.r();
            }
        }

        public b() {
        }
    }

    @Override // androidx.appcompat.app.AppCompatDialogFragment, androidx.fragment.app.DialogFragment
    @NonNull
    public Dialog onCreateDialog(@Nullable Bundle bundle) {
        return new BottomSheetDialog(getContext(), getTheme());
    }

    @Override // androidx.fragment.app.DialogFragment
    public void dismiss() {
        if (s(false)) {
            return;
        }
        super.dismiss();
    }

    @Override // androidx.fragment.app.DialogFragment
    public void dismissAllowingStateLoss() {
        if (s(true)) {
            return;
        }
        super.dismissAllowingStateLoss();
    }

    public final boolean s(boolean z) {
        Dialog dialog = getDialog();
        if (!(dialog instanceof BottomSheetDialog)) {
            return false;
        }
        BottomSheetDialog bottomSheetDialog = (BottomSheetDialog) dialog;
        BottomSheetBehavior<FrameLayout> behavior = bottomSheetDialog.getBehavior();
        if (!behavior.isHideable() || !bottomSheetDialog.getDismissWithAnimation()) {
            return false;
        }
        this.r0 = z;
        if (behavior.getState() == 5) {
            r();
            return true;
        }
        if (getDialog() instanceof BottomSheetDialog) {
            BottomSheetDialog bottomSheetDialog2 = (BottomSheetDialog) getDialog();
            bottomSheetDialog2.e.removeBottomSheetCallback(bottomSheetDialog2.o);
        }
        behavior.addBottomSheetCallback(new b());
        behavior.setState(5);
        return true;
    }

    public final void r() {
        if (this.r0) {
            super.dismissAllowingStateLoss();
        } else {
            super.dismiss();
        }
    }
}
