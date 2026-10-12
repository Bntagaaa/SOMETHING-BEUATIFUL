package com.google.appinventor.components.runtime.util;

import _COROUTINE.a;
import com.google.appinventor.components.runtime.errors.YailRuntimeError;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* loaded from: classes.dex */
public class ElementsUtil {
    public static YailList elementsFromString(String str) {
        return str.length() > 0 ? YailList.makeList(str.split(" *, *")) : new YailList();
    }

    public static List<String> elementsStrings(YailList yailList, String str) {
        String[] stringArray = yailList.toStringArray();
        for (String str2 : stringArray) {
            if (str2 == null) {
                throw new YailRuntimeError(a.A("Items passed to ", str, " must be Strings"), "Error");
            }
        }
        return new ArrayList(Arrays.asList(stringArray));
    }

    public static List<String> elementsListFromString(String str) {
        if (str.length() > 0) {
            return new ArrayList(Arrays.asList(str.split(" *, *")));
        }
        return new ArrayList();
    }

    public static YailList makeYailListFromList(List<String> list) {
        if (list == null || list.size() == 0) {
            return YailList.makeEmptyList();
        }
        return YailList.makeList((List) list);
    }

    public static int selectionIndexInStringList(int i, List<String> list) {
        if (i < 1 || i > list.size()) {
            return 0;
        }
        return i;
    }

    public static String setSelectionFromIndexInStringList(int i, List<String> list) {
        if (i < 1 || i > list.size()) {
            return "";
        }
        return list.get(i - 1);
    }

    public static int setSelectedIndexFromValueInStringList(String str, List<String> list) {
        for (int i = 0; i < list.size(); i++) {
            if (list.get(i).equals(str)) {
                return i + 1;
            }
        }
        return 0;
    }

    public static YailList elements(YailList yailList, String str) {
        for (String str2 : yailList.toStringArray()) {
            if (str2 == null) {
                throw new YailRuntimeError(a.A("Items passed to ", str, " must be Strings"), "Error");
            }
        }
        return yailList;
    }

    public static int selectionIndex(int i, YailList yailList) {
        if (i <= 0 || i > yailList.size()) {
            return 0;
        }
        return i;
    }

    public static String setSelectionFromIndex(int i, YailList yailList) {
        if (i == 0 || i > yailList.size()) {
            return "";
        }
        return yailList.getString(i - 1);
    }

    public static int setSelectedIndexFromValue(String str, YailList yailList) {
        for (int i = 0; i < yailList.size(); i++) {
            if (yailList.getString(i).equals(str)) {
                return i + 1;
            }
        }
        return 0;
    }

    public static String toStringEmptyIfNull(Object obj) {
        return obj == null ? "" : obj.toString();
    }
}
