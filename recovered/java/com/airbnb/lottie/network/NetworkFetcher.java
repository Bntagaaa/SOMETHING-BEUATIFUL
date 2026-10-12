package com.airbnb.lottie.network;

import androidx.annotation.NonNull;
import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.LottieCompositionFactory;
import com.airbnb.lottie.LottieResult;
import com.airbnb.lottie.utils.Logger;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.util.zip.ZipInputStream;

/* loaded from: classes.dex */
public class NetworkFetcher {

    /* renamed from: a, reason: collision with root package name */
    public final NetworkCache f2657a;

    /* renamed from: b, reason: collision with root package name */
    public final LottieNetworkFetcher f2658b;

    public NetworkFetcher(@NonNull NetworkCache networkCache, @NonNull LottieNetworkFetcher lottieNetworkFetcher) {
        this.f2657a = networkCache;
        this.f2658b = lottieNetworkFetcher;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:4:0x0004  */
    /* JADX WARN: Type inference failed for: r8v10 */
    /* JADX WARN: Type inference failed for: r8v11 */
    /* JADX WARN: Type inference failed for: r8v12 */
    /* JADX WARN: Type inference failed for: r8v5 */
    /* JADX WARN: Type inference failed for: r8v6, types: [com.airbnb.lottie.LottieResult<com.airbnb.lottie.LottieComposition>] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:43:0x00fd -> B:65:0x0127). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:57:0x0126 -> B:65:0x0127). Please report as a decompilation issue!!! */
    @androidx.annotation.NonNull
    @androidx.annotation.WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.airbnb.lottie.LottieResult<com.airbnb.lottie.LottieComposition> fetchSync(@androidx.annotation.NonNull java.lang.String r8, @androidx.annotation.Nullable java.lang.String r9) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 307
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.airbnb.lottie.network.NetworkFetcher.fetchSync(java.lang.String, java.lang.String):com.airbnb.lottie.LottieResult");
    }

    public final LottieResult a(String str, InputStream inputStream, String str2, String str3) {
        FileExtension fileExtension;
        LottieResult<LottieComposition> lottieResultFromZipStreamSync;
        if (str2 == null) {
            str2 = "application/json";
        }
        boolean zContains = str2.contains("application/zip");
        NetworkCache networkCache = this.f2657a;
        if (zContains || str.split("\\?")[0].endsWith(".lottie")) {
            Logger.debug("Handling zip response.");
            fileExtension = FileExtension.ZIP;
            if (str3 == null) {
                lottieResultFromZipStreamSync = LottieCompositionFactory.fromZipStreamSync(new ZipInputStream(inputStream), null);
            } else {
                lottieResultFromZipStreamSync = LottieCompositionFactory.fromZipStreamSync(new ZipInputStream(new FileInputStream(networkCache.c(str, inputStream, fileExtension))), str);
            }
        } else {
            Logger.debug("Received json response.");
            fileExtension = FileExtension.JSON;
            if (str3 == null) {
                lottieResultFromZipStreamSync = LottieCompositionFactory.fromJsonInputStreamSync(inputStream, null);
            } else {
                lottieResultFromZipStreamSync = LottieCompositionFactory.fromJsonInputStreamSync(new FileInputStream(new File(networkCache.c(str, inputStream, fileExtension).getAbsolutePath())), str);
            }
        }
        if (str3 != null && lottieResultFromZipStreamSync.getValue() != null) {
            networkCache.getClass();
            File file = new File(networkCache.b(), NetworkCache.a(str, fileExtension, true));
            File file2 = new File(file.getAbsolutePath().replace(".temp", ""));
            boolean zRenameTo = file.renameTo(file2);
            Logger.debug("Copying temp file to real file (" + file2 + ")");
            if (!zRenameTo) {
                Logger.warning("Unable to rename cache file " + file.getAbsolutePath() + " to " + file2.getAbsolutePath() + ".");
            }
        }
        return lottieResultFromZipStreamSync;
    }
}
