package com.airbnb.lottie.parser;

import android.graphics.PointF;
import com.airbnb.lottie.model.CubicCurveData;
import com.airbnb.lottie.model.content.ShapeData;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.airbnb.lottie.utils.MiscUtils;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;

/* loaded from: classes.dex */
public class ShapeDataParser implements u<ShapeData> {
    public static final ShapeDataParser INSTANCE = new ShapeDataParser();

    /* renamed from: a, reason: collision with root package name */
    public static final JsonReader.Options f2672a = JsonReader.Options.of("c", "v", "i", "o");

    private ShapeDataParser() {
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.airbnb.lottie.parser.u
    public ShapeData parse(JsonReader jsonReader, float f) throws IOException {
        if (jsonReader.peek() == JsonReader.Token.BEGIN_ARRAY) {
            jsonReader.beginArray();
        }
        jsonReader.beginObject();
        ArrayList arrayListC = null;
        ArrayList arrayListC2 = null;
        ArrayList arrayListC3 = null;
        boolean zNextBoolean = false;
        while (jsonReader.hasNext()) {
            int iSelectName = jsonReader.selectName(f2672a);
            if (iSelectName == 0) {
                zNextBoolean = jsonReader.nextBoolean();
            } else if (iSelectName == 1) {
                arrayListC = g.c(jsonReader, f);
            } else if (iSelectName == 2) {
                arrayListC2 = g.c(jsonReader, f);
            } else if (iSelectName == 3) {
                arrayListC3 = g.c(jsonReader, f);
            } else {
                jsonReader.skipName();
                jsonReader.skipValue();
            }
        }
        jsonReader.endObject();
        if (jsonReader.peek() == JsonReader.Token.END_ARRAY) {
            jsonReader.endArray();
        }
        if (arrayListC == null || arrayListC2 == null || arrayListC3 == null) {
            throw new IllegalArgumentException("Shape data was missing information.");
        }
        if (arrayListC.isEmpty()) {
            return new ShapeData(new PointF(), false, Collections.EMPTY_LIST);
        }
        int size = arrayListC.size();
        PointF pointF = (PointF) arrayListC.get(0);
        ArrayList arrayList = new ArrayList(size);
        for (int i = 1; i < size; i++) {
            PointF pointF2 = (PointF) arrayListC.get(i);
            int i2 = i - 1;
            arrayList.add(new CubicCurveData(MiscUtils.addPoints((PointF) arrayListC.get(i2), (PointF) arrayListC3.get(i2)), MiscUtils.addPoints(pointF2, (PointF) arrayListC2.get(i)), pointF2));
        }
        if (zNextBoolean) {
            PointF pointF3 = (PointF) arrayListC.get(0);
            int i3 = size - 1;
            arrayList.add(new CubicCurveData(MiscUtils.addPoints((PointF) arrayListC.get(i3), (PointF) arrayListC3.get(i3)), MiscUtils.addPoints(pointF3, (PointF) arrayListC2.get(0)), pointF3));
        }
        return new ShapeData(pointF, zNextBoolean, arrayList);
    }
}
