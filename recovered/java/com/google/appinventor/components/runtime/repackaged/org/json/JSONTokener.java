package com.google.appinventor.components.runtime.repackaged.org.json;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.io.StringReader;
import kotlin.time.DurationKt;

/* loaded from: classes.dex */
public class JSONTokener {
    private long character;
    private boolean eof;
    private long index;
    private long line;
    private char previous;
    private Reader reader;
    private boolean usePrevious;

    public static int dehexchar(char c) {
        if (c >= '0' && c <= '9') {
            return c - '0';
        }
        if (c >= 'A' && c <= 'F') {
            return c - '7';
        }
        if (c < 'a' || c > 'f') {
            return -1;
        }
        return c - 'W';
    }

    public JSONTokener(Reader reader) {
        this.reader = reader.markSupported() ? reader : new BufferedReader(reader);
        this.eof = false;
        this.usePrevious = false;
        this.previous = (char) 0;
        this.index = 0L;
        this.character = 1L;
        this.line = 1L;
    }

    public JSONTokener(InputStream inputStream) throws JSONException {
        this(new InputStreamReader(inputStream));
    }

    public JSONTokener(String str) {
        this(new StringReader(str));
    }

    public void back() throws JSONException {
        if (!this.usePrevious) {
            long j = this.index;
            if (j > 0) {
                this.index = j - 1;
                this.character--;
                this.usePrevious = true;
                this.eof = false;
                return;
            }
        }
        throw new JSONException("Stepping back two steps is not supported");
    }

    public boolean end() {
        return this.eof && !this.usePrevious;
    }

    public boolean more() throws IOException, JSONException {
        next();
        if (end()) {
            return false;
        }
        back();
        return true;
    }

    public char next() throws IOException, JSONException {
        int i = 0;
        if (this.usePrevious) {
            this.usePrevious = false;
            i = this.previous;
        } else {
            try {
                int i2 = this.reader.read();
                if (i2 <= 0) {
                    this.eof = true;
                } else {
                    i = i2;
                }
            } catch (IOException e) {
                throw new JSONException(e);
            }
        }
        this.index++;
        if (this.previous == '\r') {
            this.line++;
            this.character = i == 10 ? 0L : 1L;
        } else if (i == 10) {
            this.line++;
            this.character = 0L;
        } else {
            this.character++;
        }
        char c = (char) i;
        this.previous = c;
        return c;
    }

    public char next(char c) throws IOException, JSONException {
        char next = next();
        if (next == c) {
            return next;
        }
        StringBuffer stringBuffer = new StringBuffer("Expected '");
        stringBuffer.append(c);
        stringBuffer.append("' and instead saw '");
        stringBuffer.append(next);
        stringBuffer.append("'");
        throw syntaxError(stringBuffer.toString());
    }

    public String next(int i) throws JSONException {
        if (i == 0) {
            return "";
        }
        char[] cArr = new char[i];
        for (int i2 = 0; i2 < i; i2++) {
            cArr[i2] = next();
            if (end()) {
                throw syntaxError("Substring bounds error");
            }
        }
        return new String(cArr);
    }

    public char nextClean() throws JSONException {
        char next;
        do {
            next = next();
            if (next == 0) {
                break;
            }
        } while (next <= ' ');
        return next;
    }

    /* JADX WARN: Code restructure failed: missing block: B:44:0x0087, code lost:
    
        throw syntaxError("Unterminated string");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String nextString(char r7) throws java.io.IOException, com.google.appinventor.components.runtime.repackaged.org.json.JSONException {
        /*
            r6 = this;
            java.lang.StringBuffer r0 = new java.lang.StringBuffer
            r0.<init>()
        L5:
            char r1 = r6.next()
            if (r1 == 0) goto L81
            r2 = 10
            if (r1 == r2) goto L81
            r3 = 13
            if (r1 == r3) goto L81
            r4 = 92
            if (r1 == r4) goto L22
            if (r1 != r7) goto L1e
            java.lang.String r7 = r0.toString()
            return r7
        L1e:
            r0.append(r1)
            goto L5
        L22:
            char r1 = r6.next()
            r5 = 34
            if (r1 == r5) goto L7d
            r5 = 39
            if (r1 == r5) goto L7d
            r5 = 47
            if (r1 == r5) goto L7d
            if (r1 == r4) goto L7d
            r4 = 98
            if (r1 == r4) goto L77
            r4 = 102(0x66, float:1.43E-43)
            if (r1 == r4) goto L71
            r4 = 110(0x6e, float:1.54E-43)
            if (r1 == r4) goto L6d
            r2 = 114(0x72, float:1.6E-43)
            if (r1 == r2) goto L69
            r2 = 116(0x74, float:1.63E-43)
            if (r1 == r2) goto L63
            r2 = 117(0x75, float:1.64E-43)
            if (r1 != r2) goto L5c
            r1 = 4
            java.lang.String r1 = r6.next(r1)
            r2 = 16
            int r1 = java.lang.Integer.parseInt(r1, r2)
            char r1 = (char) r1
            r0.append(r1)
            goto L5
        L5c:
            java.lang.String r7 = "Illegal escape."
            com.google.appinventor.components.runtime.repackaged.org.json.JSONException r7 = r6.syntaxError(r7)
            throw r7
        L63:
            r1 = 9
            r0.append(r1)
            goto L5
        L69:
            r0.append(r3)
            goto L5
        L6d:
            r0.append(r2)
            goto L5
        L71:
            r1 = 12
            r0.append(r1)
            goto L5
        L77:
            r1 = 8
            r0.append(r1)
            goto L5
        L7d:
            r0.append(r1)
            goto L5
        L81:
            java.lang.String r7 = "Unterminated string"
            com.google.appinventor.components.runtime.repackaged.org.json.JSONException r7 = r6.syntaxError(r7)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.appinventor.components.runtime.repackaged.org.json.JSONTokener.nextString(char):java.lang.String");
    }

    public String nextTo(char c) throws IOException, JSONException {
        char next;
        StringBuffer stringBuffer = new StringBuffer();
        while (true) {
            next = next();
            if (next == c || next == 0 || next == '\n' || next == '\r') {
                break;
            }
            stringBuffer.append(next);
        }
        if (next != 0) {
            back();
        }
        return stringBuffer.toString().trim();
    }

    public String nextTo(String str) throws IOException, JSONException {
        char next;
        StringBuffer stringBuffer = new StringBuffer();
        while (true) {
            next = next();
            if (str.indexOf(next) >= 0 || next == 0 || next == '\n' || next == '\r') {
                break;
            }
            stringBuffer.append(next);
        }
        if (next != 0) {
            back();
        }
        return stringBuffer.toString().trim();
    }

    public Object nextValue() throws IOException, JSONException {
        char cNextClean = nextClean();
        if (cNextClean == '\"' || cNextClean == '\'') {
            return nextString(cNextClean);
        }
        if (cNextClean == '[') {
            back();
            return new JSONArray(this);
        }
        if (cNextClean == '{') {
            back();
            return new JSONObject(this);
        }
        StringBuffer stringBuffer = new StringBuffer();
        while (cNextClean >= ' ' && ",:]}/\\\"[{;=#".indexOf(cNextClean) < 0) {
            stringBuffer.append(cNextClean);
            cNextClean = next();
        }
        back();
        String strTrim = stringBuffer.toString().trim();
        if ("".equals(strTrim)) {
            throw syntaxError("Missing value");
        }
        return JSONObject.stringToValue(strTrim);
    }

    public char skipTo(char c) throws IOException, JSONException {
        char next;
        try {
            long j = this.index;
            long j2 = this.character;
            long j3 = this.line;
            this.reader.mark(DurationKt.NANOS_IN_MILLIS);
            do {
                next = next();
                if (next == 0) {
                    this.reader.reset();
                    this.index = j;
                    this.character = j2;
                    this.line = j3;
                    return next;
                }
            } while (next != c);
            back();
            return next;
        } catch (IOException e) {
            throw new JSONException(e);
        }
    }

    public JSONException syntaxError(String str) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(str);
        stringBuffer.append(toString());
        return new JSONException(stringBuffer.toString());
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer(" at ");
        stringBuffer.append(this.index);
        stringBuffer.append(" [character ");
        stringBuffer.append(this.character);
        stringBuffer.append(" line ");
        stringBuffer.append(this.line);
        stringBuffer.append("]");
        return stringBuffer.toString();
    }
}
