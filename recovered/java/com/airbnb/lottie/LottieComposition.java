package com.airbnb.lottie;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import androidx.annotation.Nullable;
import androidx.annotation.RawRes;
import androidx.annotation.RestrictTo;
import androidx.annotation.WorkerThread;
import androidx.collection.LongSparseArray;
import androidx.collection.SparseArrayCompat;
import com.airbnb.lottie.model.Font;
import com.airbnb.lottie.model.FontCharacter;
import com.airbnb.lottie.model.Marker;
import com.airbnb.lottie.model.layer.Layer;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.airbnb.lottie.utils.Logger;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class LottieComposition {
    public Map c;
    public Map d;
    public Map e;
    public List f;

    /* renamed from: g, reason: collision with root package name */
    public SparseArrayCompat f2438g;
    public LongSparseArray h;
    public List i;
    public Rect j;
    public float k;
    public float l;
    public float m;
    public boolean n;

    /* renamed from: a, reason: collision with root package name */
    public final PerformanceTracker f2436a = new PerformanceTracker();

    /* renamed from: b, reason: collision with root package name */
    public final HashSet f2437b = new HashSet();
    public int o = 0;

    public void setPerformanceTrackingEnabled(boolean z) {
        this.f2436a.f2504a = z;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public void init(Rect rect, float f, float f2, float f3, List<Layer> list, LongSparseArray<Layer> longSparseArray, Map<String, List<Layer>> map, Map<String, LottieImageAsset> map2, SparseArrayCompat<FontCharacter> sparseArrayCompat, Map<String, Font> map3, List<Marker> list2) {
        this.j = rect;
        this.k = f;
        this.l = f2;
        this.m = f3;
        this.i = list;
        this.h = longSparseArray;
        this.c = map;
        this.d = map2;
        this.f2438g = sparseArrayCompat;
        this.e = map3;
        this.f = list2;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public void addWarning(String str) {
        Logger.warning(str);
        this.f2437b.add(str);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public void setHasDashPattern(boolean z) {
        this.n = z;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public void incrementMatteOrMaskCount(int i) {
        this.o += i;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public boolean hasDashPattern() {
        return this.n;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public int getMaskAndMatteCount() {
        return this.o;
    }

    public ArrayList<String> getWarnings() {
        HashSet hashSet = this.f2437b;
        return new ArrayList<>(Arrays.asList(hashSet.toArray(new String[hashSet.size()])));
    }

    public PerformanceTracker getPerformanceTracker() {
        return this.f2436a;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public Layer layerModelForId(long j) {
        return (Layer) this.h.get(j);
    }

    public Rect getBounds() {
        return this.j;
    }

    public float getDuration() {
        return (long) ((getDurationFrames() / this.m) * 1000.0f);
    }

    public float getStartFrame() {
        return this.k;
    }

    public float getEndFrame() {
        return this.l;
    }

    public float getFrameRate() {
        return this.m;
    }

    public List<Layer> getLayers() {
        return this.i;
    }

    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public List<Layer> getPrecomps(String str) {
        return (List) this.c.get(str);
    }

    public SparseArrayCompat<FontCharacter> getCharacters() {
        return this.f2438g;
    }

    public Map<String, Font> getFonts() {
        return this.e;
    }

    public List<Marker> getMarkers() {
        return this.f;
    }

    @Nullable
    public Marker getMarker(String str) {
        int size = this.f.size();
        for (int i = 0; i < size; i++) {
            Marker marker = (Marker) this.f.get(i);
            if (marker.matchesName(str)) {
                return marker;
            }
        }
        return null;
    }

    public boolean hasImages() {
        return !this.d.isEmpty();
    }

    public Map<String, LottieImageAsset> getImages() {
        return this.d;
    }

    public float getDurationFrames() {
        return this.l - this.k;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("LottieComposition:\n");
        Iterator it = this.i.iterator();
        while (it.hasNext()) {
            sb.append(((Layer) it.next()).toString("\t"));
        }
        return sb.toString();
    }

    @Deprecated
    public static class Factory {
        private Factory() {
        }

        @Deprecated
        public static Cancellable fromAssetFileName(Context context, String str, OnCompositionLoadedListener onCompositionLoadedListener) {
            a aVar = new a(onCompositionLoadedListener);
            LottieCompositionFactory.fromAsset(context, str).addListener(aVar);
            return aVar;
        }

        @Deprecated
        public static Cancellable fromRawFile(Context context, @RawRes int i, OnCompositionLoadedListener onCompositionLoadedListener) {
            a aVar = new a(onCompositionLoadedListener);
            LottieCompositionFactory.fromRawRes(context, i).addListener(aVar);
            return aVar;
        }

        @Deprecated
        public static Cancellable fromInputStream(InputStream inputStream, OnCompositionLoadedListener onCompositionLoadedListener) {
            a aVar = new a(onCompositionLoadedListener);
            LottieCompositionFactory.fromJsonInputStream(inputStream, null).addListener(aVar);
            return aVar;
        }

        @Deprecated
        public static Cancellable fromJsonString(String str, OnCompositionLoadedListener onCompositionLoadedListener) {
            a aVar = new a(onCompositionLoadedListener);
            LottieCompositionFactory.fromJsonString(str, null).addListener(aVar);
            return aVar;
        }

        @Deprecated
        public static Cancellable fromJsonReader(JsonReader jsonReader, OnCompositionLoadedListener onCompositionLoadedListener) {
            a aVar = new a(onCompositionLoadedListener);
            LottieCompositionFactory.fromJsonReader(jsonReader, null).addListener(aVar);
            return aVar;
        }

        @Nullable
        @WorkerThread
        @Deprecated
        public static LottieComposition fromFileSync(Context context, String str) {
            return LottieCompositionFactory.fromAssetSync(context, str).getValue();
        }

        @Nullable
        @WorkerThread
        @Deprecated
        public static LottieComposition fromInputStreamSync(InputStream inputStream) {
            return LottieCompositionFactory.fromJsonInputStreamSync(inputStream, null).getValue();
        }

        @Nullable
        @WorkerThread
        @Deprecated
        public static LottieComposition fromInputStreamSync(InputStream inputStream, boolean z) {
            if (z) {
                Logger.warning("Lottie now auto-closes input stream!");
            }
            return LottieCompositionFactory.fromJsonInputStreamSync(inputStream, null).getValue();
        }

        @Nullable
        @WorkerThread
        @Deprecated
        public static LottieComposition fromJsonSync(Resources resources, JSONObject jSONObject) {
            return LottieCompositionFactory.fromJsonSync(jSONObject, null).getValue();
        }

        @Nullable
        @WorkerThread
        @Deprecated
        public static LottieComposition fromJsonSync(String str) {
            return LottieCompositionFactory.fromJsonStringSync(str, null).getValue();
        }

        @Nullable
        @WorkerThread
        @Deprecated
        public static LottieComposition fromJsonSync(JsonReader jsonReader) {
            return LottieCompositionFactory.fromJsonReaderSync(jsonReader, null).getValue();
        }

        public static final class a implements LottieListener<LottieComposition>, Cancellable {

            /* renamed from: a, reason: collision with root package name */
            public final OnCompositionLoadedListener f2439a;

            /* renamed from: b, reason: collision with root package name */
            public boolean f2440b = false;

            public a(OnCompositionLoadedListener onCompositionLoadedListener) {
                this.f2439a = onCompositionLoadedListener;
            }

            @Override // com.airbnb.lottie.LottieListener
            public void onResult(LottieComposition lottieComposition) {
                if (this.f2440b) {
                    return;
                }
                this.f2439a.onCompositionLoaded(lottieComposition);
            }

            @Override // com.airbnb.lottie.Cancellable
            public void cancel() {
                this.f2440b = true;
            }
        }
    }
}
