package com.airbnb.lottie.manager;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.Base64;
import android.view.View;
import androidx.annotation.Nullable;
import com.airbnb.lottie.ImageAssetDelegate;
import com.airbnb.lottie.LottieImageAsset;
import com.airbnb.lottie.utils.Logger;
import com.airbnb.lottie.utils.Utils;
import com.google.appinventor.components.common.ComponentConstants;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class ImageAssetManager {
    public static final Object e = new Object();

    /* renamed from: a, reason: collision with root package name */
    public final Context f2574a;

    /* renamed from: b, reason: collision with root package name */
    public final String f2575b;
    public ImageAssetDelegate c;
    public final Map d;

    public ImageAssetManager(Drawable.Callback callback, String str, ImageAssetDelegate imageAssetDelegate, Map<String, LottieImageAsset> map) {
        if (!TextUtils.isEmpty(str) && str.charAt(str.length() - 1) != '/') {
            this.f2575b = str.concat("/");
        } else {
            this.f2575b = str;
        }
        if (!(callback instanceof View)) {
            Logger.warning("LottieDrawable must be inside of a view for images to work.");
            this.d = new HashMap();
            this.f2574a = null;
        } else {
            this.f2574a = ((View) callback).getContext();
            this.d = map;
            setDelegate(imageAssetDelegate);
        }
    }

    public ImageAssetManager(Context context, String str, ImageAssetDelegate imageAssetDelegate, Map<String, LottieImageAsset> map) {
        this.f2574a = context;
        if (!TextUtils.isEmpty(str) && str.charAt(str.length() - 1) != '/') {
            this.f2575b = str.concat("/");
        } else {
            this.f2575b = str;
        }
        this.d = map;
        setDelegate(imageAssetDelegate);
    }

    public void setDelegate(@Nullable ImageAssetDelegate imageAssetDelegate) {
        this.c = imageAssetDelegate;
    }

    @Nullable
    public Bitmap updateBitmap(String str, @Nullable Bitmap bitmap) {
        Map map = this.d;
        if (bitmap == null) {
            LottieImageAsset lottieImageAsset = (LottieImageAsset) map.get(str);
            Bitmap bitmap2 = lottieImageAsset.getBitmap();
            lottieImageAsset.setBitmap(null);
            return bitmap2;
        }
        Bitmap bitmap3 = ((LottieImageAsset) map.get(str)).getBitmap();
        a(str, bitmap);
        return bitmap3;
    }

    @Nullable
    public Bitmap bitmapForId(String str) {
        String str2 = this.f2575b;
        LottieImageAsset lottieImageAsset = (LottieImageAsset) this.d.get(str);
        if (lottieImageAsset == null) {
            return null;
        }
        Bitmap bitmap = lottieImageAsset.getBitmap();
        if (bitmap != null) {
            return bitmap;
        }
        ImageAssetDelegate imageAssetDelegate = this.c;
        if (imageAssetDelegate != null) {
            Bitmap bitmapFetchBitmap = imageAssetDelegate.fetchBitmap(lottieImageAsset);
            if (bitmapFetchBitmap != null) {
                a(str, bitmapFetchBitmap);
            }
            return bitmapFetchBitmap;
        }
        String fileName = lottieImageAsset.getFileName();
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inScaled = true;
        options.inDensity = ComponentConstants.TEXTBOX_PREFERRED_WIDTH;
        if (fileName.startsWith("data:") && fileName.indexOf("base64,") > 0) {
            try {
                byte[] bArrDecode = Base64.decode(fileName.substring(fileName.indexOf(44) + 1), 0);
                Bitmap bitmapDecodeByteArray = BitmapFactory.decodeByteArray(bArrDecode, 0, bArrDecode.length, options);
                a(str, bitmapDecodeByteArray);
                return bitmapDecodeByteArray;
            } catch (IllegalArgumentException e2) {
                Logger.warning("data URL did not have correct base64 format.", e2);
                return null;
            }
        }
        try {
            if (TextUtils.isEmpty(str2)) {
                throw new IllegalStateException("You must set an images folder before loading an image. Set it with LottieComposition#setImagesFolder or LottieDrawable#setImagesFolder");
            }
            try {
                Bitmap bitmapResizeBitmapIfNeeded = Utils.resizeBitmapIfNeeded(BitmapFactory.decodeStream(this.f2574a.getAssets().open(str2 + fileName), null, options), lottieImageAsset.getWidth(), lottieImageAsset.getHeight());
                a(str, bitmapResizeBitmapIfNeeded);
                return bitmapResizeBitmapIfNeeded;
            } catch (IllegalArgumentException e3) {
                Logger.warning("Unable to decode image.", e3);
                return null;
            }
        } catch (IOException e4) {
            Logger.warning("Unable to open asset.", e4);
            return null;
        }
    }

    public boolean hasSameContext(Context context) {
        Context context2 = this.f2574a;
        return (context == null && context2 == null) || context2.equals(context);
    }

    public final void a(String str, Bitmap bitmap) {
        synchronized (e) {
            ((LottieImageAsset) this.d.get(str)).setBitmap(bitmap);
        }
    }
}
