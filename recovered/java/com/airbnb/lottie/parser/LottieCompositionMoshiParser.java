package com.airbnb.lottie.parser;

import android.graphics.Rect;
import androidx.collection.LongSparseArray;
import androidx.collection.SparseArrayCompat;
import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.LottieImageAsset;
import com.airbnb.lottie.model.Font;
import com.airbnb.lottie.model.FontCharacter;
import com.airbnb.lottie.model.Marker;
import com.airbnb.lottie.model.content.ShapeGroup;
import com.airbnb.lottie.model.layer.Layer;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.airbnb.lottie.utils.Logger;
import com.airbnb.lottie.utils.Utils;
import com.google.appinventor.components.common.ComponentDescriptorConstants;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

/* loaded from: classes.dex */
public class LottieCompositionMoshiParser {

    /* renamed from: a, reason: collision with root package name */
    public static final JsonReader.Options f2669a = JsonReader.Options.of("w", "h", "ip", "op", "fr", "v", "layers", ComponentDescriptorConstants.ASSETS_TARGET, "fonts", "chars", "markers");

    /* renamed from: b, reason: collision with root package name */
    public static final JsonReader.Options f2670b = JsonReader.Options.of("id", "layers", "w", "h", "p", "u");
    public static final JsonReader.Options c = JsonReader.Options.of("list");
    public static final JsonReader.Options d = JsonReader.Options.of("cm", "tm", "dr");

    public static LottieComposition parse(JsonReader jsonReader) throws IOException {
        SparseArrayCompat<FontCharacter> sparseArrayCompat;
        float f;
        float f2;
        SparseArrayCompat<FontCharacter> sparseArrayCompat2;
        ArrayList arrayList;
        float f3;
        float f4;
        int i = 1;
        float fDpScale = Utils.dpScale();
        LongSparseArray<Layer> longSparseArray = new LongSparseArray<>();
        ArrayList arrayList2 = new ArrayList();
        HashMap map = new HashMap();
        HashMap map2 = new HashMap();
        HashMap map3 = new HashMap();
        ArrayList arrayList3 = new ArrayList();
        SparseArrayCompat<FontCharacter> sparseArrayCompat3 = new SparseArrayCompat<>();
        LottieComposition lottieComposition = new LottieComposition();
        jsonReader.beginObject();
        int iNextInt = 0;
        int iNextInt2 = 0;
        float fNextDouble = 0.0f;
        float fNextDouble2 = 0.0f;
        float fNextDouble3 = 0.0f;
        while (jsonReader.hasNext()) {
            switch (jsonReader.selectName(f2669a)) {
                case 0:
                    sparseArrayCompat = sparseArrayCompat3;
                    iNextInt = jsonReader.nextInt();
                    sparseArrayCompat3 = sparseArrayCompat;
                    break;
                case 1:
                    sparseArrayCompat = sparseArrayCompat3;
                    iNextInt2 = jsonReader.nextInt();
                    sparseArrayCompat3 = sparseArrayCompat;
                    break;
                case 2:
                    fNextDouble = (float) jsonReader.nextDouble();
                    fDpScale = fDpScale;
                    break;
                case 3:
                    f = fDpScale;
                    sparseArrayCompat = sparseArrayCompat3;
                    fNextDouble2 = ((float) jsonReader.nextDouble()) - 0.01f;
                    fDpScale = f;
                    sparseArrayCompat3 = sparseArrayCompat;
                    break;
                case 4:
                    f = fDpScale;
                    sparseArrayCompat = sparseArrayCompat3;
                    fNextDouble3 = (float) jsonReader.nextDouble();
                    fDpScale = f;
                    sparseArrayCompat3 = sparseArrayCompat;
                    break;
                case 5:
                    f2 = fDpScale;
                    sparseArrayCompat2 = sparseArrayCompat3;
                    arrayList = arrayList3;
                    f3 = fNextDouble;
                    String[] strArrSplit = jsonReader.nextString().split("\\.");
                    if (!Utils.isAtLeastVersion(Integer.parseInt(strArrSplit[0]), Integer.parseInt(strArrSplit[1]), Integer.parseInt(strArrSplit[2]), 4, 4, 0)) {
                        lottieComposition.addWarning("Lottie only supports bodymovin >= 4.4.0");
                    }
                    fNextDouble = f3;
                    fDpScale = f2;
                    sparseArrayCompat3 = sparseArrayCompat2;
                    arrayList3 = arrayList;
                    break;
                case 6:
                    f2 = fDpScale;
                    sparseArrayCompat2 = sparseArrayCompat3;
                    arrayList = arrayList3;
                    f3 = fNextDouble;
                    jsonReader.beginArray();
                    int i2 = 0;
                    while (jsonReader.hasNext()) {
                        Layer layer = LayerParser.parse(jsonReader, lottieComposition);
                        if (layer.getLayerType() == Layer.LayerType.IMAGE) {
                            i2++;
                        }
                        arrayList2.add(layer);
                        longSparseArray.put(layer.getId(), layer);
                        if (i2 > 4) {
                            Logger.warning("You have " + i2 + " images. Lottie should primarily be used with shapes. If you are using Adobe Illustrator, convert the Illustrator layers to shape layers.");
                        }
                    }
                    jsonReader.endArray();
                    fNextDouble = f3;
                    fDpScale = f2;
                    sparseArrayCompat3 = sparseArrayCompat2;
                    arrayList3 = arrayList;
                    break;
                case 7:
                    f2 = fDpScale;
                    sparseArrayCompat2 = sparseArrayCompat3;
                    arrayList = arrayList3;
                    f3 = fNextDouble;
                    jsonReader.beginArray();
                    while (jsonReader.hasNext()) {
                        ArrayList arrayList4 = new ArrayList();
                        LongSparseArray longSparseArray2 = new LongSparseArray();
                        jsonReader.beginObject();
                        String strNextString = null;
                        String strNextString2 = null;
                        String strNextString3 = null;
                        int iNextInt3 = 0;
                        int iNextInt4 = 0;
                        while (jsonReader.hasNext()) {
                            int iSelectName = jsonReader.selectName(f2670b);
                            if (iSelectName == 0) {
                                strNextString = jsonReader.nextString();
                            } else if (iSelectName == 1) {
                                jsonReader.beginArray();
                                while (jsonReader.hasNext()) {
                                    Layer layer2 = LayerParser.parse(jsonReader, lottieComposition);
                                    longSparseArray2.put(layer2.getId(), layer2);
                                    arrayList4.add(layer2);
                                }
                                jsonReader.endArray();
                            } else if (iSelectName == 2) {
                                iNextInt3 = jsonReader.nextInt();
                            } else if (iSelectName == 3) {
                                iNextInt4 = jsonReader.nextInt();
                            } else if (iSelectName == 4) {
                                strNextString2 = jsonReader.nextString();
                            } else if (iSelectName == 5) {
                                strNextString3 = jsonReader.nextString();
                            } else {
                                jsonReader.skipName();
                                jsonReader.skipValue();
                            }
                        }
                        jsonReader.endObject();
                        if (strNextString2 != null) {
                            LottieImageAsset lottieImageAsset = new LottieImageAsset(iNextInt3, iNextInt4, strNextString, strNextString2, strNextString3);
                            map2.put(lottieImageAsset.getId(), lottieImageAsset);
                        } else {
                            map.put(strNextString, arrayList4);
                        }
                    }
                    jsonReader.endArray();
                    fNextDouble = f3;
                    fDpScale = f2;
                    sparseArrayCompat3 = sparseArrayCompat2;
                    arrayList3 = arrayList;
                    break;
                case 8:
                    f2 = fDpScale;
                    jsonReader.beginObject();
                    while (jsonReader.hasNext()) {
                        if (jsonReader.selectName(c) == 0) {
                            jsonReader.beginArray();
                            while (jsonReader.hasNext()) {
                                JsonReader.Options options = d.f2677a;
                                jsonReader.beginObject();
                                String strNextString4 = null;
                                String strNextString5 = null;
                                String strNextString6 = null;
                                float fNextDouble4 = 0.0f;
                                while (jsonReader.hasNext()) {
                                    SparseArrayCompat<FontCharacter> sparseArrayCompat4 = sparseArrayCompat3;
                                    int iSelectName2 = jsonReader.selectName(d.f2677a);
                                    if (iSelectName2 != 0) {
                                        ArrayList arrayList5 = arrayList3;
                                        if (iSelectName2 == 1) {
                                            strNextString5 = jsonReader.nextString();
                                        } else if (iSelectName2 == 2) {
                                            strNextString6 = jsonReader.nextString();
                                        } else if (iSelectName2 == 3) {
                                            fNextDouble4 = (float) jsonReader.nextDouble();
                                            fNextDouble = fNextDouble;
                                        } else {
                                            jsonReader.skipName();
                                            jsonReader.skipValue();
                                        }
                                        sparseArrayCompat3 = sparseArrayCompat4;
                                        arrayList3 = arrayList5;
                                    } else {
                                        strNextString4 = jsonReader.nextString();
                                        sparseArrayCompat3 = sparseArrayCompat4;
                                    }
                                }
                                ArrayList arrayList6 = arrayList3;
                                jsonReader.endObject();
                                Font font = new Font(strNextString4, strNextString5, strNextString6, fNextDouble4);
                                map3.put(font.getName(), font);
                                fNextDouble = fNextDouble;
                                sparseArrayCompat3 = sparseArrayCompat3;
                                arrayList3 = arrayList6;
                            }
                            jsonReader.endArray();
                            sparseArrayCompat3 = sparseArrayCompat3;
                        } else {
                            jsonReader.skipName();
                            jsonReader.skipValue();
                        }
                    }
                    sparseArrayCompat2 = sparseArrayCompat3;
                    arrayList = arrayList3;
                    f3 = fNextDouble;
                    jsonReader.endObject();
                    fNextDouble = f3;
                    fDpScale = f2;
                    sparseArrayCompat3 = sparseArrayCompat2;
                    arrayList3 = arrayList;
                    break;
                case 9:
                    f2 = fDpScale;
                    jsonReader.beginArray();
                    while (jsonReader.hasNext()) {
                        JsonReader.Options options2 = c.f2675a;
                        ArrayList arrayList7 = new ArrayList();
                        jsonReader.beginObject();
                        double dNextDouble = 0.0d;
                        double dNextDouble2 = 0.0d;
                        String strNextString7 = null;
                        String strNextString8 = null;
                        char cCharAt = 0;
                        while (jsonReader.hasNext()) {
                            int iSelectName3 = jsonReader.selectName(c.f2675a);
                            if (iSelectName3 == 0) {
                                cCharAt = jsonReader.nextString().charAt(0);
                            } else if (iSelectName3 == 1) {
                                dNextDouble = jsonReader.nextDouble();
                            } else if (iSelectName3 == 2) {
                                dNextDouble2 = jsonReader.nextDouble();
                            } else if (iSelectName3 == 3) {
                                strNextString7 = jsonReader.nextString();
                            } else if (iSelectName3 == 4) {
                                strNextString8 = jsonReader.nextString();
                            } else if (iSelectName3 == 5) {
                                jsonReader.beginObject();
                                while (jsonReader.hasNext()) {
                                    if (jsonReader.selectName(c.f2676b) == 0) {
                                        jsonReader.beginArray();
                                        while (jsonReader.hasNext()) {
                                            arrayList7.add((ShapeGroup) b.a(jsonReader, lottieComposition));
                                        }
                                        jsonReader.endArray();
                                    } else {
                                        jsonReader.skipName();
                                        jsonReader.skipValue();
                                    }
                                }
                                jsonReader.endObject();
                            } else {
                                jsonReader.skipName();
                                jsonReader.skipValue();
                            }
                        }
                        jsonReader.endObject();
                        FontCharacter fontCharacter = new FontCharacter(arrayList7, cCharAt, dNextDouble, dNextDouble2, strNextString7, strNextString8);
                        sparseArrayCompat3.put(fontCharacter.hashCode(), fontCharacter);
                    }
                    jsonReader.endArray();
                    sparseArrayCompat2 = sparseArrayCompat3;
                    arrayList = arrayList3;
                    f3 = fNextDouble;
                    fNextDouble = f3;
                    fDpScale = f2;
                    sparseArrayCompat3 = sparseArrayCompat2;
                    arrayList3 = arrayList;
                    break;
                case 10:
                    jsonReader.beginArray();
                    while (jsonReader.hasNext()) {
                        jsonReader.beginObject();
                        String strNextString9 = null;
                        float fNextDouble5 = 0.0f;
                        float fNextDouble6 = 0.0f;
                        while (jsonReader.hasNext()) {
                            int iSelectName4 = jsonReader.selectName(d);
                            if (iSelectName4 != 0) {
                                if (iSelectName4 == i) {
                                    f4 = fDpScale;
                                    fNextDouble5 = (float) jsonReader.nextDouble();
                                } else if (iSelectName4 == 2) {
                                    f4 = fDpScale;
                                    fNextDouble6 = (float) jsonReader.nextDouble();
                                } else {
                                    jsonReader.skipName();
                                    jsonReader.skipValue();
                                }
                                fDpScale = f4;
                            } else {
                                strNextString9 = jsonReader.nextString();
                            }
                            i = 1;
                        }
                        jsonReader.endObject();
                        arrayList3.add(new Marker(strNextString9, fNextDouble5, fNextDouble6));
                        fDpScale = fDpScale;
                        i = 1;
                    }
                    f2 = fDpScale;
                    jsonReader.endArray();
                    sparseArrayCompat2 = sparseArrayCompat3;
                    arrayList = arrayList3;
                    f3 = fNextDouble;
                    fNextDouble = f3;
                    fDpScale = f2;
                    sparseArrayCompat3 = sparseArrayCompat2;
                    arrayList3 = arrayList;
                    break;
                default:
                    jsonReader.skipName();
                    jsonReader.skipValue();
                    f2 = fDpScale;
                    sparseArrayCompat2 = sparseArrayCompat3;
                    arrayList = arrayList3;
                    f3 = fNextDouble;
                    fNextDouble = f3;
                    fDpScale = f2;
                    sparseArrayCompat3 = sparseArrayCompat2;
                    arrayList3 = arrayList;
                    break;
            }
            i = 1;
        }
        float f5 = fDpScale;
        lottieComposition.init(new Rect(0, 0, (int) (iNextInt * f5), (int) (iNextInt2 * f5)), fNextDouble, fNextDouble2, fNextDouble3, arrayList2, longSparseArray, map, map2, sparseArrayCompat3, map3, arrayList3);
        return lottieComposition;
    }
}
