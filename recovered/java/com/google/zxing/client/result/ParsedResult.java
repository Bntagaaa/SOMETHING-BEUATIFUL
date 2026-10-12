package com.google.zxing.client.result;

/* loaded from: classes.dex */
public abstract class ParsedResult {

    /* renamed from: a, reason: collision with root package name */
    public final ParsedResultType f5150a;

    public abstract String getDisplayResult();

    public ParsedResult(ParsedResultType parsedResultType) {
        this.f5150a = parsedResultType;
    }

    public final ParsedResultType getType() {
        return this.f5150a;
    }

    public final String toString() {
        return getDisplayResult();
    }

    public static void maybeAppend(String str, StringBuilder sb) {
        if (str == null || str.length() <= 0) {
            return;
        }
        if (sb.length() > 0) {
            sb.append('\n');
        }
        sb.append(str);
    }

    public static void maybeAppend(String[] strArr, StringBuilder sb) {
        if (strArr != null) {
            for (String str : strArr) {
                if (str != null && str.length() > 0) {
                    if (sb.length() > 0) {
                        sb.append('\n');
                    }
                    sb.append(str);
                }
            }
        }
    }
}
