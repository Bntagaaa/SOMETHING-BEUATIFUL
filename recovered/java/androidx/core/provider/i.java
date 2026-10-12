package androidx.core.provider;

import android.content.Context;
import androidx.core.provider.k;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
class i implements Callable<k.a> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f1176a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Context f1177b;
    public final /* synthetic */ FontRequest c;
    public final /* synthetic */ int d;

    public i(String str, Context context, FontRequest fontRequest, int i) {
        this.f1176a = str;
        this.f1177b = context;
        this.c = fontRequest;
        this.d = i;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // java.util.concurrent.Callable
    public k.a call() {
        try {
            return k.a(this.f1176a, this.f1177b, this.c, this.d);
        } catch (Throwable unused) {
            return new k.a(-3);
        }
    }
}
