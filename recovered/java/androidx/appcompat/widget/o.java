package androidx.appcompat.widget;

import android.graphics.Typeface;
import android.os.Build;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.appcompat.widget.q;
import androidx.core.content.res.ResourcesCompat;
import androidx.core.view.ViewCompat;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
class o extends ResourcesCompat.FontCallback {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f490a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f491b;
    public final /* synthetic */ WeakReference c;
    public final /* synthetic */ q d;

    @Override // androidx.core.content.res.ResourcesCompat.FontCallback
    public void onFontRetrievalFailed(int i) {
    }

    public o(q qVar, int i, int i2, WeakReference weakReference) {
        this.d = qVar;
        this.f490a = i;
        this.f491b = i2;
        this.c = weakReference;
    }

    @Override // androidx.core.content.res.ResourcesCompat.FontCallback
    public void onFontRetrieved(@NonNull Typeface typeface) {
        int i;
        if (Build.VERSION.SDK_INT >= 28 && (i = this.f490a) != -1) {
            typeface = q.e.a(typeface, i, (this.f491b & 2) != 0);
        }
        q qVar = this.d;
        if (qVar.m) {
            qVar.l = typeface;
            TextView textView = (TextView) this.c.get();
            if (textView != null) {
                if (ViewCompat.isAttachedToWindow(textView)) {
                    textView.post(new p(textView, typeface, qVar.j));
                } else {
                    textView.setTypeface(typeface, qVar.j);
                }
            }
        }
    }
}
