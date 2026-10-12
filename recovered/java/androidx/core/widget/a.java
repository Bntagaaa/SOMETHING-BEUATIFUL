package androidx.core.widget;

/* loaded from: classes.dex */
public final /* synthetic */ class a implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1443a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ContentLoadingProgressBar f1444b;

    public /* synthetic */ a(ContentLoadingProgressBar contentLoadingProgressBar, int i) {
        this.f1443a = i;
        this.f1444b = contentLoadingProgressBar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f1443a) {
            case 0:
                ContentLoadingProgressBar contentLoadingProgressBar = this.f1444b;
                contentLoadingProgressBar.f1427b = false;
                contentLoadingProgressBar.f1426a = -1L;
                contentLoadingProgressBar.setVisibility(8);
                break;
            case 1:
                ContentLoadingProgressBar contentLoadingProgressBar2 = this.f1444b;
                contentLoadingProgressBar2.c = false;
                if (!contentLoadingProgressBar2.d) {
                    contentLoadingProgressBar2.f1426a = System.currentTimeMillis();
                    contentLoadingProgressBar2.setVisibility(0);
                    break;
                }
                break;
            case 2:
                ContentLoadingProgressBar contentLoadingProgressBar3 = this.f1444b;
                contentLoadingProgressBar3.f1426a = -1L;
                contentLoadingProgressBar3.d = false;
                contentLoadingProgressBar3.removeCallbacks(contentLoadingProgressBar3.e);
                contentLoadingProgressBar3.f1427b = false;
                if (!contentLoadingProgressBar3.c) {
                    contentLoadingProgressBar3.postDelayed(contentLoadingProgressBar3.f, 500L);
                    contentLoadingProgressBar3.c = true;
                    break;
                }
                break;
            default:
                ContentLoadingProgressBar contentLoadingProgressBar4 = this.f1444b;
                contentLoadingProgressBar4.d = true;
                contentLoadingProgressBar4.removeCallbacks(contentLoadingProgressBar4.f);
                contentLoadingProgressBar4.c = false;
                long jCurrentTimeMillis = System.currentTimeMillis();
                long j = contentLoadingProgressBar4.f1426a;
                long j2 = jCurrentTimeMillis - j;
                if (j2 >= 500 || j == -1) {
                    contentLoadingProgressBar4.setVisibility(8);
                    break;
                } else if (!contentLoadingProgressBar4.f1427b) {
                    contentLoadingProgressBar4.postDelayed(contentLoadingProgressBar4.e, 500 - j2);
                    contentLoadingProgressBar4.f1427b = true;
                    break;
                }
                break;
        }
    }
}
