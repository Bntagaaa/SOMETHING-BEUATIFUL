package androidx.dynamicanimation.animation;

import android.os.SystemClock;
import android.view.Choreographer;
import androidx.annotation.RequiresApi;
import androidx.collection.SimpleArrayMap;
import java.util.ArrayList;

/* loaded from: classes.dex */
class a {
    public static final ThreadLocal f = new ThreadLocal();
    public e d;

    /* renamed from: a, reason: collision with root package name */
    public final SimpleArrayMap f1489a = new SimpleArrayMap();

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList f1490b = new ArrayList();
    public final C0020a c = new C0020a();
    public boolean e = false;

    public interface b {
        boolean doAnimationFrame(long j);
    }

    public static class d extends c {
    }

    /* renamed from: androidx.dynamicanimation.animation.a$a, reason: collision with other inner class name */
    public class C0020a {
        public C0020a() {
        }
    }

    public static a getInstance() {
        ThreadLocal threadLocal = f;
        if (threadLocal.get() == null) {
            threadLocal.set(new a());
        }
        return (a) threadLocal.get();
    }

    public void addAnimationFrameCallback(b bVar, long j) {
        ArrayList arrayList = this.f1490b;
        if (arrayList.size() == 0) {
            if (this.d == null) {
                this.d = new e(this.c);
            }
            this.d.a();
        }
        if (!arrayList.contains(bVar)) {
            arrayList.add(bVar);
        }
        if (j > 0) {
            this.f1489a.put(bVar, Long.valueOf(SystemClock.uptimeMillis() + j));
        }
    }

    public void removeCallback(b bVar) {
        this.f1489a.remove(bVar);
        ArrayList arrayList = this.f1490b;
        int iIndexOf = arrayList.indexOf(bVar);
        if (iIndexOf >= 0) {
            arrayList.set(iIndexOf, null);
            this.e = true;
        }
    }

    @RequiresApi(16)
    public static class e extends c {

        /* renamed from: b, reason: collision with root package name */
        public final Choreographer f1493b;
        public final Choreographer.FrameCallback c;

        public e(C0020a c0020a) {
            super(c0020a);
            this.f1493b = Choreographer.getInstance();
            this.c = new androidx.dynamicanimation.animation.c(this);
        }

        public final void a() {
            this.f1493b.postFrameCallback(this.c);
        }
    }

    public static abstract class c {

        /* renamed from: a, reason: collision with root package name */
        public final C0020a f1492a;

        public c(C0020a c0020a) {
            this.f1492a = c0020a;
        }
    }
}
