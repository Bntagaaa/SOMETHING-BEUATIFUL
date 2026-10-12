package com.google.zxing.client.result;

import com.google.zxing.Result;

/* loaded from: classes.dex */
public final class BookmarkDoCoMoResultParser extends a {
    @Override // com.google.zxing.client.result.ResultParser
    public URIParsedResult parse(Result result) {
        String text = result.getText();
        if (!text.startsWith("MEBKM:")) {
            return null;
        }
        String[] strArrA = ResultParser.a("TITLE:", text, ';', true);
        String str = strArrA == null ? null : strArrA[0];
        String[] strArrA2 = ResultParser.a("URL:", text, ';', true);
        if (strArrA2 == null) {
            return null;
        }
        String str2 = strArrA2[0];
        if (URIResultParser.d(str2)) {
            return new URIParsedResult(str2, str);
        }
        return null;
    }
}
