package androidx.core.provider;

import android.content.Context;
import androidx.core.provider.k;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
class g implements Callable<k.a> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f1173a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Context f1174b;
    public final /* synthetic */ FontRequest c;
    public final /* synthetic */ int d;

    public g(String str, Context context, FontRequest fontRequest, int i) {
        this.f1173a = str;
        this.f1174b = context;
        this.c = fontRequest;
        this.d = i;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // java.util.concurrent.Callable
    public k.a call() {
        return k.a(this.f1173a, this.f1174b, this.c, this.d);
    }
}
