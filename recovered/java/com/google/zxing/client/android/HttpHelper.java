package com.google.zxing.client.android;

import android.util.Log;
import com.google.common.net.HttpHeaders;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.util.Arrays;
import java.util.HashSet;

/* loaded from: classes.dex */
public final class HttpHelper {

    /* renamed from: a, reason: collision with root package name */
    public static final HashSet f5109a = new HashSet(Arrays.asList("amzn.to", "bit.ly", "bitly.com", "fb.me", "goo.gl", "is.gd", "j.mp", "lnkd.in", "ow.ly", "R.BEETAGG.COM", "r.beetagg.com", "SCN.BY", "su.pr", "t.co", "tinyurl.com", "tr.im"));

    private HttpHelper() {
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class ContentType {
        public static final ContentType HTML;
        public static final ContentType JSON;
        public static final ContentType TEXT;

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ ContentType[] f5110a;

        public static ContentType valueOf(String str) {
            return (ContentType) Enum.valueOf(ContentType.class, str);
        }

        public static ContentType[] values() {
            return (ContentType[]) f5110a.clone();
        }

        static {
            ContentType contentType = new ContentType("HTML", 0);
            HTML = contentType;
            ContentType contentType2 = new ContentType("JSON", 1);
            JSON = contentType2;
            ContentType contentType3 = new ContentType("TEXT", 2);
            TEXT = contentType3;
            f5110a = new ContentType[]{contentType, contentType2, contentType3};
        }
    }

    public static CharSequence downloadViaHttp(String str, ContentType contentType) throws IOException {
        return downloadViaHttp(str, contentType, Integer.MAX_VALUE);
    }

    public static /* synthetic */ class a {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f5111a;

        static {
            int[] iArr = new int[ContentType.values().length];
            f5111a = iArr;
            try {
                iArr[ContentType.HTML.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f5111a[ContentType.JSON.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f5111a[ContentType.TEXT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public static CharSequence downloadViaHttp(String str, ContentType contentType, int i) throws IOException {
        String str2;
        int i2 = a.f5111a[contentType.ordinal()];
        if (i2 == 1) {
            str2 = "application/xhtml+xml,text/html,text/*,*/*";
        } else if (i2 == 2) {
            str2 = "application/json,text/*,*/*";
        } else {
            str2 = "text/*,*/*";
        }
        Log.i("HttpHelper", "Downloading " + str);
        URLConnection uRLConnectionOpenConnection = new URL(str).openConnection();
        if (!(uRLConnectionOpenConnection instanceof HttpURLConnection)) {
            throw new IOException();
        }
        HttpURLConnection httpURLConnection = (HttpURLConnection) uRLConnectionOpenConnection;
        httpURLConnection.setRequestProperty(HttpHeaders.ACCEPT, str2);
        httpURLConnection.setRequestProperty(HttpHeaders.ACCEPT_CHARSET, "utf-8,*");
        httpURLConnection.setRequestProperty(HttpHeaders.USER_AGENT, "ZXing (Android)");
        try {
            try {
                try {
                    httpURLConnection.connect();
                    try {
                        int responseCode = httpURLConnection.getResponseCode();
                        if (responseCode != 200) {
                            throw new IOException("Bad HTTP response: " + responseCode);
                        }
                        Log.i("HttpHelper", "Consuming " + str);
                        return a(httpURLConnection, i);
                    } catch (NullPointerException e) {
                        Log.w("HttpHelper", "Bad URI? " + str);
                        throw new IOException(e);
                    }
                } catch (NullPointerException e2) {
                    Log.w("HttpHelper", "Bad URI? " + str);
                    throw new IOException(e2);
                }
            } catch (IllegalArgumentException e3) {
                Log.w("HttpHelper", "Bad URI? " + str);
                throw new IOException(e3);
            }
        } finally {
            httpURLConnection.disconnect();
        }
    }

    public static StringBuilder a(HttpURLConnection httpURLConnection, int i) throws Throwable {
        String strSubstring;
        InputStreamReader inputStreamReader;
        int i2;
        int iIndexOf;
        String headerField = httpURLConnection.getHeaderField(HttpHeaders.CONTENT_TYPE);
        if (headerField != null && (iIndexOf = headerField.indexOf("charset=")) >= 0) {
            strSubstring = headerField.substring(iIndexOf + 8);
        } else {
            strSubstring = "UTF-8";
        }
        StringBuilder sb = new StringBuilder();
        InputStreamReader inputStreamReader2 = null;
        try {
            inputStreamReader = new InputStreamReader(httpURLConnection.getInputStream(), strSubstring);
        } catch (Throwable th) {
            th = th;
        }
        try {
            char[] cArr = new char[1024];
            while (sb.length() < i && (i2 = inputStreamReader.read(cArr)) > 0) {
                sb.append(cArr, 0, i2);
            }
            try {
                inputStreamReader.close();
            } catch (IOException | NullPointerException unused) {
            }
            return sb;
        } catch (Throwable th2) {
            th = th2;
            inputStreamReader2 = inputStreamReader;
            if (inputStreamReader2 != null) {
                try {
                    inputStreamReader2.close();
                } catch (IOException | NullPointerException unused2) {
                }
            }
            throw th;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0041 A[Catch: all -> 0x0052, TRY_ENTER, TRY_LEAVE, TryCatch #0 {all -> 0x0052, blocks: (B:8:0x0032, B:9:0x0035, B:14:0x0041, B:16:0x0049, B:24:0x0059, B:25:0x006d, B:27:0x006f, B:28:0x0083, B:30:0x0085, B:31:0x0099), top: B:37:0x0032, inners: #1, #2, #4 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.net.URI unredirect(java.net.URI r5) throws java.io.IOException {
        /*
            java.lang.String r0 = "HttpHelper"
            java.lang.String r1 = "Bad URI? "
            java.util.HashSet r2 = com.google.zxing.client.android.HttpHelper.f5109a
            java.lang.String r3 = r5.getHost()
            boolean r2 = r2.contains(r3)
            if (r2 != 0) goto L11
            return r5
        L11:
            java.net.URL r2 = r5.toURL()
            java.net.URLConnection r2 = r2.openConnection()
            boolean r3 = r2 instanceof java.net.HttpURLConnection
            if (r3 == 0) goto L9e
            java.net.HttpURLConnection r2 = (java.net.HttpURLConnection) r2
            r3 = 0
            r2.setInstanceFollowRedirects(r3)
            r2.setDoInput(r3)
            java.lang.String r3 = "HEAD"
            r2.setRequestMethod(r3)
            java.lang.String r3 = "User-Agent"
            java.lang.String r4 = "ZXing (Android)"
            r2.setRequestProperty(r3, r4)
            r2.connect()     // Catch: java.lang.Throwable -> L52 java.lang.IllegalArgumentException -> L6e java.lang.NullPointerException -> L84
            int r0 = r2.getResponseCode()     // Catch: java.lang.Throwable -> L52 java.lang.NullPointerException -> L58
            r1 = 307(0x133, float:4.3E-43)
            if (r0 == r1) goto L41
            switch(r0) {
                case 300: goto L41;
                case 301: goto L41;
                case 302: goto L41;
                case 303: goto L41;
                default: goto L40;
            }
        L40:
            goto L54
        L41:
            java.lang.String r0 = "Location"
            java.lang.String r0 = r2.getHeaderField(r0)     // Catch: java.lang.Throwable -> L52
            if (r0 == 0) goto L54
            java.net.URI r1 = new java.net.URI     // Catch: java.lang.Throwable -> L52 java.net.URISyntaxException -> L54
            r1.<init>(r0)     // Catch: java.lang.Throwable -> L52 java.net.URISyntaxException -> L54
            r2.disconnect()
            return r1
        L52:
            r5 = move-exception
            goto L9a
        L54:
            r2.disconnect()
            return r5
        L58:
            r3 = move-exception
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L52
            r4.<init>(r1)     // Catch: java.lang.Throwable -> L52
            r4.append(r5)     // Catch: java.lang.Throwable -> L52
            java.lang.String r5 = r4.toString()     // Catch: java.lang.Throwable -> L52
            android.util.Log.w(r0, r5)     // Catch: java.lang.Throwable -> L52
            java.io.IOException r5 = new java.io.IOException     // Catch: java.lang.Throwable -> L52
            r5.<init>(r3)     // Catch: java.lang.Throwable -> L52
            throw r5     // Catch: java.lang.Throwable -> L52
        L6e:
            r3 = move-exception
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L52
            r4.<init>(r1)     // Catch: java.lang.Throwable -> L52
            r4.append(r5)     // Catch: java.lang.Throwable -> L52
            java.lang.String r5 = r4.toString()     // Catch: java.lang.Throwable -> L52
            android.util.Log.w(r0, r5)     // Catch: java.lang.Throwable -> L52
            java.io.IOException r5 = new java.io.IOException     // Catch: java.lang.Throwable -> L52
            r5.<init>(r3)     // Catch: java.lang.Throwable -> L52
            throw r5     // Catch: java.lang.Throwable -> L52
        L84:
            r3 = move-exception
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L52
            r4.<init>(r1)     // Catch: java.lang.Throwable -> L52
            r4.append(r5)     // Catch: java.lang.Throwable -> L52
            java.lang.String r5 = r4.toString()     // Catch: java.lang.Throwable -> L52
            android.util.Log.w(r0, r5)     // Catch: java.lang.Throwable -> L52
            java.io.IOException r5 = new java.io.IOException     // Catch: java.lang.Throwable -> L52
            r5.<init>(r3)     // Catch: java.lang.Throwable -> L52
            throw r5     // Catch: java.lang.Throwable -> L52
        L9a:
            r2.disconnect()
            throw r5
        L9e:
            java.io.IOException r5 = new java.io.IOException
            r5.<init>()
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.client.android.HttpHelper.unredirect(java.net.URI):java.net.URI");
    }
}
