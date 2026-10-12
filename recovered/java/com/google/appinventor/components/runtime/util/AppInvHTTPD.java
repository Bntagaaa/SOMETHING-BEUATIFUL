package com.google.appinventor.components.runtime.util;

import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import androidx.core.app.NotificationCompat;
import com.google.appinventor.components.runtime.ReplForm;
import com.google.appinventor.components.runtime.util.NanoHTTPD;
import com.google.common.net.HttpHeaders;
import gnu.expr.Language;
import gnu.expr.ModuleExp;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Properties;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class AppInvHTTPD extends NanoHTTPD {
    private static final String LOG_TAG = "AppInvHTTPD";
    private static final String MIME_JSON = "application/json";
    private static final int YAV_SKEW_BACKWARD = 4;
    private static final int YAV_SKEW_FORWARD = 1;
    private static byte[] hmacKey;
    private static int seq;
    private final Handler androidUIHandler;
    private ReplForm form;
    private File rootDir;
    private Language scheme;
    private boolean secure;

    public AppInvHTTPD(int i, File file, boolean z, ReplForm replForm) throws IOException {
        super(i, file);
        this.androidUIHandler = new Handler();
        this.rootDir = file;
        this.scheme = Language.getInstance("scheme");
        this.form = replForm;
        this.secure = z;
        ModuleExp.mustNeverCompile();
    }

    /* JADX WARN: Removed duplicated region for block: B:81:0x035f  */
    @Override // com.google.appinventor.components.runtime.util.NanoHTTPD
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.google.appinventor.components.runtime.util.NanoHTTPD.Response serve(java.lang.String r24, java.lang.String r25, java.util.Properties r26, java.util.Properties r27, java.util.Properties r28, java.net.Socket r29) throws java.lang.IllegalStateException, java.security.NoSuchAlgorithmException, android.content.pm.PackageManager.NameNotFoundException, java.lang.NumberFormatException, java.security.InvalidKeyException {
        /*
            Method dump skipped, instructions count: 1126
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.appinventor.components.runtime.util.AppInvHTTPD.serve(java.lang.String, java.lang.String, java.util.Properties, java.util.Properties, java.util.Properties, java.net.Socket):com.google.appinventor.components.runtime.util.NanoHTTPD$Response");
    }

    private boolean copyFile(File file, File file2) throws IOException {
        try {
            FileInputStream fileInputStream = new FileInputStream(file);
            FileOutputStream fileOutputStream = new FileOutputStream(file2);
            byte[] bArr = new byte[32768];
            while (true) {
                int i = fileInputStream.read(bArr);
                if (i > 0) {
                    fileOutputStream.write(bArr, 0, i);
                } else {
                    fileInputStream.close();
                    fileOutputStream.close();
                    return false;
                }
            }
        } catch (IOException e) {
            e.printStackTrace();
            return true;
        }
    }

    private NanoHTTPD.Response processLoadExtensionsRequest(Properties properties) {
        try {
            JSONArray jSONArray = new JSONArray(properties.getProperty("extensions", "[]"));
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < jSONArray.length(); i++) {
                String strOptString = jSONArray.optString(i);
                if (strOptString == null) {
                    return error("Invalid JSON content at index " + i);
                }
                arrayList.add(strOptString);
            }
            try {
                this.form.loadComponents(arrayList);
                return message("OK");
            } catch (Exception e) {
                return error(e);
            }
        } catch (JSONException e2) {
            return error(e2);
        }
    }

    private void adoptMainThreadClassLoader() {
        ClassLoader contextClassLoader = Looper.getMainLooper().getThread().getContextClassLoader();
        Thread threadCurrentThread = Thread.currentThread();
        if (threadCurrentThread.getContextClassLoader() != contextClassLoader) {
            threadCurrentThread.setContextClassLoader(contextClassLoader);
        }
    }

    private NanoHTTPD.Response message(String str) {
        return addHeaders(new NanoHTTPD.Response(NanoHTTPD.HTTP_OK, NanoHTTPD.MIME_PLAINTEXT, str));
    }

    private NanoHTTPD.Response json(String str) {
        return addHeaders(new NanoHTTPD.Response(NanoHTTPD.HTTP_OK, MIME_JSON, str));
    }

    private NanoHTTPD.Response error(String str) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(NotificationCompat.CATEGORY_STATUS, "BAD");
            jSONObject.put("message", str);
        } catch (JSONException e) {
            Log.wtf(LOG_TAG, "Unable to write basic JSON content", e);
        }
        return addHeaders(new NanoHTTPD.Response(NanoHTTPD.HTTP_OK, MIME_JSON, jSONObject.toString()));
    }

    private NanoHTTPD.Response error(Throwable th) {
        return error(th.toString());
    }

    private NanoHTTPD.Response addHeaders(NanoHTTPD.Response response) {
        response.addHeader(HttpHeaders.ACCESS_CONTROL_ALLOW_ORIGIN, "*");
        response.addHeader(HttpHeaders.ACCESS_CONTROL_ALLOW_HEADERS, "origin, content-type");
        response.addHeader(HttpHeaders.ACCESS_CONTROL_ALLOW_METHODS, "POST,OPTIONS,GET,HEAD,PUT");
        response.addHeader(HttpHeaders.ALLOW, "POST,OPTIONS,GET,HEAD,PUT");
        return response;
    }

    public static void setHmacKey(String str) {
        hmacKey = str.getBytes();
        seq = 1;
    }

    public void resetSeq() {
        seq = 1;
    }
}
