package com.airbnb.lottie.model.content;

import androidx.annotation.Nullable;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.animation.content.Content;
import com.airbnb.lottie.animation.content.MergePathsContent;
import com.airbnb.lottie.model.layer.BaseLayer;
import com.airbnb.lottie.utils.Logger;

/* loaded from: classes.dex */
public class MergePaths implements ContentModel {

    /* renamed from: a, reason: collision with root package name */
    public final String f2611a;

    /* renamed from: b, reason: collision with root package name */
    public final MergePathsMode f2612b;
    public final boolean c;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class MergePathsMode {
        public static final MergePathsMode ADD;
        public static final MergePathsMode EXCLUDE_INTERSECTIONS;
        public static final MergePathsMode INTERSECT;
        public static final MergePathsMode MERGE;
        public static final MergePathsMode SUBTRACT;

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ MergePathsMode[] f2613a;

        public static MergePathsMode valueOf(String str) {
            return (MergePathsMode) Enum.valueOf(MergePathsMode.class, str);
        }

        public static MergePathsMode[] values() {
            return (MergePathsMode[]) f2613a.clone();
        }

        static {
            MergePathsMode mergePathsMode = new MergePathsMode("MERGE", 0);
            MERGE = mergePathsMode;
            MergePathsMode mergePathsMode2 = new MergePathsMode("ADD", 1);
            ADD = mergePathsMode2;
            MergePathsMode mergePathsMode3 = new MergePathsMode("SUBTRACT", 2);
            SUBTRACT = mergePathsMode3;
            MergePathsMode mergePathsMode4 = new MergePathsMode("INTERSECT", 3);
            INTERSECT = mergePathsMode4;
            MergePathsMode mergePathsMode5 = new MergePathsMode("EXCLUDE_INTERSECTIONS", 4);
            EXCLUDE_INTERSECTIONS = mergePathsMode5;
            f2613a = new MergePathsMode[]{mergePathsMode, mergePathsMode2, mergePathsMode3, mergePathsMode4, mergePathsMode5};
        }

        public static MergePathsMode forId(int i) {
            if (i == 1) {
                return MERGE;
            }
            if (i == 2) {
                return ADD;
            }
            if (i == 3) {
                return SUBTRACT;
            }
            if (i == 4) {
                return INTERSECT;
            }
            if (i == 5) {
                return EXCLUDE_INTERSECTIONS;
            }
            return MERGE;
        }
    }

    public MergePaths(String str, MergePathsMode mergePathsMode, boolean z) {
        this.f2611a = str;
        this.f2612b = mergePathsMode;
        this.c = z;
    }

    public String getName() {
        return this.f2611a;
    }

    public MergePathsMode getMode() {
        return this.f2612b;
    }

    public boolean isHidden() {
        return this.c;
    }

    @Override // com.airbnb.lottie.model.content.ContentModel
    @Nullable
    public Content toContent(LottieDrawable lottieDrawable, BaseLayer baseLayer) {
        if (!lottieDrawable.enableMergePathsForKitKatAndAbove()) {
            Logger.warning("Animation contains merge paths but they are disabled.");
            return null;
        }
        return new MergePathsContent(this);
    }

    public String toString() {
        return "MergePaths{mode=" + this.f2612b + '}';
    }
}
