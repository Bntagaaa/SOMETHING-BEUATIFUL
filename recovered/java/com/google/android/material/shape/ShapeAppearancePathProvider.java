package com.google.android.material.shape;

import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.RectF;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.annotation.UiThread;

/* loaded from: classes.dex */
public class ShapeAppearancePathProvider {

    /* renamed from: a, reason: collision with root package name */
    public final ShapePath[] f3196a = new ShapePath[4];

    /* renamed from: b, reason: collision with root package name */
    public final Matrix[] f3197b = new Matrix[4];
    public final Matrix[] c = new Matrix[4];
    public final PointF d = new PointF();
    public final Path e = new Path();
    public final Path f = new Path();

    /* renamed from: g, reason: collision with root package name */
    public final ShapePath f3198g = new ShapePath();
    public final float[] h = new float[2];
    public final float[] i = new float[2];
    public final Path j = new Path();
    public final Path k = new Path();
    public boolean l = true;

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public interface PathListener {
        void onCornerPathCreated(ShapePath shapePath, Matrix matrix, int i);

        void onEdgePathCreated(ShapePath shapePath, Matrix matrix, int i);
    }

    public static class a {

        /* renamed from: a, reason: collision with root package name */
        public static final ShapeAppearancePathProvider f3199a = new ShapeAppearancePathProvider();

        private a() {
        }
    }

    public ShapeAppearancePathProvider() {
        for (int i = 0; i < 4; i++) {
            this.f3196a[i] = new ShapePath();
            this.f3197b[i] = new Matrix();
            this.c[i] = new Matrix();
        }
    }

    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    @UiThread
    public static ShapeAppearancePathProvider getInstance() {
        return a.f3199a;
    }

    public void calculatePath(ShapeAppearanceModel shapeAppearanceModel, float f, RectF rectF, @NonNull Path path) {
        calculatePath(shapeAppearanceModel, f, rectF, null, path);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void calculatePath(ShapeAppearanceModel shapeAppearanceModel, float f, RectF rectF, PathListener pathListener, @NonNull Path path) {
        Matrix[] matrixArr;
        Matrix[] matrixArr2;
        ShapePath[] shapePathArr;
        int i;
        char c;
        float[] fArr;
        RectF rectF2;
        ShapeAppearanceModel shapeAppearanceModel2;
        path.rewind();
        Path path2 = this.e;
        path2.rewind();
        Path path3 = this.f;
        path3.rewind();
        path3.addRect(rectF, Path.Direction.CW);
        b bVar = new b(shapeAppearanceModel, f, rectF, pathListener, path);
        int i2 = 0;
        while (true) {
            matrixArr = this.c;
            matrixArr2 = this.f3197b;
            shapePathArr = this.f3196a;
            i = 4;
            c = 1;
            fArr = this.h;
            rectF2 = bVar.c;
            shapeAppearanceModel2 = bVar.f3200a;
            if (i2 >= 4) {
                break;
            }
            (i2 != 1 ? i2 != 2 ? i2 != 3 ? shapeAppearanceModel2.getTopRightCorner() : shapeAppearanceModel2.getTopLeftCorner() : shapeAppearanceModel2.getBottomLeftCorner() : shapeAppearanceModel2.getBottomRightCorner()).getCornerPath(shapePathArr[i2], 90.0f, bVar.e, bVar.c, i2 != 1 ? i2 != 2 ? i2 != 3 ? shapeAppearanceModel2.getTopRightCornerSize() : shapeAppearanceModel2.getTopLeftCornerSize() : shapeAppearanceModel2.getBottomLeftCornerSize() : shapeAppearanceModel2.getBottomRightCornerSize());
            int i3 = i2 + 1;
            float f2 = i3 * 90;
            matrixArr2[i2].reset();
            PointF pointF = this.d;
            if (i2 == 1) {
                pointF.set(rectF2.right, rectF2.bottom);
            } else if (i2 == 2) {
                pointF.set(rectF2.left, rectF2.bottom);
            } else if (i2 != 3) {
                pointF.set(rectF2.right, rectF2.top);
            } else {
                pointF.set(rectF2.left, rectF2.top);
            }
            matrixArr2[i2].setTranslate(pointF.x, pointF.y);
            matrixArr2[i2].preRotate(f2);
            ShapePath shapePath = shapePathArr[i2];
            fArr[0] = shapePath.endX;
            fArr[1] = shapePath.endY;
            matrixArr2[i2].mapPoints(fArr);
            matrixArr[i2].reset();
            matrixArr[i2].setTranslate(fArr[0], fArr[1]);
            matrixArr[i2].preRotate(f2);
            i2 = i3;
        }
        int i4 = 0;
        while (i4 < i) {
            ShapePath shapePath2 = shapePathArr[i4];
            fArr[0] = shapePath2.startX;
            fArr[c] = shapePath2.startY;
            matrixArr2[i4].mapPoints(fArr);
            Path path4 = bVar.f3201b;
            if (i4 == 0) {
                path4.moveTo(fArr[0], fArr[c]);
            } else {
                path4.lineTo(fArr[0], fArr[c]);
            }
            shapePathArr[i4].applyToPath(matrixArr2[i4], path4);
            PathListener pathListener2 = bVar.d;
            if (pathListener2 != null) {
                pathListener2.onCornerPathCreated(shapePathArr[i4], matrixArr2[i4], i4);
            }
            int i5 = i4 + 1;
            int i6 = i5 % 4;
            ShapePath shapePath3 = shapePathArr[i4];
            Matrix[] matrixArr3 = matrixArr;
            fArr[0] = shapePath3.endX;
            fArr[1] = shapePath3.endY;
            matrixArr2[i4].mapPoints(fArr);
            ShapePath shapePath4 = shapePathArr[i6];
            float f3 = shapePath4.startX;
            Matrix[] matrixArr4 = matrixArr2;
            float[] fArr2 = this.i;
            fArr2[0] = f3;
            fArr2[1] = shapePath4.startY;
            matrixArr4[i6].mapPoints(fArr2);
            float fMax = Math.max(((float) Math.hypot(fArr[0] - fArr2[0], fArr[1] - fArr2[1])) - 0.001f, 0.0f);
            ShapePath shapePath5 = shapePathArr[i4];
            fArr[0] = shapePath5.endX;
            fArr[1] = shapePath5.endY;
            matrixArr4[i4].mapPoints(fArr);
            float fAbs = (i4 == 1 || i4 == 3) ? Math.abs(rectF2.centerX() - fArr[0]) : Math.abs(rectF2.centerY() - fArr[1]);
            ShapePath shapePath6 = this.f3198g;
            shapePath6.reset(0.0f, 0.0f);
            EdgeTreatment rightEdge = i4 != 1 ? i4 != 2 ? i4 != 3 ? shapeAppearanceModel2.getRightEdge() : shapeAppearanceModel2.getTopEdge() : shapeAppearanceModel2.getLeftEdge() : shapeAppearanceModel2.getBottomEdge();
            ShapePath[] shapePathArr2 = shapePathArr;
            rightEdge.getEdgePath(fMax, fAbs, bVar.e, shapePath6);
            Path path5 = this.j;
            path5.reset();
            shapePath6.applyToPath(matrixArr3[i4], path5);
            if (this.l && (rightEdge.a() || a(path5, i4) || a(path5, i6))) {
                path5.op(path5, path3, Path.Op.DIFFERENCE);
                fArr[0] = shapePath6.startX;
                fArr[1] = shapePath6.startY;
                matrixArr3[i4].mapPoints(fArr);
                path2.moveTo(fArr[0], fArr[1]);
                shapePath6.applyToPath(matrixArr3[i4], path2);
            } else {
                shapePath6.applyToPath(matrixArr3[i4], path4);
            }
            if (pathListener2 != null) {
                pathListener2.onEdgePathCreated(shapePath6, matrixArr3[i4], i4);
            }
            matrixArr = matrixArr3;
            matrixArr2 = matrixArr4;
            i4 = i5;
            shapePathArr = shapePathArr2;
            i = 4;
            c = 1;
        }
        path.close();
        path2.close();
        if (path2.isEmpty()) {
            return;
        }
        path.op(path2, Path.Op.UNION);
    }

    public final boolean a(Path path, int i) {
        Path path2 = this.k;
        path2.reset();
        this.f3196a[i].applyToPath(this.f3197b[i], path2);
        RectF rectF = new RectF();
        path.computeBounds(rectF, true);
        path2.computeBounds(rectF, true);
        path.op(path2, Path.Op.INTERSECT);
        path.computeBounds(rectF, true);
        return !rectF.isEmpty() || (rectF.width() > 1.0f && rectF.height() > 1.0f);
    }

    public static final class b {

        /* renamed from: a, reason: collision with root package name */
        public final ShapeAppearanceModel f3200a;

        /* renamed from: b, reason: collision with root package name */
        public final Path f3201b;
        public final RectF c;
        public final PathListener d;
        public final float e;

        public b(ShapeAppearanceModel shapeAppearanceModel, float f, RectF rectF, PathListener pathListener, Path path) {
            this.d = pathListener;
            this.f3200a = shapeAppearanceModel;
            this.e = f;
            this.c = rectF;
            this.f3201b = path;
        }
    }
}
