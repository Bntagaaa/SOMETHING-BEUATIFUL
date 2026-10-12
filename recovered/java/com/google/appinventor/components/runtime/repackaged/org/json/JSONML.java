package com.google.appinventor.components.runtime.repackaged.org.json;

import java.util.Iterator;
import kotlin.text.Typography;

/* loaded from: classes.dex */
public class JSONML {
    /* JADX WARN: Code restructure failed: missing block: B:111:0x0177, code lost:
    
        throw r9.syntaxError("Reserved attribute.");
     */
    /* JADX WARN: Code restructure failed: missing block: B:114:0x0180, code lost:
    
        r7 = r9.nextToken();
     */
    /* JADX WARN: Code restructure failed: missing block: B:115:0x0186, code lost:
    
        if ((r7 instanceof java.lang.String) == false) goto L155;
     */
    /* JADX WARN: Code restructure failed: missing block: B:118:0x0199, code lost:
    
        throw r9.syntaxError("Missing value");
     */
    /* JADX WARN: Removed duplicated region for block: B:97:0x0137 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0138 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.lang.Object parse(com.google.appinventor.components.runtime.repackaged.org.json.XMLTokener r9, boolean r10, com.google.appinventor.components.runtime.repackaged.org.json.JSONArray r11) throws java.io.IOException, com.google.appinventor.components.runtime.repackaged.org.json.JSONException {
        /*
            Method dump skipped, instructions count: 469
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.appinventor.components.runtime.repackaged.org.json.JSONML.parse(com.google.appinventor.components.runtime.repackaged.org.json.XMLTokener, boolean, com.google.appinventor.components.runtime.repackaged.org.json.JSONArray):java.lang.Object");
    }

    public static JSONArray toJSONArray(String str) throws JSONException {
        return toJSONArray(new XMLTokener(str));
    }

    public static JSONArray toJSONArray(XMLTokener xMLTokener) throws JSONException {
        return (JSONArray) parse(xMLTokener, true, null);
    }

    public static JSONObject toJSONObject(XMLTokener xMLTokener) throws JSONException {
        return (JSONObject) parse(xMLTokener, false, null);
    }

    public static JSONObject toJSONObject(String str) throws JSONException {
        return toJSONObject(new XMLTokener(str));
    }

    public static String toString(JSONArray jSONArray) throws JSONException {
        int i;
        StringBuffer stringBuffer = new StringBuffer("<");
        String string = jSONArray.getString(0);
        XML.noSpace(string);
        String strEscape = XML.escape(string);
        stringBuffer.append(strEscape);
        Object objOpt = jSONArray.opt(1);
        if (objOpt instanceof JSONObject) {
            JSONObject jSONObject = (JSONObject) objOpt;
            Iterator itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                String string2 = itKeys.next().toString();
                XML.noSpace(string2);
                String strOptString = jSONObject.optString(string2);
                if (strOptString != null) {
                    stringBuffer.append(' ');
                    stringBuffer.append(XML.escape(string2));
                    stringBuffer.append("=\"");
                    stringBuffer.append(XML.escape(strOptString));
                    stringBuffer.append(Typography.quote);
                }
            }
            i = 2;
        } else {
            i = 1;
        }
        int length = jSONArray.length();
        if (i >= length) {
            stringBuffer.append("/>");
        } else {
            stringBuffer.append(Typography.greater);
            do {
                Object obj = jSONArray.get(i);
                i++;
                if (obj != null) {
                    if (obj instanceof String) {
                        stringBuffer.append(XML.escape(obj.toString()));
                    } else if (obj instanceof JSONObject) {
                        stringBuffer.append(toString((JSONObject) obj));
                    } else if (obj instanceof JSONArray) {
                        stringBuffer.append(toString((JSONArray) obj));
                    }
                }
            } while (i < length);
            stringBuffer.append("</");
            stringBuffer.append(strEscape);
            stringBuffer.append(Typography.greater);
        }
        return stringBuffer.toString();
    }

    public static String toString(JSONObject jSONObject) throws JSONException {
        StringBuffer stringBuffer = new StringBuffer();
        String strOptString = jSONObject.optString("tagName");
        if (strOptString == null) {
            return XML.escape(jSONObject.toString());
        }
        XML.noSpace(strOptString);
        String strEscape = XML.escape(strOptString);
        stringBuffer.append(Typography.less);
        stringBuffer.append(strEscape);
        Iterator itKeys = jSONObject.keys();
        while (itKeys.hasNext()) {
            String string = itKeys.next().toString();
            if (!"tagName".equals(string) && !"childNodes".equals(string)) {
                XML.noSpace(string);
                String strOptString2 = jSONObject.optString(string);
                if (strOptString2 != null) {
                    stringBuffer.append(' ');
                    stringBuffer.append(XML.escape(string));
                    stringBuffer.append("=\"");
                    stringBuffer.append(XML.escape(strOptString2));
                    stringBuffer.append(Typography.quote);
                }
            }
        }
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("childNodes");
        if (jSONArrayOptJSONArray == null) {
            stringBuffer.append("/>");
        } else {
            stringBuffer.append(Typography.greater);
            int length = jSONArrayOptJSONArray.length();
            for (int i = 0; i < length; i++) {
                Object obj = jSONArrayOptJSONArray.get(i);
                if (obj != null) {
                    if (obj instanceof String) {
                        stringBuffer.append(XML.escape(obj.toString()));
                    } else if (obj instanceof JSONObject) {
                        stringBuffer.append(toString((JSONObject) obj));
                    } else if (obj instanceof JSONArray) {
                        stringBuffer.append(toString((JSONArray) obj));
                    } else {
                        stringBuffer.append(obj.toString());
                    }
                }
            }
            stringBuffer.append("</");
            stringBuffer.append(strEscape);
            stringBuffer.append(Typography.greater);
        }
        return stringBuffer.toString();
    }
}
