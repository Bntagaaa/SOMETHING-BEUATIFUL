package com.airbnb.lottie.network;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.airbnb.lottie.utils.Logger;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;

/* loaded from: classes.dex */
public class DefaultLottieFetchResult implements LottieFetchResult {

    /* renamed from: a, reason: collision with root package name */
    public final HttpURLConnection f2654a;

    public DefaultLottieFetchResult(@NonNull HttpURLConnection httpURLConnection) {
        this.f2654a = httpURLConnection;
    }

    @Override // com.airbnb.lottie.network.LottieFetchResult
    public boolean isSuccessful() {
        try {
            return this.f2654a.getResponseCode() / 100 == 2;
        } catch (IOException unused) {
            return false;
        }
    }

    @Override // com.airbnb.lottie.network.LottieFetchResult
    @NonNull
    public InputStream bodyByteStream() throws IOException {
        return this.f2654a.getInputStream();
    }

    @Override // com.airbnb.lottie.network.LottieFetchResult
    @Nullable
    public String contentType() {
        return this.f2654a.getContentType();
    }

    @Override // com.airbnb.lottie.network.LottieFetchResult
    @Nullable
    public String error() {
        HttpURLConnection httpURLConnection = this.f2654a;
        try {
            if (isSuccessful()) {
                return null;
            }
            return "Unable to fetch " + httpURLConnection.getURL() + ". Failed with " + httpURLConnection.getResponseCode() + "\n" + a(httpURLConnection);
        } catch (IOException e) {
            Logger.warning("get error failed ", e);
            return e.getMessage();
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f2654a.disconnect();
    }

    public static String a(HttpURLConnection httpURLConnection) throws IOException {
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getErrorStream()));
        StringBuilder sb = new StringBuilder();
        while (true) {
            try {
                try {
                    String line = bufferedReader.readLine();
                    if (line != null) {
                        sb.append(line);
                        sb.append('\n');
                    } else {
                        try {
                            break;
                        } catch (Exception unused) {
                        }
                    }
                } finally {
                    try {
                        bufferedReader.close();
                    } catch (Exception unused2) {
                    }
                }
            } catch (Exception e) {
                throw e;
            }
        }
        return sb.toString();
    }
}
