package androidx.core.view;

import android.content.ClipData;
import android.content.ClipDescription;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.util.Pair;
import android.view.ContentInfo;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.core.util.Preconditions;
import androidx.core.util.Predicate;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Objects;

/* loaded from: classes.dex */
public final class ContentInfoCompat {
    public static final int FLAG_CONVERT_TO_PLAIN_TEXT = 1;
    public static final int SOURCE_APP = 0;
    public static final int SOURCE_AUTOFILL = 4;
    public static final int SOURCE_CLIPBOARD = 1;
    public static final int SOURCE_DRAG_AND_DROP = 3;
    public static final int SOURCE_INPUT_METHOD = 2;
    public static final int SOURCE_PROCESS_TEXT = 5;

    /* renamed from: a, reason: collision with root package name */
    public final f f1276a;

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public @interface Flags {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public @interface Source {
    }

    public interface c {
        @NonNull
        ContentInfoCompat build();

        void setClip(@NonNull ClipData clipData);

        void setExtras(@Nullable Bundle bundle);

        void setFlags(int i);

        void setLinkUri(@Nullable Uri uri);

        void setSource(int i);
    }

    public interface f {
        @NonNull
        ClipData getClip();

        @Nullable
        Bundle getExtras();

        int getFlags();

        @Nullable
        Uri getLinkUri();

        int getSource();

        @Nullable
        ContentInfo getWrapped();
    }

    public ContentInfoCompat(f fVar) {
        this.f1276a = fVar;
    }

    @NonNull
    @RequiresApi(31)
    public static ContentInfoCompat toContentInfoCompat(@NonNull ContentInfo contentInfo) {
        return new ContentInfoCompat(new e(contentInfo));
    }

    @NonNull
    @RequiresApi(31)
    public ContentInfo toContentInfo() {
        ContentInfo wrapped = this.f1276a.getWrapped();
        Objects.requireNonNull(wrapped);
        return androidx.core.app.g.k(wrapped);
    }

    @NonNull
    public String toString() {
        return this.f1276a.toString();
    }

    @NonNull
    public ClipData getClip() {
        return this.f1276a.getClip();
    }

    public int getSource() {
        return this.f1276a.getSource();
    }

    public int getFlags() {
        return this.f1276a.getFlags();
    }

    @Nullable
    public Uri getLinkUri() {
        return this.f1276a.getLinkUri();
    }

    @Nullable
    public Bundle getExtras() {
        return this.f1276a.getExtras();
    }

    @NonNull
    public Pair<ContentInfoCompat, ContentInfoCompat> partition(@NonNull Predicate<ClipData.Item> predicate) {
        ClipData clip = this.f1276a.getClip();
        if (clip.getItemCount() == 1) {
            boolean zTest = predicate.test(clip.getItemAt(0));
            return Pair.create(zTest ? this : null, zTest ? null : this);
        }
        Pair pairB = b(clip, predicate);
        if (pairB.first == null) {
            return Pair.create(null, this);
        }
        if (pairB.second == null) {
            return Pair.create(this, null);
        }
        return Pair.create(new Builder(this).setClip((ClipData) pairB.first).build(), new Builder(this).setClip((ClipData) pairB.second).build());
    }

    public static Pair b(ClipData clipData, Predicate predicate) {
        ArrayList arrayList = null;
        ArrayList arrayList2 = null;
        for (int i = 0; i < clipData.getItemCount(); i++) {
            ClipData.Item itemAt = clipData.getItemAt(i);
            if (predicate.test(itemAt)) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(itemAt);
            } else {
                if (arrayList2 == null) {
                    arrayList2 = new ArrayList();
                }
                arrayList2.add(itemAt);
            }
        }
        if (arrayList == null) {
            return Pair.create(null, clipData);
        }
        if (arrayList2 == null) {
            return Pair.create(clipData, null);
        }
        return Pair.create(a(clipData.getDescription(), arrayList), a(clipData.getDescription(), arrayList2));
    }

    public static ClipData a(ClipDescription clipDescription, ArrayList arrayList) {
        ClipData clipData = new ClipData(new ClipDescription(clipDescription), (ClipData.Item) arrayList.get(0));
        for (int i = 1; i < arrayList.size(); i++) {
            clipData.addItem((ClipData.Item) arrayList.get(i));
        }
        return clipData;
    }

    @NonNull
    @RequiresApi(31)
    public static Pair<ContentInfo, ContentInfo> partition(@NonNull ContentInfo contentInfo, @NonNull java.util.function.Predicate<ClipData.Item> predicate) {
        return a.partition(contentInfo, predicate);
    }

    @RequiresApi(31)
    public static final class a {
        private a() {
        }

        @NonNull
        @DoNotInline
        public static Pair<ContentInfo, ContentInfo> partition(@NonNull ContentInfo contentInfo, @NonNull final java.util.function.Predicate<ClipData.Item> predicate) {
            ClipData clip = contentInfo.getClip();
            if (clip.getItemCount() == 1) {
                boolean zTest = predicate.test(clip.getItemAt(0));
                ContentInfo contentInfo2 = zTest ? contentInfo : null;
                if (zTest) {
                    contentInfo = null;
                }
                return Pair.create(contentInfo2, contentInfo);
            }
            Objects.requireNonNull(predicate);
            Pair pairB = ContentInfoCompat.b(clip, new Predicate() { // from class: androidx.core.view.b
                @Override // androidx.core.util.Predicate
                public final /* synthetic */ Predicate and(Predicate predicate2) {
                    return androidx.core.util.f.a(this, predicate2);
                }

                @Override // androidx.core.util.Predicate
                public final /* synthetic */ Predicate negate() {
                    return androidx.core.util.f.b(this);
                }

                @Override // androidx.core.util.Predicate
                public final /* synthetic */ Predicate or(Predicate predicate2) {
                    return androidx.core.util.f.c(this, predicate2);
                }

                @Override // androidx.core.util.Predicate
                public final boolean test(Object obj) {
                    return predicate.test((ClipData.Item) obj);
                }
            });
            if (pairB.first == null) {
                return Pair.create(null, contentInfo);
            }
            if (pairB.second == null) {
                return Pair.create(contentInfo, null);
            }
            return Pair.create(new ContentInfo.Builder(contentInfo).setClip((ClipData) pairB.first).build(), new ContentInfo.Builder(contentInfo).setClip((ClipData) pairB.second).build());
        }
    }

    public static final class g implements f {

        /* renamed from: a, reason: collision with root package name */
        public final ClipData f1282a;

        /* renamed from: b, reason: collision with root package name */
        public final int f1283b;
        public final int c;
        public final Uri d;
        public final Bundle e;

        @Override // androidx.core.view.ContentInfoCompat.f
        @Nullable
        public ContentInfo getWrapped() {
            return null;
        }

        public g(d dVar) {
            this.f1282a = (ClipData) Preconditions.checkNotNull(dVar.f1279a);
            this.f1283b = Preconditions.checkArgumentInRange(dVar.f1280b, 0, 5, "source");
            this.c = Preconditions.checkFlagsArgument(dVar.c, 1);
            this.d = dVar.d;
            this.e = dVar.e;
        }

        @Override // androidx.core.view.ContentInfoCompat.f
        @NonNull
        public ClipData getClip() {
            return this.f1282a;
        }

        @Override // androidx.core.view.ContentInfoCompat.f
        public int getSource() {
            return this.f1283b;
        }

        @Override // androidx.core.view.ContentInfoCompat.f
        public int getFlags() {
            return this.c;
        }

        @Override // androidx.core.view.ContentInfoCompat.f
        @Nullable
        public Uri getLinkUri() {
            return this.d;
        }

        @Override // androidx.core.view.ContentInfoCompat.f
        @Nullable
        public Bundle getExtras() {
            return this.e;
        }

        @NonNull
        public String toString() {
            String str;
            StringBuilder sb = new StringBuilder("ContentInfoCompat{clip=");
            sb.append(this.f1282a.getDescription());
            sb.append(", source=");
            int i = this.f1283b;
            sb.append(i != 0 ? i != 1 ? i != 2 ? i != 3 ? i != 4 ? i != 5 ? String.valueOf(i) : "SOURCE_PROCESS_TEXT" : "SOURCE_AUTOFILL" : "SOURCE_DRAG_AND_DROP" : "SOURCE_INPUT_METHOD" : "SOURCE_CLIPBOARD" : "SOURCE_APP");
            sb.append(", flags=");
            int i2 = this.c;
            sb.append((i2 & 1) != 0 ? "FLAG_CONVERT_TO_PLAIN_TEXT" : String.valueOf(i2));
            Uri uri = this.d;
            if (uri == null) {
                str = "";
            } else {
                str = ", hasLinkUri(" + uri.toString().length() + ")";
            }
            sb.append(str);
            return _COROUTINE.a.m(sb, this.e != null ? ", hasExtras" : "", "}");
        }
    }

    @RequiresApi(31)
    public static final class e implements f {

        /* renamed from: a, reason: collision with root package name */
        public final ContentInfo f1281a;

        public e(ContentInfo contentInfo) {
            this.f1281a = androidx.core.app.g.k(Preconditions.checkNotNull(contentInfo));
        }

        @Override // androidx.core.view.ContentInfoCompat.f
        @NonNull
        public ContentInfo getWrapped() {
            return this.f1281a;
        }

        @Override // androidx.core.view.ContentInfoCompat.f
        @NonNull
        public ClipData getClip() {
            return this.f1281a.getClip();
        }

        @Override // androidx.core.view.ContentInfoCompat.f
        public int getSource() {
            return this.f1281a.getSource();
        }

        @Override // androidx.core.view.ContentInfoCompat.f
        public int getFlags() {
            return this.f1281a.getFlags();
        }

        @Override // androidx.core.view.ContentInfoCompat.f
        @Nullable
        public Uri getLinkUri() {
            return this.f1281a.getLinkUri();
        }

        @Override // androidx.core.view.ContentInfoCompat.f
        @Nullable
        public Bundle getExtras() {
            return this.f1281a.getExtras();
        }

        @NonNull
        public String toString() {
            return "ContentInfoCompat{" + this.f1281a + "}";
        }
    }

    public static final class Builder {

        /* renamed from: a, reason: collision with root package name */
        public final c f1277a;

        public Builder(@NonNull ContentInfoCompat contentInfoCompat) {
            if (Build.VERSION.SDK_INT >= 31) {
                this.f1277a = new b(contentInfoCompat);
                return;
            }
            d dVar = new d();
            dVar.f1279a = contentInfoCompat.getClip();
            dVar.f1280b = contentInfoCompat.getSource();
            dVar.c = contentInfoCompat.getFlags();
            dVar.d = contentInfoCompat.getLinkUri();
            dVar.e = contentInfoCompat.getExtras();
            this.f1277a = dVar;
        }

        public Builder(@NonNull ClipData clipData, int i) {
            if (Build.VERSION.SDK_INT >= 31) {
                this.f1277a = new b(clipData, i);
                return;
            }
            d dVar = new d();
            dVar.f1279a = clipData;
            dVar.f1280b = i;
            this.f1277a = dVar;
        }

        @NonNull
        public Builder setClip(@NonNull ClipData clipData) {
            this.f1277a.setClip(clipData);
            return this;
        }

        @NonNull
        public Builder setSource(int i) {
            this.f1277a.setSource(i);
            return this;
        }

        @NonNull
        public Builder setFlags(int i) {
            this.f1277a.setFlags(i);
            return this;
        }

        @NonNull
        public Builder setLinkUri(@Nullable Uri uri) {
            this.f1277a.setLinkUri(uri);
            return this;
        }

        @NonNull
        public Builder setExtras(@Nullable Bundle bundle) {
            this.f1277a.setExtras(bundle);
            return this;
        }

        @NonNull
        public ContentInfoCompat build() {
            return this.f1277a.build();
        }
    }

    public static final class d implements c {

        /* renamed from: a, reason: collision with root package name */
        public ClipData f1279a;

        /* renamed from: b, reason: collision with root package name */
        public int f1280b;
        public int c;
        public Uri d;
        public Bundle e;

        @Override // androidx.core.view.ContentInfoCompat.c
        public void setClip(@NonNull ClipData clipData) {
            this.f1279a = clipData;
        }

        @Override // androidx.core.view.ContentInfoCompat.c
        public void setSource(int i) {
            this.f1280b = i;
        }

        @Override // androidx.core.view.ContentInfoCompat.c
        public void setFlags(int i) {
            this.c = i;
        }

        @Override // androidx.core.view.ContentInfoCompat.c
        public void setLinkUri(@Nullable Uri uri) {
            this.d = uri;
        }

        @Override // androidx.core.view.ContentInfoCompat.c
        public void setExtras(@Nullable Bundle bundle) {
            this.e = bundle;
        }

        @Override // androidx.core.view.ContentInfoCompat.c
        @NonNull
        public ContentInfoCompat build() {
            return new ContentInfoCompat(new g(this));
        }
    }

    @RequiresApi(31)
    public static final class b implements c {

        /* renamed from: a, reason: collision with root package name */
        public final ContentInfo.Builder f1278a;

        public b(ClipData clipData, int i) {
            this.f1278a = androidx.core.app.g.h(clipData, i);
        }

        public b(ContentInfoCompat contentInfoCompat) {
            androidx.core.app.g.m();
            this.f1278a = androidx.core.app.g.i(contentInfoCompat.toContentInfo());
        }

        @Override // androidx.core.view.ContentInfoCompat.c
        public void setClip(@NonNull ClipData clipData) {
            this.f1278a.setClip(clipData);
        }

        @Override // androidx.core.view.ContentInfoCompat.c
        public void setSource(int i) {
            this.f1278a.setSource(i);
        }

        @Override // androidx.core.view.ContentInfoCompat.c
        public void setFlags(int i) {
            this.f1278a.setFlags(i);
        }

        @Override // androidx.core.view.ContentInfoCompat.c
        public void setLinkUri(@Nullable Uri uri) {
            this.f1278a.setLinkUri(uri);
        }

        @Override // androidx.core.view.ContentInfoCompat.c
        public void setExtras(@Nullable Bundle bundle) {
            this.f1278a.setExtras(bundle);
        }

        @Override // androidx.core.view.ContentInfoCompat.c
        @NonNull
        public ContentInfoCompat build() {
            return new ContentInfoCompat(new e(this.f1278a.build()));
        }
    }
}
