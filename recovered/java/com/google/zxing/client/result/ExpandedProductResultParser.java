package com.google.zxing.client.result;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.Result;
import java.util.HashMap;

/* loaded from: classes.dex */
public final class ExpandedProductResultParser extends ResultParser {
    @Override // com.google.zxing.client.result.ResultParser
    public ExpandedProductParsedResult parse(Result result) {
        String massagedText;
        String str;
        if (result.getBarcodeFormat() != BarcodeFormat.RSS_EXPANDED || (massagedText = ResultParser.getMassagedText(result)) == null) {
            return null;
        }
        HashMap map = new HashMap();
        String str2 = null;
        String str3 = null;
        String str4 = null;
        String str5 = null;
        String str6 = null;
        String str7 = null;
        String str8 = null;
        String str9 = null;
        String str10 = null;
        String strSubstring = null;
        String strSubstring2 = null;
        String strSubstring3 = null;
        String strSubstring4 = null;
        int length = 0;
        while (length < massagedText.length()) {
            String strD = d(length, massagedText);
            if (strD == null) {
                return null;
            }
            int length2 = strD.length() + 2 + length;
            StringBuilder sb = new StringBuilder();
            String str11 = str2;
            String strSubstring5 = massagedText.substring(length2);
            String str12 = massagedText;
            int i = 0;
            while (true) {
                if (i >= strSubstring5.length()) {
                    str = str3;
                    break;
                }
                char cCharAt = strSubstring5.charAt(i);
                str = str3;
                if (cCharAt == '(') {
                    if (d(i, strSubstring5) != null) {
                        break;
                    }
                    sb.append('(');
                } else {
                    sb.append(cCharAt);
                }
                i++;
                str3 = str;
            }
            String string = sb.toString();
            length = string.length() + length2;
            if ("00".equals(strD)) {
                str3 = string;
                str2 = str11;
            } else {
                if ("01".equals(strD)) {
                    str2 = string;
                } else {
                    if ("10".equals(strD)) {
                        str4 = string;
                    } else if ("11".equals(strD)) {
                        str5 = string;
                    } else if ("13".equals(strD)) {
                        str6 = string;
                    } else if ("15".equals(strD)) {
                        str7 = string;
                    } else if ("17".equals(strD)) {
                        str8 = string;
                    } else {
                        if ("3100".equals(strD) || "3101".equals(strD) || "3102".equals(strD) || "3103".equals(strD) || "3104".equals(strD) || "3105".equals(strD) || "3106".equals(strD) || "3107".equals(strD) || "3108".equals(strD) || "3109".equals(strD)) {
                            strSubstring = strD.substring(3);
                            str10 = ExpandedProductParsedResult.KILOGRAM;
                        } else if ("3200".equals(strD) || "3201".equals(strD) || "3202".equals(strD) || "3203".equals(strD) || "3204".equals(strD) || "3205".equals(strD) || "3206".equals(strD) || "3207".equals(strD) || "3208".equals(strD) || "3209".equals(strD)) {
                            strSubstring = strD.substring(3);
                            str10 = ExpandedProductParsedResult.POUND;
                        } else {
                            if ("3920".equals(strD) || "3921".equals(strD) || "3922".equals(strD) || "3923".equals(strD)) {
                                strSubstring3 = strD.substring(3);
                                strSubstring2 = string;
                            } else if ("3930".equals(strD) || "3931".equals(strD) || "3932".equals(strD) || "3933".equals(strD)) {
                                if (string.length() < 4) {
                                    return null;
                                }
                                strSubstring2 = string.substring(3);
                                strSubstring4 = string.substring(0, 3);
                                strSubstring3 = strD.substring(3);
                            } else {
                                map.put(strD, string);
                            }
                            str2 = str11;
                            str3 = str;
                            massagedText = str12;
                        }
                        str9 = string;
                        str2 = str11;
                        str3 = str;
                        massagedText = str12;
                    }
                    str2 = str11;
                }
                str3 = str;
            }
            massagedText = str12;
        }
        return new ExpandedProductParsedResult(str2, str3, str4, str5, str6, str7, str8, str9, str10, strSubstring, strSubstring2, strSubstring3, strSubstring4, map);
    }

    public static String d(int i, String str) {
        StringBuilder sb = new StringBuilder();
        if (str.charAt(i) != '(') {
            return null;
        }
        String strSubstring = str.substring(i + 1);
        for (int i2 = 0; i2 < strSubstring.length(); i2++) {
            char cCharAt = strSubstring.charAt(i2);
            if (cCharAt == ')') {
                return sb.toString();
            }
            if (cCharAt < '0' || cCharAt > '9') {
                return null;
            }
            sb.append(cCharAt);
        }
        return sb.toString();
    }
}
