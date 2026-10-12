package com.airbnb.lottie.parser;

import android.graphics.Rect;
import androidx.collection.LongSparseArray;
import androidx.collection.SparseArrayCompat;
import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.model.FontCharacter;
import com.airbnb.lottie.model.layer.Layer;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.airbnb.lottie.utils.Logger;
import com.airbnb.lottie.utils.Utils;
import com.google.appinventor.components.common.ComponentDescriptorConstants;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

/* loaded from: classes.dex */
public class LottieCompositionParser {

    /* renamed from: a, reason: collision with root package name */
    public static final JsonReader.Options f2671a = JsonReader.Options.of("w", "h", "ip", "op", "fr", "v", "layers", ComponentDescriptorConstants.ASSETS_TARGET, "fonts", "chars", "markers");

    public static LottieComposition parse(JsonReader jsonReader) throws IOException {
        float f;
        float f2;
        float f3;
        float f4;
        JsonReader jsonReader2 = jsonReader;
        float fDpScale = Utils.dpScale();
        LongSparseArray<Layer> longSparseArray = new LongSparseArray<>();
        ArrayList arrayList = new ArrayList();
        HashMap map = new HashMap();
        HashMap map2 = new HashMap();
        HashMap map3 = new HashMap();
        ArrayList arrayList2 = new ArrayList();
        SparseArrayCompat<FontCharacter> sparseArrayCompat = new SparseArrayCompat<>();
        LottieComposition lottieComposition = new LottieComposition();
        jsonReader2.beginObject();
        float fNextDouble = 0.0f;
        float fNextDouble2 = 0.0f;
        float fNextDouble3 = 0.0f;
        int iNextInt = 0;
        int iNextInt2 = 0;
        while (jsonReader2.hasNext()) {
            switch (jsonReader2.selectName(f2671a)) {
                case 0:
                    f = fNextDouble;
                    iNextInt = jsonReader.nextInt();
                    fNextDouble = f;
                    jsonReader2 = jsonReader;
                    break;
                case 1:
                    f = fNextDouble;
                    iNextInt2 = jsonReader.nextInt();
                    fNextDouble = f;
                    jsonReader2 = jsonReader;
                    break;
                case 2:
                    fNextDouble2 = fNextDouble2;
                    jsonReader2 = jsonReader;
                    fNextDouble = (float) jsonReader.nextDouble();
                    fDpScale = fDpScale;
                    break;
                case 3:
                    fNextDouble2 = ((float) jsonReader.nextDouble()) - 0.01f;
                    jsonReader2 = jsonReader;
                    fDpScale = fDpScale;
                    fNextDouble = fNextDouble;
                    break;
                case 4:
                    f = fNextDouble;
                    fNextDouble3 = (float) jsonReader.nextDouble();
                    fNextDouble = f;
                    jsonReader2 = jsonReader;
                    break;
                case 5:
                    f2 = fDpScale;
                    f = fNextDouble;
                    f3 = fNextDouble2;
                    f4 = fNextDouble3;
                    String[] strArrSplit = jsonReader.nextString().split("\\.");
                    if (!Utils.isAtLeastVersion(Integer.parseInt(strArrSplit[0]), Integer.parseInt(strArrSplit[1]), Integer.parseInt(strArrSplit[2]), 4, 4, 0)) {
                        lottieComposition.addWarning("Lottie only supports bodymovin >= 4.4.0");
                    }
                    fNextDouble2 = f3;
                    fNextDouble3 = f4;
                    fDpScale = f2;
                    fNextDouble = f;
                    jsonReader2 = jsonReader;
                    break;
                case 6:
                    jsonReader2.beginArray();
                    int i = 0;
                    while (jsonReader2.hasNext()) {
                        float f5 = fDpScale;
                        Layer layer = LayerParser.parse(jsonReader2, lottieComposition);
                        float f6 = fNextDouble;
                        if (layer.getLayerType() == Layer.LayerType.IMAGE) {
                            i++;
                        }
                        arrayList.add(layer);
                        float f7 = fNextDouble2;
                        float f8 = fNextDouble3;
                        longSparseArray.put(layer.getId(), layer);
                        if (i > 4) {
                            Logger.warning("You have " + i + " images. Lottie should primarily be used with shapes. If you are using Adobe Illustrator, convert the Illustrator layers to shape layers.");
                        }
                        fNextDouble2 = f7;
                        fNextDouble3 = f8;
                        fDpScale = f5;
                        fNextDouble = f6;
                        jsonReader2 = jsonReader;
                    }
                    f2 = fDpScale;
                    f = fNextDouble;
                    f3 = fNextDouble2;
                    f4 = fNextDouble3;
                    jsonReader.endArray();
                    jsonReader.skipValue();
                    fNextDouble2 = f3;
                    fNextDouble3 = f4;
                    fDpScale = f2;
                    fNextDouble = f;
                    jsonReader2 = jsonReader;
                    break;
                default:
                    f2 = fDpScale;
                    f = fNextDouble;
                    f3 = fNextDouble2;
                    f4 = fNextDouble3;
                    jsonReader.skipValue();
                    fNextDouble2 = f3;
                    fNextDouble3 = f4;
                    fDpScale = f2;
                    fNextDouble = f;
                    jsonReader2 = jsonReader;
                    break;
            }
        }
        float f9 = fDpScale;
        lottieComposition.init(new Rect(0, 0, (int) (iNextInt * f9), (int) (iNextInt2 * f9)), fNextDouble, fNextDouble2, fNextDouble3, arrayList, longSparseArray, map, map2, sparseArrayCompat, map3, arrayList2);
        return lottieComposition;
    }
}
