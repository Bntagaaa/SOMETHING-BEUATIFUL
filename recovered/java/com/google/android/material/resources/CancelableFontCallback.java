package com.google.android.material.resources;

import android.graphics.Typeface;
import androidx.annotation.RestrictTo;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public final class CancelableFontCallback extends TextAppearanceFontCallback {

    /* renamed from: a, reason: collision with root package name */
    public final Typeface f3151a;

    /* renamed from: b, reason: collision with root package name */
    public final ApplyFont f3152b;
    public boolean c;

    public interface ApplyFont {
        void apply(Typeface typeface);
    }

    public CancelableFontCallback(ApplyFont applyFont, Typeface typeface) {
        this.f3151a = typeface;
        this.f3152b = applyFont;
    }

    public void cancel() {
        this.c = true;
    }

    @Override // com.google.android.material.resources.TextAppearanceFontCallback
    public void onFontRetrievalFailed(int i) {
        if (this.c) {
            return;
        }
        this.f3152b.apply(this.f3151a);
    }

    @Override // com.google.android.material.resources.TextAppearanceFontCallback
    public void onFontRetrieved(Typeface typeface, boolean z) {
        if (this.c) {
            return;
        }
        this.f3152b.apply(typeface);
    }
}
