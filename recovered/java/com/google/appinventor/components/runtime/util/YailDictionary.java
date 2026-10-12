package com.google.appinventor.components.runtime.util;

import android.util.Log;
import androidx.annotation.NonNull;
import com.google.appinventor.components.runtime.collect.Lists;
import com.google.appinventor.components.runtime.errors.DispatchableError;
import com.google.appinventor.components.runtime.errors.YailRuntimeError;
import gnu.lists.FString;
import gnu.lists.LList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONException;

/* loaded from: classes.dex */
public class YailDictionary extends LinkedHashMap<Object, Object> implements YailObject<YailList> {
    public static final Object ALL = new Object() { // from class: com.google.appinventor.components.runtime.util.YailDictionary.1
        public String toString() {
            return "ALL_ITEMS";
        }
    };
    private static final KeyTransformer IDENTITY = new KeyTransformer() { // from class: com.google.appinventor.components.runtime.util.YailDictionary.2
        @Override // com.google.appinventor.components.runtime.util.YailDictionary.KeyTransformer
        public Object transform(Object obj) {
            return obj;
        }
    };
    private static final String LOG_TAG = "YailDictionary";
    private final KeyTransformer keyTransformer;

    public interface KeyTransformer {
        Object transform(Object obj);
    }

    public YailDictionary() {
        this.keyTransformer = IDENTITY;
    }

    public YailDictionary(Map<?, ?> map) {
        this(map, IDENTITY);
    }

    public YailDictionary(Map<?, ?> map, KeyTransformer keyTransformer) {
        this.keyTransformer = keyTransformer;
        for (Map.Entry<?, ?> entry : map.entrySet()) {
            put(entry.getKey(), entry.getValue());
        }
    }

    public static YailDictionary makeDictionary() {
        return new YailDictionary();
    }

    public static YailDictionary makeDictionary(Map<Object, Object> map) {
        return new YailDictionary(map);
    }

    public static YailDictionary makeDictionary(Object... objArr) {
        if (objArr.length % 2 == 1) {
            throw new IllegalArgumentException("Expected an even number of key-value entries.");
        }
        YailDictionary yailDictionary = new YailDictionary();
        for (int i = 0; i < objArr.length; i += 2) {
            yailDictionary.put(objArr[i], objArr[i + 1]);
        }
        return yailDictionary;
    }

    public static YailDictionary makeDictionary(List<YailList> list) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (YailList yailList : list) {
            linkedHashMap.put(yailList.getObject(0), yailList.getObject(1));
        }
        return new YailDictionary(linkedHashMap);
    }

    private static Boolean isAlist(YailList yailList) {
        Iterator it = ((LList) yailList.getCdr()).iterator();
        boolean z = false;
        while (it.hasNext()) {
            Object next = it.next();
            if (!(next instanceof YailList)) {
                return Boolean.FALSE;
            }
            if (((YailList) next).size() != 2) {
                return Boolean.FALSE;
            }
            z = true;
        }
        return Boolean.valueOf(z);
    }

    public static YailDictionary alistToDict(YailList yailList) {
        YailDictionary yailDictionary = new YailDictionary();
        Iterator it = ((LList) yailList.getCdr()).iterator();
        while (it.hasNext()) {
            YailList yailList2 = (YailList) it.next();
            Object object = yailList2.getObject(0);
            Object object2 = yailList2.getObject(1);
            boolean z = object2 instanceof YailList;
            if (z) {
                YailList yailList3 = (YailList) object2;
                if (isAlist(yailList3).booleanValue()) {
                    yailDictionary.put(object, alistToDict(yailList3));
                }
            }
            if (z) {
                yailDictionary.put(object, checkList((YailList) object2));
            } else {
                yailDictionary.put(object, object2);
            }
        }
        return yailDictionary;
    }

    private static YailList checkList(YailList yailList) {
        Object[] objArr = new Object[yailList.size()];
        Iterator it = yailList.iterator();
        it.next();
        boolean z = false;
        int i = 0;
        while (it.hasNext()) {
            Object next = it.next();
            if (next instanceof YailList) {
                YailList yailList2 = (YailList) next;
                if (isAlist(yailList2).booleanValue()) {
                    objArr[i] = alistToDict(yailList2);
                } else {
                    YailList yailListCheckList = checkList(yailList2);
                    objArr[i] = yailListCheckList;
                    if (yailListCheckList != next) {
                    }
                }
                z = true;
            } else {
                objArr[i] = next;
            }
            i++;
        }
        return z ? YailList.makeList(objArr) : yailList;
    }

    private static YailList checkListForDicts(YailList yailList) {
        ArrayList arrayList = new ArrayList();
        Iterator it = ((LList) yailList.getCdr()).iterator();
        while (it.hasNext()) {
            Object next = it.next();
            if (next instanceof YailDictionary) {
                arrayList.add(dictToAlist((YailDictionary) next));
            } else if (next instanceof YailList) {
                arrayList.add(checkListForDicts((YailList) next));
            } else {
                arrayList.add(next);
            }
        }
        return YailList.makeList((List) arrayList);
    }

    public static YailList dictToAlist(YailDictionary yailDictionary) {
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<Object, Object> entry : yailDictionary.entrySet()) {
            arrayList.add(YailList.makeList(new Object[]{entry.getKey(), entry.getValue()}));
        }
        return YailList.makeList((List) arrayList);
    }

    public void setPair(YailList yailList) {
        put(yailList.getObject(0), yailList.getObject(1));
    }

    private Object getFromList(List<?> list, Object obj) {
        int i = !(list instanceof YailList) ? 1 : 0;
        try {
            if (obj instanceof FString) {
                return list.get(Integer.parseInt(obj.toString()) - i);
            }
            if (obj instanceof String) {
                return list.get(Integer.parseInt((String) obj) - i);
            }
            if (obj instanceof Number) {
                return list.get(((Number) obj).intValue() - i);
            }
            return null;
        } catch (IndexOutOfBoundsException e) {
            Log.w(LOG_TAG, "Requested too large of an index: " + obj, e);
            throw new YailRuntimeError("Requested too large of an index: " + obj, "IndexOutOfBoundsException");
        } catch (NumberFormatException e2) {
            Log.w(LOG_TAG, "Unable to parse key as integer: " + obj, e2);
            throw new YailRuntimeError("Unable to parse key as integer: " + obj, "NumberParseException");
        }
    }

    public Object getObjectAtKeyPath(List<?> list) {
        Object fromList = this;
        for (Object obj : list) {
            if (fromList instanceof Map) {
                fromList = ((Map) fromList).get(obj);
            } else {
                if (fromList instanceof YailList) {
                    YailList yailList = (YailList) fromList;
                    if (isAlist(yailList).booleanValue()) {
                        fromList = alistToDict(yailList).get(obj);
                    }
                }
                if (!(fromList instanceof List)) {
                    return null;
                }
                fromList = getFromList((List) fromList, obj);
            }
        }
        return fromList;
    }

    private static Collection<Object> allOf(Map<Object, Object> map) {
        return map.values();
    }

    private static Collection<Object> allOf(List<Object> list) {
        if (!(list instanceof YailList)) {
            return list;
        }
        YailList yailList = (YailList) list;
        if (isAlist(yailList).booleanValue()) {
            ArrayList arrayList = new ArrayList();
            Iterator it = ((LList) yailList.getCdr()).iterator();
            while (it.hasNext()) {
                arrayList.add(((YailList) it.next()).getObject(1));
            }
            return arrayList;
        }
        return (Collection) yailList.getCdr();
    }

    private static Collection<Object> allOf(Object obj) {
        if (obj instanceof Map) {
            return allOf((Map<Object, Object>) obj);
        }
        if (obj instanceof List) {
            return allOf((List<Object>) obj);
        }
        return Collections.EMPTY_LIST;
    }

    private static Object alistLookup(YailList yailList, Object obj) {
        Iterator it = ((LList) yailList.getCdr()).iterator();
        while (it.hasNext()) {
            Object next = it.next();
            if (!(next instanceof YailList)) {
                break;
            }
            YailList yailList2 = (YailList) next;
            if (yailList2.getObject(0).equals(obj)) {
                return yailList2.getObject(1);
            }
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0060  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static <T> java.util.List<java.lang.Object> walkKeyPath(java.lang.Object r3, java.util.List<T> r4, java.util.List<java.lang.Object> r5) throws java.lang.NumberFormatException {
        /*
            boolean r0 = r4.isEmpty()
            if (r0 == 0) goto Lc
            if (r3 == 0) goto L74
            r5.add(r3)
            return r5
        Lc:
            if (r3 != 0) goto Lf
            goto L74
        Lf:
            r0 = 0
            java.lang.Object r0 = r4.get(r0)
            r1 = 1
            int r2 = r4.size()
            java.util.List r4 = r4.subList(r1, r2)
            java.lang.Object r1 = com.google.appinventor.components.runtime.util.YailDictionary.ALL
            if (r0 != r1) goto L37
            java.util.Collection r3 = allOf(r3)
            java.util.Iterator r3 = r3.iterator()
        L29:
            boolean r0 = r3.hasNext()
            if (r0 == 0) goto L74
            java.lang.Object r0 = r3.next()
            walkKeyPath(r0, r4, r5)
            goto L29
        L37:
            boolean r1 = r3 instanceof java.util.Map
            if (r1 == 0) goto L45
            java.util.Map r3 = (java.util.Map) r3
            java.lang.Object r3 = r3.get(r0)
            walkKeyPath(r3, r4, r5)
            return r5
        L45:
            boolean r1 = r3 instanceof com.google.appinventor.components.runtime.util.YailList
            if (r1 == 0) goto L60
            r1 = r3
            com.google.appinventor.components.runtime.util.YailList r1 = (com.google.appinventor.components.runtime.util.YailList) r1
            java.lang.Boolean r2 = isAlist(r1)
            boolean r2 = r2.booleanValue()
            if (r2 == 0) goto L60
            java.lang.Object r3 = alistLookup(r1, r0)
            if (r3 == 0) goto L74
            walkKeyPath(r3, r4, r5)
            return r5
        L60:
            boolean r1 = r3 instanceof java.util.List
            if (r1 == 0) goto L74
            r1 = r3
            java.util.List r1 = (java.util.List) r1
            int r0 = keyToIndex(r1, r0)
            java.util.List r3 = (java.util.List) r3     // Catch: java.lang.Exception -> L74
            java.lang.Object r3 = r3.get(r0)     // Catch: java.lang.Exception -> L74
            walkKeyPath(r3, r4, r5)     // Catch: java.lang.Exception -> L74
        L74:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.appinventor.components.runtime.util.YailDictionary.walkKeyPath(java.lang.Object, java.util.List, java.util.List):java.util.List");
    }

    public static <T> List<Object> walkKeyPath(YailObject<?> yailObject, List<T> list) {
        return walkKeyPath(yailObject, list, new ArrayList());
    }

    private static int keyToIndex(List<?> list, Object obj) throws NumberFormatException {
        int iIntValue;
        int i = !(list instanceof YailList) ? 1 : 0;
        if (obj instanceof Number) {
            iIntValue = ((Number) obj).intValue();
        } else {
            try {
                iIntValue = Integer.parseInt(obj.toString());
            } catch (NumberFormatException unused) {
                throw new DispatchableError(ErrorMessages.ERROR_NUMBER_FORMAT_EXCEPTION, obj.toString());
            }
        }
        int i2 = iIntValue - i;
        if (i2 >= 0 && i2 < (list.size() + 1) - i) {
            return i2;
        }
        try {
            throw new DispatchableError(ErrorMessages.ERROR_INDEX_MISSING_IN_LIST, Integer.valueOf(i2 + i), JsonUtil.getJsonRepresentation(list));
        } catch (JSONException e) {
            Log.e(LOG_TAG, "Unable to serialize object as JSON", e);
            throw new YailRuntimeError(e.getMessage(), "JSON Error");
        }
    }

    private Object lookupTargetForKey(Object obj, Object obj2) {
        if (obj instanceof YailDictionary) {
            return ((YailDictionary) obj).get(obj2);
        }
        if (obj instanceof List) {
            List list = (List) obj;
            return list.get(keyToIndex(list, obj2));
        }
        throw new DispatchableError(ErrorMessages.ERROR_INVALID_VALUE_IN_PATH, obj == null ? "null" : obj.getClass().getSimpleName());
    }

    public void setValueForKeyPath(List<?> list, Object obj) {
        Iterator<?> it = list.iterator();
        if (list.isEmpty()) {
            return;
        }
        Object objLookupTargetForKey = this;
        while (it.hasNext()) {
            Object next = it.next();
            if (it.hasNext()) {
                objLookupTargetForKey = lookupTargetForKey(objLookupTargetForKey, next);
            } else if (objLookupTargetForKey instanceof YailDictionary) {
                ((YailDictionary) objLookupTargetForKey).put(next, obj);
            } else if (objLookupTargetForKey instanceof YailList) {
                ((LList) objLookupTargetForKey).getIterator(keyToIndex((List) objLookupTargetForKey, next)).set(obj);
            } else if (objLookupTargetForKey instanceof List) {
                List list2 = (List) objLookupTargetForKey;
                list2.set(keyToIndex(list2, next), obj);
            } else {
                throw new DispatchableError(ErrorMessages.ERROR_INVALID_VALUE_IN_PATH);
            }
        }
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public boolean containsKey(Object obj) {
        if (obj instanceof FString) {
            obj = obj.toString();
        }
        return super.containsKey(this.keyTransformer.transform(obj));
    }

    @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.AbstractMap, java.util.Map
    public boolean containsValue(Object obj) {
        if (obj instanceof FString) {
            return super.containsValue(obj.toString());
        }
        return super.containsValue(obj);
    }

    @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.AbstractMap, java.util.Map
    public Object get(Object obj) {
        if (obj instanceof FString) {
            obj = obj.toString();
        }
        return super.get(this.keyTransformer.transform(obj));
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public Object put(Object obj, Object obj2) {
        if (obj instanceof FString) {
            obj = obj.toString();
        }
        Object objTransform = this.keyTransformer.transform(obj);
        if (obj2 instanceof FString) {
            obj2 = obj2.toString();
        }
        return super.put(objTransform, obj2);
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public Object remove(Object obj) {
        if (obj instanceof FString) {
            obj = obj.toString();
        }
        return super.remove(this.keyTransformer.transform(obj));
    }

    @Override // java.util.AbstractMap
    public String toString() {
        try {
            return JsonUtil.getJsonRepresentation(this);
        } catch (JSONException e) {
            throw new YailRuntimeError(e.getMessage(), "JSON Error");
        }
    }

    @Override // com.google.appinventor.components.runtime.util.YailObject
    public Object getObject(int i) {
        if (i < 0 || i >= size()) {
            throw new IndexOutOfBoundsException();
        }
        for (Map.Entry<Object, Object> entry : entrySet()) {
            if (i == 0) {
                return Lists.newArrayList(entry.getKey(), entry.getValue());
            }
            i--;
        }
        throw new IndexOutOfBoundsException();
    }

    @Override // com.google.appinventor.components.runtime.util.YailObject, java.lang.Iterable
    @NonNull
    public Iterator<YailList> iterator() {
        return new DictIterator(entrySet().iterator());
    }

    public static class DictIterator implements Iterator<YailList> {
        final Iterator<Map.Entry<Object, Object>> it;

        public DictIterator(Iterator<Map.Entry<Object, Object>> it) {
            this.it = it;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.it.hasNext();
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.Iterator
        public YailList next() {
            Map.Entry<Object, Object> next = this.it.next();
            return YailList.makeList(new Object[]{next.getKey(), next.getValue()});
        }

        @Override // java.util.Iterator
        public void remove() {
            this.it.remove();
        }
    }
}
