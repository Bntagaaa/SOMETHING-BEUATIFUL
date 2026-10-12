package com.google.appinventor.components.runtime.util;

import gnu.mapping.Environment;
import gnu.mapping.LocationEnumeration;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class ComponentUtil {
    private ComponentUtil() {
    }

    public static List<Object> filterComponentsOfType(Environment environment, String str) {
        ArrayList arrayList = new ArrayList();
        LocationEnumeration locationEnumerationEnumerateAllLocations = environment.enumerateAllLocations();
        while (locationEnumerationEnumerateAllLocations.hasNext()) {
            Object obj = locationEnumerationEnumerateAllLocations.next().get();
            if (obj.getClass().getName().equals(str)) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }
}
