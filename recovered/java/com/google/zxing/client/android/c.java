package com.google.zxing.client.android;

import android.graphics.Bitmap;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.zxing.BinaryBitmap;
import com.google.zxing.MultiFormatReader;
import com.google.zxing.PlanarYUVLuminanceSource;
import com.google.zxing.ReaderException;
import com.google.zxing.Result;
import com.google.zxing.common.HybridBinarizer;
import java.util.EnumMap;

/* loaded from: classes.dex */
final class c extends Handler {

    /* renamed from: a, reason: collision with root package name */
    public final AppInvCaptureActivity f5118a;

    /* renamed from: b, reason: collision with root package name */
    public final MultiFormatReader f5119b;
    public boolean c = true;

    public c(AppInvCaptureActivity appInvCaptureActivity, EnumMap enumMap) {
        MultiFormatReader multiFormatReader = new MultiFormatReader();
        this.f5119b = multiFormatReader;
        multiFormatReader.setHints(enumMap);
        this.f5118a = appInvCaptureActivity;
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        Result resultDecodeWithState;
        if (this.c) {
            int i = message.what;
            if (i != 1) {
                if (i != 4) {
                    return;
                }
                this.c = false;
                Looper.myLooper().quit();
                return;
            }
            byte[] bArr = (byte[]) message.obj;
            int i2 = message.arg1;
            int i3 = message.arg2;
            MultiFormatReader multiFormatReader = this.f5119b;
            long jCurrentTimeMillis = System.currentTimeMillis();
            AppInvCaptureActivity appInvCaptureActivity = this.f5118a;
            PlanarYUVLuminanceSource planarYUVLuminanceSourceBuildLuminanceSource = appInvCaptureActivity.f5100a.buildLuminanceSource(bArr, i2, i3);
            if (planarYUVLuminanceSourceBuildLuminanceSource != null) {
                try {
                    resultDecodeWithState = multiFormatReader.decodeWithState(new BinaryBitmap(new HybridBinarizer(planarYUVLuminanceSourceBuildLuminanceSource)));
                } catch (ReaderException unused) {
                } finally {
                    multiFormatReader.reset();
                }
            } else {
                resultDecodeWithState = null;
            }
            Handler handler = appInvCaptureActivity.getHandler();
            if (resultDecodeWithState == null) {
                if (handler != null) {
                    Message.obtain(handler, 2).sendToTarget();
                    return;
                }
                return;
            }
            Log.d("c", "Found barcode in " + (System.currentTimeMillis() - jCurrentTimeMillis) + " ms");
            if (handler != null) {
                Message messageObtain = Message.obtain(handler, 3, resultDecodeWithState);
                Bundle bundle = new Bundle();
                int[] iArrRenderCroppedGreyscaleBitmap = planarYUVLuminanceSourceBuildLuminanceSource.renderCroppedGreyscaleBitmap();
                int width = planarYUVLuminanceSourceBuildLuminanceSource.getWidth();
                int height = planarYUVLuminanceSourceBuildLuminanceSource.getHeight();
                Bitmap bitmapCreateBitmap = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
                bitmapCreateBitmap.setPixels(iArrRenderCroppedGreyscaleBitmap, 0, width, 0, 0, width, height);
                bundle.putParcelable("barcode_bitmap", bitmapCreateBitmap);
                messageObtain.setData(bundle);
                messageObtain.sendToTarget();
            }
        }
    }
}
