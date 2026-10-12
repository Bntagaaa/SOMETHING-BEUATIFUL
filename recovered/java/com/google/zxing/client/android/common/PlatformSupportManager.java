package com.google.zxing.client.android.common;

import android.os.Build;
import android.util.Log;
import java.lang.reflect.InvocationTargetException;
import java.util.Collections;
import java.util.Iterator;
import java.util.TreeMap;

/* loaded from: classes.dex */
public abstract class PlatformSupportManager<T> {

    /* renamed from: a, reason: collision with root package name */
    public final Class f5130a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f5131b;
    public final TreeMap c;

    public PlatformSupportManager(Class<T> cls, T t) {
        if (!cls.isInterface()) {
            throw new IllegalArgumentException();
        }
        if (!cls.isInstance(t)) {
            throw new IllegalArgumentException();
        }
        this.f5130a = cls;
        this.f5131b = t;
        this.c = new TreeMap(Collections.reverseOrder());
    }

    public void addImplementationClass(int i, String str) {
        this.c.put(Integer.valueOf(i), str);
    }

    public T build() {
        TreeMap treeMap = this.c;
        Iterator it = treeMap.keySet().iterator();
        while (true) {
            boolean zHasNext = it.hasNext();
            Class cls = this.f5130a;
            if (zHasNext) {
                Integer num = (Integer) it.next();
                if (Build.VERSION.SDK_INT >= num.intValue()) {
                    try {
                        Class<? extends U> clsAsSubclass = Class.forName((String) treeMap.get(num)).asSubclass(cls);
                        Log.i("PlatformSupportManager", "Using implementation " + clsAsSubclass + " of " + cls + " for SDK " + num);
                        return (T) clsAsSubclass.getConstructor(new Class[0]).newInstance(new Object[0]);
                    } catch (ClassNotFoundException e) {
                        Log.w("PlatformSupportManager", e);
                    } catch (IllegalAccessException e2) {
                        Log.w("PlatformSupportManager", e2);
                    } catch (InstantiationException e3) {
                        Log.w("PlatformSupportManager", e3);
                    } catch (NoSuchMethodException e4) {
                        Log.w("PlatformSupportManager", e4);
                    } catch (InvocationTargetException e5) {
                        Log.w("PlatformSupportManager", e5);
                    }
                }
            } else {
                T t = (T) this.f5131b;
                Log.i("PlatformSupportManager", "Using default implementation " + t.getClass() + " of " + cls);
                return t;
            }
        }
    }
}
