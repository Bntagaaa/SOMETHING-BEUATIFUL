package androidx.transition;

import android.view.View;
import android.view.WindowId;
import androidx.annotation.RequiresApi;

@RequiresApi(18)
/* loaded from: classes.dex */
class n0 implements o0 {

    /* renamed from: a, reason: collision with root package name */
    public final WindowId f2297a;

    public n0(View view) {
        this.f2297a = view.getWindowId();
    }

    public boolean equals(Object obj) {
        return (obj instanceof n0) && ((n0) obj).f2297a.equals(this.f2297a);
    }

    public int hashCode() {
        return this.f2297a.hashCode();
    }
}
