package com.google.zxing.client.android;

import android.os.Handler;
import android.os.Looper;
import android.preference.PreferenceManager;
import com.google.zxing.BarcodeFormat;
import com.google.zxing.DecodeHintType;
import com.google.zxing.ResultPointCallback;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.concurrent.CountDownLatch;

/* loaded from: classes.dex */
final class d extends Thread {

    /* renamed from: a, reason: collision with root package name */
    public final AppInvCaptureActivity f5132a;

    /* renamed from: b, reason: collision with root package name */
    public final EnumMap f5133b;
    public Handler c;
    public final CountDownLatch d = new CountDownLatch(1);

    public d(AppInvCaptureActivity appInvCaptureActivity, EnumSet enumSet, String str, ResultPointCallback resultPointCallback) {
        this.f5132a = appInvCaptureActivity;
        EnumMap enumMap = new EnumMap(DecodeHintType.class);
        this.f5133b = enumMap;
        if (enumSet == null || enumSet.isEmpty()) {
            PreferenceManager.getDefaultSharedPreferences(appInvCaptureActivity);
            enumSet = EnumSet.noneOf(BarcodeFormat.class);
            enumSet.addAll(b.c);
            enumSet.addAll(b.d);
        }
        enumMap.put((EnumMap) DecodeHintType.POSSIBLE_FORMATS, (DecodeHintType) enumSet);
        if (str != null) {
            enumMap.put((EnumMap) DecodeHintType.CHARACTER_SET, (DecodeHintType) str);
        }
        enumMap.put((EnumMap) DecodeHintType.NEED_RESULT_POINT_CALLBACK, (DecodeHintType) resultPointCallback);
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        Looper.prepare();
        this.c = new c(this.f5132a, this.f5133b);
        this.d.countDown();
        Looper.loop();
    }
}
