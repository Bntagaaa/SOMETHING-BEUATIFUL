package com.google.appinventor.components.runtime.util;

import _COROUTINE.a;
import android.util.Log;
import com.google.appinventor.components.runtime.collect.Maps;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public class MemoryLeakUtil {
    private static final String LOG_TAG = "MemoryLeakUtil";
    private static final AtomicInteger prefixGenerator = new AtomicInteger(0);
    private static final Map<String, WeakReference<Object>> TRACKED_OBJECTS = Maps.newTreeMap();

    private MemoryLeakUtil() {
    }

    public static String trackObject(String str, Object obj) {
        String str2;
        if (str == null) {
            str2 = prefixGenerator.incrementAndGet() + "_";
        } else {
            str2 = prefixGenerator.incrementAndGet() + "_" + str;
        }
        TRACKED_OBJECTS.put(str2, new WeakReference<>(obj));
        return str2;
    }

    public static boolean isTrackedObjectCollected(String str, boolean z) {
        System.gc();
        Map<String, WeakReference<Object>> map = TRACKED_OBJECTS;
        WeakReference<Object> weakReference = map.get(str);
        if (weakReference == null) {
            throw new IllegalArgumentException("key not found");
        }
        Object obj = weakReference.get();
        Log.i(LOG_TAG, a.k("Object with tag ", str.substring(str.indexOf("_") + 1), " has ", obj != null ? "not " : "", "been garbage collected."));
        if (z && obj == null) {
            map.remove(str);
        }
        return obj == null;
    }

    public static void checkAllTrackedObjects(boolean z, boolean z2) {
        Log.i(LOG_TAG, "Checking Tracked Objects ----------------------------------------");
        System.gc();
        Iterator<Map.Entry<String, WeakReference<Object>>> it = TRACKED_OBJECTS.entrySet().iterator();
        int i = 0;
        int i2 = 0;
        while (it.hasNext()) {
            Map.Entry<String, WeakReference<Object>> next = it.next();
            String key = next.getKey();
            Object obj = next.getValue().get();
            if (obj != null) {
                i2++;
            } else {
                i++;
                if (z2) {
                    it.remove();
                }
            }
            if (z) {
                Log.i(LOG_TAG, a.k("Object with tag ", key.substring(key.indexOf("_") + 1), " has ", obj != null ? "not " : "", "been garbage collected."));
            }
        }
        Log.i(LOG_TAG, "summary: collected " + i);
        Log.i(LOG_TAG, "summary: remaining " + i2);
        Log.i(LOG_TAG, "-----------------------------------------------------------------");
    }
}
