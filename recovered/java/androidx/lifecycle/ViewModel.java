package androidx.lifecycle;

import androidx.annotation.NonNull;
import java.io.Closeable;
import java.io.IOException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.LinkedHashSet;

/* loaded from: classes.dex */
public abstract class ViewModel {

    /* renamed from: a, reason: collision with root package name */
    public final HashMap f1870a;

    /* renamed from: b, reason: collision with root package name */
    public final LinkedHashSet f1871b;
    public volatile boolean c;

    public void onCleared() {
    }

    public ViewModel() {
        this.f1870a = new HashMap();
        this.f1871b = new LinkedHashSet();
        this.c = false;
    }

    public ViewModel(@NonNull Closeable... closeableArr) {
        this.f1870a = new HashMap();
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        this.f1871b = linkedHashSet;
        this.c = false;
        linkedHashSet.addAll(Arrays.asList(closeableArr));
    }

    public void addCloseable(@NonNull Closeable closeable) throws IOException {
        if (this.c) {
            a(closeable);
            return;
        }
        LinkedHashSet linkedHashSet = this.f1871b;
        if (linkedHashSet != null) {
            synchronized (linkedHashSet) {
                this.f1871b.add(closeable);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void b(SavedStateHandleController savedStateHandleController) throws IOException {
        Object obj;
        synchronized (this.f1870a) {
            try {
                obj = this.f1870a.get("androidx.lifecycle.savedstate.vm.tag");
                if (obj == 0) {
                    this.f1870a.put("androidx.lifecycle.savedstate.vm.tag", savedStateHandleController);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (obj != 0) {
            savedStateHandleController = obj;
        }
        if (this.c) {
            a(savedStateHandleController);
        }
    }

    public static void a(Object obj) throws IOException {
        if (obj instanceof Closeable) {
            try {
                ((Closeable) obj).close();
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        }
    }
}
