package com.airbnb.lottie.utils;

import android.util.Log;
import com.airbnb.lottie.L;
import com.airbnb.lottie.LottieLogger;
import java.util.HashSet;

/* loaded from: classes.dex */
public class LogcatLogger implements LottieLogger {

    /* renamed from: a, reason: collision with root package name */
    public static final HashSet f2718a = new HashSet();

    @Override // com.airbnb.lottie.LottieLogger
    public void debug(String str) {
        debug(str, null);
    }

    @Override // com.airbnb.lottie.LottieLogger
    public void debug(String str, Throwable th) {
        if (L.DBG) {
            Log.d(L.TAG, str, th);
        }
    }

    @Override // com.airbnb.lottie.LottieLogger
    public void warning(String str) {
        warning(str, null);
    }

    @Override // com.airbnb.lottie.LottieLogger
    public void warning(String str, Throwable th) {
        HashSet hashSet = f2718a;
        if (hashSet.contains(str)) {
            return;
        }
        Log.w(L.TAG, str, th);
        hashSet.add(str);
    }

    @Override // com.airbnb.lottie.LottieLogger
    public void error(String str, Throwable th) {
        if (L.DBG) {
            Log.d(L.TAG, str, th);
        }
    }
}
