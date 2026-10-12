package androidx.appcompat.widget;

/* loaded from: classes.dex */
public final /* synthetic */ class a0 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f457a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Toolbar f458b;

    public /* synthetic */ a0(Toolbar toolbar, int i) {
        this.f457a = i;
        this.f458b = toolbar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f457a) {
            case 0:
                this.f458b.collapseActionView();
                break;
            default:
                this.f458b.invalidateMenu();
                break;
        }
    }
}
