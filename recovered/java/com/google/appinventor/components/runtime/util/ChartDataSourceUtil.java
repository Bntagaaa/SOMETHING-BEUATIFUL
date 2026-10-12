package com.google.appinventor.components.runtime.util;

import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class ChartDataSourceUtil {
    private ChartDataSourceUtil() {
    }

    public static int determineMaximumListSize(YailList yailList) {
        if (yailList == null) {
            return 0;
        }
        int size = 0;
        for (int i = 0; i < yailList.size(); i++) {
            Object object = yailList.getObject(i);
            if (object instanceof List) {
                List list = (List) object;
                if (list.size() > size) {
                    size = list.size();
                }
            }
        }
        return size;
    }

    public static YailList getTranspose(YailList yailList) {
        int iDetermineMaximumListSize = determineMaximumListSize(yailList);
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < iDetermineMaximumListSize; i++) {
            arrayList.add(getTransposeEntry(yailList, i));
        }
        return YailList.makeList((List) arrayList);
    }

    private static YailList getTransposeEntry(YailList yailList, int i) {
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < yailList.size(); i2++) {
            List list = (List) yailList.getObject(i2);
            if (list.size() > i) {
                if (list instanceof YailList) {
                    arrayList.add(((YailList) list).getString(i));
                } else {
                    arrayList.add(list.get(i).toString());
                }
            } else {
                arrayList.add("");
            }
        }
        return YailList.makeList((List) arrayList);
    }
}
