package com.airbnb.lottie.network;

import androidx.annotation.NonNull;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes.dex */
public class NetworkCache {

    /* renamed from: a, reason: collision with root package name */
    public final LottieNetworkCacheProvider f2656a;

    public NetworkCache(@NonNull LottieNetworkCacheProvider lottieNetworkCacheProvider) {
        this.f2656a = lottieNetworkCacheProvider;
    }

    public void clear() {
        File fileB = b();
        if (fileB.exists()) {
            File[] fileArrListFiles = fileB.listFiles();
            if (fileArrListFiles != null && fileArrListFiles.length > 0) {
                for (File file : fileB.listFiles()) {
                    file.delete();
                }
            }
            fileB.delete();
        }
    }

    public final File c(String str, InputStream inputStream, FileExtension fileExtension) throws IOException {
        File file = new File(b(), a(str, fileExtension, true));
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            try {
                byte[] bArr = new byte[1024];
                while (true) {
                    int i = inputStream.read(bArr);
                    if (i != -1) {
                        fileOutputStream.write(bArr, 0, i);
                    } else {
                        fileOutputStream.flush();
                        fileOutputStream.close();
                        return file;
                    }
                }
            } catch (Throwable th) {
                fileOutputStream.close();
                throw th;
            }
        } finally {
            inputStream.close();
        }
    }

    public final File b() {
        File cacheDir = this.f2656a.getCacheDir();
        if (cacheDir.isFile()) {
            cacheDir.delete();
        }
        if (!cacheDir.exists()) {
            cacheDir.mkdirs();
        }
        return cacheDir;
    }

    public static String a(String str, FileExtension fileExtension, boolean z) {
        StringBuilder sb = new StringBuilder("lottie_cache_");
        sb.append(str.replaceAll("\\W+", ""));
        sb.append(z ? fileExtension.tempExtension() : fileExtension.extension);
        return sb.toString();
    }
}
