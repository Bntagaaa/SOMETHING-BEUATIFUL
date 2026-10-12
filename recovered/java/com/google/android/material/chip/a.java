package com.google.android.material.chip;

import android.annotation.TargetApi;
import android.graphics.Outline;
import android.view.View;
import android.view.ViewOutlineProvider;
import androidx.annotation.NonNull;

/* loaded from: classes.dex */
class a extends ViewOutlineProvider {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Chip f2867a;

    @Override // android.view.ViewOutlineProvider
    @TargetApi(21)
    public void getOutline(View view, @NonNull Outline outline) {
        ChipDrawable chipDrawable = this.f2867a.e;
        if (chipDrawable != null) {
            chipDrawable.getOutline(outline);
        } else {
            outline.setAlpha(0.0f);
        }
    }

    public a(Chip chip) {
        this.f2867a = chip;
    }
}
