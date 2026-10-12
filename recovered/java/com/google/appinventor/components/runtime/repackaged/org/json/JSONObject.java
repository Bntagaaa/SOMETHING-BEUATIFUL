package com.google.appinventor.components.runtime.repackaged.org.json;

import java.io.IOException;
import java.io.StringWriter;
import java.io.Writer;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.Collection;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.ResourceBundle;
import java.util.Set;

/* loaded from: classes.dex */
public class JSONObject {
    public static final Object NULL = new Null();
    private final Map map;

    public static final class Null {
        public final Object clone() {
            return this;
        }

        public boolean equals(Object obj) {
            return obj == null || obj == this;
        }

        private Null() {
        }

        public String toString() {
            return "null";
        }
    }

    public JSONObject() {
        this.map = new HashMap();
    }

    public JSONObject(JSONObject jSONObject, String[] strArr) {
        this();
        for (String str : strArr) {
            try {
                putOnce(str, jSONObject.opt(str));
            } catch (Exception unused) {
            }
        }
    }

    public JSONObject(JSONTokener jSONTokener) throws JSONException {
        this();
        if (jSONTokener.nextClean() != '{') {
            throw jSONTokener.syntaxError("A JSONObject text must begin with '{'");
        }
        while (true) {
            char cNextClean = jSONTokener.nextClean();
            if (cNextClean == 0) {
                throw jSONTokener.syntaxError("A JSONObject text must end with '}'");
            }
            if (cNextClean == '}') {
                return;
            }
            jSONTokener.back();
            String string = jSONTokener.nextValue().toString();
            if (jSONTokener.nextClean() != ':') {
                throw jSONTokener.syntaxError("Expected a ':' after a key");
            }
            putOnce(string, jSONTokener.nextValue());
            char cNextClean2 = jSONTokener.nextClean();
            if (cNextClean2 != ',' && cNextClean2 != ';') {
                if (cNextClean2 != '}') {
                    throw jSONTokener.syntaxError("Expected a ',' or '}'");
                }
                return;
            } else if (jSONTokener.nextClean() == '}') {
                return;
            } else {
                jSONTokener.back();
            }
        }
    }

    public JSONObject(Map map) {
        this.map = new HashMap();
        if (map != null) {
            for (Map.Entry entry : map.entrySet()) {
                Object value = entry.getValue();
                if (value != null) {
                    this.map.put(entry.getKey(), wrap(value));
                }
            }
        }
    }

    public JSONObject(Object obj) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        this();
        populateMap(obj);
    }

    public JSONObject(Object obj, String[] strArr) {
        this();
        Class<?> cls = obj.getClass();
        for (String str : strArr) {
            try {
                putOpt(str, cls.getField(str).get(obj));
            } catch (Exception unused) {
            }
        }
    }

    public JSONObject(String str) throws JSONException {
        this(new JSONTokener(str));
    }

    public JSONObject(String str, Locale locale) throws JSONException {
        this();
        ResourceBundle bundle = ResourceBundle.getBundle(str, locale, Thread.currentThread().getContextClassLoader());
        Enumeration<String> keys = bundle.getKeys();
        while (keys.hasMoreElements()) {
            String strNextElement = keys.nextElement();
            if (strNextElement instanceof String) {
                String str2 = strNextElement;
                String[] strArrSplit = str2.split("\\.");
                int length = strArrSplit.length - 1;
                JSONObject jSONObject = this;
                for (int i = 0; i < length; i++) {
                    String str3 = strArrSplit[i];
                    JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(str3);
                    if (jSONObjectOptJSONObject == null) {
                        jSONObjectOptJSONObject = new JSONObject();
                        jSONObject.put(str3, jSONObjectOptJSONObject);
                    }
                    jSONObject = jSONObjectOptJSONObject;
                }
                jSONObject.put(strArrSplit[length], bundle.getString(str2));
            }
        }
    }

    public JSONObject accumulate(String str, Object obj) throws JSONException {
        testValidity(obj);
        Object objOpt = opt(str);
        if (objOpt == null) {
            if (obj instanceof JSONArray) {
                obj = new JSONArray().put(obj);
            }
            put(str, obj);
            return this;
        }
        if (objOpt instanceof JSONArray) {
            ((JSONArray) objOpt).put(obj);
            return this;
        }
        put(str, new JSONArray().put(objOpt).put(obj));
        return this;
    }

    public JSONObject append(String str, Object obj) throws JSONException {
        testValidity(obj);
        Object objOpt = opt(str);
        if (objOpt == null) {
            put(str, new JSONArray().put(obj));
            return this;
        }
        if (objOpt instanceof JSONArray) {
            put(str, ((JSONArray) objOpt).put(obj));
            return this;
        }
        StringBuffer stringBuffer = new StringBuffer("JSONObject[");
        stringBuffer.append(str);
        stringBuffer.append("] is not a JSONArray.");
        throw new JSONException(stringBuffer.toString());
    }

    public static String doubleToString(double d) {
        if (Double.isInfinite(d) || Double.isNaN(d)) {
            return "null";
        }
        String string = Double.toString(d);
        if (string.indexOf(46) <= 0 || string.indexOf(101) >= 0 || string.indexOf(69) >= 0) {
            return string;
        }
        while (string.endsWith("0")) {
            string = string.substring(0, string.length() - 1);
        }
        return string.endsWith(".") ? string.substring(0, string.length() - 1) : string;
    }

    public Object get(String str) throws JSONException {
        if (str == null) {
            throw new JSONException("Null key.");
        }
        Object objOpt = opt(str);
        if (objOpt != null) {
            return objOpt;
        }
        StringBuffer stringBuffer = new StringBuffer("JSONObject[");
        stringBuffer.append(quote(str));
        stringBuffer.append("] not found.");
        throw new JSONException(stringBuffer.toString());
    }

    public boolean getBoolean(String str) throws JSONException {
        Object obj = get(str);
        if (obj.equals(Boolean.FALSE)) {
            return false;
        }
        boolean z = obj instanceof String;
        if (z && ((String) obj).equalsIgnoreCase("false")) {
            return false;
        }
        if (obj.equals(Boolean.TRUE)) {
            return true;
        }
        if (z && ((String) obj).equalsIgnoreCase("true")) {
            return true;
        }
        StringBuffer stringBuffer = new StringBuffer("JSONObject[");
        stringBuffer.append(quote(str));
        stringBuffer.append("] is not a Boolean.");
        throw new JSONException(stringBuffer.toString());
    }

    public double getDouble(String str) throws JSONException {
        Object obj = get(str);
        try {
            return obj instanceof Number ? ((Number) obj).doubleValue() : Double.parseDouble((String) obj);
        } catch (Exception unused) {
            StringBuffer stringBuffer = new StringBuffer("JSONObject[");
            stringBuffer.append(quote(str));
            stringBuffer.append("] is not a number.");
            throw new JSONException(stringBuffer.toString());
        }
    }

    public int getInt(String str) throws JSONException {
        Object obj = get(str);
        try {
            return obj instanceof Number ? ((Number) obj).intValue() : Integer.parseInt((String) obj);
        } catch (Exception unused) {
            StringBuffer stringBuffer = new StringBuffer("JSONObject[");
            stringBuffer.append(quote(str));
            stringBuffer.append("] is not an int.");
            throw new JSONException(stringBuffer.toString());
        }
    }

    public JSONArray getJSONArray(String str) throws JSONException {
        Object obj = get(str);
        if (obj instanceof JSONArray) {
            return (JSONArray) obj;
        }
        StringBuffer stringBuffer = new StringBuffer("JSONObject[");
        stringBuffer.append(quote(str));
        stringBuffer.append("] is not a JSONArray.");
        throw new JSONException(stringBuffer.toString());
    }

    public JSONObject getJSONObject(String str) throws JSONException {
        Object obj = get(str);
        if (obj instanceof JSONObject) {
            return (JSONObject) obj;
        }
        StringBuffer stringBuffer = new StringBuffer("JSONObject[");
        stringBuffer.append(quote(str));
        stringBuffer.append("] is not a JSONObject.");
        throw new JSONException(stringBuffer.toString());
    }

    public long getLong(String str) throws JSONException {
        Object obj = get(str);
        try {
            return obj instanceof Number ? ((Number) obj).longValue() : Long.parseLong((String) obj);
        } catch (Exception unused) {
            StringBuffer stringBuffer = new StringBuffer("JSONObject[");
            stringBuffer.append(quote(str));
            stringBuffer.append("] is not a long.");
            throw new JSONException(stringBuffer.toString());
        }
    }

    public static String[] getNames(JSONObject jSONObject) {
        int length = jSONObject.length();
        if (length == 0) {
            return null;
        }
        Iterator itKeys = jSONObject.keys();
        String[] strArr = new String[length];
        int i = 0;
        while (itKeys.hasNext()) {
            strArr[i] = (String) itKeys.next();
            i++;
        }
        return strArr;
    }

    public static String[] getNames(Object obj) {
        Field[] fields;
        int length;
        if (obj == null || (length = (fields = obj.getClass().getFields()).length) == 0) {
            return null;
        }
        String[] strArr = new String[length];
        for (int i = 0; i < length; i++) {
            strArr[i] = fields[i].getName();
        }
        return strArr;
    }

    public String getString(String str) throws JSONException {
        Object obj = get(str);
        if (obj instanceof String) {
            return (String) obj;
        }
        StringBuffer stringBuffer = new StringBuffer("JSONObject[");
        stringBuffer.append(quote(str));
        stringBuffer.append("] not a string.");
        throw new JSONException(stringBuffer.toString());
    }

    public boolean has(String str) {
        return this.map.containsKey(str);
    }

    public JSONObject increment(String str) throws JSONException {
        Object objOpt = opt(str);
        if (objOpt == null) {
            put(str, 1);
            return this;
        }
        if (objOpt instanceof Integer) {
            put(str, ((Integer) objOpt).intValue() + 1);
            return this;
        }
        if (objOpt instanceof Long) {
            put(str, ((Long) objOpt).longValue() + 1);
            return this;
        }
        if (objOpt instanceof Double) {
            put(str, ((Double) objOpt).doubleValue() + 1.0d);
            return this;
        }
        if (objOpt instanceof Float) {
            put(str, ((Float) objOpt).floatValue() + 1.0f);
            return this;
        }
        StringBuffer stringBuffer = new StringBuffer("Unable to increment [");
        stringBuffer.append(quote(str));
        stringBuffer.append("].");
        throw new JSONException(stringBuffer.toString());
    }

    public boolean isNull(String str) {
        return NULL.equals(opt(str));
    }

    public Iterator keys() {
        return keySet().iterator();
    }

    public Set keySet() {
        return this.map.keySet();
    }

    public int length() {
        return this.map.size();
    }

    public JSONArray names() {
        JSONArray jSONArray = new JSONArray();
        Iterator itKeys = keys();
        while (itKeys.hasNext()) {
            jSONArray.put(itKeys.next());
        }
        if (jSONArray.length() == 0) {
            return null;
        }
        return jSONArray;
    }

    public static String numberToString(Number number) throws JSONException {
        if (number == null) {
            throw new JSONException("Null pointer");
        }
        testValidity(number);
        String string = number.toString();
        if (string.indexOf(46) <= 0 || string.indexOf(101) >= 0 || string.indexOf(69) >= 0) {
            return string;
        }
        while (string.endsWith("0")) {
            string = string.substring(0, string.length() - 1);
        }
        return string.endsWith(".") ? string.substring(0, string.length() - 1) : string;
    }

    public Object opt(String str) {
        if (str == null) {
            return null;
        }
        return this.map.get(str);
    }

    public boolean optBoolean(String str) {
        return optBoolean(str, false);
    }

    public boolean optBoolean(String str, boolean z) {
        try {
            return getBoolean(str);
        } catch (Exception unused) {
            return z;
        }
    }

    public double optDouble(String str) {
        return optDouble(str, Double.NaN);
    }

    public double optDouble(String str, double d) {
        try {
            return getDouble(str);
        } catch (Exception unused) {
            return d;
        }
    }

    public int optInt(String str) {
        return optInt(str, 0);
    }

    public int optInt(String str, int i) {
        try {
            return getInt(str);
        } catch (Exception unused) {
            return i;
        }
    }

    public JSONArray optJSONArray(String str) {
        Object objOpt = opt(str);
        if (objOpt instanceof JSONArray) {
            return (JSONArray) objOpt;
        }
        return null;
    }

    public JSONObject optJSONObject(String str) {
        Object objOpt = opt(str);
        if (objOpt instanceof JSONObject) {
            return (JSONObject) objOpt;
        }
        return null;
    }

    public long optLong(String str) {
        return optLong(str, 0L);
    }

    public long optLong(String str, long j) {
        try {
            return getLong(str);
        } catch (Exception unused) {
            return j;
        }
    }

    public String optString(String str) {
        return optString(str, "");
    }

    public String optString(String str, String str2) {
        Object objOpt = opt(str);
        return NULL.equals(objOpt) ? str2 : objOpt.toString();
    }

    private void populateMap(Object obj) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        Class<?> cls = obj.getClass();
        for (Method method : cls.getClassLoader() != null ? cls.getMethods() : cls.getDeclaredMethods()) {
            try {
                if (Modifier.isPublic(method.getModifiers())) {
                    String name = method.getName();
                    String strSubstring = "";
                    if (name.startsWith("get")) {
                        if (!"getClass".equals(name) && !"getDeclaringClass".equals(name)) {
                            strSubstring = name.substring(3);
                        }
                    } else if (name.startsWith("is")) {
                        strSubstring = name.substring(2);
                    }
                    if (strSubstring.length() > 0 && Character.isUpperCase(strSubstring.charAt(0)) && method.getParameterTypes().length == 0) {
                        if (strSubstring.length() == 1) {
                            strSubstring = strSubstring.toLowerCase();
                        } else if (!Character.isUpperCase(strSubstring.charAt(1))) {
                            StringBuffer stringBuffer = new StringBuffer();
                            stringBuffer.append(strSubstring.substring(0, 1).toLowerCase());
                            stringBuffer.append(strSubstring.substring(1));
                            strSubstring = stringBuffer.toString();
                        }
                        Object objInvoke = method.invoke(obj, null);
                        if (objInvoke != null) {
                            this.map.put(strSubstring, wrap(objInvoke));
                        }
                    }
                }
            } catch (Exception unused) {
            }
        }
    }

    public JSONObject put(String str, boolean z) throws JSONException {
        put(str, z ? Boolean.TRUE : Boolean.FALSE);
        return this;
    }

    public JSONObject put(String str, Collection collection) throws JSONException {
        put(str, new JSONArray(collection));
        return this;
    }

    public JSONObject put(String str, double d) throws JSONException {
        put(str, new Double(d));
        return this;
    }

    public JSONObject put(String str, int i) throws JSONException {
        put(str, new Integer(i));
        return this;
    }

    public JSONObject put(String str, long j) throws JSONException {
        put(str, new Long(j));
        return this;
    }

    public JSONObject put(String str, Map map) throws JSONException {
        put(str, new JSONObject(map));
        return this;
    }

    public JSONObject put(String str, Object obj) throws JSONException {
        if (str == null) {
            throw new NullPointerException("Null key.");
        }
        if (obj != null) {
            testValidity(obj);
            this.map.put(str, obj);
            return this;
        }
        remove(str);
        return this;
    }

    public JSONObject putOnce(String str, Object obj) throws JSONException {
        if (str == null || obj == null) {
            return this;
        }
        if (opt(str) != null) {
            StringBuffer stringBuffer = new StringBuffer("Duplicate key \"");
            stringBuffer.append(str);
            stringBuffer.append("\"");
            throw new JSONException(stringBuffer.toString());
        }
        put(str, obj);
        return this;
    }

    public JSONObject putOpt(String str, Object obj) throws JSONException {
        if (str != null && obj != null) {
            put(str, obj);
        }
        return this;
    }

    public static String quote(String str) {
        String string;
        StringWriter stringWriter = new StringWriter();
        synchronized (stringWriter.getBuffer()) {
            try {
                try {
                    string = quote(str, stringWriter).toString();
                } catch (IOException unused) {
                    return "";
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return string;
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x007f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.io.Writer quote(java.lang.String r8, java.io.Writer r9) throws java.io.IOException {
        /*
            if (r8 == 0) goto L99
            int r0 = r8.length()
            if (r0 != 0) goto La
            goto L99
        La:
            int r0 = r8.length()
            r1 = 34
            r9.write(r1)
            r2 = 0
            r3 = 0
            r4 = 0
        L16:
            if (r3 >= r0) goto L95
            char r5 = r8.charAt(r3)
            r6 = 12
            if (r5 == r6) goto L8c
            r6 = 13
            if (r5 == r6) goto L86
            r6 = 92
            if (r5 == r1) goto L7f
            r7 = 47
            if (r5 == r7) goto L74
            if (r5 == r6) goto L7f
            switch(r5) {
                case 8: goto L6e;
                case 9: goto L68;
                case 10: goto L62;
                default: goto L31;
            }
        L31:
            r4 = 32
            if (r5 < r4) goto L4a
            r4 = 128(0x80, float:1.8E-43)
            if (r5 < r4) goto L3d
            r4 = 160(0xa0, float:2.24E-43)
            if (r5 < r4) goto L4a
        L3d:
            r4 = 8192(0x2000, float:1.148E-41)
            if (r5 < r4) goto L46
            r4 = 8448(0x2100, float:1.1838E-41)
            if (r5 >= r4) goto L46
            goto L4a
        L46:
            r9.write(r5)
            goto L91
        L4a:
            java.lang.String r4 = "\\u"
            r9.write(r4)
            java.lang.String r4 = java.lang.Integer.toHexString(r5)
            int r6 = r4.length()
            int r6 = 4 - r6
            java.lang.String r7 = "0000"
            r9.write(r7, r2, r6)
            r9.write(r4)
            goto L91
        L62:
            java.lang.String r4 = "\\n"
            r9.write(r4)
            goto L91
        L68:
            java.lang.String r4 = "\\t"
            r9.write(r4)
            goto L91
        L6e:
            java.lang.String r4 = "\\b"
            r9.write(r4)
            goto L91
        L74:
            r7 = 60
            if (r4 != r7) goto L7b
            r9.write(r6)
        L7b:
            r9.write(r5)
            goto L91
        L7f:
            r9.write(r6)
            r9.write(r5)
            goto L91
        L86:
            java.lang.String r4 = "\\r"
            r9.write(r4)
            goto L91
        L8c:
            java.lang.String r4 = "\\f"
            r9.write(r4)
        L91:
            int r3 = r3 + 1
            r4 = r5
            goto L16
        L95:
            r9.write(r1)
            return r9
        L99:
            java.lang.String r8 = "\"\""
            r9.write(r8)
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.appinventor.components.runtime.repackaged.org.json.JSONObject.quote(java.lang.String, java.io.Writer):java.io.Writer");
    }

    public Object remove(String str) {
        return this.map.remove(str);
    }

    public static Object stringToValue(String str) throws NumberFormatException {
        if (!str.equals("")) {
            if (str.equalsIgnoreCase("true")) {
                return Boolean.TRUE;
            }
            if (str.equalsIgnoreCase("false")) {
                return Boolean.FALSE;
            }
            if (str.equalsIgnoreCase("null")) {
                return NULL;
            }
            char cCharAt = str.charAt(0);
            if ((cCharAt >= '0' && cCharAt <= '9') || cCharAt == '-') {
                try {
                    if (str.indexOf(46) > -1 || str.indexOf(101) > -1 || str.indexOf(69) > -1) {
                        Double dValueOf = Double.valueOf(str);
                        if (!dValueOf.isInfinite() && !dValueOf.isNaN()) {
                            return dValueOf;
                        }
                    } else {
                        Long l = new Long(str);
                        if (str.equals(l.toString())) {
                            return l.longValue() == ((long) l.intValue()) ? new Integer(l.intValue()) : l;
                        }
                    }
                } catch (Exception unused) {
                }
            }
        }
        return str;
    }

    public static void testValidity(Object obj) throws JSONException {
        if (obj != null) {
            if (obj instanceof Double) {
                Double d = (Double) obj;
                if (d.isInfinite() || d.isNaN()) {
                    throw new JSONException("JSON does not allow non-finite numbers.");
                }
                return;
            }
            if (obj instanceof Float) {
                Float f = (Float) obj;
                if (f.isInfinite() || f.isNaN()) {
                    throw new JSONException("JSON does not allow non-finite numbers.");
                }
            }
        }
    }

    public JSONArray toJSONArray(JSONArray jSONArray) throws JSONException {
        if (jSONArray == null || jSONArray.length() == 0) {
            return null;
        }
        JSONArray jSONArray2 = new JSONArray();
        for (int i = 0; i < jSONArray.length(); i++) {
            jSONArray2.put(opt(jSONArray.getString(i)));
        }
        return jSONArray2;
    }

    public String toString() {
        try {
            return toString(0);
        } catch (Exception unused) {
            return null;
        }
    }

    public String toString(int i) throws JSONException {
        String string;
        StringWriter stringWriter = new StringWriter();
        synchronized (stringWriter.getBuffer()) {
            string = write(stringWriter, i, 0).toString();
        }
        return string;
    }

    public static String valueToString(Object obj) throws JSONException {
        if (obj == null || obj.equals(null)) {
            return "null";
        }
        if (obj instanceof JSONString) {
            try {
                String jSONString = ((JSONString) obj).toJSONString();
                if (jSONString != null) {
                    return jSONString;
                }
                StringBuffer stringBuffer = new StringBuffer("Bad value from toJSONString: ");
                stringBuffer.append((Object) jSONString);
                throw new JSONException(stringBuffer.toString());
            } catch (Exception e) {
                throw new JSONException(e);
            }
        }
        if (obj instanceof Number) {
            return numberToString((Number) obj);
        }
        if ((obj instanceof Boolean) || (obj instanceof JSONObject) || (obj instanceof JSONArray)) {
            return obj.toString();
        }
        if (obj instanceof Map) {
            return new JSONObject((Map) obj).toString();
        }
        if (obj instanceof Collection) {
            return new JSONArray((Collection) obj).toString();
        }
        if (obj.getClass().isArray()) {
            return new JSONArray(obj).toString();
        }
        return quote(obj.toString());
    }

    public static Object wrap(Object obj) {
        try {
            if (obj == null) {
                return NULL;
            }
            if ((obj instanceof JSONObject) || (obj instanceof JSONArray) || NULL.equals(obj) || (obj instanceof JSONString) || (obj instanceof Byte) || (obj instanceof Character) || (obj instanceof Short) || (obj instanceof Integer) || (obj instanceof Long) || (obj instanceof Boolean) || (obj instanceof Float) || (obj instanceof Double) || (obj instanceof String)) {
                return obj;
            }
            if (obj instanceof Collection) {
                return new JSONArray((Collection) obj);
            }
            if (obj.getClass().isArray()) {
                return new JSONArray(obj);
            }
            if (obj instanceof Map) {
                return new JSONObject((Map) obj);
            }
            Package r0 = obj.getClass().getPackage();
            String name = r0 != null ? r0.getName() : "";
            if (!name.startsWith("java.") && !name.startsWith("javax.") && obj.getClass().getClassLoader() != null) {
                return new JSONObject(obj);
            }
            return obj.toString();
        } catch (Exception unused) {
            return null;
        }
    }

    public Writer write(Writer writer) throws JSONException {
        return write(writer, 0, 0);
    }

    public static final Writer writeValue(Writer writer, Object obj, int i, int i2) throws IOException, JSONException {
        if (obj == null || obj.equals(null)) {
            writer.write("null");
            return writer;
        }
        if (obj instanceof JSONObject) {
            ((JSONObject) obj).write(writer, i, i2);
            return writer;
        }
        if (obj instanceof JSONArray) {
            ((JSONArray) obj).write(writer, i, i2);
            return writer;
        }
        if (obj instanceof Map) {
            new JSONObject((Map) obj).write(writer, i, i2);
            return writer;
        }
        if (obj instanceof Collection) {
            new JSONArray((Collection) obj).write(writer, i, i2);
            return writer;
        }
        if (obj.getClass().isArray()) {
            new JSONArray(obj).write(writer, i, i2);
            return writer;
        }
        if (obj instanceof Number) {
            writer.write(numberToString((Number) obj));
            return writer;
        }
        if (obj instanceof Boolean) {
            writer.write(obj.toString());
            return writer;
        }
        if (obj instanceof JSONString) {
            try {
                String jSONString = ((JSONString) obj).toJSONString();
                writer.write(jSONString != null ? jSONString.toString() : quote(obj.toString()));
                return writer;
            } catch (Exception e) {
                throw new JSONException(e);
            }
        }
        quote(obj.toString(), writer);
        return writer;
    }

    public static final void indent(Writer writer, int i) throws IOException {
        for (int i2 = 0; i2 < i; i2++) {
            writer.write(32);
        }
    }

    public Writer write(Writer writer, int i, int i2) throws IOException, JSONException {
        try {
            int length = length();
            Iterator itKeys = keys();
            writer.write(123);
            if (length == 1) {
                Object next = itKeys.next();
                writer.write(quote(next.toString()));
                writer.write(58);
                if (i > 0) {
                    writer.write(32);
                }
                writeValue(writer, this.map.get(next), i, i2);
            } else if (length != 0) {
                int i3 = i2 + i;
                boolean z = false;
                while (itKeys.hasNext()) {
                    Object next2 = itKeys.next();
                    if (z) {
                        writer.write(44);
                    }
                    if (i > 0) {
                        writer.write(10);
                    }
                    indent(writer, i3);
                    writer.write(quote(next2.toString()));
                    writer.write(58);
                    if (i > 0) {
                        writer.write(32);
                    }
                    writeValue(writer, this.map.get(next2), i, i3);
                    z = true;
                }
                if (i > 0) {
                    writer.write(10);
                }
                indent(writer, i2);
            }
            writer.write(125);
            return writer;
        } catch (IOException e) {
            throw new JSONException(e);
        }
    }
}
