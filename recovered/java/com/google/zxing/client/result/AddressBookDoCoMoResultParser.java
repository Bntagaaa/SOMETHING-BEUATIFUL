package com.google.zxing.client.result;

import com.google.zxing.Result;

/* loaded from: classes.dex */
public final class AddressBookDoCoMoResultParser extends a {
    @Override // com.google.zxing.client.result.ResultParser
    public AddressBookParsedResult parse(Result result) {
        String[] strArrA;
        String massagedText = ResultParser.getMassagedText(result);
        if (!massagedText.startsWith("MECARD:") || (strArrA = ResultParser.a("N:", massagedText, ';', true)) == null) {
            return null;
        }
        String str = strArrA[0];
        int iIndexOf = str.indexOf(44);
        if (iIndexOf >= 0) {
            str = str.substring(iIndexOf + 1) + ' ' + str.substring(0, iIndexOf);
        }
        String strB = ResultParser.b("SOUND:", massagedText, ';', true);
        String[] strArrA2 = ResultParser.a("TEL:", massagedText, ';', true);
        String[] strArrA3 = ResultParser.a("EMAIL:", massagedText, ';', true);
        String strB2 = ResultParser.b("NOTE:", massagedText, ';', false);
        String[] strArrA4 = ResultParser.a("ADR:", massagedText, ';', true);
        String strB3 = ResultParser.b("BDAY:", massagedText, ';', true);
        return new AddressBookParsedResult(ResultParser.maybeWrap(str), strB, strArrA2, null, strArrA3, null, null, strB2, strArrA4, null, ResultParser.b("ORG:", massagedText, ';', true), (strB3 == null || ResultParser.isStringOfDigits(strB3, 8)) ? strB3 : null, null, ResultParser.b("URL:", massagedText, ';', true));
    }
}
