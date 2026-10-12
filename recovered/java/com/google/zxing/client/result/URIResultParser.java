package com.google.zxing.client.result;

import com.google.zxing.Result;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public final class URIResultParser extends ResultParser {
    public static final Pattern f = Pattern.compile("[a-zA-Z0-9]{2,}:");

    /* renamed from: g, reason: collision with root package name */
    public static final Pattern f5159g = Pattern.compile("([a-zA-Z0-9\\-]+\\.)+[a-zA-Z0-9\\-]{2,}(:\\d{1,5})?(/|\\?|$)");

    @Override // com.google.zxing.client.result.ResultParser
    public URIParsedResult parse(Result result) {
        String massagedText = ResultParser.getMassagedText(result);
        if (massagedText.startsWith("URL:") || massagedText.startsWith("URI:")) {
            return new URIParsedResult(massagedText.substring(4).trim(), null);
        }
        String strTrim = massagedText.trim();
        if (d(strTrim)) {
            return new URIParsedResult(strTrim, null);
        }
        return null;
    }

    public static boolean d(String str) {
        Matcher matcher = f.matcher(str);
        if (matcher.find() && matcher.start() == 0) {
            return true;
        }
        Matcher matcher2 = f5159g.matcher(str);
        return matcher2.find() && matcher2.start() == 0;
    }
}
