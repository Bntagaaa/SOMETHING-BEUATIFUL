package com.google.zxing.client.result;

import com.google.zxing.Result;
import com.google.zxing.client.android.Intents;
import java.io.ByteArrayOutputStream;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public final class VCardResultParser extends ResultParser {
    public static final Pattern f = Pattern.compile("BEGIN:VCARD", 2);

    /* renamed from: g, reason: collision with root package name */
    public static final Pattern f5160g = Pattern.compile("\\d{4}-?\\d{2}-?\\d{2}");
    public static final Pattern h = Pattern.compile("\r\n[ \t]");
    public static final Pattern i = Pattern.compile("\\\\[nN]");
    public static final Pattern j = Pattern.compile("\\\\([,;\\\\])");
    public static final Pattern k = Pattern.compile("=");
    public static final Pattern l = Pattern.compile(";");
    public static final Pattern m = Pattern.compile("(?<!\\\\);+");

    @Override // com.google.zxing.client.result.ResultParser
    public AddressBookParsedResult parse(Result result) {
        CharSequence charSequence;
        int iIndexOf;
        String massagedText = ResultParser.getMassagedText(result);
        Matcher matcher = f.matcher(massagedText);
        if (!matcher.find() || matcher.start() != 0) {
            return null;
        }
        ArrayList<List> arrayListE = e("FN", massagedText, true, false);
        if (arrayListE == null && (arrayListE = e("N", massagedText, true, false)) != null) {
            for (List list : arrayListE) {
                String str = (String) list.get(0);
                String[] strArr = new String[5];
                int i2 = 0;
                int i3 = 0;
                while (i2 < 4 && (iIndexOf = str.indexOf(59, i3)) > 0) {
                    strArr[i2] = str.substring(i3, iIndexOf);
                    i2++;
                    i3 = iIndexOf + 1;
                }
                strArr[i2] = str.substring(i3);
                StringBuilder sb = new StringBuilder(100);
                f(strArr, 3, sb);
                f(strArr, 1, sb);
                f(strArr, 2, sb);
                f(strArr, 0, sb);
                f(strArr, 4, sb);
                list.set(0, sb.toString().trim());
            }
        }
        ArrayList arrayListE2 = e("TEL", massagedText, true, false);
        ArrayList arrayListE3 = e("EMAIL", massagedText, true, false);
        List listD = d("NOTE", massagedText, false, false);
        ArrayList arrayListE4 = e("ADR", massagedText, true, true);
        List listD2 = d("ORG", massagedText, true, true);
        List listD3 = d("BDAY", massagedText, true, false);
        return new AddressBookParsedResult(i(arrayListE), null, i(arrayListE2), j(arrayListE2), i(arrayListE3), j(arrayListE3), h(d("IMPP", massagedText, true, false)), h(listD), i(arrayListE4), j(arrayListE4), h(listD2), h((listD3 == null || (charSequence = (CharSequence) listD3.get(0)) == null || f5160g.matcher(charSequence).matches()) ? listD3 : null), h(d("TITLE", massagedText, true, false)), h(d("URL", massagedText, true, false)));
    }

    public static ArrayList e(String str, String str2, boolean z, boolean z2) {
        ArrayList arrayList;
        boolean z3;
        String str3;
        char c;
        int iIndexOf;
        int i2;
        String strReplaceAll;
        char cCharAt;
        int length = str2.length();
        int i3 = 0;
        int i4 = 0;
        ArrayList arrayList2 = null;
        while (i4 < length) {
            Matcher matcher = Pattern.compile("(?:^|\n)" + ((Object) str) + "(?:;([^:]*))?:", 2).matcher(str2);
            if (i4 > 0) {
                i4--;
            }
            if (!matcher.find(i4)) {
                break;
            }
            int iEnd = matcher.end(i3);
            String strGroup = matcher.group(1);
            if (strGroup != null) {
                String[] strArrSplit = l.split(strGroup);
                int length2 = strArrSplit.length;
                int i5 = 0;
                arrayList = null;
                z3 = false;
                str3 = null;
                while (i5 < length2) {
                    String str4 = strArrSplit[i5];
                    if (arrayList == null) {
                        arrayList = new ArrayList(1);
                    }
                    arrayList.add(str4);
                    String[] strArrSplit2 = k.split(str4, 2);
                    if (strArrSplit2.length > 1) {
                        String str5 = strArrSplit2[i3];
                        String str6 = strArrSplit2[1];
                        if ("ENCODING".equalsIgnoreCase(str5) && "QUOTED-PRINTABLE".equalsIgnoreCase(str6)) {
                            z3 = true;
                        } else if ("CHARSET".equalsIgnoreCase(str5)) {
                            str3 = str6;
                        }
                    }
                    i5++;
                    i3 = 0;
                }
            } else {
                arrayList = null;
                z3 = false;
                str3 = null;
            }
            int i6 = iEnd;
            while (true) {
                c = '\n';
                iIndexOf = str2.indexOf(10, i6);
                if (iIndexOf < 0) {
                    break;
                }
                if (iIndexOf < str2.length() - 1) {
                    int i7 = iIndexOf + 1;
                    if (str2.charAt(i7) == ' ' || str2.charAt(i7) == '\t') {
                        i6 = iIndexOf + 2;
                    }
                }
                if (!z3 || ((iIndexOf < 1 || str2.charAt(iIndexOf - 1) != '=') && (iIndexOf < 2 || str2.charAt(iIndexOf - 2) != '='))) {
                    break;
                }
                i6 = iIndexOf + 1;
            }
            if (iIndexOf < 0) {
                i2 = length;
            } else if (iIndexOf <= iEnd) {
                i2 = iIndexOf + 1;
            } else {
                if (arrayList2 == null) {
                    arrayList2 = new ArrayList(1);
                }
                if (iIndexOf >= 1 && str2.charAt(iIndexOf - 1) == '\r') {
                    iIndexOf--;
                }
                String strSubstring = str2.substring(iEnd, iIndexOf);
                if (z) {
                    strSubstring = strSubstring.trim();
                }
                Pattern pattern = m;
                if (!z3) {
                    if (z2) {
                        strSubstring = pattern.matcher(strSubstring).replaceAll("\n").trim();
                    }
                    strReplaceAll = j.matcher(i.matcher(h.matcher(strSubstring).replaceAll("")).replaceAll("\n")).replaceAll("$1");
                } else {
                    int length3 = strSubstring.length();
                    StringBuilder sb = new StringBuilder(length3);
                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                    int i8 = 0;
                    while (i8 < length3) {
                        char cCharAt2 = strSubstring.charAt(i8);
                        if (cCharAt2 != c) {
                            if (cCharAt2 == '\r') {
                                c = '\n';
                            } else {
                                if (cCharAt2 != '=') {
                                    g(byteArrayOutputStream, str3, sb);
                                    sb.append(cCharAt2);
                                } else if (i8 < length3 - 2 && (cCharAt = strSubstring.charAt(i8 + 1)) != '\r') {
                                    c = '\n';
                                    if (cCharAt != '\n') {
                                        i8 += 2;
                                        char cCharAt3 = strSubstring.charAt(i8);
                                        int hexDigit = ResultParser.parseHexDigit(cCharAt);
                                        int hexDigit2 = ResultParser.parseHexDigit(cCharAt3);
                                        if (hexDigit >= 0 && hexDigit2 >= 0) {
                                            byteArrayOutputStream.write((hexDigit << 4) + hexDigit2);
                                        }
                                    }
                                }
                                c = '\n';
                            }
                        }
                        i8++;
                    }
                    g(byteArrayOutputStream, str3, sb);
                    strReplaceAll = sb.toString();
                    if (z2) {
                        strReplaceAll = pattern.matcher(strReplaceAll).replaceAll("\n").trim();
                    }
                }
                if (arrayList == null) {
                    ArrayList arrayList3 = new ArrayList(1);
                    arrayList3.add(strReplaceAll);
                    arrayList2.add(arrayList3);
                    i2 = iIndexOf + 1;
                } else {
                    arrayList.add(0, strReplaceAll);
                    arrayList2.add(arrayList);
                    i2 = iIndexOf + 1;
                }
            }
            i4 = i2;
            i3 = 0;
        }
        return arrayList2;
    }

    public static void g(ByteArrayOutputStream byteArrayOutputStream, String str, StringBuilder sb) {
        String str2;
        if (byteArrayOutputStream.size() > 0) {
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            if (str == null) {
                str2 = new String(byteArray);
            } else {
                try {
                    str2 = new String(byteArray, str);
                } catch (UnsupportedEncodingException unused) {
                    str2 = new String(byteArray);
                }
            }
            byteArrayOutputStream.reset();
            sb.append(str2);
        }
    }

    public static List d(String str, String str2, boolean z, boolean z2) {
        ArrayList arrayListE = e(str, str2, z, z2);
        if (arrayListE == null || arrayListE.isEmpty()) {
            return null;
        }
        return (List) arrayListE.get(0);
    }

    public static String h(List list) {
        if (list == null || list.isEmpty()) {
            return null;
        }
        return (String) list.get(0);
    }

    public static String[] i(ArrayList arrayList) {
        if (arrayList == null || arrayList.isEmpty()) {
            return null;
        }
        ArrayList arrayList2 = new ArrayList(arrayList.size());
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            arrayList2.add(((List) it.next()).get(0));
        }
        return (String[]) arrayList2.toArray(new String[arrayList.size()]);
    }

    public static String[] j(ArrayList arrayList) {
        String strSubstring;
        if (arrayList == null || arrayList.isEmpty()) {
            return null;
        }
        ArrayList arrayList2 = new ArrayList(arrayList.size());
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            List list = (List) it.next();
            int i2 = 1;
            while (true) {
                if (i2 >= list.size()) {
                    strSubstring = null;
                    break;
                }
                strSubstring = (String) list.get(i2);
                int iIndexOf = strSubstring.indexOf(61);
                if (iIndexOf >= 0) {
                    if (Intents.WifiConnect.TYPE.equalsIgnoreCase(strSubstring.substring(0, iIndexOf))) {
                        strSubstring = strSubstring.substring(iIndexOf + 1);
                        break;
                    }
                    i2++;
                }
            }
            arrayList2.add(strSubstring);
        }
        return (String[]) arrayList2.toArray(new String[arrayList.size()]);
    }

    public static void f(String[] strArr, int i2, StringBuilder sb) {
        if (strArr[i2] != null) {
            sb.append(' ');
            sb.append(strArr[i2]);
        }
    }
}
