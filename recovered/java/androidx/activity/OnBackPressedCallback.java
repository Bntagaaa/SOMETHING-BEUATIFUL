package androidx.activity;

import androidx.annotation.MainThread;
import androidx.annotation.OptIn;
import androidx.core.os.BuildCompat;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

/* loaded from: classes.dex */
public abstract class OnBackPressedCallback {

    /* renamed from: a, reason: collision with root package name */
    public boolean f32a;

    /* renamed from: b, reason: collision with root package name */
    public final CopyOnWriteArrayList f33b = new CopyOnWriteArrayList();
    public g c;

    @MainThread
    public abstract void handleOnBackPressed();

    public OnBackPressedCallback(boolean z) {
        this.f32a = z;
    }

    @OptIn(markerClass = {BuildCompat.PrereleaseSdkCheck.class})
    @MainThread
    public final void setEnabled(boolean z) {
        this.f32a = z;
        g gVar = this.c;
        if (gVar != null) {
            gVar.accept(Boolean.valueOf(z));
        }
    }

    @MainThread
    public final boolean isEnabled() {
        return this.f32a;
    }

    @MainThread
    public final void remove() {
        Iterator it = this.f33b.iterator();
        while (it.hasNext()) {
            ((a) it.next()).cancel();
        }
    }
}
