package com.google.zxing.client.result;

import com.google.zxing.Result;
import java.util.ArrayList;
import java.util.HashMap;

/* loaded from: classes.dex */
public final class SMSMMSResultParser extends ResultParser {
    @Override // com.google.zxing.client.result.ResultParser
    public SMSParsedResult parse(Result result) {
        boolean z;
        String str;
        String strSubstring;
        String massagedText = ResultParser.getMassagedText(result);
        String str2 = null;
        if (!massagedText.startsWith("sms:") && !massagedText.startsWith("SMS:") && !massagedText.startsWith("mms:") && !massagedText.startsWith("MMS:")) {
            return null;
        }
        HashMap mapC = ResultParser.c(massagedText);
        if (mapC == null || mapC.isEmpty()) {
            z = false;
            str = null;
        } else {
            str2 = (String) mapC.get("subject");
            str = (String) mapC.get("body");
            z = true;
        }
        int iIndexOf = massagedText.indexOf(63, 4);
        if (iIndexOf < 0 || !z) {
            strSubstring = massagedText.substring(4);
        } else {
            strSubstring = massagedText.substring(4, iIndexOf);
        }
        ArrayList arrayList = new ArrayList(1);
        ArrayList arrayList2 = new ArrayList(1);
        int i = -1;
        while (true) {
            int i2 = i + 1;
            int iIndexOf2 = strSubstring.indexOf(44, i2);
            if (iIndexOf2 > i) {
                d(arrayList, arrayList2, strSubstring.substring(i2, iIndexOf2));
                i = iIndexOf2;
            } else {
                d(arrayList, arrayList2, strSubstring.substring(i2));
                return new SMSParsedResult((String[]) arrayList.toArray(new String[arrayList.size()]), (String[]) arrayList2.toArray(new String[arrayList2.size()]), str2, str);
            }
        }
    }

    public static void d(ArrayList arrayList, ArrayList arrayList2, String str) {
        int iIndexOf = str.indexOf(59);
        if (iIndexOf < 0) {
            arrayList.add(str);
            arrayList2.add(null);
        } else {
            arrayList.add(str.substring(0, iIndexOf));
            String strSubstring = str.substring(iIndexOf + 1);
            arrayList2.add(strSubstring.startsWith("via=") ? strSubstring.substring(4) : null);
        }
    }
}
