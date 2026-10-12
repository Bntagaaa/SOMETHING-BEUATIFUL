package com.google.zxing.client.result;

import com.google.zxing.Result;

/* loaded from: classes.dex */
public final class WifiResultParser extends ResultParser {
    @Override // com.google.zxing.client.result.ResultParser
    public WifiParsedResult parse(Result result) {
        String massagedText = ResultParser.getMassagedText(result);
        if (!massagedText.startsWith("WIFI:")) {
            return null;
        }
        String[] strArrA = ResultParser.a("S:", massagedText, ';', false);
        String str = strArrA == null ? null : strArrA[0];
        if (str == null || str.length() == 0) {
            return null;
        }
        String[] strArrA2 = ResultParser.a("P:", massagedText, ';', false);
        String str2 = strArrA2 == null ? null : strArrA2[0];
        String[] strArrA3 = ResultParser.a("T:", massagedText, ';', false);
        String str3 = strArrA3 == null ? null : strArrA3[0];
        if (str3 == null) {
            str3 = "nopass";
        }
        String[] strArrA4 = ResultParser.a("B:", massagedText, ';', false);
        return new WifiParsedResult(str3, str, str2, Boolean.parseBoolean(strArrA4 != null ? strArrA4[0] : null));
    }
}
