package com.airbnb.lottie.parser;

import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.animation.keyframe.PathKeyframe;
import com.airbnb.lottie.model.animatable.AnimatableFloatValue;
import com.airbnb.lottie.model.animatable.AnimatablePathValue;
import com.airbnb.lottie.model.animatable.AnimatableSplitDimensionPathValue;
import com.airbnb.lottie.model.animatable.AnimatableValue;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.airbnb.lottie.utils.Utils;
import com.airbnb.lottie.value.Keyframe;
import java.io.IOException;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class AnimatablePathValueParser {

    /* renamed from: a, reason: collision with root package name */
    public static final JsonReader.Options f2659a = JsonReader.Options.of("k", "x", "y");

    private AnimatablePathValueParser() {
    }

    public static AnimatablePathValue parse(JsonReader jsonReader, LottieComposition lottieComposition) throws IOException {
        ArrayList arrayList = new ArrayList();
        if (jsonReader.peek() == JsonReader.Token.BEGIN_ARRAY) {
            jsonReader.beginArray();
            while (jsonReader.hasNext()) {
                JsonReader jsonReader2 = jsonReader;
                LottieComposition lottieComposition2 = lottieComposition;
                arrayList.add(new PathKeyframe(lottieComposition2, h.b(jsonReader2, lottieComposition2, Utils.dpScale(), PathParser.INSTANCE, jsonReader.peek() == JsonReader.Token.BEGIN_OBJECT, false)));
                jsonReader = jsonReader2;
                lottieComposition = lottieComposition2;
            }
            jsonReader.endArray();
            i.setEndFrames(arrayList);
        } else {
            arrayList.add(new Keyframe(g.b(jsonReader, Utils.dpScale())));
        }
        return new AnimatablePathValue(arrayList);
    }

    public static AnimatableValue a(JsonReader jsonReader, LottieComposition lottieComposition) {
        jsonReader.beginObject();
        AnimatablePathValue animatablePathValue = null;
        AnimatableFloatValue animatableFloatValue = null;
        AnimatableFloatValue animatableFloatValue2 = null;
        boolean z = false;
        while (jsonReader.peek() != JsonReader.Token.END_OBJECT) {
            int iSelectName = jsonReader.selectName(f2659a);
            if (iSelectName == 0) {
                animatablePathValue = parse(jsonReader, lottieComposition);
            } else if (iSelectName != 1) {
                if (iSelectName == 2) {
                    if (jsonReader.peek() == JsonReader.Token.STRING) {
                        jsonReader.skipValue();
                        z = true;
                    } else {
                        animatableFloatValue2 = AnimatableValueParser.parseFloat(jsonReader, lottieComposition);
                    }
                } else {
                    jsonReader.skipName();
                    jsonReader.skipValue();
                }
            } else if (jsonReader.peek() == JsonReader.Token.STRING) {
                jsonReader.skipValue();
                z = true;
            } else {
                animatableFloatValue = AnimatableValueParser.parseFloat(jsonReader, lottieComposition);
            }
        }
        jsonReader.endObject();
        if (z) {
            lottieComposition.addWarning("Lottie doesn't support expressions.");
        }
        return animatablePathValue != null ? animatablePathValue : new AnimatableSplitDimensionPathValue(animatableFloatValue, animatableFloatValue2);
    }
}
