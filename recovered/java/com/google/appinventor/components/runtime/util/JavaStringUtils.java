package com.google.appinventor.components.runtime.util;

import _COROUTINE.a;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeSet;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public class JavaStringUtils {
    private static final boolean DEBUG = false;
    public static final String LOG_TAG_JOIN_STRINGS = "JavaJoinListOfStrings";
    private static final MappingOrder mappingOrderDictionary;
    private static final MappingOrder mappingOrderEarliestOccurrence;
    private static final MappingOrder mappingOrderLongestStringFirst;
    private static final Comparator<Range> rangeComparator;

    public static class MappingOrder {
        public /* synthetic */ MappingOrder(int i) {
            this();
        }

        public void changeOrder(List<String> list, String str) {
        }

        private MappingOrder() {
        }
    }

    public static class MappingLongestStringFirstOrder extends MappingOrder {
        public /* synthetic */ MappingLongestStringFirstOrder(int i) {
            this();
        }

        private MappingLongestStringFirstOrder() {
            super(0);
        }

        @Override // com.google.appinventor.components.runtime.util.JavaStringUtils.MappingOrder
        public void changeOrder(List<String> list, String str) {
            Collections.sort(list, new Comparator<String>() { // from class: com.google.appinventor.components.runtime.util.JavaStringUtils.MappingLongestStringFirstOrder.1
                @Override // java.util.Comparator
                public int compare(String str2, String str3) {
                    return Integer.compare(str3.length(), str2.length());
                }
            });
        }
    }

    public static class MappingEarliestOccurrenceFirstOrder extends MappingOrder {
        public /* synthetic */ MappingEarliestOccurrenceFirstOrder(int i) {
            this();
        }

        private MappingEarliestOccurrenceFirstOrder() {
            super(0);
        }

        @Override // com.google.appinventor.components.runtime.util.JavaStringUtils.MappingOrder
        public void changeOrder(List<String> list, String str) {
            final HashMap map = new HashMap();
            for (String str2 : list) {
                int iIndexOf = str.indexOf(str2);
                if (iIndexOf == -1) {
                    iIndexOf = str.length() + map.size();
                }
                map.put(str2, Integer.valueOf(iIndexOf));
            }
            Collections.sort(list, new Comparator<String>() { // from class: com.google.appinventor.components.runtime.util.JavaStringUtils.MappingEarliestOccurrenceFirstOrder.1
                @Override // java.util.Comparator
                public int compare(String str3, String str4) {
                    int iIntValue = ((Integer) map.get(str3)).intValue();
                    int iIntValue2 = ((Integer) map.get(str4)).intValue();
                    if (iIntValue == iIntValue2) {
                        return Integer.compare(str4.length(), str3.length());
                    }
                    return Integer.compare(iIntValue, iIntValue2);
                }
            });
        }
    }

    public static class Range {
        int end;
        int start;
        String text;

        public Range(int i, int i2, String str) {
            this.start = i;
            this.end = i2;
            this.text = str;
        }
    }

    public static class RangeComparator implements Comparator<Range> {
        public /* synthetic */ RangeComparator(int i) {
            this();
        }

        private RangeComparator() {
        }

        @Override // java.util.Comparator
        public int compare(Range range, Range range2) {
            if (Math.max(range.start, range2.start) < Math.min(range.end, range2.end)) {
                return 0;
            }
            return Integer.compare(range2.end, range.end);
        }
    }

    static {
        int i = 0;
        mappingOrderDictionary = new MappingOrder(i);
        mappingOrderLongestStringFirst = new MappingLongestStringFirstOrder(i);
        mappingOrderEarliestOccurrence = new MappingEarliestOccurrenceFirstOrder(i);
        rangeComparator = new RangeComparator(i);
    }

    public static String joinStrings(List<Object> list, String str) {
        return join(list, str);
    }

    public static YailList split(String str, String str2) {
        ArrayList arrayList = new ArrayList();
        Collections.addAll(arrayList, str.split(str2));
        if (Pattern.quote("").equals(str2) && ((String) arrayList.get(0)).equals("")) {
            arrayList.remove(0);
        }
        return YailList.makeList((List) arrayList);
    }

    private static String join(List<Object> list, String str) {
        StringBuilder sb = new StringBuilder();
        boolean z = true;
        for (Object obj : list) {
            if (z) {
                z = false;
            } else {
                sb.append(str);
            }
            sb.append(obj.toString());
        }
        return sb.toString();
    }

    public static String replaceAllMappingsDictionaryOrder(String str, Map<Object, Object> map) {
        return replaceAllMappings(str, map, mappingOrderDictionary);
    }

    public static String replaceAllMappingsLongestStringOrder(String str, Map<Object, Object> map) {
        return replaceAllMappings(str, map, mappingOrderLongestStringFirst);
    }

    public static String replaceAllMappingsEarliestOccurrenceOrder(String str, Map<Object, Object> map) {
        return replaceAllMappings(str, map, mappingOrderEarliestOccurrence);
    }

    public static String replaceAllMappings(String str, Map<Object, Object> map, MappingOrder mappingOrder) {
        HashMap map2 = new HashMap();
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<Object, Object> entry : map.entrySet()) {
            String string = entry.getKey().toString();
            String string2 = entry.getValue().toString();
            if (!map2.containsKey(string)) {
                arrayList.add(string);
            }
            map2.put(string, string2);
        }
        mappingOrder.changeOrder(arrayList, str);
        return applyMappings(str, map2, arrayList);
    }

    private static String applyMappings(String str, Map<String, String> map, List<String> list) {
        TreeSet treeSet = new TreeSet(rangeComparator);
        for (String str2 : list) {
            Matcher matcher = Pattern.compile(Pattern.quote(str2)).matcher(str);
            String str3 = map.get(str2);
            while (matcher.find()) {
                treeSet.add(new Range(matcher.start(), matcher.end(), str3));
            }
        }
        Iterator it = treeSet.iterator();
        while (it.hasNext()) {
            Range range = (Range) it.next();
            str = a.j(str.substring(0, range.start), range.text, str.substring(range.end));
        }
        return str;
    }
}
