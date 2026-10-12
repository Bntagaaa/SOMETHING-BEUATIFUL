package com.google.thirdparty.publicsuffix;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Joiner;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.Lists;
import java.util.LinkedList;

@GwtCompatible
/* loaded from: classes.dex */
final class a {

    /* renamed from: a, reason: collision with root package name */
    public static final Joiner f5067a = Joiner.on("");

    public static ImmutableMap b(String str) {
        ImmutableMap.Builder builder = ImmutableMap.builder();
        int length = str.length();
        int iA = 0;
        while (iA < length) {
            iA += a(Lists.newLinkedList(), str, iA, builder);
        }
        return builder.build();
    }

    public static int a(LinkedList linkedList, String str, int i, ImmutableMap.Builder builder) {
        int length = str.length();
        int i2 = i;
        char cCharAt = 0;
        while (i2 < length && (cCharAt = str.charAt(i2)) != '&' && cCharAt != '?' && cCharAt != '!' && cCharAt != ':' && cCharAt != ',') {
            i2++;
        }
        linkedList.add(0, new StringBuilder(str.subSequence(i, i2)).reverse());
        if (cCharAt == '!' || cCharAt == '?' || cCharAt == ':' || cCharAt == ',') {
            String strJoin = f5067a.join(linkedList);
            if (strJoin.length() > 0) {
                for (PublicSuffixType publicSuffixType : PublicSuffixType.values()) {
                    if (publicSuffixType.f5065a == cCharAt || publicSuffixType.f5066b == cCharAt) {
                        builder.put(strJoin, publicSuffixType);
                    }
                }
                throw new IllegalArgumentException("No enum corresponding to given code: " + cCharAt);
            }
        }
        int iA = i2 + 1;
        if (cCharAt != '?' && cCharAt != ',') {
            while (iA < length) {
                iA += a(linkedList, str, iA, builder);
                if (str.charAt(iA) == '?' || str.charAt(iA) == ',') {
                    iA++;
                    break;
                }
            }
        }
        linkedList.remove(0);
        return iA - i;
    }
}
