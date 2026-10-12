package androidx.core.location;

import android.location.Location;
import androidx.core.util.Consumer;

/* loaded from: classes.dex */
public final /* synthetic */ class d implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1101a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Consumer f1102b;
    public final /* synthetic */ Location c;

    public /* synthetic */ d(Consumer consumer, Location location, int i) {
        this.f1101a = i;
        this.f1102b = consumer;
        this.c = location;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Location location = this.c;
        Consumer consumer = this.f1102b;
        switch (this.f1101a) {
            case 0:
                Class cls = LocationManagerCompat.f1071a;
                consumer.accept(location);
                break;
            default:
                consumer.accept(location);
                break;
        }
    }
}
