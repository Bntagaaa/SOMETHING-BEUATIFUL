package gnu.text;

import java.io.Writer;

/* loaded from: classes2.dex */
public class WriterManager implements Runnable {
    public static final WriterManager instance = new WriterManager();

    /* renamed from: a, reason: collision with root package name */
    public c f5507a;

    public synchronized c register(Writer writer) {
        c cVar;
        try {
            cVar = new c(writer);
            c cVar2 = this.f5507a;
            if (cVar2 != null) {
                cVar.f5508a = cVar2.f5508a;
                cVar2.f5509b = cVar;
            }
            this.f5507a = cVar;
        } catch (Throwable th) {
            throw th;
        }
        return cVar;
    }

    public synchronized void unregister(Object obj) {
        if (obj == null) {
            return;
        }
        try {
            c cVar = (c) obj;
            c cVar2 = cVar.f5508a;
            c cVar3 = cVar.f5509b;
            if (cVar2 != null) {
                cVar2.f5509b = cVar3;
            }
            if (cVar3 != null) {
                cVar3.f5508a = cVar2;
            }
            if (cVar == this.f5507a) {
                this.f5507a = cVar2;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.lang.Runnable
    public synchronized void run() {
        for (c cVar = this.f5507a; cVar != null; cVar = cVar.f5508a) {
            T t = cVar.get();
            if (t != 0) {
                try {
                    ((Writer) t).close();
                } catch (Exception unused) {
                }
            }
        }
        this.f5507a = null;
    }

    public boolean registerShutdownHook() {
        try {
            Runtime runtime = Runtime.getRuntime();
            runtime.getClass().getDeclaredMethod("addShutdownHook", Thread.class).invoke(runtime, new Thread(this));
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }
}
