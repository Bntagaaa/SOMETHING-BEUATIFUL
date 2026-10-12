package com.google.zxing.client.result;

import androidx.core.net.MailTo;
import com.google.zxing.Result;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class VEventResultParser extends ResultParser {
    @Override // com.google.zxing.client.result.ResultParser
    public CalendarParsedResult parse(Result result) throws NumberFormatException {
        CalendarParsedResult calendarParsedResult;
        String[] strArr;
        double d;
        double d2;
        String massagedText = ResultParser.getMassagedText(result);
        if (massagedText.indexOf("BEGIN:VEVENT") >= 0) {
            String strD = d("SUMMARY", massagedText);
            String strD2 = d("DTSTART", massagedText);
            if (strD2 != null) {
                String strD3 = d("DTEND", massagedText);
                String strD4 = d("LOCATION", massagedText);
                String strD5 = d("ORGANIZER", massagedText);
                if (strD5 != null && (strD5.startsWith(MailTo.MAILTO_SCHEME) || strD5.startsWith("MAILTO:"))) {
                    strD5 = strD5.substring(7);
                }
                ArrayList arrayListE = VCardResultParser.e("ATTENDEE", massagedText, true, false);
                if (arrayListE == null || arrayListE.isEmpty()) {
                    calendarParsedResult = null;
                    strArr = null;
                } else {
                    int size = arrayListE.size();
                    strArr = new String[size];
                    for (int i = 0; i < size; i++) {
                        strArr[i] = (String) ((List) arrayListE.get(i)).get(0);
                    }
                    calendarParsedResult = null;
                }
                if (strArr != null) {
                    for (int i2 = 0; i2 < strArr.length; i2++) {
                        String strSubstring = strArr[i2];
                        if (strSubstring != null && (strSubstring.startsWith(MailTo.MAILTO_SCHEME) || strSubstring.startsWith("MAILTO:"))) {
                            strSubstring = strSubstring.substring(7);
                        }
                        strArr[i2] = strSubstring;
                    }
                }
                String strD6 = d("DESCRIPTION", massagedText);
                String strD7 = d("GEO", massagedText);
                if (strD7 == null) {
                    d = Double.NaN;
                    d2 = Double.NaN;
                } else {
                    int iIndexOf = strD7.indexOf(59);
                    try {
                        double d3 = Double.parseDouble(strD7.substring(0, iIndexOf));
                        d = Double.parseDouble(strD7.substring(iIndexOf + 1));
                        d2 = d3;
                    } catch (NumberFormatException | IllegalArgumentException unused) {
                        return calendarParsedResult;
                    }
                }
                return new CalendarParsedResult(strD, strD2, strD3, strD4, strD5, strArr, strD6, d2, d);
            }
        }
        return null;
    }

    public static String d(String str, String str2) {
        List listD = VCardResultParser.d(str, str2, true, false);
        if (listD == null || listD.isEmpty()) {
            return null;
        }
        return (String) listD.get(0);
    }
}
