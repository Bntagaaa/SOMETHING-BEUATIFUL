package androidx.core.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ProgressBar;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* loaded from: classes.dex */
public class ContentLoadingProgressBar extends ProgressBar {

    /* renamed from: a, reason: collision with root package name */
    public long f1426a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f1427b;
    public boolean c;
    public boolean d;
    public final a e;
    public final a f;

    public ContentLoadingProgressBar(@NonNull Context context) {
        this(context, null);
    }

    public ContentLoadingProgressBar(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.f1426a = -1L;
        this.f1427b = false;
        this.c = false;
        this.d = false;
        this.e = new a(this, 0);
        this.f = new a(this, 1);
    }

    @Override // android.widget.ProgressBar, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        removeCallbacks(this.e);
        removeCallbacks(this.f);
    }

    @Override // android.widget.ProgressBar, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        removeCallbacks(this.e);
        removeCallbacks(this.f);
    }

    public void hide() {
        post(new a(this, 3));
    }

    public void show() {
        post(new a(this, 2));
    }
}
