package com.google.common.base;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.l;
import java.io.Serializable;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.WeakHashMap;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@GwtCompatible(emulated = true)
/* loaded from: classes.dex */
public final class Enums {

    /* renamed from: a, reason: collision with root package name */
    public static final WeakHashMap f3658a = new WeakHashMap();

    private Enums() {
    }

    @GwtIncompatible
    public static Field getField(Enum<?> r1) {
        try {
            return r1.getDeclaringClass().getDeclaredField(r1.name());
        } catch (NoSuchFieldException e) {
            throw new AssertionError(e);
        }
    }

    public static <T extends Enum<T>> Optional<T> getIfPresent(Class<T> cls, String str) {
        Map map;
        Preconditions.checkNotNull(cls);
        Preconditions.checkNotNull(str);
        l.b bVar = l.f3745a;
        WeakHashMap weakHashMap = f3658a;
        synchronized (weakHashMap) {
            Map map2 = (Map) weakHashMap.get(cls);
            map = map2;
            if (map2 == null) {
                HashMap map3 = new HashMap();
                Iterator it = EnumSet.allOf(cls).iterator();
                while (it.hasNext()) {
                    Enum r3 = (Enum) it.next();
                    map3.put(r3.name(), new WeakReference(r3));
                }
                f3658a.put(cls, map3);
                map = map3;
            }
        }
        WeakReference weakReference = (WeakReference) map.get(str);
        return weakReference == null ? Optional.absent() : Optional.of(cls.cast(weakReference.get()));
    }

    public static <T extends Enum<T>> Converter<String, T> stringConverter(Class<T> cls) {
        return new a(cls);
    }

    public static final class a<T extends Enum<T>> extends Converter<String, T> implements Serializable {

        /* renamed from: b, reason: collision with root package name */
        public final Class f3659b;

        public a(Class cls) {
            this.f3659b = (Class) Preconditions.checkNotNull(cls);
        }

        @Override // com.google.common.base.Converter
        public T doForward(String str) {
            return (T) Enum.valueOf(this.f3659b, str);
        }

        @Override // com.google.common.base.Converter
        public String doBackward(T t) {
            return t.name();
        }

        @Override // com.google.common.base.Converter, com.google.common.base.Function
        public boolean equals(@NullableDecl Object obj) {
            if (obj instanceof a) {
                return this.f3659b.equals(((a) obj).f3659b);
            }
            return false;
        }

        public int hashCode() {
            return this.f3659b.hashCode();
        }

        public String toString() {
            return "Enums.stringConverter(" + this.f3659b.getName() + ".class)";
        }
    }
}
