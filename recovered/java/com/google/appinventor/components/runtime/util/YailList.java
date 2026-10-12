package com.google.appinventor.components.runtime.util;

import com.google.appinventor.components.runtime.errors.YailRuntimeError;
import gnu.lists.LList;
import gnu.lists.Pair;
import gnu.math.IntNum;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Set;
import org.json.JSONException;

/* loaded from: classes.dex */
public class YailList extends Pair implements YailObject {
    public YailList() {
        super(YailConstants.YAIL_HEADER, LList.Empty);
    }

    private YailList(Object obj) {
        super(YailConstants.YAIL_HEADER, obj);
    }

    public static YailList makeEmptyList() {
        return new YailList();
    }

    public static YailList makeList(Object[] objArr) {
        return new YailList(LList.makeList(objArr, 0));
    }

    public static YailList makeList(List list) {
        return new YailList(LList.makeList(list));
    }

    public static YailList makeList(Collection collection) {
        return new YailList(LList.makeList(new ArrayList(collection)));
    }

    public static YailList makeList(Set set) {
        return new YailList(LList.makeList(new ArrayList(set)));
    }

    @Override // gnu.lists.Pair, gnu.lists.AbstractSequence, java.util.List, java.util.Collection
    public Object[] toArray() {
        Object obj = this.cdr;
        if (obj instanceof Pair) {
            return ((Pair) obj).toArray();
        }
        if (obj instanceof LList) {
            return ((LList) obj).toArray();
        }
        throw new YailRuntimeError("YailList cannot be represented as an array", "YailList Error.");
    }

    public String[] toStringArray() {
        int size = size();
        String[] strArr = new String[size];
        for (int i = 1; i <= size; i++) {
            strArr[i - 1] = YailListElementToString(get(i));
        }
        return strArr;
    }

    public static String YailListElementToString(Object obj) {
        if (obj instanceof IntNum) {
            return ((IntNum) obj).toString(10);
        }
        if (obj instanceof Long) {
            return Long.toString(((Long) obj).longValue());
        }
        if (Number.class.isInstance(obj)) {
            return YailNumberToString.format(((Number) obj).doubleValue());
        }
        return String.valueOf(obj);
    }

    public String toJSONString() {
        try {
            StringBuilder sb = new StringBuilder();
            String str = "";
            sb.append('[');
            int size = size();
            for (int i = 1; i <= size; i++) {
                Object obj = get(i);
                sb.append(str);
                sb.append(JsonUtil.getJsonRepresentation(obj));
                str = ",";
            }
            sb.append(']');
            return sb.toString();
        } catch (JSONException unused) {
            throw new YailRuntimeError("List failed to convert to JSON.", "JSON Creation Error.");
        }
    }

    @Override // gnu.lists.Pair, gnu.lists.LList, gnu.lists.AbstractSequence, gnu.lists.Sequence, java.util.List, java.util.Collection, com.google.appinventor.components.runtime.util.YailObject
    public int size() {
        return super.size() - 1;
    }

    @Override // gnu.lists.LList, gnu.lists.AbstractSequence
    public String toString() {
        Object obj = this.cdr;
        if (obj instanceof Pair) {
            return ((Pair) obj).toString();
        }
        if (obj instanceof LList) {
            return ((LList) obj).toString();
        }
        throw new RuntimeException("YailList cannot be represented as a String");
    }

    public String getString(int i) {
        return get(i + 1).toString();
    }

    @Override // com.google.appinventor.components.runtime.util.YailObject
    public Object getObject(int i) {
        return get(i + 1);
    }
}
