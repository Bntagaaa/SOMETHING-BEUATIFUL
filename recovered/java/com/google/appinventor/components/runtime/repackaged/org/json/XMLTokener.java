package com.google.appinventor.components.runtime.repackaged.org.json;

import java.io.IOException;
import java.util.HashMap;

/* loaded from: classes.dex */
public class XMLTokener extends JSONTokener {
    public static final HashMap entity;

    static {
        HashMap map = new HashMap(8);
        entity = map;
        map.put("amp", XML.AMP);
        map.put("apos", XML.APOS);
        map.put("gt", XML.GT);
        map.put("lt", XML.LT);
        map.put("quot", XML.QUOT);
    }

    public XMLTokener(String str) {
        super(str);
    }

    public String nextCDATA() throws IOException, JSONException {
        StringBuffer stringBuffer = new StringBuffer();
        while (true) {
            char next = next();
            if (end()) {
                throw syntaxError("Unclosed CDATA");
            }
            stringBuffer.append(next);
            int length = stringBuffer.length();
            int i = length - 3;
            if (i >= 0 && stringBuffer.charAt(i) == ']' && stringBuffer.charAt(length - 2) == ']' && stringBuffer.charAt(length - 1) == '>') {
                stringBuffer.setLength(i);
                return stringBuffer.toString();
            }
        }
    }

    public Object nextContent() throws IOException, JSONException {
        char next;
        do {
            next = next();
        } while (Character.isWhitespace(next));
        if (next == 0) {
            return null;
        }
        if (next == '<') {
            return XML.LT;
        }
        StringBuffer stringBuffer = new StringBuffer();
        while (next != '<' && next != 0) {
            if (next == '&') {
                stringBuffer.append(nextEntity(next));
            } else {
                stringBuffer.append(next);
            }
            next = next();
        }
        back();
        return stringBuffer.toString().trim();
    }

    public Object nextEntity(char c) throws IOException, JSONException {
        char next;
        StringBuffer stringBuffer = new StringBuffer();
        while (true) {
            next = next();
            if (!Character.isLetterOrDigit(next) && next != '#') {
                break;
            }
            stringBuffer.append(Character.toLowerCase(next));
        }
        if (next != ';') {
            StringBuffer stringBuffer2 = new StringBuffer("Missing ';' in XML entity: &");
            stringBuffer2.append((Object) stringBuffer);
            throw syntaxError(stringBuffer2.toString());
        }
        String string = stringBuffer.toString();
        Object obj = entity.get(string);
        if (obj != null) {
            return obj;
        }
        StringBuffer stringBuffer3 = new StringBuffer();
        stringBuffer3.append(c);
        stringBuffer3.append(string);
        stringBuffer3.append(";");
        return stringBuffer3.toString();
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x003a, code lost:
    
        back();
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x003f, code lost:
    
        return java.lang.Boolean.TRUE;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object nextMeta() throws java.io.IOException, com.google.appinventor.components.runtime.repackaged.org.json.JSONException {
        /*
            r6 = this;
        L0:
            char r0 = r6.next()
            boolean r1 = java.lang.Character.isWhitespace(r0)
            if (r1 != 0) goto L0
            if (r0 == 0) goto L64
            r1 = 39
            if (r0 == r1) goto L52
            r2 = 47
            if (r0 == r2) goto L4f
            r3 = 33
            if (r0 == r3) goto L4c
            r4 = 34
            if (r0 == r4) goto L52
            switch(r0) {
                case 60: goto L49;
                case 61: goto L46;
                case 62: goto L43;
                case 63: goto L40;
                default: goto L1f;
            }
        L1f:
            char r0 = r6.next()
            boolean r5 = java.lang.Character.isWhitespace(r0)
            if (r5 == 0) goto L2c
            java.lang.Boolean r0 = java.lang.Boolean.TRUE
            return r0
        L2c:
            if (r0 == 0) goto L3a
            if (r0 == r1) goto L3a
            if (r0 == r2) goto L3a
            if (r0 == r3) goto L3a
            if (r0 == r4) goto L3a
            switch(r0) {
                case 60: goto L3a;
                case 61: goto L3a;
                case 62: goto L3a;
                case 63: goto L3a;
                default: goto L39;
            }
        L39:
            goto L1f
        L3a:
            r6.back()
            java.lang.Boolean r0 = java.lang.Boolean.TRUE
            return r0
        L40:
            java.lang.Character r0 = com.google.appinventor.components.runtime.repackaged.org.json.XML.QUEST
            return r0
        L43:
            java.lang.Character r0 = com.google.appinventor.components.runtime.repackaged.org.json.XML.GT
            return r0
        L46:
            java.lang.Character r0 = com.google.appinventor.components.runtime.repackaged.org.json.XML.EQ
            return r0
        L49:
            java.lang.Character r0 = com.google.appinventor.components.runtime.repackaged.org.json.XML.LT
            return r0
        L4c:
            java.lang.Character r0 = com.google.appinventor.components.runtime.repackaged.org.json.XML.BANG
            return r0
        L4f:
            java.lang.Character r0 = com.google.appinventor.components.runtime.repackaged.org.json.XML.SLASH
            return r0
        L52:
            char r1 = r6.next()
            if (r1 == 0) goto L5d
            if (r1 != r0) goto L52
            java.lang.Boolean r0 = java.lang.Boolean.TRUE
            return r0
        L5d:
            java.lang.String r0 = "Unterminated string"
            com.google.appinventor.components.runtime.repackaged.org.json.JSONException r0 = r6.syntaxError(r0)
            throw r0
        L64:
            java.lang.String r0 = "Misshaped meta tag"
            com.google.appinventor.components.runtime.repackaged.org.json.JSONException r0 = r6.syntaxError(r0)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.appinventor.components.runtime.repackaged.org.json.XMLTokener.nextMeta():java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x004c, code lost:
    
        back();
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0053, code lost:
    
        return r5.toString();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object nextToken() throws java.io.IOException, com.google.appinventor.components.runtime.repackaged.org.json.JSONException {
        /*
            r7 = this;
        L0:
            char r0 = r7.next()
            boolean r1 = java.lang.Character.isWhitespace(r0)
            if (r1 != 0) goto L0
            if (r0 == 0) goto L9f
            r1 = 39
            if (r0 == r1) goto L76
            r2 = 47
            if (r0 == r2) goto L73
            r3 = 33
            if (r0 == r3) goto L70
            r4 = 34
            if (r0 == r4) goto L76
            switch(r0) {
                case 60: goto L69;
                case 61: goto L66;
                case 62: goto L63;
                case 63: goto L60;
                default: goto L1f;
            }
        L1f:
            java.lang.StringBuffer r5 = new java.lang.StringBuffer
            r5.<init>()
        L24:
            r5.append(r0)
            char r0 = r7.next()
            boolean r6 = java.lang.Character.isWhitespace(r0)
            if (r6 == 0) goto L36
            java.lang.String r0 = r5.toString()
            return r0
        L36:
            if (r0 == 0) goto L5b
            if (r0 == r1) goto L54
            if (r0 == r2) goto L4c
            r6 = 91
            if (r0 == r6) goto L4c
            r6 = 93
            if (r0 == r6) goto L4c
            if (r0 == r3) goto L4c
            if (r0 == r4) goto L54
            switch(r0) {
                case 60: goto L54;
                case 61: goto L4c;
                case 62: goto L4c;
                case 63: goto L4c;
                default: goto L4b;
            }
        L4b:
            goto L24
        L4c:
            r7.back()
            java.lang.String r0 = r5.toString()
            return r0
        L54:
            java.lang.String r0 = "Bad character in a name"
            com.google.appinventor.components.runtime.repackaged.org.json.JSONException r0 = r7.syntaxError(r0)
            throw r0
        L5b:
            java.lang.String r0 = r5.toString()
            return r0
        L60:
            java.lang.Character r0 = com.google.appinventor.components.runtime.repackaged.org.json.XML.QUEST
            return r0
        L63:
            java.lang.Character r0 = com.google.appinventor.components.runtime.repackaged.org.json.XML.GT
            return r0
        L66:
            java.lang.Character r0 = com.google.appinventor.components.runtime.repackaged.org.json.XML.EQ
            return r0
        L69:
            java.lang.String r0 = "Misplaced '<'"
            com.google.appinventor.components.runtime.repackaged.org.json.JSONException r0 = r7.syntaxError(r0)
            throw r0
        L70:
            java.lang.Character r0 = com.google.appinventor.components.runtime.repackaged.org.json.XML.BANG
            return r0
        L73:
            java.lang.Character r0 = com.google.appinventor.components.runtime.repackaged.org.json.XML.SLASH
            return r0
        L76:
            java.lang.StringBuffer r1 = new java.lang.StringBuffer
            r1.<init>()
        L7b:
            char r2 = r7.next()
            if (r2 == 0) goto L98
            if (r2 != r0) goto L88
            java.lang.String r0 = r1.toString()
            return r0
        L88:
            r3 = 38
            if (r2 != r3) goto L94
            java.lang.Object r2 = r7.nextEntity(r2)
            r1.append(r2)
            goto L7b
        L94:
            r1.append(r2)
            goto L7b
        L98:
            java.lang.String r0 = "Unterminated string"
            com.google.appinventor.components.runtime.repackaged.org.json.JSONException r0 = r7.syntaxError(r0)
            throw r0
        L9f:
            java.lang.String r0 = "Misshaped element"
            com.google.appinventor.components.runtime.repackaged.org.json.JSONException r0 = r7.syntaxError(r0)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.appinventor.components.runtime.repackaged.org.json.XMLTokener.nextToken():java.lang.Object");
    }

    public boolean skipPast(String str) throws IOException, JSONException {
        int length = str.length();
        char[] cArr = new char[length];
        for (int i = 0; i < length; i++) {
            char next = next();
            if (next == 0) {
                return false;
            }
            cArr[i] = next;
        }
        int i2 = 0;
        while (true) {
            int i3 = i2;
            for (int i4 = 0; i4 < length; i4++) {
                if (cArr[i3] != str.charAt(i4)) {
                    char next2 = next();
                    if (next2 == 0) {
                        return false;
                    }
                    cArr[i2] = next2;
                    i2++;
                    if (i2 >= length) {
                        i2 -= length;
                    }
                } else {
                    i3++;
                    if (i3 >= length) {
                        i3 -= length;
                    }
                }
            }
            return true;
        }
    }
}
