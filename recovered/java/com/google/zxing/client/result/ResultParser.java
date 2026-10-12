package com.google.zxing.client.result;

import com.google.zxing.Result;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public abstract class ResultParser {

    /* renamed from: a, reason: collision with root package name */
    public static final ResultParser[] f5153a = {new BookmarkDoCoMoResultParser(), new AddressBookDoCoMoResultParser(), new EmailDoCoMoResultParser(), new AddressBookAUResultParser(), new VCardResultParser(), new BizcardResultParser(), new VEventResultParser(), new EmailAddressResultParser(), new SMTPResultParser(), new TelResultParser(), new SMSMMSResultParser(), new SMSTOMMSTOResultParser(), new GeoResultParser(), new WifiResultParser(), new URLTOResultParser(), new URIResultParser(), new ISBNResultParser(), new ProductResultParser(), new ExpandedProductResultParser()};

    /* renamed from: b, reason: collision with root package name */
    public static final Pattern f5154b = Pattern.compile("\\d*");
    public static final Pattern c = Pattern.compile("[a-zA-Z0-9]*");
    public static final Pattern d = Pattern.compile("&");
    public static final Pattern e = Pattern.compile("=");

    public static int parseHexDigit(char c2) {
        if (c2 >= '0' && c2 <= '9') {
            return c2 - '0';
        }
        if (c2 >= 'a' && c2 <= 'f') {
            return c2 - 'W';
        }
        if (c2 < 'A' || c2 > 'F') {
            return -1;
        }
        return c2 - '7';
    }

    public abstract ParsedResult parse(Result result);

    public static String getMassagedText(Result result) {
        String text = result.getText();
        return text.startsWith("\ufeff") ? text.substring(1) : text;
    }

    public static ParsedResult parseResult(Result result) {
        for (ResultParser resultParser : f5153a) {
            ParsedResult parsedResult = resultParser.parse(result);
            if (parsedResult != null) {
                return parsedResult;
            }
        }
        return new TextParsedResult(result.getText(), null);
    }

    public static void maybeAppend(String str, StringBuilder sb) {
        if (str != null) {
            sb.append('\n');
            sb.append(str);
        }
    }

    public static void maybeAppend(String[] strArr, StringBuilder sb) {
        if (strArr != null) {
            for (String str : strArr) {
                sb.append('\n');
                sb.append(str);
            }
        }
    }

    public static String[] maybeWrap(String str) {
        if (str == null) {
            return null;
        }
        return new String[]{str};
    }

    public static String unescapeBackslash(String str) {
        int iIndexOf = str.indexOf(92);
        if (iIndexOf < 0) {
            return str;
        }
        int length = str.length();
        StringBuilder sb = new StringBuilder(length - 1);
        sb.append(str.toCharArray(), 0, iIndexOf);
        boolean z = false;
        while (iIndexOf < length) {
            char cCharAt = str.charAt(iIndexOf);
            if (z || cCharAt != '\\') {
                sb.append(cCharAt);
                z = false;
            } else {
                z = true;
            }
            iIndexOf++;
        }
        return sb.toString();
    }

    public static boolean isStringOfDigits(CharSequence charSequence, int i) {
        return charSequence != null && i == charSequence.length() && f5154b.matcher(charSequence).matches();
    }

    public static boolean isSubstringOfDigits(CharSequence charSequence, int i, int i2) {
        int i3;
        return charSequence != null && charSequence.length() >= (i3 = i2 + i) && f5154b.matcher(charSequence.subSequence(i, i3)).matches();
    }

    public static boolean isSubstringOfAlphaNumeric(CharSequence charSequence, int i, int i2) {
        int i3;
        return charSequence != null && charSequence.length() >= (i3 = i2 + i) && c.matcher(charSequence.subSequence(i, i3)).matches();
    }

    public static HashMap c(String str) {
        int iIndexOf = str.indexOf(63);
        if (iIndexOf < 0) {
            return null;
        }
        HashMap map = new HashMap(3);
        for (String str2 : d.split(str.substring(iIndexOf + 1))) {
            String[] strArrSplit = e.split(str2, 2);
            if (strArrSplit.length == 2) {
                try {
                    map.put(strArrSplit[0], URLDecoder.decode(strArrSplit[1], "UTF-8"));
                } catch (UnsupportedEncodingException e2) {
                    throw new IllegalStateException(e2);
                } catch (IllegalArgumentException unused) {
                }
            }
        }
        return map;
    }

    public static String[] a(String str, String str2, char c2, boolean z) {
        int length = str2.length();
        ArrayList arrayList = null;
        int i = 0;
        while (i < length) {
            int iIndexOf = str2.indexOf(str, i);
            if (iIndexOf < 0) {
                break;
            }
            int length2 = str.length() + iIndexOf;
            boolean z2 = true;
            ArrayList arrayList2 = arrayList;
            int length3 = length2;
            while (z2) {
                int iIndexOf2 = str2.indexOf(c2, length3);
                if (iIndexOf2 < 0) {
                    length3 = str2.length();
                } else if (str2.charAt(iIndexOf2 - 1) == '\\') {
                    length3 = iIndexOf2 + 1;
                } else {
                    if (arrayList2 == null) {
                        arrayList2 = new ArrayList(3);
                    }
                    String strUnescapeBackslash = unescapeBackslash(str2.substring(length2, iIndexOf2));
                    if (z) {
                        strUnescapeBackslash = strUnescapeBackslash.trim();
                    }
                    arrayList2.add(strUnescapeBackslash);
                    length3 = iIndexOf2 + 1;
                }
                z2 = false;
            }
            i = length3;
            arrayList = arrayList2;
        }
        if (arrayList == null || arrayList.isEmpty()) {
            return null;
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    public static String b(String str, String str2, char c2, boolean z) {
        String[] strArrA = a(str, str2, c2, z);
        if (strArrA == null) {
            return null;
        }
        return strArrA[0];
    }
}
