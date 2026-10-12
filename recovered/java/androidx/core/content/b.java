package androidx.core.content;

import androidx.core.util.Consumer;

/* loaded from: classes.dex */
public final /* synthetic */ class b implements Consumer {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f979a;

    @Override // androidx.core.util.Consumer
    public final void accept(Object obj) {
        String str = (String) obj;
        switch (this.f979a) {
            case 0:
                throw new SecurityException(str);
            default:
                return;
        }
    }
}
