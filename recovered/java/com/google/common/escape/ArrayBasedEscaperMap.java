package com.google.common.escape;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import java.lang.reflect.Array;
import java.util.Collections;
import java.util.Map;

@Beta
@GwtCompatible
/* loaded from: classes.dex */
public final class ArrayBasedEscaperMap {

    /* renamed from: b, reason: collision with root package name */
    public static final char[][] f4405b = (char[][]) Array.newInstance((Class<?>) Character.TYPE, 0, 0);

    /* renamed from: a, reason: collision with root package name */
    public final char[][] f4406a;

    public static ArrayBasedEscaperMap create(Map<Character, String> map) {
        char[][] cArr;
        Preconditions.checkNotNull(map);
        if (map.isEmpty()) {
            cArr = f4405b;
        } else {
            char[][] cArr2 = new char[((Character) Collections.max(map.keySet())).charValue() + 1][];
            for (Character ch : map.keySet()) {
                cArr2[ch.charValue()] = map.get(ch).toCharArray();
            }
            cArr = cArr2;
        }
        return new ArrayBasedEscaperMap(cArr);
    }

    public ArrayBasedEscaperMap(char[][] cArr) {
        this.f4406a = cArr;
    }
}
