package androidx.recyclerview.widget;

import android.os.AsyncTask;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import androidx.recyclerview.widget.ThreadUtil;
import androidx.recyclerview.widget.TileList;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes.dex */
class q<T> implements ThreadUtil<T> {

    public class a implements ThreadUtil.MainThreadCallback<T> {

        /* renamed from: a, reason: collision with root package name */
        public final c f2181a = new c();

        /* renamed from: b, reason: collision with root package name */
        public final Handler f2182b = new Handler(Looper.getMainLooper());
        public final Runnable c = new RunnableC0033a();
        public final /* synthetic */ ThreadUtil.MainThreadCallback d;

        public a(ThreadUtil.MainThreadCallback mainThreadCallback) {
            this.d = mainThreadCallback;
        }

        /* renamed from: androidx.recyclerview.widget.q$a$a, reason: collision with other inner class name */
        public class RunnableC0033a implements Runnable {
            public RunnableC0033a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                a aVar = a.this;
                for (d dVarA = aVar.f2181a.a(); dVarA != null; dVarA = aVar.f2181a.a()) {
                    int i = dVarA.f2190b;
                    ThreadUtil.MainThreadCallback mainThreadCallback = aVar.d;
                    if (i == 1) {
                        mainThreadCallback.updateItemCount(dVarA.c, dVarA.d);
                    } else if (i == 2) {
                        mainThreadCallback.addTile(dVarA.c, dVarA.h);
                    } else if (i == 3) {
                        mainThreadCallback.removeTile(dVarA.c, dVarA.d);
                    } else {
                        Log.e("ThreadUtil", "Unsupported message, what=" + dVarA.f2190b);
                    }
                }
            }
        }

        @Override // androidx.recyclerview.widget.ThreadUtil.MainThreadCallback
        public void removeTile(int i, int i2) {
            this.f2181a.c(d.a(3, i, i2, 0, 0, 0, null));
            this.f2182b.post(this.c);
        }

        @Override // androidx.recyclerview.widget.ThreadUtil.MainThreadCallback
        public void updateItemCount(int i, int i2) {
            this.f2181a.c(d.a(1, i, i2, 0, 0, 0, null));
            this.f2182b.post(this.c);
        }

        @Override // androidx.recyclerview.widget.ThreadUtil.MainThreadCallback
        public void addTile(int i, TileList.Tile<T> tile) {
            this.f2181a.c(d.a(2, i, 0, 0, 0, 0, tile));
            this.f2182b.post(this.c);
        }
    }

    @Override // androidx.recyclerview.widget.ThreadUtil
    public ThreadUtil.MainThreadCallback<T> getMainThreadProxy(ThreadUtil.MainThreadCallback<T> mainThreadCallback) {
        return new a(mainThreadCallback);
    }

    public class b implements ThreadUtil.BackgroundCallback<T> {

        /* renamed from: a, reason: collision with root package name */
        public final c f2184a = new c();

        /* renamed from: b, reason: collision with root package name */
        public final Executor f2185b = AsyncTask.THREAD_POOL_EXECUTOR;
        public final AtomicBoolean c = new AtomicBoolean(false);
        public final Runnable d = new a();
        public final /* synthetic */ ThreadUtil.BackgroundCallback e;

        public b(ThreadUtil.BackgroundCallback backgroundCallback) {
            this.e = backgroundCallback;
        }

        @Override // androidx.recyclerview.widget.ThreadUtil.BackgroundCallback
        public void updateRange(int i, int i2, int i3, int i4, int i5) {
            d dVarA = d.a(2, i, i2, i3, i4, i5, null);
            c cVar = this.f2184a;
            synchronized (cVar.f2188b) {
                dVarA.f2189a = cVar.f2187a;
                cVar.f2187a = dVarA;
            }
            if (this.c.compareAndSet(false, true)) {
                this.f2185b.execute(this.d);
            }
        }

        public class a implements Runnable {
            public a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                while (true) {
                    b bVar = b.this;
                    d dVarA = bVar.f2184a.a();
                    if (dVarA != null) {
                        int i = dVarA.f2190b;
                        c cVar = bVar.f2184a;
                        ThreadUtil.BackgroundCallback backgroundCallback = bVar.e;
                        if (i == 1) {
                            cVar.b(1);
                            backgroundCallback.refresh(dVarA.c);
                        } else if (i == 2) {
                            cVar.b(2);
                            cVar.b(3);
                            bVar.e.updateRange(dVarA.c, dVarA.d, dVarA.e, dVarA.f, dVarA.f2191g);
                        } else if (i == 3) {
                            backgroundCallback.loadTile(dVarA.c, dVarA.d);
                        } else if (i == 4) {
                            backgroundCallback.recycleTile(dVarA.h);
                        } else {
                            Log.e("ThreadUtil", "Unsupported message, what=" + dVarA.f2190b);
                        }
                    } else {
                        bVar.c.set(false);
                        return;
                    }
                }
            }
        }

        @Override // androidx.recyclerview.widget.ThreadUtil.BackgroundCallback
        public void loadTile(int i, int i2) {
            this.f2184a.c(d.a(3, i, i2, 0, 0, 0, null));
            if (this.c.compareAndSet(false, true)) {
                this.f2185b.execute(this.d);
            }
        }

        @Override // androidx.recyclerview.widget.ThreadUtil.BackgroundCallback
        public void recycleTile(TileList.Tile<T> tile) {
            this.f2184a.c(d.a(4, 0, 0, 0, 0, 0, tile));
            if (this.c.compareAndSet(false, true)) {
                this.f2185b.execute(this.d);
            }
        }

        @Override // androidx.recyclerview.widget.ThreadUtil.BackgroundCallback
        public void refresh(int i) {
            d dVarA = d.a(1, i, 0, 0, 0, 0, null);
            c cVar = this.f2184a;
            synchronized (cVar.f2188b) {
                dVarA.f2189a = cVar.f2187a;
                cVar.f2187a = dVarA;
            }
            if (this.c.compareAndSet(false, true)) {
                this.f2185b.execute(this.d);
            }
        }
    }

    @Override // androidx.recyclerview.widget.ThreadUtil
    public ThreadUtil.BackgroundCallback<T> getBackgroundProxy(ThreadUtil.BackgroundCallback<T> backgroundCallback) {
        return new b(backgroundCallback);
    }

    public static class d {
        public static d i;
        public static final Object j = new Object();

        /* renamed from: a, reason: collision with root package name */
        public d f2189a;

        /* renamed from: b, reason: collision with root package name */
        public int f2190b;
        public int c;
        public int d;
        public int e;
        public int f;

        /* renamed from: g, reason: collision with root package name */
        public int f2191g;
        public TileList.Tile h;

        public final void b() {
            this.f2189a = null;
            this.f2191g = 0;
            this.f = 0;
            this.e = 0;
            this.d = 0;
            this.c = 0;
            this.f2190b = 0;
            this.h = null;
            synchronized (j) {
                try {
                    d dVar = i;
                    if (dVar != null) {
                        this.f2189a = dVar;
                    }
                    i = this;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        public static d a(int i2, int i3, int i4, int i5, int i6, int i7, TileList.Tile tile) {
            d dVar;
            synchronized (j) {
                try {
                    dVar = i;
                    if (dVar == null) {
                        dVar = new d();
                    } else {
                        i = dVar.f2189a;
                        dVar.f2189a = null;
                    }
                    dVar.f2190b = i2;
                    dVar.c = i3;
                    dVar.d = i4;
                    dVar.e = i5;
                    dVar.f = i6;
                    dVar.f2191g = i7;
                    dVar.h = tile;
                } catch (Throwable th) {
                    throw th;
                }
            }
            return dVar;
        }
    }

    public static class c {

        /* renamed from: a, reason: collision with root package name */
        public d f2187a;

        /* renamed from: b, reason: collision with root package name */
        public final Object f2188b = new Object();

        public final d a() {
            synchronized (this.f2188b) {
                try {
                    d dVar = this.f2187a;
                    if (dVar == null) {
                        return null;
                    }
                    this.f2187a = dVar.f2189a;
                    return dVar;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        public final void c(d dVar) {
            synchronized (this.f2188b) {
                try {
                    d dVar2 = this.f2187a;
                    if (dVar2 == null) {
                        this.f2187a = dVar;
                        return;
                    }
                    while (true) {
                        d dVar3 = dVar2.f2189a;
                        if (dVar3 == null) {
                            dVar2.f2189a = dVar;
                            return;
                        }
                        dVar2 = dVar3;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        public final void b(int i) {
            d dVar;
            synchronized (this.f2188b) {
                while (true) {
                    try {
                        dVar = this.f2187a;
                        if (dVar == null || dVar.f2190b != i) {
                            break;
                        }
                        this.f2187a = dVar.f2189a;
                        dVar.b();
                    } finally {
                    }
                }
                if (dVar != null) {
                    d dVar2 = dVar.f2189a;
                    while (dVar2 != null) {
                        d dVar3 = dVar2.f2189a;
                        if (dVar2.f2190b == i) {
                            dVar.f2189a = dVar3;
                            dVar2.b();
                        } else {
                            dVar = dVar2;
                        }
                        dVar2 = dVar3;
                    }
                }
            }
        }
    }
}
