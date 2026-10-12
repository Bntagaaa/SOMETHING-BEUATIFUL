package androidx.core.content;

import android.content.ComponentName;
import android.net.Uri;
import androidx.core.util.Predicate;

/* loaded from: classes.dex */
public final /* synthetic */ class c implements Predicate {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f980a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f981b;

    public /* synthetic */ c(String str, int i) {
        this.f980a = i;
        this.f981b = str;
    }

    @Override // androidx.core.util.Predicate
    public final /* synthetic */ Predicate and(Predicate predicate) {
        int i = this.f980a;
        return androidx.core.util.f.a(this, predicate);
    }

    @Override // androidx.core.util.Predicate
    public final /* synthetic */ Predicate negate() {
        switch (this.f980a) {
        }
        return androidx.core.util.f.b(this);
    }

    @Override // androidx.core.util.Predicate
    public final /* synthetic */ Predicate or(Predicate predicate) {
        int i = this.f980a;
        return androidx.core.util.f.c(this, predicate);
    }

    @Override // androidx.core.util.Predicate
    public final boolean test(Object obj) {
        switch (this.f980a) {
            case 0:
                return this.f981b.equals(((Uri) obj).getAuthority());
            case 1:
                return this.f981b.equals(((Uri) obj).getAuthority());
            case 2:
                return this.f981b.equals(((Uri) obj).getAuthority());
            case 3:
                return this.f981b.equals((String) obj);
            case 4:
                return this.f981b.equals(((ComponentName) obj).getPackageName());
            default:
                return this.f981b.equals(((Uri) obj).getAuthority());
        }
    }
}
