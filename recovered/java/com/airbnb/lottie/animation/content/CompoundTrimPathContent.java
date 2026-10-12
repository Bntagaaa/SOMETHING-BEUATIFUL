package com.airbnb.lottie.animation.content;

import android.graphics.Path;
import com.airbnb.lottie.utils.Utils;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class CompoundTrimPathContent {

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f2516a = new ArrayList();

    public void apply(Path path) {
        ArrayList arrayList = this.f2516a;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            Utils.applyTrimPathIfNeeded(path, (TrimPathContent) arrayList.get(size));
        }
    }
}
