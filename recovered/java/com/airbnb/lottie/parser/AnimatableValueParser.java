package com.airbnb.lottie.parser;

import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.model.animatable.AnimatableFloatValue;
import com.airbnb.lottie.model.animatable.AnimatableIntegerValue;
import com.airbnb.lottie.model.animatable.AnimatablePointValue;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.airbnb.lottie.utils.Utils;
import java.io.IOException;

/* loaded from: classes.dex */
public class AnimatableValueParser {
    private AnimatableValueParser() {
    }

    public static AnimatableFloatValue parseFloat(JsonReader jsonReader, LottieComposition lottieComposition) throws IOException {
        return parseFloat(jsonReader, lottieComposition, true);
    }

    public static AnimatableFloatValue parseFloat(JsonReader jsonReader, LottieComposition lottieComposition, boolean z) throws IOException {
        return new AnimatableFloatValue(i.a(jsonReader, lottieComposition, z ? Utils.dpScale() : 1.0f, FloatParser.INSTANCE, false));
    }

    public static AnimatableIntegerValue a(JsonReader jsonReader, LottieComposition lottieComposition) {
        return new AnimatableIntegerValue(i.a(jsonReader, lottieComposition, 1.0f, IntegerParser.INSTANCE, false));
    }

    public static AnimatablePointValue b(JsonReader jsonReader, LottieComposition lottieComposition) {
        return new AnimatablePointValue(i.a(jsonReader, lottieComposition, Utils.dpScale(), PointFParser.INSTANCE, true));
    }
}
