package com.google.common.base.internal;

import java.lang.ref.PhantomReference;
import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.logging.Level;
import java.util.logging.Logger;

/* loaded from: classes.dex */
public class Finalizer implements Runnable {
    public static final Logger d = Logger.getLogger(Finalizer.class.getName());
    public static final Constructor e;
    public static final Field f;

    /* renamed from: a, reason: collision with root package name */
    public final WeakReference f3742a;

    /* renamed from: b, reason: collision with root package name */
    public final PhantomReference f3743b;
    public final ReferenceQueue c;

    static {
        Constructor constructor;
        Field field = null;
        try {
            constructor = Thread.class.getConstructor(ThreadGroup.class, Runnable.class, String.class, Long.TYPE, Boolean.TYPE);
        } catch (Throwable unused) {
            constructor = null;
        }
        e = constructor;
        if (constructor == null) {
            try {
                Field declaredField = Thread.class.getDeclaredField("inheritableThreadLocals");
                declaredField.setAccessible(true);
                field = declaredField;
            } catch (Throwable unused2) {
                d.log(Level.INFO, "Couldn't access Thread.inheritableThreadLocals. Reference finalizer threads will inherit thread local values.");
            }
        }
        f = field;
    }

    public static void startFinalizer(Class<?> cls, ReferenceQueue<Object> referenceQueue, PhantomReference<Object> phantomReference) {
        Thread thread;
        if (!cls.getName().equals("com.google.common.base.FinalizableReference")) {
            throw new IllegalArgumentException("Expected com.google.common.base.FinalizableReference.");
        }
        Finalizer finalizer = new Finalizer(cls, referenceQueue, phantomReference);
        String name = Finalizer.class.getName();
        Logger logger = d;
        Constructor constructor = e;
        if (constructor != null) {
            try {
                thread = (Thread) constructor.newInstance(null, finalizer, name, 0L, Boolean.FALSE);
            } catch (Throwable th) {
                logger.log(Level.INFO, "Failed to create a thread without inherited thread-local values", th);
            }
        } else {
            thread = null;
        }
        if (thread == null) {
            thread = new Thread(null, finalizer, name);
        }
        thread.setDaemon(true);
        try {
            Field field = f;
            if (field != null) {
                field.set(thread, null);
            }
        } catch (Throwable th2) {
            logger.log(Level.INFO, "Failed to clear thread local values inherited by reference finalizer thread.", th2);
        }
        thread.start();
    }

    public Finalizer(Class cls, ReferenceQueue referenceQueue, PhantomReference phantomReference) {
        this.c = referenceQueue;
        this.f3742a = new WeakReference(cls);
        this.f3743b = phantomReference;
    }

    @Override // java.lang.Runnable
    public void run() {
        while (a(this.c.remove())) {
        }
    }

    public final boolean a(Reference reference) throws NoSuchMethodException, SecurityException {
        Method method;
        Class cls = (Class) this.f3742a.get();
        if (cls == null) {
            method = null;
        } else {
            try {
                method = cls.getMethod("finalizeReferent", new Class[0]);
            } catch (NoSuchMethodException e2) {
                throw new AssertionError(e2);
            }
        }
        if (method == null) {
            return false;
        }
        do {
            reference.clear();
            if (reference == this.f3743b) {
                return false;
            }
            try {
                method.invoke(reference, new Object[0]);
            } catch (Throwable th) {
                d.log(Level.SEVERE, "Error cleaning up after reference.", th);
            }
            reference = this.c.poll();
        } while (reference != null);
        return true;
    }
}
