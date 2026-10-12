package com.google.appinventor.components.runtime.util;

import android.util.Log;
import com.google.appinventor.components.runtime.repackaged.org.json.HTTP;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;

/* loaded from: classes.dex */
public final class IOUtils {
    private static final int BUFFER_LENGTH = 4096;

    public static void closeQuietly(String str, Closeable closeable) throws IOException {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e) {
                Log.w(str, "Failed to close resource", e);
            }
        }
    }

    public static byte[] readStream(InputStream inputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[4096];
        while (true) {
            int i = inputStream.read(bArr);
            if (i > 0) {
                byteArrayOutputStream.write(bArr, 0, i);
            } else {
                return byteArrayOutputStream.toByteArray();
            }
        }
    }

    public static String readStreamAsString(InputStream inputStream, String str) throws IOException {
        return new String(readStream(inputStream), str);
    }

    public static String readStreamAsString(InputStream inputStream) throws IOException {
        return readStreamAsString(inputStream, "UTF-8");
    }

    public static String readReader(InputStreamReader inputStreamReader) throws IOException {
        StringBuilder sb = new StringBuilder();
        char[] cArr = new char[4096];
        while (true) {
            int i = inputStreamReader.read(cArr);
            if (i > 0) {
                sb.append(cArr, 0, i);
            } else {
                return sb.toString();
            }
        }
    }

    public static String normalizeNewLines(String str) {
        return str.replaceAll(HTTP.CRLF, "\n");
    }

    public static void mkdirs(File file) throws IOException {
        File parentFile = file.getParentFile();
        if (parentFile.exists() || parentFile.mkdirs()) {
            return;
        }
        throw new IOException("Unable to create directory for " + file);
    }
}
