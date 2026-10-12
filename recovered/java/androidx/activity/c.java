package androidx.activity;

import android.os.Bundle;
import androidx.lifecycle.SavedStateHandle;
import androidx.savedstate.SavedStateRegistry;

/* loaded from: classes.dex */
public final /* synthetic */ class c implements SavedStateRegistry.SavedStateProvider {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f44a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f45b;

    public /* synthetic */ c(Object obj, int i) {
        this.f44a = i;
        this.f45b = obj;
    }

    @Override // androidx.savedstate.SavedStateRegistry.SavedStateProvider
    public final Bundle saveState() {
        switch (this.f44a) {
            case 0:
                return ComponentActivity.b((ComponentActivity) this.f45b);
            default:
                return SavedStateHandle.a((SavedStateHandle) this.f45b);
        }
    }
}
