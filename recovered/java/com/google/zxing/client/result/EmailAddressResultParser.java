package com.google.zxing.client.result;

import androidx.core.net.MailTo;
import com.google.zxing.Result;
import java.util.HashMap;

/* loaded from: classes.dex */
public final class EmailAddressResultParser extends ResultParser {
    @Override // com.google.zxing.client.result.ResultParser
    public EmailAddressParsedResult parse(Result result) {
        String str;
        String massagedText = ResultParser.getMassagedText(result);
        String str2 = null;
        if (massagedText.startsWith(MailTo.MAILTO_SCHEME) || massagedText.startsWith("MAILTO:")) {
            String strSubstring = massagedText.substring(7);
            int iIndexOf = strSubstring.indexOf(63);
            if (iIndexOf >= 0) {
                strSubstring = strSubstring.substring(0, iIndexOf);
            }
            HashMap mapC = ResultParser.c(massagedText);
            if (mapC != null) {
                if (strSubstring.length() == 0) {
                    strSubstring = (String) mapC.get("to");
                }
                str2 = (String) mapC.get("subject");
                str = (String) mapC.get("body");
            } else {
                str = null;
            }
            return new EmailAddressParsedResult(strSubstring, str2, str, massagedText);
        }
        if (!EmailDoCoMoResultParser.f.matcher(massagedText).matches() || massagedText.indexOf(64) < 0) {
            return null;
        }
        return new EmailAddressParsedResult(massagedText, null, null, MailTo.MAILTO_SCHEME.concat(massagedText));
    }
}
