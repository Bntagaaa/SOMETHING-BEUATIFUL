package com.google.zxing.client.result;

import java.util.regex.Pattern;

/* loaded from: classes.dex */
public final class URIParsedResult extends ParsedResult {
    public static final Pattern d = Pattern.compile(":/*([^/@]+)@[^/]+");

    /* renamed from: b, reason: collision with root package name */
    public final String f5158b;
    public final String c;

    public URIParsedResult(String str, String str2) {
        super(ParsedResultType.URI);
        String strTrim = str.trim();
        int iIndexOf = strTrim.indexOf(58);
        if (iIndexOf < 0) {
            strTrim = "http://".concat(strTrim);
        } else {
            int i = iIndexOf + 1;
            int iIndexOf2 = strTrim.indexOf(47, i);
            iIndexOf2 = iIndexOf2 < 0 ? strTrim.length() : iIndexOf2;
            if (iIndexOf2 > i) {
                while (true) {
                    if (i >= iIndexOf2) {
                        strTrim = "http://".concat(strTrim);
                        break;
                    } else if (strTrim.charAt(i) < '0' || strTrim.charAt(i) > '9') {
                        break;
                    } else {
                        i++;
                    }
                }
            }
        }
        this.f5158b = strTrim;
        this.c = str2;
    }

    public String getURI() {
        return this.f5158b;
    }

    public String getTitle() {
        return this.c;
    }

    public boolean isPossiblyMaliciousURI() {
        return d.matcher(this.f5158b).find();
    }

    @Override // com.google.zxing.client.result.ParsedResult
    public String getDisplayResult() {
        StringBuilder sb = new StringBuilder(30);
        ParsedResult.maybeAppend(this.c, sb);
        ParsedResult.maybeAppend(this.f5158b, sb);
        return sb.toString();
    }
}
