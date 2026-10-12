package androidx.activity;

import androidx.core.os.BuildCompat;
import androidx.core.util.Consumer;

/* loaded from: classes.dex */
public final /* synthetic */ class g implements Consumer {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ OnBackPressedDispatcher f51a;

    @Override // androidx.core.util.Consumer
    public final void accept(Object obj) {
        OnBackPressedDispatcher onBackPressedDispatcher = this.f51a;
        onBackPressedDispatcher.getClass();
        if (BuildCompat.isAtLeastT()) {
            onBackPressedDispatcher.a();
        }
    }
}
