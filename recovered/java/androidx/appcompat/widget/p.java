package androidx.appcompat.widget;

import android.graphics.Typeface;
import android.widget.TextView;

/* loaded from: classes.dex */
class p implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ TextView f492a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Typeface f493b;
    public final /* synthetic */ int c;

    public p(TextView textView, Typeface typeface, int i) {
        this.f492a = textView;
        this.f493b = typeface;
        this.c = i;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f492a.setTypeface(this.f493b, this.c);
    }
}
