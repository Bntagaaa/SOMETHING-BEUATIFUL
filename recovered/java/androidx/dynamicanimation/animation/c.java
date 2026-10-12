package androidx.dynamicanimation.animation;

import android.os.SystemClock;
import android.view.Choreographer;
import androidx.collection.SimpleArrayMap;
import androidx.dynamicanimation.animation.a;
import java.util.ArrayList;

/* loaded from: classes.dex */
class c implements Choreographer.FrameCallback {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ a.e f1494a;

    public c(a.e eVar) {
        this.f1494a = eVar;
    }

    @Override // android.view.Choreographer.FrameCallback
    public void doFrame(long j) {
        ArrayList arrayList;
        a.C0020a c0020a = this.f1494a.f1492a;
        c0020a.getClass();
        long jUptimeMillis = SystemClock.uptimeMillis();
        a aVar = a.this;
        long jUptimeMillis2 = SystemClock.uptimeMillis();
        int i = 0;
        while (true) {
            arrayList = aVar.f1490b;
            if (i >= arrayList.size()) {
                break;
            }
            a.b bVar = (a.b) arrayList.get(i);
            if (bVar != null) {
                SimpleArrayMap simpleArrayMap = aVar.f1489a;
                Long l = (Long) simpleArrayMap.get(bVar);
                if (l == null) {
                    bVar.doAnimationFrame(jUptimeMillis);
                } else if (l.longValue() < jUptimeMillis2) {
                    simpleArrayMap.remove(bVar);
                    bVar.doAnimationFrame(jUptimeMillis);
                }
            }
            i++;
        }
        if (aVar.e) {
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                if (arrayList.get(size) == null) {
                    arrayList.remove(size);
                }
            }
            aVar.e = false;
        }
        if (arrayList.size() > 0) {
            if (aVar.d == null) {
                aVar.d = new a.e(aVar.c);
            }
            aVar.d.a();
        }
    }
}
