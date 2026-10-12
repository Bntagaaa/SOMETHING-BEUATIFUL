package androidx.core.view.accessibility;

import android.os.Bundle;
import android.text.style.ClickableSpan;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;

/* loaded from: classes.dex */
public final class AccessibilityClickableSpanCompat extends ClickableSpan {

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public static final String SPAN_ID = "ACCESSIBILITY_CLICKABLE_SPAN_ID";

    /* renamed from: a, reason: collision with root package name */
    public final int f1376a;

    /* renamed from: b, reason: collision with root package name */
    public final AccessibilityNodeInfoCompat f1377b;
    public final int c;

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public AccessibilityClickableSpanCompat(int i, @NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat, int i2) {
        this.f1376a = i;
        this.f1377b = accessibilityNodeInfoCompat;
        this.c = i2;
    }

    @Override // android.text.style.ClickableSpan
    public void onClick(@NonNull View view) {
        Bundle bundle = new Bundle();
        bundle.putInt(SPAN_ID, this.f1376a);
        this.f1377b.performAction(this.c, bundle);
    }
}
