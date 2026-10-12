package com.airbnb.lottie.parser;

import android.graphics.PointF;
import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.model.animatable.AnimatableFloatValue;
import com.airbnb.lottie.model.animatable.AnimatableIntegerValue;
import com.airbnb.lottie.model.animatable.AnimatablePathValue;
import com.airbnb.lottie.model.animatable.AnimatableScaleValue;
import com.airbnb.lottie.model.animatable.AnimatableSplitDimensionPathValue;
import com.airbnb.lottie.model.animatable.AnimatableTransform;
import com.airbnb.lottie.model.animatable.AnimatableValue;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.airbnb.lottie.value.Keyframe;
import com.airbnb.lottie.value.ScaleXY;
import java.io.IOException;

/* loaded from: classes.dex */
public class AnimatableTransformParser {

    /* renamed from: a, reason: collision with root package name */
    public static final JsonReader.Options f2662a = JsonReader.Options.of("a", "p", "s", "rz", "r", "o", "so", "eo", "sk", "sa");

    /* renamed from: b, reason: collision with root package name */
    public static final JsonReader.Options f2663b = JsonReader.Options.of("k");

    private AnimatableTransformParser() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static AnimatableTransform parse(JsonReader jsonReader, LottieComposition lottieComposition) throws IOException {
        LottieComposition lottieComposition2 = lottieComposition;
        boolean z = jsonReader.peek() == JsonReader.Token.BEGIN_OBJECT;
        if (z) {
            jsonReader.beginObject();
        }
        AnimatableFloatValue animatableFloatValue = null;
        AnimatablePathValue animatablePathValue = null;
        AnimatableValue animatableValueA = null;
        AnimatableScaleValue animatableScaleValue = null;
        AnimatableFloatValue animatableFloatValue2 = null;
        AnimatableFloatValue animatableFloatValue3 = null;
        AnimatableIntegerValue animatableIntegerValueA = null;
        AnimatableFloatValue animatableFloatValue4 = null;
        AnimatableFloatValue animatableFloatValue5 = null;
        while (jsonReader.hasNext()) {
            switch (jsonReader.selectName(f2662a)) {
                case 0:
                    jsonReader.beginObject();
                    while (jsonReader.hasNext()) {
                        if (jsonReader.selectName(f2663b) == 0) {
                            animatablePathValue = AnimatablePathValueParser.parse(jsonReader, lottieComposition);
                        } else {
                            jsonReader.skipName();
                            jsonReader.skipValue();
                        }
                    }
                    jsonReader.endObject();
                    continue;
                case 1:
                    animatableValueA = AnimatablePathValueParser.a(jsonReader, lottieComposition);
                    continue;
                case 2:
                    animatableScaleValue = new AnimatableScaleValue(i.a(jsonReader, lottieComposition2, 1.0f, ScaleXYParser.INSTANCE, false));
                    continue;
                case 3:
                    lottieComposition2.addWarning("Lottie doesn't support 3D layers.");
                    break;
                case 4:
                    break;
                case 5:
                    animatableIntegerValueA = AnimatableValueParser.a(jsonReader, lottieComposition);
                    continue;
                case 6:
                    animatableFloatValue4 = AnimatableValueParser.parseFloat(jsonReader, lottieComposition2, false);
                    continue;
                case 7:
                    animatableFloatValue5 = AnimatableValueParser.parseFloat(jsonReader, lottieComposition2, false);
                    continue;
                case 8:
                    animatableFloatValue2 = AnimatableValueParser.parseFloat(jsonReader, lottieComposition2, false);
                    continue;
                case 9:
                    animatableFloatValue3 = AnimatableValueParser.parseFloat(jsonReader, lottieComposition2, false);
                    continue;
                default:
                    jsonReader.skipName();
                    jsonReader.skipValue();
                    continue;
            }
            AnimatableFloatValue animatableFloatValue6 = AnimatableValueParser.parseFloat(jsonReader, lottieComposition2, false);
            if (animatableFloatValue6.getKeyframes().isEmpty()) {
                animatableFloatValue6.getKeyframes().add(new Keyframe(lottieComposition2, Float.valueOf(0.0f), Float.valueOf(0.0f), null, 0.0f, Float.valueOf(lottieComposition2.getEndFrame())));
            } else {
                if (((Keyframe) animatableFloatValue6.getKeyframes().get(0)).startValue == 0) {
                    lottieComposition2 = lottieComposition;
                    animatableFloatValue6.getKeyframes().set(0, new Keyframe(lottieComposition2, Float.valueOf(0.0f), Float.valueOf(0.0f), null, 0.0f, Float.valueOf(lottieComposition.getEndFrame())));
                }
                animatableFloatValue = animatableFloatValue6;
            }
            lottieComposition2 = lottieComposition;
            animatableFloatValue = animatableFloatValue6;
        }
        if (z) {
            jsonReader.endObject();
        }
        AnimatablePathValue animatablePathValue2 = (animatablePathValue == null || (animatablePathValue.isStatic() && animatablePathValue.getKeyframes().get(0).startValue.equals(0.0f, 0.0f))) ? null : animatablePathValue;
        if (animatableValueA == null || (!(animatableValueA instanceof AnimatableSplitDimensionPathValue) && animatableValueA.isStatic() && ((PointF) ((Keyframe) animatableValueA.getKeyframes().get(0)).startValue).equals(0.0f, 0.0f))) {
            animatableValueA = null;
        }
        return new AnimatableTransform(animatablePathValue2, animatableValueA, (animatableScaleValue == null || (animatableScaleValue.isStatic() && ((ScaleXY) ((Keyframe) animatableScaleValue.getKeyframes().get(0)).startValue).equals(1.0f, 1.0f))) ? null : animatableScaleValue, (animatableFloatValue == null || (animatableFloatValue.isStatic() && ((Float) ((Keyframe) animatableFloatValue.getKeyframes().get(0)).startValue).floatValue() == 0.0f)) ? null : animatableFloatValue, animatableIntegerValueA, animatableFloatValue4, animatableFloatValue5, (animatableFloatValue2 == null || (animatableFloatValue2.isStatic() && ((Float) ((Keyframe) animatableFloatValue2.getKeyframes().get(0)).startValue).floatValue() == 0.0f)) ? null : animatableFloatValue2, (animatableFloatValue3 == null || (animatableFloatValue3.isStatic() && ((Float) ((Keyframe) animatableFloatValue3.getKeyframes().get(0)).startValue).floatValue() == 0.0f)) ? null : animatableFloatValue3);
    }
}
