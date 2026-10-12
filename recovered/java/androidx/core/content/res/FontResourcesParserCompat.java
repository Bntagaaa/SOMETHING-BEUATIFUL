package androidx.core.content.res;

import android.content.res.Resources;
import android.content.res.TypedArray;
import android.util.Base64;
import android.util.Xml;
import androidx.annotation.ArrayRes;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.core.R;
import androidx.core.provider.FontRequest;
import java.io.IOException;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public class FontResourcesParserCompat {
    public static final int FETCH_STRATEGY_ASYNC = 1;
    public static final int FETCH_STRATEGY_BLOCKING = 0;
    public static final int INFINITE_TIMEOUT_VALUE = -1;

    public interface FamilyResourceEntry {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface FetchStrategy {
    }

    public static final class ProviderResourceEntry implements FamilyResourceEntry {

        /* renamed from: a, reason: collision with root package name */
        public final FontRequest f1005a;

        /* renamed from: b, reason: collision with root package name */
        public final int f1006b;
        public final int c;
        public final String d;

        @RestrictTo({RestrictTo.Scope.LIBRARY})
        public ProviderResourceEntry(@NonNull FontRequest fontRequest, int i, int i2, @Nullable String str) {
            this.f1005a = fontRequest;
            this.c = i;
            this.f1006b = i2;
            this.d = str;
        }

        public ProviderResourceEntry(@NonNull FontRequest fontRequest, int i, int i2) {
            this(fontRequest, i, i2, null);
        }

        @NonNull
        public FontRequest getRequest() {
            return this.f1005a;
        }

        public int getFetchStrategy() {
            return this.c;
        }

        public int getTimeout() {
            return this.f1006b;
        }

        @Nullable
        @RestrictTo({RestrictTo.Scope.LIBRARY})
        public String getSystemFontFamilyName() {
            return this.d;
        }
    }

    public static final class FontFileResourceEntry {

        /* renamed from: a, reason: collision with root package name */
        public final String f1003a;

        /* renamed from: b, reason: collision with root package name */
        public final int f1004b;
        public final boolean c;
        public final String d;
        public final int e;
        public final int f;

        public FontFileResourceEntry(@NonNull String str, int i, boolean z, @Nullable String str2, int i2, int i3) {
            this.f1003a = str;
            this.f1004b = i;
            this.c = z;
            this.d = str2;
            this.e = i2;
            this.f = i3;
        }

        @NonNull
        public String getFileName() {
            return this.f1003a;
        }

        public int getWeight() {
            return this.f1004b;
        }

        public boolean isItalic() {
            return this.c;
        }

        @Nullable
        public String getVariationSettings() {
            return this.d;
        }

        public int getTtcIndex() {
            return this.e;
        }

        public int getResourceId() {
            return this.f;
        }
    }

    public static final class FontFamilyFilesResourceEntry implements FamilyResourceEntry {

        /* renamed from: a, reason: collision with root package name */
        public final FontFileResourceEntry[] f1002a;

        public FontFamilyFilesResourceEntry(@NonNull FontFileResourceEntry[] fontFileResourceEntryArr) {
            this.f1002a = fontFileResourceEntryArr;
        }

        @NonNull
        public FontFileResourceEntry[] getEntries() {
            return this.f1002a;
        }
    }

    @Nullable
    public static FamilyResourceEntry parse(@NonNull XmlPullParser xmlPullParser, @NonNull Resources resources) throws XmlPullParserException, IOException {
        int next;
        do {
            next = xmlPullParser.next();
            if (next == 2) {
                break;
            }
        } while (next != 1);
        if (next != 2) {
            throw new XmlPullParserException("No start tag found");
        }
        xmlPullParser.require(2, null, "font-family");
        if (!xmlPullParser.getName().equals("font-family")) {
            a(xmlPullParser);
            return null;
        }
        TypedArray typedArrayObtainAttributes = resources.obtainAttributes(Xml.asAttributeSet(xmlPullParser), R.styleable.FontFamily);
        String string = typedArrayObtainAttributes.getString(R.styleable.FontFamily_fontProviderAuthority);
        String string2 = typedArrayObtainAttributes.getString(R.styleable.FontFamily_fontProviderPackage);
        String string3 = typedArrayObtainAttributes.getString(R.styleable.FontFamily_fontProviderQuery);
        int resourceId = typedArrayObtainAttributes.getResourceId(R.styleable.FontFamily_fontProviderCerts, 0);
        int integer = typedArrayObtainAttributes.getInteger(R.styleable.FontFamily_fontProviderFetchStrategy, 1);
        int integer2 = typedArrayObtainAttributes.getInteger(R.styleable.FontFamily_fontProviderFetchTimeout, 500);
        String string4 = typedArrayObtainAttributes.getString(R.styleable.FontFamily_fontProviderSystemFontFamily);
        typedArrayObtainAttributes.recycle();
        if (string != null && string2 != null && string3 != null) {
            while (xmlPullParser.next() != 3) {
                a(xmlPullParser);
            }
            return new ProviderResourceEntry(new FontRequest(string, string2, string3, readCerts(resources, resourceId)), integer, integer2, string4);
        }
        ArrayList arrayList = new ArrayList();
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                if (!xmlPullParser.getName().equals("font")) {
                    a(xmlPullParser);
                } else {
                    TypedArray typedArrayObtainAttributes2 = resources.obtainAttributes(Xml.asAttributeSet(xmlPullParser), R.styleable.FontFamilyFont);
                    int i = R.styleable.FontFamilyFont_fontWeight;
                    if (!typedArrayObtainAttributes2.hasValue(i)) {
                        i = R.styleable.FontFamilyFont_android_fontWeight;
                    }
                    int i2 = typedArrayObtainAttributes2.getInt(i, 400);
                    int i3 = R.styleable.FontFamilyFont_fontStyle;
                    if (!typedArrayObtainAttributes2.hasValue(i3)) {
                        i3 = R.styleable.FontFamilyFont_android_fontStyle;
                    }
                    boolean z = 1 == typedArrayObtainAttributes2.getInt(i3, 0);
                    int i4 = R.styleable.FontFamilyFont_ttcIndex;
                    if (!typedArrayObtainAttributes2.hasValue(i4)) {
                        i4 = R.styleable.FontFamilyFont_android_ttcIndex;
                    }
                    int i5 = R.styleable.FontFamilyFont_fontVariationSettings;
                    if (!typedArrayObtainAttributes2.hasValue(i5)) {
                        i5 = R.styleable.FontFamilyFont_android_fontVariationSettings;
                    }
                    String string5 = typedArrayObtainAttributes2.getString(i5);
                    int i6 = typedArrayObtainAttributes2.getInt(i4, 0);
                    int i7 = R.styleable.FontFamilyFont_font;
                    if (!typedArrayObtainAttributes2.hasValue(i7)) {
                        i7 = R.styleable.FontFamilyFont_android_font;
                    }
                    int resourceId2 = typedArrayObtainAttributes2.getResourceId(i7, 0);
                    String string6 = typedArrayObtainAttributes2.getString(i7);
                    typedArrayObtainAttributes2.recycle();
                    while (xmlPullParser.next() != 3) {
                        a(xmlPullParser);
                    }
                    arrayList.add(new FontFileResourceEntry(string6, i2, z, string5, i6, resourceId2));
                }
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return new FontFamilyFilesResourceEntry((FontFileResourceEntry[]) arrayList.toArray(new FontFileResourceEntry[0]));
    }

    @NonNull
    public static List<List<byte[]>> readCerts(@NonNull Resources resources, @ArrayRes int i) throws Resources.NotFoundException {
        if (i == 0) {
            return Collections.EMPTY_LIST;
        }
        TypedArray typedArrayObtainTypedArray = resources.obtainTypedArray(i);
        try {
            if (typedArrayObtainTypedArray.length() == 0) {
                return Collections.EMPTY_LIST;
            }
            ArrayList arrayList = new ArrayList();
            if (a.a(typedArrayObtainTypedArray, 0) == 1) {
                for (int i2 = 0; i2 < typedArrayObtainTypedArray.length(); i2++) {
                    int resourceId = typedArrayObtainTypedArray.getResourceId(i2, 0);
                    if (resourceId != 0) {
                        String[] stringArray = resources.getStringArray(resourceId);
                        ArrayList arrayList2 = new ArrayList();
                        for (String str : stringArray) {
                            arrayList2.add(Base64.decode(str, 0));
                        }
                        arrayList.add(arrayList2);
                    }
                }
            } else {
                String[] stringArray2 = resources.getStringArray(i);
                ArrayList arrayList3 = new ArrayList();
                for (String str2 : stringArray2) {
                    arrayList3.add(Base64.decode(str2, 0));
                }
                arrayList.add(arrayList3);
            }
            return arrayList;
        } finally {
            typedArrayObtainTypedArray.recycle();
        }
    }

    public static void a(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        int i = 1;
        while (i > 0) {
            int next = xmlPullParser.next();
            if (next == 2) {
                i++;
            } else if (next == 3) {
                i--;
            }
        }
    }

    private FontResourcesParserCompat() {
    }

    @RequiresApi(21)
    public static class a {
        private a() {
        }

        @DoNotInline
        public static int a(TypedArray typedArray, int i) {
            return typedArray.getType(i);
        }
    }
}
