package com.airbnb.lottie.manager;

import android.content.res.AssetManager;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.view.View;
import androidx.annotation.Nullable;
import com.airbnb.lottie.FontAssetDelegate;
import com.airbnb.lottie.model.MutablePair;
import com.airbnb.lottie.utils.Logger;
import java.util.HashMap;

/* loaded from: classes.dex */
public class FontAssetManager {
    public final AssetManager d;
    public FontAssetDelegate e;

    /* renamed from: a, reason: collision with root package name */
    public final MutablePair f2572a = new MutablePair();

    /* renamed from: b, reason: collision with root package name */
    public final HashMap f2573b = new HashMap();
    public final HashMap c = new HashMap();
    public String f = ".ttf";

    public FontAssetManager(Drawable.Callback callback, @Nullable FontAssetDelegate fontAssetDelegate) {
        this.e = fontAssetDelegate;
        if (!(callback instanceof View)) {
            Logger.warning("LottieDrawable must be inside of a view for images to work.");
            this.d = null;
        } else {
            this.d = ((View) callback).getContext().getAssets();
        }
    }

    public void setDelegate(@Nullable FontAssetDelegate fontAssetDelegate) {
        this.e = fontAssetDelegate;
    }

    public void setDefaultFontFileExtension(String str) {
        this.f = str;
    }

    public Typeface getTypeface(String str, String str2) {
        String fontPath;
        MutablePair mutablePair = this.f2572a;
        mutablePair.set(str, str2);
        HashMap map = this.f2573b;
        Typeface typeface = (Typeface) map.get(mutablePair);
        if (typeface != null) {
            return typeface;
        }
        HashMap map2 = this.c;
        Typeface typefaceCreate = (Typeface) map2.get(str);
        if (typefaceCreate == null) {
            FontAssetDelegate fontAssetDelegate = this.e;
            typefaceCreate = fontAssetDelegate != null ? fontAssetDelegate.fetchFont(str) : null;
            FontAssetDelegate fontAssetDelegate2 = this.e;
            AssetManager assetManager = this.d;
            if (fontAssetDelegate2 != null && typefaceCreate == null && (fontPath = fontAssetDelegate2.getFontPath(str)) != null) {
                typefaceCreate = Typeface.createFromAsset(assetManager, fontPath);
            }
            if (typefaceCreate == null) {
                typefaceCreate = Typeface.createFromAsset(assetManager, "fonts/" + str + this.f);
            }
            map2.put(str, typefaceCreate);
        }
        boolean zContains = str2.contains("Italic");
        boolean zContains2 = str2.contains("Bold");
        int i = (zContains && zContains2) ? 3 : zContains ? 2 : zContains2 ? 1 : 0;
        if (typefaceCreate.getStyle() != i) {
            typefaceCreate = Typeface.create(typefaceCreate, i);
        }
        map.put(mutablePair, typefaceCreate);
        return typefaceCreate;
    }
}
