package com.airbnb.lottie.animation.content;

import android.annotation.TargetApi;
import android.graphics.Matrix;
import android.graphics.Path;
import com.airbnb.lottie.animation.keyframe.TransformKeyframeAnimation;
import com.airbnb.lottie.model.content.MergePaths;
import java.util.ArrayList;
import java.util.List;
import java.util.ListIterator;

@TargetApi(19)
/* loaded from: classes.dex */
public class MergePathsContent implements b, com.airbnb.lottie.animation.content.a {
    public final String d;
    public final MergePaths f;

    /* renamed from: a, reason: collision with root package name */
    public final Path f2529a = new Path();

    /* renamed from: b, reason: collision with root package name */
    public final Path f2530b = new Path();
    public final Path c = new Path();
    public final ArrayList e = new ArrayList();

    public MergePathsContent(MergePaths mergePaths) {
        this.d = mergePaths.getName();
        this.f = mergePaths;
    }

    @Override // com.airbnb.lottie.animation.content.a
    public void absorbContent(ListIterator<Content> listIterator) {
        while (listIterator.hasPrevious() && listIterator.previous() != this) {
        }
        while (listIterator.hasPrevious()) {
            Content contentPrevious = listIterator.previous();
            if (contentPrevious instanceof b) {
                this.e.add((b) contentPrevious);
                listIterator.remove();
            }
        }
    }

    @Override // com.airbnb.lottie.animation.content.Content
    public void setContents(List<Content> list, List<Content> list2) {
        int i = 0;
        while (true) {
            ArrayList arrayList = this.e;
            if (i >= arrayList.size()) {
                return;
            }
            ((b) arrayList.get(i)).setContents(list, list2);
            i++;
        }
    }

    @Override // com.airbnb.lottie.animation.content.b
    public Path getPath() {
        Path path = this.c;
        path.reset();
        MergePaths mergePaths = this.f;
        if (!mergePaths.isHidden()) {
            int i = a.f2531a[mergePaths.getMode().ordinal()];
            if (i == 1) {
                int i2 = 0;
                while (true) {
                    ArrayList arrayList = this.e;
                    if (i2 >= arrayList.size()) {
                        break;
                    }
                    path.addPath(((b) arrayList.get(i2)).getPath());
                    i2++;
                }
            } else {
                if (i == 2) {
                    a(Path.Op.UNION);
                    return path;
                }
                if (i == 3) {
                    a(Path.Op.REVERSE_DIFFERENCE);
                    return path;
                }
                if (i == 4) {
                    a(Path.Op.INTERSECT);
                    return path;
                }
                if (i == 5) {
                    a(Path.Op.XOR);
                    return path;
                }
            }
        }
        return path;
    }

    public static /* synthetic */ class a {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f2531a;

        static {
            int[] iArr = new int[MergePaths.MergePathsMode.values().length];
            f2531a = iArr;
            try {
                iArr[MergePaths.MergePathsMode.MERGE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f2531a[MergePaths.MergePathsMode.ADD.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f2531a[MergePaths.MergePathsMode.SUBTRACT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f2531a[MergePaths.MergePathsMode.INTERSECT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f2531a[MergePaths.MergePathsMode.EXCLUDE_INTERSECTIONS.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    @Override // com.airbnb.lottie.animation.content.Content
    public String getName() {
        return this.d;
    }

    public final void a(Path.Op op) {
        Matrix matrix;
        Matrix matrix2;
        Path path = this.f2530b;
        path.reset();
        Path path2 = this.f2529a;
        path2.reset();
        ArrayList arrayList = this.e;
        for (int size = arrayList.size() - 1; size >= 1; size--) {
            b bVar = (b) arrayList.get(size);
            if (bVar instanceof ContentGroup) {
                ContentGroup contentGroup = (ContentGroup) bVar;
                ArrayList arrayList2 = (ArrayList) contentGroup.a();
                for (int size2 = arrayList2.size() - 1; size2 >= 0; size2--) {
                    Path path3 = ((b) arrayList2.get(size2)).getPath();
                    TransformKeyframeAnimation transformKeyframeAnimation = contentGroup.k;
                    if (transformKeyframeAnimation != null) {
                        matrix2 = transformKeyframeAnimation.getMatrix();
                    } else {
                        matrix2 = contentGroup.c;
                        matrix2.reset();
                    }
                    path3.transform(matrix2);
                    path.addPath(path3);
                }
            } else {
                path.addPath(bVar.getPath());
            }
        }
        int i = 0;
        b bVar2 = (b) arrayList.get(0);
        if (bVar2 instanceof ContentGroup) {
            ContentGroup contentGroup2 = (ContentGroup) bVar2;
            List listA = contentGroup2.a();
            while (true) {
                ArrayList arrayList3 = (ArrayList) listA;
                if (i >= arrayList3.size()) {
                    break;
                }
                Path path4 = ((b) arrayList3.get(i)).getPath();
                TransformKeyframeAnimation transformKeyframeAnimation2 = contentGroup2.k;
                if (transformKeyframeAnimation2 != null) {
                    matrix = transformKeyframeAnimation2.getMatrix();
                } else {
                    matrix = contentGroup2.c;
                    matrix.reset();
                }
                path4.transform(matrix);
                path2.addPath(path4);
                i++;
            }
        } else {
            path2.set(bVar2.getPath());
        }
        this.c.op(path2, path, op);
    }
}
