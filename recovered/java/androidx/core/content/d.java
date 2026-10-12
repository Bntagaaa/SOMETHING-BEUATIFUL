package androidx.core.content;

import android.content.ComponentName;
import android.content.UriMatcher;
import android.net.Uri;
import androidx.core.util.Predicate;

/* loaded from: classes.dex */
public final /* synthetic */ class d implements Predicate {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f982a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f983b;

    public /* synthetic */ d(Object obj, int i) {
        this.f982a = i;
        this.f983b = obj;
    }

    @Override // androidx.core.util.Predicate
    public final /* synthetic */ Predicate and(Predicate predicate) {
        int i = this.f982a;
        return androidx.core.util.f.a(this, predicate);
    }

    @Override // androidx.core.util.Predicate
    public final /* synthetic */ Predicate negate() {
        switch (this.f982a) {
        }
        return androidx.core.util.f.b(this);
    }

    @Override // androidx.core.util.Predicate
    public final /* synthetic */ Predicate or(Predicate predicate) {
        int i = this.f982a;
        return androidx.core.util.f.c(this, predicate);
    }

    @Override // androidx.core.util.Predicate
    public final boolean test(Object obj) {
        switch (this.f982a) {
            case 0:
                return ((ComponentName) this.f983b).equals((ComponentName) obj);
            default:
                return ((UriMatcher) this.f983b).match((Uri) obj) != -1;
        }
    }
}
