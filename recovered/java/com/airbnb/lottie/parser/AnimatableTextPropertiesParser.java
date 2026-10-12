package com.airbnb.lottie.parser;

import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.model.animatable.AnimatableColorValue;
import com.airbnb.lottie.model.animatable.AnimatableFloatValue;
import com.airbnb.lottie.model.animatable.AnimatableTextProperties;
import com.airbnb.lottie.parser.moshi.JsonReader;
import java.io.IOException;

/* loaded from: classes.dex */
public class AnimatableTextPropertiesParser {

    /* renamed from: a, reason: collision with root package name */
    public static final JsonReader.Options f2660a = JsonReader.Options.of("a");

    /* renamed from: b, reason: collision with root package name */
    public static final JsonReader.Options f2661b = JsonReader.Options.of("fc", "sc", "sw", "t");

    private AnimatableTextPropertiesParser() {
    }

    public static AnimatableTextProperties parse(JsonReader jsonReader, LottieComposition lottieComposition) throws IOException {
        jsonReader.beginObject();
        AnimatableTextProperties animatableTextProperties = null;
        while (jsonReader.hasNext()) {
            if (jsonReader.selectName(f2660a) != 0) {
                jsonReader.skipName();
                jsonReader.skipValue();
            } else {
                jsonReader.beginObject();
                AnimatableColorValue animatableColorValue = null;
                AnimatableColorValue animatableColorValue2 = null;
                AnimatableFloatValue animatableFloatValue = null;
                AnimatableFloatValue animatableFloatValue2 = null;
                while (jsonReader.hasNext()) {
                    int iSelectName = jsonReader.selectName(f2661b);
                    if (iSelectName == 0) {
                        animatableColorValue = new AnimatableColorValue(i.a(jsonReader, lottieComposition, 1.0f, ColorParser.INSTANCE, false));
                    } else if (iSelectName == 1) {
                        animatableColorValue2 = new AnimatableColorValue(i.a(jsonReader, lottieComposition, 1.0f, ColorParser.INSTANCE, false));
                    } else if (iSelectName == 2) {
                        animatableFloatValue = AnimatableValueParser.parseFloat(jsonReader, lottieComposition);
                    } else if (iSelectName != 3) {
                        jsonReader.skipName();
                        jsonReader.skipValue();
                    } else {
                        animatableFloatValue2 = AnimatableValueParser.parseFloat(jsonReader, lottieComposition);
                    }
                }
                jsonReader.endObject();
                animatableTextProperties = new AnimatableTextProperties(animatableColorValue, animatableColorValue2, animatableFloatValue, animatableFloatValue2);
            }
        }
        jsonReader.endObject();
        return animatableTextProperties == null ? new AnimatableTextProperties(null, null, null, null) : animatableTextProperties;
    }
}
