package com.airbnb.lottie.parser;

import android.graphics.Color;
import android.graphics.PointF;
import com.airbnb.lottie.parser.moshi.JsonReader;
import java.io.IOException;
import java.util.ArrayList;

/* loaded from: classes.dex */
class g {

    /* renamed from: a, reason: collision with root package name */
    public static final JsonReader.Options f2682a = JsonReader.Options.of("x", "y");

    private g() {
    }

    public static int a(JsonReader jsonReader) throws IOException {
        jsonReader.beginArray();
        int iNextDouble = (int) (jsonReader.nextDouble() * 255.0d);
        int iNextDouble2 = (int) (jsonReader.nextDouble() * 255.0d);
        int iNextDouble3 = (int) (jsonReader.nextDouble() * 255.0d);
        while (jsonReader.hasNext()) {
            jsonReader.skipValue();
        }
        jsonReader.endArray();
        return Color.argb(255, iNextDouble, iNextDouble2, iNextDouble3);
    }

    public static ArrayList c(JsonReader jsonReader, float f) throws IOException {
        ArrayList arrayList = new ArrayList();
        jsonReader.beginArray();
        while (jsonReader.peek() == JsonReader.Token.BEGIN_ARRAY) {
            jsonReader.beginArray();
            arrayList.add(b(jsonReader, f));
            jsonReader.endArray();
        }
        jsonReader.endArray();
        return arrayList;
    }

    public static /* synthetic */ class a {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f2683a;

        static {
            int[] iArr = new int[JsonReader.Token.values().length];
            f2683a = iArr;
            try {
                iArr[JsonReader.Token.NUMBER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f2683a[JsonReader.Token.BEGIN_ARRAY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f2683a[JsonReader.Token.BEGIN_OBJECT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public static PointF b(JsonReader jsonReader, float f) throws IOException {
        int i = a.f2683a[jsonReader.peek().ordinal()];
        if (i == 1) {
            float fNextDouble = (float) jsonReader.nextDouble();
            float fNextDouble2 = (float) jsonReader.nextDouble();
            while (jsonReader.hasNext()) {
                jsonReader.skipValue();
            }
            return new PointF(fNextDouble * f, fNextDouble2 * f);
        }
        if (i == 2) {
            jsonReader.beginArray();
            float fNextDouble3 = (float) jsonReader.nextDouble();
            float fNextDouble4 = (float) jsonReader.nextDouble();
            while (jsonReader.peek() != JsonReader.Token.END_ARRAY) {
                jsonReader.skipValue();
            }
            jsonReader.endArray();
            return new PointF(fNextDouble3 * f, fNextDouble4 * f);
        }
        if (i != 3) {
            throw new IllegalArgumentException("Unknown point starts with " + jsonReader.peek());
        }
        jsonReader.beginObject();
        float fD = 0.0f;
        float fD2 = 0.0f;
        while (jsonReader.hasNext()) {
            int iSelectName = jsonReader.selectName(f2682a);
            if (iSelectName == 0) {
                fD = d(jsonReader);
            } else if (iSelectName == 1) {
                fD2 = d(jsonReader);
            } else {
                jsonReader.skipName();
                jsonReader.skipValue();
            }
        }
        jsonReader.endObject();
        return new PointF(fD * f, fD2 * f);
    }

    public static float d(JsonReader jsonReader) throws IOException {
        JsonReader.Token tokenPeek = jsonReader.peek();
        int i = a.f2683a[tokenPeek.ordinal()];
        if (i == 1) {
            return (float) jsonReader.nextDouble();
        }
        if (i == 2) {
            jsonReader.beginArray();
            float fNextDouble = (float) jsonReader.nextDouble();
            while (jsonReader.hasNext()) {
                jsonReader.skipValue();
            }
            jsonReader.endArray();
            return fNextDouble;
        }
        throw new IllegalArgumentException("Unknown value for token of type " + tokenPeek);
    }
}
