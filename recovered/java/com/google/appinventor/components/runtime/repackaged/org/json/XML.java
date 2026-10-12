package com.google.appinventor.components.runtime.repackaged.org.json;

import java.io.IOException;
import java.util.Iterator;
import kotlin.text.Typography;

/* loaded from: classes.dex */
public class XML {
    public static final Character AMP = new Character(Typography.amp);
    public static final Character APOS = new Character('\'');
    public static final Character BANG = new Character('!');
    public static final Character EQ = new Character('=');
    public static final Character GT = new Character(Typography.greater);
    public static final Character LT = new Character(Typography.less);
    public static final Character QUEST = new Character('?');
    public static final Character QUOT = new Character(Typography.quote);
    public static final Character SLASH = new Character('/');

    public static String escape(String str) {
        StringBuffer stringBuffer = new StringBuffer();
        int length = str.length();
        for (int i = 0; i < length; i++) {
            char cCharAt = str.charAt(i);
            if (cCharAt == '\"') {
                stringBuffer.append("&quot;");
            } else if (cCharAt == '<') {
                stringBuffer.append("&lt;");
            } else if (cCharAt == '>') {
                stringBuffer.append("&gt;");
            } else if (cCharAt == '&') {
                stringBuffer.append("&amp;");
            } else if (cCharAt == '\'') {
                stringBuffer.append("&apos;");
            } else {
                stringBuffer.append(cCharAt);
            }
        }
        return stringBuffer.toString();
    }

    public static void noSpace(String str) throws JSONException {
        int length = str.length();
        if (length == 0) {
            throw new JSONException("Empty string.");
        }
        for (int i = 0; i < length; i++) {
            if (Character.isWhitespace(str.charAt(i))) {
                StringBuffer stringBuffer = new StringBuffer("'");
                stringBuffer.append(str);
                stringBuffer.append("' contains a space character.");
                throw new JSONException(stringBuffer.toString());
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:64:0x00e9, code lost:
    
        r7 = r10.nextToken();
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x00ef, code lost:
    
        if ((r7 instanceof java.lang.String) == false) goto L119;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0101, code lost:
    
        throw r10.syntaxError("Missing value");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean parse(com.google.appinventor.components.runtime.repackaged.org.json.XMLTokener r10, com.google.appinventor.components.runtime.repackaged.org.json.JSONObject r11, java.lang.String r12) throws java.io.IOException, com.google.appinventor.components.runtime.repackaged.org.json.JSONException {
        /*
            Method dump skipped, instructions count: 392
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.appinventor.components.runtime.repackaged.org.json.XML.parse(com.google.appinventor.components.runtime.repackaged.org.json.XMLTokener, com.google.appinventor.components.runtime.repackaged.org.json.JSONObject, java.lang.String):boolean");
    }

    public static Object stringToValue(String str) {
        if ("true".equalsIgnoreCase(str)) {
            return Boolean.TRUE;
        }
        if ("false".equalsIgnoreCase(str)) {
            return Boolean.FALSE;
        }
        if ("null".equalsIgnoreCase(str)) {
            return JSONObject.NULL;
        }
        try {
            try {
                char cCharAt = str.charAt(0);
                if (cCharAt == '-' || (cCharAt >= '0' && cCharAt <= '9')) {
                    Long l = new Long(str);
                    if (l.toString().equals(str)) {
                        return l;
                    }
                }
            } catch (Exception unused) {
            }
        } catch (Exception unused2) {
            Double d = new Double(str);
            if (d.toString().equals(str)) {
                return d;
            }
        }
        return str;
    }

    public static JSONObject toJSONObject(String str) throws IOException, JSONException {
        JSONObject jSONObject = new JSONObject();
        XMLTokener xMLTokener = new XMLTokener(str);
        while (xMLTokener.more() && xMLTokener.skipPast("<")) {
            parse(xMLTokener, jSONObject, null);
        }
        return jSONObject;
    }

    public static String toString(Object obj) throws JSONException {
        return toString(obj, null);
    }

    public static String toString(Object obj, String str) throws JSONException {
        StringBuffer stringBuffer = new StringBuffer();
        if (obj instanceof JSONObject) {
            if (str != null) {
                stringBuffer.append(Typography.less);
                stringBuffer.append(str);
                stringBuffer.append(Typography.greater);
            }
            JSONObject jSONObject = (JSONObject) obj;
            Iterator itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                String string = itKeys.next().toString();
                Object objOpt = jSONObject.opt(string);
                if (objOpt == null) {
                    objOpt = "";
                }
                if (objOpt instanceof String) {
                }
                if ("content".equals(string)) {
                    if (objOpt instanceof JSONArray) {
                        JSONArray jSONArray = (JSONArray) objOpt;
                        int length = jSONArray.length();
                        for (int i = 0; i < length; i++) {
                            if (i > 0) {
                                stringBuffer.append('\n');
                            }
                            stringBuffer.append(escape(jSONArray.get(i).toString()));
                        }
                    } else {
                        stringBuffer.append(escape(objOpt.toString()));
                    }
                } else if (objOpt instanceof JSONArray) {
                    JSONArray jSONArray2 = (JSONArray) objOpt;
                    int length2 = jSONArray2.length();
                    for (int i2 = 0; i2 < length2; i2++) {
                        Object obj2 = jSONArray2.get(i2);
                        if (obj2 instanceof JSONArray) {
                            stringBuffer.append(Typography.less);
                            stringBuffer.append(string);
                            stringBuffer.append(Typography.greater);
                            stringBuffer.append(toString(obj2));
                            stringBuffer.append("</");
                            stringBuffer.append(string);
                            stringBuffer.append(Typography.greater);
                        } else {
                            stringBuffer.append(toString(obj2, string));
                        }
                    }
                } else if ("".equals(objOpt)) {
                    stringBuffer.append(Typography.less);
                    stringBuffer.append(string);
                    stringBuffer.append("/>");
                } else {
                    stringBuffer.append(toString(objOpt, string));
                }
            }
            if (str != null) {
                stringBuffer.append("</");
                stringBuffer.append(str);
                stringBuffer.append(Typography.greater);
            }
            return stringBuffer.toString();
        }
        if (obj.getClass().isArray()) {
            obj = new JSONArray(obj);
        }
        if (obj instanceof JSONArray) {
            JSONArray jSONArray3 = (JSONArray) obj;
            int length3 = jSONArray3.length();
            for (int i3 = 0; i3 < length3; i3++) {
                stringBuffer.append(toString(jSONArray3.opt(i3), str == null ? "array" : str));
            }
            return stringBuffer.toString();
        }
        String strEscape = escape(obj.toString());
        if (str == null) {
            StringBuffer stringBuffer2 = new StringBuffer("\"");
            stringBuffer2.append(strEscape);
            stringBuffer2.append("\"");
            return stringBuffer2.toString();
        }
        if (strEscape.length() == 0) {
            StringBuffer stringBuffer3 = new StringBuffer("<");
            stringBuffer3.append(str);
            stringBuffer3.append("/>");
            return stringBuffer3.toString();
        }
        StringBuffer stringBuffer4 = new StringBuffer("<");
        stringBuffer4.append(str);
        stringBuffer4.append(">");
        stringBuffer4.append(strEscape);
        stringBuffer4.append("</");
        stringBuffer4.append(str);
        stringBuffer4.append(">");
        return stringBuffer4.toString();
    }
}
