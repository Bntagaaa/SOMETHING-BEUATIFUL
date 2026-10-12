package com.airbnb.lottie.parser;

import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.animation.keyframe.PathKeyframe;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.airbnb.lottie.value.Keyframe;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
class i {

    /* renamed from: a, reason: collision with root package name */
    public static final JsonReader.Options f2686a = JsonReader.Options.of("k");

    private i() {
    }

    public static ArrayList a(JsonReader jsonReader, LottieComposition lottieComposition, float f, u uVar, boolean z) throws IOException {
        JsonReader jsonReader2;
        LottieComposition lottieComposition2;
        float f2;
        u uVar2;
        boolean z2;
        ArrayList arrayList = new ArrayList();
        if (jsonReader.peek() == JsonReader.Token.STRING) {
            lottieComposition.addWarning("Lottie doesn't support expressions.");
            return arrayList;
        }
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            if (jsonReader.selectName(f2686a) == 0) {
                if (jsonReader.peek() == JsonReader.Token.BEGIN_ARRAY) {
                    jsonReader.beginArray();
                    if (jsonReader.peek() == JsonReader.Token.NUMBER) {
                        JsonReader jsonReader3 = jsonReader;
                        LottieComposition lottieComposition3 = lottieComposition;
                        float f3 = f;
                        u uVar3 = uVar;
                        boolean z3 = z;
                        Keyframe keyframeB = h.b(jsonReader3, lottieComposition3, f3, uVar3, false, z3);
                        jsonReader2 = jsonReader3;
                        lottieComposition2 = lottieComposition3;
                        f2 = f3;
                        uVar2 = uVar3;
                        z2 = z3;
                        arrayList.add(keyframeB);
                    } else {
                        jsonReader2 = jsonReader;
                        lottieComposition2 = lottieComposition;
                        f2 = f;
                        uVar2 = uVar;
                        z2 = z;
                        while (jsonReader2.hasNext()) {
                            arrayList.add(h.b(jsonReader2, lottieComposition2, f2, uVar2, true, z2));
                        }
                    }
                    jsonReader2.endArray();
                    jsonReader = jsonReader2;
                    lottieComposition = lottieComposition2;
                    f = f2;
                    uVar = uVar2;
                    z = z2;
                } else {
                    JsonReader jsonReader4 = jsonReader;
                    arrayList.add(h.b(jsonReader4, lottieComposition, f, uVar, false, z));
                    jsonReader = jsonReader4;
                }
            } else {
                jsonReader.skipValue();
            }
        }
        jsonReader.endObject();
        setEndFrames(arrayList);
        return arrayList;
    }

    public static <T> void setEndFrames(List<? extends Keyframe<T>> list) {
        int i;
        T t;
        int size = list.size();
        int i2 = 0;
        while (true) {
            i = size - 1;
            if (i2 >= i) {
                break;
            }
            Keyframe<T> keyframe = list.get(i2);
            i2++;
            Keyframe<T> keyframe2 = list.get(i2);
            keyframe.endFrame = Float.valueOf(keyframe2.startFrame);
            if (keyframe.endValue == null && (t = keyframe2.startValue) != null) {
                keyframe.endValue = t;
                if (keyframe instanceof PathKeyframe) {
                    ((PathKeyframe) keyframe).createPath();
                }
            }
        }
        Keyframe<T> keyframe3 = list.get(i);
        if ((keyframe3.startValue == null || keyframe3.endValue == null) && list.size() > 1) {
            list.remove(keyframe3);
        }
    }
}
