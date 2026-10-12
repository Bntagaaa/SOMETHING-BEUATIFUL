package com.airbnb.lottie;

import android.util.Log;
import androidx.collection.ArraySet;
import androidx.core.util.Pair;
import com.airbnb.lottie.utils.MeanCalculator;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class PerformanceTracker {

    /* renamed from: a, reason: collision with root package name */
    public boolean f2504a = false;

    /* renamed from: b, reason: collision with root package name */
    public final ArraySet f2505b = new ArraySet();
    public final HashMap c = new HashMap();
    public final Comparator d = new a();

    public interface FrameListener {
        void onFrameRendered(float f);
    }

    public class a implements Comparator<Pair<String, Float>> {
        @Override // java.util.Comparator
        public int compare(Pair<String, Float> pair, Pair<String, Float> pair2) {
            float fFloatValue = pair.second.floatValue();
            float fFloatValue2 = pair2.second.floatValue();
            if (fFloatValue2 > fFloatValue) {
                return 1;
            }
            return fFloatValue > fFloatValue2 ? -1 : 0;
        }
    }

    public void recordRenderTime(String str, float f) {
        if (this.f2504a) {
            HashMap map = this.c;
            MeanCalculator meanCalculator = (MeanCalculator) map.get(str);
            if (meanCalculator == null) {
                meanCalculator = new MeanCalculator();
                map.put(str, meanCalculator);
            }
            meanCalculator.add(f);
            if (str.equals("__container")) {
                Iterator<E> it = this.f2505b.iterator();
                while (it.hasNext()) {
                    ((FrameListener) it.next()).onFrameRendered(f);
                }
            }
        }
    }

    public void addFrameListener(FrameListener frameListener) {
        this.f2505b.add(frameListener);
    }

    public void removeFrameListener(FrameListener frameListener) {
        this.f2505b.remove(frameListener);
    }

    public void clearRenderTimes() {
        this.c.clear();
    }

    public void logRenderTimes() {
        if (this.f2504a) {
            List<Pair<String, Float>> sortedRenderTimes = getSortedRenderTimes();
            Log.d(L.TAG, "Render times:");
            for (int i = 0; i < sortedRenderTimes.size(); i++) {
                Pair<String, Float> pair = sortedRenderTimes.get(i);
                Log.d(L.TAG, String.format("\t\t%30s:%.2f", pair.first, pair.second));
            }
        }
    }

    public List<Pair<String, Float>> getSortedRenderTimes() {
        if (!this.f2504a) {
            return Collections.EMPTY_LIST;
        }
        HashMap map = this.c;
        ArrayList arrayList = new ArrayList(map.size());
        for (Map.Entry entry : map.entrySet()) {
            arrayList.add(new Pair(entry.getKey(), Float.valueOf(((MeanCalculator) entry.getValue()).getMean())));
        }
        Collections.sort(arrayList, this.d);
        return arrayList;
    }
}
