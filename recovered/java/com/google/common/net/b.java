package com.google.common.net;

import com.google.common.base.Function;
import kotlin.text.Typography;

/* loaded from: classes.dex */
class b implements Function<String, String> {
    @Override // com.google.common.base.Function
    public String apply(String str) {
        if (MediaType.h.matchesAllOf(str) && !str.isEmpty()) {
            return str;
        }
        StringBuilder sb = new StringBuilder(str.length() + 16);
        sb.append(Typography.quote);
        for (int i = 0; i < str.length(); i++) {
            char cCharAt = str.charAt(i);
            if (cCharAt == '\r' || cCharAt == '\\' || cCharAt == '\"') {
                sb.append('\\');
            }
            sb.append(cCharAt);
        }
        sb.append(Typography.quote);
        return sb.toString();
    }
}
