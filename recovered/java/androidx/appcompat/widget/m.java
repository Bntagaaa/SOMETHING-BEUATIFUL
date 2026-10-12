package androidx.appcompat.widget;

import android.graphics.drawable.Icon;
import android.os.Parcelable;
import android.widget.SpinnerAdapter;

/* loaded from: classes.dex */
public abstract /* synthetic */ class m {
    public static /* bridge */ /* synthetic */ Icon f(Parcelable parcelable) {
        return (Icon) parcelable;
    }

    public static /* bridge */ /* synthetic */ android.widget.ThemedSpinnerAdapter l(SpinnerAdapter spinnerAdapter) {
        return (android.widget.ThemedSpinnerAdapter) spinnerAdapter;
    }

    public static /* bridge */ /* synthetic */ boolean u(Parcelable parcelable) {
        return parcelable instanceof Icon;
    }

    public static /* bridge */ /* synthetic */ boolean w(SpinnerAdapter spinnerAdapter) {
        return spinnerAdapter instanceof android.widget.ThemedSpinnerAdapter;
    }
}
