package com.google.zxing.client.result;

import androidx.core.net.MailTo;
import com.google.zxing.Result;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public final class EmailDoCoMoResultParser extends a {
    public static final Pattern f = Pattern.compile("[a-zA-Z0-9@.!#$%&'*+\\-/=?^_`{|}~]+");

    @Override // com.google.zxing.client.result.ResultParser
    public EmailAddressParsedResult parse(Result result) {
        String[] strArrA;
        String str;
        String massagedText = ResultParser.getMassagedText(result);
        if (!massagedText.startsWith("MATMSG:") || (strArrA = ResultParser.a("TO:", massagedText, ';', true)) == null || (str = strArrA[0]) == null || !f.matcher(str).matches() || str.indexOf(64) < 0) {
            return null;
        }
        String[] strArrA2 = ResultParser.a("SUB:", massagedText, ';', false);
        String str2 = strArrA2 == null ? null : strArrA2[0];
        String[] strArrA3 = ResultParser.a("BODY:", massagedText, ';', false);
        return new EmailAddressParsedResult(str, str2, strArrA3 != null ? strArrA3[0] : null, _COROUTINE.a.i(MailTo.MAILTO_SCHEME, str));
    }
}
