package com.google.common.base;

import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.internal.Finalizer;
import java.io.Closeable;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.lang.ref.PhantomReference;
import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.lang.reflect.Method;
import java.net.URL;
import java.net.URLClassLoader;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@GwtIncompatible
/* loaded from: classes.dex */
public class FinalizableReferenceQueue implements Closeable {
    public static final Logger d = Logger.getLogger(FinalizableReferenceQueue.class.getName());
    public static final Method e;

    /* renamed from: a, reason: collision with root package name */
    public final ReferenceQueue f3666a;

    /* renamed from: b, reason: collision with root package name */
    public final PhantomReference f3667b;
    public final boolean c;

    public interface c {
        @NullableDecl
        Class<?> loadFinalizer();
    }

    static {
        c[] cVarArr = {new d(), new a(), new b()};
        for (int i = 0; i < 3; i++) {
            Class<?> clsLoadFinalizer = cVarArr[i].loadFinalizer();
            if (clsLoadFinalizer != null) {
                try {
                    e = clsLoadFinalizer.getMethod("startFinalizer", Class.class, ReferenceQueue.class, PhantomReference.class);
                    return;
                } catch (NoSuchMethodException e2) {
                    throw new AssertionError(e2);
                }
            }
        }
        throw new AssertionError();
    }

    public FinalizableReferenceQueue() {
        boolean z = true;
        ReferenceQueue referenceQueue = new ReferenceQueue();
        this.f3666a = referenceQueue;
        PhantomReference phantomReference = new PhantomReference(this, referenceQueue);
        this.f3667b = phantomReference;
        try {
            e.invoke(null, FinalizableReference.class, referenceQueue, phantomReference);
        } catch (IllegalAccessException e2) {
            throw new AssertionError(e2);
        } catch (Throwable th) {
            d.log(Level.INFO, "Failed to start reference finalizer thread. Reference cleanup will only occur when new references are created.", th);
            z = false;
        }
        this.c = z;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f3667b.enqueue();
        a();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void a() {
        if (this.c) {
            return;
        }
        while (true) {
            Reference referencePoll = this.f3666a.poll();
            if (referencePoll == 0) {
                return;
            }
            referencePoll.clear();
            try {
                ((FinalizableReference) referencePoll).finalizeReferent();
            } catch (Throwable th) {
                d.log(Level.SEVERE, "Error cleaning up after reference.", th);
            }
        }
    }

    public static class d implements c {
        @Override // com.google.common.base.FinalizableReferenceQueue.c
        @NullableDecl
        public Class<?> loadFinalizer() {
            try {
                ClassLoader systemClassLoader = ClassLoader.getSystemClassLoader();
                if (systemClassLoader == null) {
                    return null;
                }
                try {
                    return systemClassLoader.loadClass("com.google.common.base.internal.Finalizer");
                } catch (ClassNotFoundException unused) {
                    return null;
                }
            } catch (SecurityException unused2) {
                FinalizableReferenceQueue.d.info("Not allowed to access system class loader.");
                return null;
            }
        }
    }

    public static class a implements c {
        @Override // com.google.common.base.FinalizableReferenceQueue.c
        @NullableDecl
        public Class<?> loadFinalizer() {
            try {
                return new URLClassLoader(new URL[]{a()}, null).loadClass("com.google.common.base.internal.Finalizer");
            } catch (Exception e) {
                FinalizableReferenceQueue.d.log(Level.WARNING, "Could not load Finalizer in its own class loader. Loading Finalizer in the current class loader instead. As a result, you will not be able to garbage collect this class loader. To support reclaiming this class loader, either resolve the underlying issue, or move Guava to your system class path.", (Throwable) e);
                return null;
            }
        }

        public final URL a() throws IOException {
            String str = "com.google.common.base.internal.Finalizer".replace('.', '/') + ".class";
            URL resource = getClass().getClassLoader().getResource(str);
            if (resource == null) {
                throw new FileNotFoundException(str);
            }
            String string = resource.toString();
            if (!string.endsWith(str)) {
                throw new IOException("Unsupported path style: ".concat(string));
            }
            return new URL(resource, string.substring(0, string.length() - str.length()));
        }
    }

    public static class b implements c {
        @Override // com.google.common.base.FinalizableReferenceQueue.c
        public Class<?> loadFinalizer() {
            try {
                Logger logger = Finalizer.d;
                return Finalizer.class;
            } catch (ClassNotFoundException e) {
                throw new AssertionError(e);
            }
        }
    }
}
