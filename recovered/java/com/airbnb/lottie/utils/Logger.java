package com.airbnb.lottie.utils;

import com.airbnb.lottie.LottieLogger;

/* loaded from: classes.dex */
public class Logger {

    /* renamed from: a, reason: collision with root package name */
    public static LottieLogger f2719a = new LogcatLogger();

    public static void setInstance(LottieLogger lottieLogger) {
        f2719a = lottieLogger;
    }

    public static void debug(String str) {
        f2719a.debug(str);
    }

    public static void debug(String str, Throwable th) {
        f2719a.debug(str, th);
    }

    public static void warning(String str) {
        f2719a.warning(str);
    }

    public static void warning(String str, Throwable th) {
        f2719a.warning(str, th);
    }

    public static void error(String str, Throwable th) {
        f2719a.error(str, th);
    }
}
