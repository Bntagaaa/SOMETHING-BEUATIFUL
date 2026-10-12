package com.google.appinventor.components.runtime.repackaged.org.json;

import java.io.IOException;
import kotlin.text.Typography;

/* loaded from: classes.dex */
public class CDL {
    private static String getValue(JSONTokener jSONTokener) throws IOException, JSONException {
        char next;
        while (true) {
            next = jSONTokener.next();
            if (next != ' ' && next != '\t') {
                break;
            }
        }
        if (next == 0) {
            return null;
        }
        if (next != '\"' && next != '\'') {
            if (next == ',') {
                jSONTokener.back();
                return "";
            }
            jSONTokener.back();
            return jSONTokener.nextTo(',');
        }
        StringBuffer stringBuffer = new StringBuffer();
        while (true) {
            char next2 = jSONTokener.next();
            if (next2 == next) {
                return stringBuffer.toString();
            }
            if (next2 == 0 || next2 == '\n' || next2 == '\r') {
                break;
            }
            stringBuffer.append(next2);
        }
        StringBuffer stringBuffer2 = new StringBuffer("Missing close quote '");
        stringBuffer2.append(next);
        stringBuffer2.append("'.");
        throw jSONTokener.syntaxError(stringBuffer2.toString());
    }

    public static JSONArray rowToJSONArray(JSONTokener jSONTokener) throws IOException, JSONException {
        JSONArray jSONArray = new JSONArray();
        while (true) {
            String value = getValue(jSONTokener);
            char next = jSONTokener.next();
            if (value == null) {
                return null;
            }
            if (jSONArray.length() == 0 && value.length() == 0 && next != ',') {
                return null;
            }
            jSONArray.put(value);
            while (next != ',') {
                if (next != ' ') {
                    if (next == '\n' || next == '\r' || next == 0) {
                        return jSONArray;
                    }
                    StringBuffer stringBuffer = new StringBuffer("Bad character '");
                    stringBuffer.append(next);
                    stringBuffer.append("' (");
                    stringBuffer.append((int) next);
                    stringBuffer.append(").");
                    throw jSONTokener.syntaxError(stringBuffer.toString());
                }
                next = jSONTokener.next();
            }
        }
    }

    public static JSONObject rowToJSONObject(JSONArray jSONArray, JSONTokener jSONTokener) throws IOException, JSONException {
        JSONArray jSONArrayRowToJSONArray = rowToJSONArray(jSONTokener);
        if (jSONArrayRowToJSONArray != null) {
            return jSONArrayRowToJSONArray.toJSONObject(jSONArray);
        }
        return null;
    }

    public static String rowToString(JSONArray jSONArray) {
        StringBuffer stringBuffer = new StringBuffer();
        for (int i = 0; i < jSONArray.length(); i++) {
            if (i > 0) {
                stringBuffer.append(',');
            }
            Object objOpt = jSONArray.opt(i);
            if (objOpt != null) {
                String string = objOpt.toString();
                if (string.length() > 0 && (string.indexOf(44) >= 0 || string.indexOf(10) >= 0 || string.indexOf(13) >= 0 || string.indexOf(0) >= 0 || string.charAt(0) == '\"')) {
                    stringBuffer.append(Typography.quote);
                    int length = string.length();
                    for (int i2 = 0; i2 < length; i2++) {
                        char cCharAt = string.charAt(i2);
                        if (cCharAt >= ' ' && cCharAt != '\"') {
                            stringBuffer.append(cCharAt);
                        }
                    }
                    stringBuffer.append(Typography.quote);
                } else {
                    stringBuffer.append(string);
                }
            }
        }
        stringBuffer.append('\n');
        return stringBuffer.toString();
    }

    public static JSONArray toJSONArray(String str) throws JSONException {
        return toJSONArray(new JSONTokener(str));
    }

    public static JSONArray toJSONArray(JSONTokener jSONTokener) throws JSONException {
        return toJSONArray(rowToJSONArray(jSONTokener), jSONTokener);
    }

    public static JSONArray toJSONArray(JSONArray jSONArray, String str) throws JSONException {
        return toJSONArray(jSONArray, new JSONTokener(str));
    }

    public static JSONArray toJSONArray(JSONArray jSONArray, JSONTokener jSONTokener) throws IOException, JSONException {
        if (jSONArray == null || jSONArray.length() == 0) {
            return null;
        }
        JSONArray jSONArray2 = new JSONArray();
        while (true) {
            JSONObject jSONObjectRowToJSONObject = rowToJSONObject(jSONArray, jSONTokener);
            if (jSONObjectRowToJSONObject == null) {
                break;
            }
            jSONArray2.put(jSONObjectRowToJSONObject);
        }
        if (jSONArray2.length() == 0) {
            return null;
        }
        return jSONArray2;
    }

    public static String toString(JSONArray jSONArray) throws JSONException {
        JSONArray jSONArrayNames;
        JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(0);
        if (jSONObjectOptJSONObject == null || (jSONArrayNames = jSONObjectOptJSONObject.names()) == null) {
            return null;
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(rowToString(jSONArrayNames));
        stringBuffer.append(toString(jSONArrayNames, jSONArray));
        return stringBuffer.toString();
    }

    public static String toString(JSONArray jSONArray, JSONArray jSONArray2) throws JSONException {
        if (jSONArray == null || jSONArray.length() == 0) {
            return null;
        }
        StringBuffer stringBuffer = new StringBuffer();
        for (int i = 0; i < jSONArray2.length(); i++) {
            JSONObject jSONObjectOptJSONObject = jSONArray2.optJSONObject(i);
            if (jSONObjectOptJSONObject != null) {
                stringBuffer.append(rowToString(jSONObjectOptJSONObject.toJSONArray(jSONArray)));
            }
        }
        return stringBuffer.toString();
    }
}
