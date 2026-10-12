package androidx.core.graphics;

import androidx.core.content.res.FontResourcesParserCompat;
import androidx.core.graphics.e;

/* loaded from: classes.dex */
class g implements e.b<FontResourcesParserCompat.FontFileResourceEntry> {
    @Override // androidx.core.graphics.e.b
    public int getWeight(FontResourcesParserCompat.FontFileResourceEntry fontFileResourceEntry) {
        return fontFileResourceEntry.getWeight();
    }

    @Override // androidx.core.graphics.e.b
    public boolean isItalic(FontResourcesParserCompat.FontFileResourceEntry fontFileResourceEntry) {
        return fontFileResourceEntry.isItalic();
    }
}
