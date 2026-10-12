package com.google.zxing.client.result;

import com.google.appinventor.components.runtime.repackaged.org.json.HTTP;
import com.google.zxing.Result;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class AddressBookAUResultParser extends ResultParser {
    @Override // com.google.zxing.client.result.ResultParser
    public AddressBookParsedResult parse(Result result) {
        String massagedText = ResultParser.getMassagedText(result);
        if (!massagedText.contains("MEMORY") || !massagedText.contains(HTTP.CRLF)) {
            return null;
        }
        String[] strArrA = ResultParser.a("NAME1:", massagedText, '\r', true);
        String str = strArrA == null ? null : strArrA[0];
        String[] strArrA2 = ResultParser.a("NAME2:", massagedText, '\r', true);
        String str2 = strArrA2 == null ? null : strArrA2[0];
        String[] strArrD = d("TEL", massagedText);
        String[] strArrD2 = d("MAIL", massagedText);
        String[] strArrA3 = ResultParser.a("MEMORY:", massagedText, '\r', false);
        String str3 = strArrA3 == null ? null : strArrA3[0];
        String[] strArrA4 = ResultParser.a("ADD:", massagedText, '\r', true);
        String str4 = strArrA4 == null ? null : strArrA4[0];
        return new AddressBookParsedResult(ResultParser.maybeWrap(str), str2, strArrD, null, strArrD2, null, null, str3, str4 != null ? new String[]{str4} : null, null, null, null, null, null);
    }

    public static String[] d(String str, String str2) {
        ArrayList arrayList = null;
        for (int i = 1; i <= 3; i++) {
            String[] strArrA = ResultParser.a(str + i + ':', str2, '\r', true);
            String str3 = strArrA == null ? null : strArrA[0];
            if (str3 == null) {
                break;
            }
            if (arrayList == null) {
                arrayList = new ArrayList(3);
            }
            arrayList.add(str3);
        }
        if (arrayList == null) {
            return null;
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }
}
