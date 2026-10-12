package com.google.common.util.concurrent;

import com.google.common.annotations.GwtIncompatible;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.Function;
import com.google.common.base.Preconditions;
import com.google.common.collect.Ordering;
import java.lang.ref.WeakReference;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArraySet;

@GwtIncompatible
/* loaded from: classes.dex */
final class t {

    /* renamed from: a, reason: collision with root package name */
    public static final Ordering f5052a = Ordering.natural().onResultOf(new a()).reverse();

    @VisibleForTesting
    public interface b {
        void validateClass(Class<? extends Exception> cls);
    }

    @VisibleForTesting
    public static class c {

        /* renamed from: a, reason: collision with root package name */
        public static final b f5053a;

        static {
            b bVar;
            try {
                bVar = (b) Class.forName(c.class.getName().concat("$ClassValueValidator")).getEnumConstants()[0];
            } catch (Throwable unused) {
                Ordering ordering = t.f5052a;
                bVar = b.f5055a;
            }
            f5053a = bVar;
        }

        /* JADX WARN: $VALUES field not found */
        /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
        @x
        public static final class a implements b {

            /* renamed from: a, reason: collision with root package name */
            public static final ClassValue f5054a = new C0147a();

            /* renamed from: com.google.common.util.concurrent.t$c$a$a, reason: collision with other inner class name */
            public static class C0147a extends ClassValue<Boolean> {
                @Override // java.lang.ClassValue
                public /* bridge */ /* synthetic */ Boolean computeValue(Class cls) {
                    return computeValue((Class<?>) cls);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // java.lang.ClassValue
                public Boolean computeValue(Class<?> cls) {
                    t.a(cls.asSubclass(Exception.class));
                    return Boolean.TRUE;
                }
            }

            @Override // com.google.common.util.concurrent.t.b
            public void validateClass(Class<? extends Exception> cls) {
                f5054a.get(cls);
            }
        }

        /* JADX WARN: $VALUES field not found */
        /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
        public static final class b implements b {

            /* renamed from: a, reason: collision with root package name */
            public static final b f5055a = new b("INSTANCE", 0);

            /* renamed from: b, reason: collision with root package name */
            public static final CopyOnWriteArraySet f5056b = new CopyOnWriteArraySet();

            @Override // com.google.common.util.concurrent.t.b
            public void validateClass(Class<? extends Exception> cls) {
                CopyOnWriteArraySet copyOnWriteArraySet = f5056b;
                Iterator it = copyOnWriteArraySet.iterator();
                while (it.hasNext()) {
                    if (cls.equals(((WeakReference) it.next()).get())) {
                        return;
                    }
                }
                t.a(cls);
                if (copyOnWriteArraySet.size() > 1000) {
                    copyOnWriteArraySet.clear();
                }
                copyOnWriteArraySet.add(new WeakReference(cls));
            }
        }
    }

    public static Exception b(Throwable th, Class cls) throws IllegalAccessException, InstantiationException, IllegalArgumentException, InvocationTargetException {
        Object objNewInstance;
        for (Constructor constructor : f5052a.sortedCopy(Arrays.asList(cls.getConstructors()))) {
            Class<?>[] parameterTypes = constructor.getParameterTypes();
            Object[] objArr = new Object[parameterTypes.length];
            int i = 0;
            while (true) {
                objNewInstance = null;
                if (i < parameterTypes.length) {
                    Class<?> cls2 = parameterTypes[i];
                    if (cls2.equals(String.class)) {
                        objArr[i] = th.toString();
                    } else {
                        if (!cls2.equals(Throwable.class)) {
                            break;
                        }
                        objArr[i] = th;
                    }
                    i++;
                } else {
                    try {
                        objNewInstance = constructor.newInstance(objArr);
                        break;
                    } catch (IllegalAccessException | IllegalArgumentException | InstantiationException | InvocationTargetException unused) {
                    }
                }
            }
            Exception exc = (Exception) objNewInstance;
            if (exc != null) {
                if (exc.getCause() == null) {
                    exc.initCause(th);
                }
                return exc;
            }
        }
        throw new IllegalArgumentException("No appropriate constructor for exception of type " + cls + " in response to chained exception", th);
    }

    public static class a implements Function<Constructor<?>, Boolean> {
        @Override // com.google.common.base.Function
        public Boolean apply(Constructor<?> constructor) {
            return Boolean.valueOf(Arrays.asList(constructor.getParameterTypes()).contains(String.class));
        }
    }

    public static void a(Class cls) {
        boolean z = true;
        Preconditions.checkArgument(!RuntimeException.class.isAssignableFrom(cls), "Futures.getChecked exception type (%s) must not be a RuntimeException", cls);
        try {
            b(new Exception(), cls);
        } catch (Exception unused) {
            z = false;
        }
        Preconditions.checkArgument(z, "Futures.getChecked exception type (%s) must be an accessible class with an accessible constructor whose parameters (if any) must be of type String and/or Throwable", cls);
    }

    private t() {
    }
}
