package com.google.android.material.snackbar;

import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.view.ViewCompat;
import com.google.android.material.R;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public class SnackbarContentLayout extends LinearLayout implements ContentViewCallback {

    /* renamed from: a, reason: collision with root package name */
    public TextView f3244a;

    /* renamed from: b, reason: collision with root package name */
    public Button f3245b;
    public int c;

    public SnackbarContentLayout(@NonNull Context context) {
        this(context, null);
    }

    public SnackbarContentLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        this.f3244a = (TextView) findViewById(R.id.snackbar_text);
        this.f3245b = (Button) findViewById(R.id.snackbar_action);
    }

    public TextView getMessageView() {
        return this.f3244a;
    }

    public Button getActionView() {
        return this.f3245b;
    }

    @Override // android.widget.LinearLayout, android.view.View
    public void onMeasure(int i, int i2) throws Resources.NotFoundException {
        super.onMeasure(i, i2);
        if (getOrientation() == 1) {
            return;
        }
        int dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.design_snackbar_padding_vertical_2lines);
        int dimensionPixelSize2 = getResources().getDimensionPixelSize(R.dimen.design_snackbar_padding_vertical);
        boolean z = this.f3244a.getLayout().getLineCount() > 1;
        if (z && this.c > 0 && this.f3245b.getMeasuredWidth() > this.c) {
            if (!a(1, dimensionPixelSize, dimensionPixelSize - dimensionPixelSize2)) {
                return;
            }
        } else {
            if (!z) {
                dimensionPixelSize = dimensionPixelSize2;
            }
            if (!a(0, dimensionPixelSize, dimensionPixelSize)) {
                return;
            }
        }
        super.onMeasure(i, i2);
    }

    public final boolean a(int i, int i2, int i3) {
        boolean z;
        if (i != getOrientation()) {
            setOrientation(i);
            z = true;
        } else {
            z = false;
        }
        if (this.f3244a.getPaddingTop() == i2 && this.f3244a.getPaddingBottom() == i3) {
            return z;
        }
        TextView textView = this.f3244a;
        if (ViewCompat.isPaddingRelative(textView)) {
            ViewCompat.setPaddingRelative(textView, ViewCompat.getPaddingStart(textView), i2, ViewCompat.getPaddingEnd(textView), i3);
            return true;
        }
        textView.setPadding(textView.getPaddingLeft(), i2, textView.getPaddingRight(), i3);
        return true;
    }

    @Override // com.google.android.material.snackbar.ContentViewCallback
    public void animateContentIn(int i, int i2) {
        this.f3244a.setAlpha(0.0f);
        long j = i2;
        long j2 = i;
        this.f3244a.animate().alpha(1.0f).setDuration(j).setStartDelay(j2).start();
        if (this.f3245b.getVisibility() == 0) {
            this.f3245b.setAlpha(0.0f);
            this.f3245b.animate().alpha(1.0f).setDuration(j).setStartDelay(j2).start();
        }
    }

    @Override // com.google.android.material.snackbar.ContentViewCallback
    public void animateContentOut(int i, int i2) {
        this.f3244a.setAlpha(1.0f);
        long j = i2;
        long j2 = i;
        this.f3244a.animate().alpha(0.0f).setDuration(j).setStartDelay(j2).start();
        if (this.f3245b.getVisibility() == 0) {
            this.f3245b.setAlpha(1.0f);
            this.f3245b.animate().alpha(0.0f).setDuration(j).setStartDelay(j2).start();
        }
    }

    public void setMaxInlineActionWidth(int i) {
        this.c = i;
    }
}
