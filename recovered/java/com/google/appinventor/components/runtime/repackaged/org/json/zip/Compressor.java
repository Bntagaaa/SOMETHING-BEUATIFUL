package com.google.appinventor.components.runtime.repackaged.org.json.zip;

import com.google.appinventor.components.runtime.repackaged.org.json.JSONArray;
import com.google.appinventor.components.runtime.repackaged.org.json.JSONException;
import com.google.appinventor.components.runtime.repackaged.org.json.JSONObject;
import com.google.appinventor.components.runtime.repackaged.org.json.Kim;
import java.util.Iterator;

/* loaded from: classes.dex */
public class Compressor extends JSONzip {
    final BitWriter bitwriter;

    private static int bcd(char c) {
        if (c >= '0' && c <= '9') {
            return c - '0';
        }
        if (c == '+') {
            return 12;
        }
        if (c != '-') {
            return c != '.' ? 13 : 10;
        }
        return 11;
    }

    public Compressor(BitWriter bitWriter) {
        this.bitwriter = bitWriter;
    }

    public void flush() throws JSONException {
        pad(8);
    }

    private void one() throws JSONException {
        write(1, 1);
    }

    public void pad(int i) throws JSONException {
        try {
            this.bitwriter.pad(i);
        } catch (Throwable th) {
            throw new JSONException(th);
        }
    }

    private void write(int i, int i2) throws JSONException {
        try {
            this.bitwriter.write(i, i2);
        } catch (Throwable th) {
            throw new JSONException(th);
        }
    }

    private void write(int i, Huff huff) throws JSONException {
        huff.write(i, this.bitwriter);
    }

    private void write(Kim kim, Huff huff) throws JSONException {
        write(kim, 0, kim.length, huff);
    }

    private void write(Kim kim, int i, int i2, Huff huff) throws JSONException {
        while (i < i2) {
            write(kim.get(i), huff);
            i++;
        }
    }

    private void writeAndTick(int i, Keep keep) throws JSONException {
        int iBitsize = keep.bitsize();
        keep.tick(i);
        write(i, iBitsize);
    }

    private void writeArray(JSONArray jSONArray) throws JSONException {
        int length = jSONArray.length();
        if (length == 0) {
            write(1, 3);
            return;
        }
        boolean z = false;
        Object obj = jSONArray.get(0);
        if (obj == null) {
            obj = JSONObject.NULL;
        }
        if (obj instanceof String) {
            write(6, 3);
            writeString((String) obj);
            z = true;
        } else {
            write(7, 3);
            writeValue(obj);
        }
        for (int i = 1; i < length; i++) {
            Object obj2 = jSONArray.get(i);
            if (obj2 == null) {
                obj2 = JSONObject.NULL;
            }
            boolean z2 = obj2 instanceof String;
            if (z2 != z) {
                zero();
            }
            one();
            if (z2) {
                writeString((String) obj2);
            } else {
                writeValue(obj2);
            }
        }
        zero();
        zero();
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0054  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x005a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void writeJSON(java.lang.Object r3) throws com.google.appinventor.components.runtime.repackaged.org.json.JSONException {
        /*
            r2 = this;
            java.lang.Object r0 = com.google.appinventor.components.runtime.repackaged.org.json.JSONObject.NULL
            boolean r0 = r0.equals(r3)
            r1 = 3
            if (r0 == 0) goto Le
            r3 = 4
            r2.write(r3, r1)
            return
        Le:
            java.lang.Boolean r0 = java.lang.Boolean.FALSE
            boolean r0 = r0.equals(r3)
            if (r0 == 0) goto L1a
            r2.write(r1, r1)
            return
        L1a:
            java.lang.Boolean r0 = java.lang.Boolean.TRUE
            boolean r0 = r0.equals(r3)
            if (r0 == 0) goto L27
            r3 = 2
            r2.write(r3, r1)
            return
        L27:
            boolean r0 = r3 instanceof java.util.Map
            if (r0 == 0) goto L34
            com.google.appinventor.components.runtime.repackaged.org.json.JSONObject r0 = new com.google.appinventor.components.runtime.repackaged.org.json.JSONObject
            java.util.Map r3 = (java.util.Map) r3
            r0.<init>(r3)
        L32:
            r3 = r0
            goto L50
        L34:
            boolean r0 = r3 instanceof java.util.Collection
            if (r0 == 0) goto L40
            com.google.appinventor.components.runtime.repackaged.org.json.JSONArray r0 = new com.google.appinventor.components.runtime.repackaged.org.json.JSONArray
            java.util.Collection r3 = (java.util.Collection) r3
            r0.<init>(r3)
            goto L32
        L40:
            java.lang.Class r0 = r3.getClass()
            boolean r0 = r0.isArray()
            if (r0 == 0) goto L50
            com.google.appinventor.components.runtime.repackaged.org.json.JSONArray r0 = new com.google.appinventor.components.runtime.repackaged.org.json.JSONArray
            r0.<init>(r3)
            goto L32
        L50:
            boolean r0 = r3 instanceof com.google.appinventor.components.runtime.repackaged.org.json.JSONObject
            if (r0 == 0) goto L5a
            com.google.appinventor.components.runtime.repackaged.org.json.JSONObject r3 = (com.google.appinventor.components.runtime.repackaged.org.json.JSONObject) r3
            r2.writeObject(r3)
            return
        L5a:
            boolean r0 = r3 instanceof com.google.appinventor.components.runtime.repackaged.org.json.JSONArray
            if (r0 == 0) goto L64
            com.google.appinventor.components.runtime.repackaged.org.json.JSONArray r3 = (com.google.appinventor.components.runtime.repackaged.org.json.JSONArray) r3
            r2.writeArray(r3)
            return
        L64:
            com.google.appinventor.components.runtime.repackaged.org.json.JSONException r3 = new com.google.appinventor.components.runtime.repackaged.org.json.JSONException
            java.lang.String r0 = "Unrecognized object"
            r3.<init>(r0)
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.appinventor.components.runtime.repackaged.org.json.zip.Compressor.writeJSON(java.lang.Object):void");
    }

    private void writeName(String str) throws JSONException {
        Kim kim = new Kim(str);
        int iFind = this.namekeep.find(kim);
        if (iFind != -1) {
            one();
            writeAndTick(iFind, this.namekeep);
        } else {
            zero();
            write(kim, this.namehuff);
            write(256, this.namehuff);
            this.namekeep.register(kim);
        }
    }

    private void writeObject(JSONObject jSONObject) throws JSONException {
        Iterator itKeys = jSONObject.keys();
        boolean z = true;
        while (itKeys.hasNext()) {
            Object next = itKeys.next();
            if (next instanceof String) {
                if (z) {
                    write(5, 3);
                    z = false;
                } else {
                    one();
                }
                String str = (String) next;
                writeName(str);
                Object obj = jSONObject.get(str);
                if (obj instanceof String) {
                    zero();
                    writeString((String) obj);
                } else {
                    one();
                    writeValue(obj);
                }
            }
        }
        if (z) {
            write(0, 3);
        } else {
            zero();
        }
    }

    private void writeString(String str) throws JSONException {
        if (str.length() == 0) {
            zero();
            zero();
            write(256, this.substringhuff);
            zero();
            return;
        }
        Kim kim = new Kim(str);
        int iFind = this.stringkeep.find(kim);
        if (iFind != -1) {
            one();
            writeAndTick(iFind, this.stringkeep);
        } else {
            writeSubstring(kim);
            this.stringkeep.register(kim);
        }
    }

    private void writeSubstring(Kim kim) throws JSONException {
        this.substringkeep.reserve();
        zero();
        int i = kim.length;
        int i2 = i - 3;
        int length = 0;
        int i3 = 0;
        int i4 = -1;
        while (true) {
            int i5 = length;
            int iMatch = -1;
            while (i5 <= i2) {
                iMatch = this.substringkeep.match(kim, i5, i);
                if (iMatch != -1) {
                    break;
                } else {
                    i5++;
                }
            }
            if (iMatch == -1) {
                break;
            }
            if (length != i5) {
                zero();
                write(kim, length, i5, this.substringhuff);
                write(256, this.substringhuff);
                if (i4 != -1) {
                    this.substringkeep.registerOne(kim, i4, i3);
                    i4 = -1;
                }
            }
            one();
            writeAndTick(iMatch, this.substringkeep);
            length = this.substringkeep.length(iMatch) + i5;
            if (i4 != -1) {
                this.substringkeep.registerOne(kim, i4, i3);
            }
            i3 = length + 1;
            i4 = i5;
        }
        zero();
        if (length < i) {
            write(kim, length, i, this.substringhuff);
            if (i4 != -1) {
                this.substringkeep.registerOne(kim, i4, i3);
            }
        }
        write(256, this.substringhuff);
        zero();
        this.substringkeep.registerMany(kim);
    }

    private void writeValue(Object obj) throws JSONException {
        if (obj instanceof Number) {
            Number number = (Number) obj;
            String strNumberToString = JSONObject.numberToString(number);
            int iFind = this.values.find(strNumberToString);
            if (iFind != -1) {
                write(2, 2);
                writeAndTick(iFind, this.values);
                return;
            }
            if ((obj instanceof Integer) || (obj instanceof Long)) {
                long jLongValue = number.longValue();
                if (jLongValue >= 0 && jLongValue < JSONzip.int14) {
                    write(0, 2);
                    if (jLongValue < 16) {
                        zero();
                        write((int) jLongValue, 4);
                        return;
                    }
                    one();
                    if (jLongValue < 128) {
                        zero();
                        write((int) jLongValue, 7);
                        return;
                    } else {
                        one();
                        write((int) jLongValue, 14);
                        return;
                    }
                }
            }
            write(1, 2);
            for (int i = 0; i < strNumberToString.length(); i++) {
                write(bcd(strNumberToString.charAt(i)), 4);
            }
            write(JSONzip.endOfNumber, 4);
            this.values.register(strNumberToString);
            return;
        }
        write(3, 2);
        writeJSON(obj);
    }

    private void zero() throws JSONException {
        write(0, 1);
    }

    public void zip(JSONObject jSONObject) throws JSONException {
        begin();
        writeJSON(jSONObject);
    }

    public void zip(JSONArray jSONArray) throws JSONException {
        begin();
        writeJSON(jSONArray);
    }
}
