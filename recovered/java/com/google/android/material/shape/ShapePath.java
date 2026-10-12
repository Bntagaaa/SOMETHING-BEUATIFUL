package com.google.android.material.shape;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.RectF;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import com.google.android.material.shadow.ShadowRenderer;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class ShapePath {
    protected static final float ANGLE_LEFT = 180.0f;

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f3202a = new ArrayList();

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList f3203b = new ArrayList();
    public boolean c;

    @Deprecated
    public float currentShadowAngle;

    @Deprecated
    public float endShadowAngle;

    @Deprecated
    public float endX;

    @Deprecated
    public float endY;

    @Deprecated
    public float startX;

    @Deprecated
    public float startY;

    public static abstract class PathOperation {
        protected final Matrix matrix = new Matrix();

        public abstract void applyToPath(Matrix matrix, Path path);
    }

    public ShapePath() {
        reset(0.0f, 0.0f);
    }

    public ShapePath(float f, float f2) {
        reset(f, f2);
    }

    public void reset(float f, float f2) {
        reset(f, f2, 270.0f, 0.0f);
    }

    public void lineTo(float f, float f2) {
        PathLineOperation pathLineOperation = new PathLineOperation();
        pathLineOperation.f3207a = f;
        pathLineOperation.f3208b = f2;
        this.f3202a.add(pathLineOperation);
        b bVar = new b(pathLineOperation, this.endX, this.endY);
        float fA = bVar.a() + 270.0f;
        float fA2 = bVar.a() + 270.0f;
        a(fA);
        this.f3203b.add(bVar);
        this.currentShadowAngle = fA2;
        this.endX = f;
        this.endY = f2;
    }

    @RequiresApi(21)
    public void quadToPoint(float f, float f2, float f3, float f4) {
        PathQuadOperation pathQuadOperation = new PathQuadOperation();
        pathQuadOperation.controlX = f;
        pathQuadOperation.controlY = f2;
        pathQuadOperation.endX = f3;
        pathQuadOperation.endY = f4;
        this.f3202a.add(pathQuadOperation);
        this.c = true;
        this.endX = f3;
        this.endY = f4;
    }

    @RequiresApi(21)
    public void cubicToPoint(float f, float f2, float f3, float f4, float f5, float f6) {
        this.f3202a.add(new PathCubicOperation(f, f2, f3, f4, f5, f6));
        this.c = true;
        this.endX = f5;
        this.endY = f6;
    }

    public void addArc(float f, float f2, float f3, float f4, float f5, float f6) {
        PathArcOperation pathArcOperation = new PathArcOperation(f, f2, f3, f4);
        pathArcOperation.startAngle = f5;
        pathArcOperation.sweepAngle = f6;
        this.f3202a.add(pathArcOperation);
        a aVar = new a(pathArcOperation);
        float f7 = f5 + f6;
        boolean z = f6 < 0.0f;
        if (z) {
            f5 = (f5 + ANGLE_LEFT) % 360.0f;
        }
        float f8 = z ? (ANGLE_LEFT + f7) % 360.0f : f7;
        a(f5);
        this.f3203b.add(aVar);
        this.currentShadowAngle = f8;
        double d = f7;
        this.endX = (((f3 - f) / 2.0f) * ((float) Math.cos(Math.toRadians(d)))) + ((f + f3) * 0.5f);
        this.endY = (((f4 - f2) / 2.0f) * ((float) Math.sin(Math.toRadians(d)))) + ((f2 + f4) * 0.5f);
    }

    public void applyToPath(Matrix matrix, Path path) {
        ArrayList arrayList = this.f3202a;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            ((PathOperation) arrayList.get(i)).applyToPath(matrix, path);
        }
    }

    public final void a(float f) {
        float f2 = this.currentShadowAngle;
        if (f2 == f) {
            return;
        }
        float f3 = ((f - f2) + 360.0f) % 360.0f;
        if (f3 > ANGLE_LEFT) {
            return;
        }
        float f4 = this.endX;
        float f5 = this.endY;
        PathArcOperation pathArcOperation = new PathArcOperation(f4, f5, f4, f5);
        pathArcOperation.startAngle = this.currentShadowAngle;
        pathArcOperation.sweepAngle = f3;
        this.f3203b.add(new a(pathArcOperation));
        this.currentShadowAngle = f;
    }

    public void reset(float f, float f2, float f3, float f4) {
        this.startX = f;
        this.startY = f2;
        this.endX = f;
        this.endY = f2;
        this.currentShadowAngle = f3;
        this.endShadowAngle = (f3 + f4) % 360.0f;
        this.f3202a.clear();
        this.f3203b.clear();
        this.c = false;
    }

    public static abstract class c {

        /* renamed from: a, reason: collision with root package name */
        public static final Matrix f3211a = new Matrix();

        public abstract void draw(Matrix matrix, ShadowRenderer shadowRenderer, int i, Canvas canvas);

        public final void draw(ShadowRenderer shadowRenderer, int i, Canvas canvas) {
            draw(f3211a, shadowRenderer, i, canvas);
        }
    }

    public static class b extends c {

        /* renamed from: b, reason: collision with root package name */
        public final PathLineOperation f3210b;
        public final float c;
        public final float d;

        public b(PathLineOperation pathLineOperation, float f, float f2) {
            this.f3210b = pathLineOperation;
            this.c = f;
            this.d = f2;
        }

        public final float a() {
            PathLineOperation pathLineOperation = this.f3210b;
            return (float) Math.toDegrees(Math.atan((pathLineOperation.f3208b - this.d) / (pathLineOperation.f3207a - this.c)));
        }

        @Override // com.google.android.material.shape.ShapePath.c
        public void draw(Matrix matrix, @NonNull ShadowRenderer shadowRenderer, int i, @NonNull Canvas canvas) {
            PathLineOperation pathLineOperation = this.f3210b;
            float f = pathLineOperation.f3208b;
            float f2 = this.d;
            float f3 = pathLineOperation.f3207a;
            float f4 = this.c;
            RectF rectF = new RectF(0.0f, 0.0f, (float) Math.hypot(f - f2, f3 - f4), 0.0f);
            Matrix matrix2 = new Matrix(matrix);
            matrix2.preTranslate(f4, f2);
            matrix2.preRotate(a());
            shadowRenderer.drawEdgeShadow(canvas, matrix2, rectF, i);
        }
    }

    public static class a extends c {

        /* renamed from: b, reason: collision with root package name */
        public final PathArcOperation f3209b;

        public a(PathArcOperation pathArcOperation) {
            this.f3209b = pathArcOperation;
        }

        @Override // com.google.android.material.shape.ShapePath.c
        public void draw(Matrix matrix, @NonNull ShadowRenderer shadowRenderer, int i, @NonNull Canvas canvas) {
            PathArcOperation pathArcOperation = this.f3209b;
            shadowRenderer.drawCornerShadow(canvas, matrix, new RectF(pathArcOperation.left, pathArcOperation.top, pathArcOperation.right, pathArcOperation.bottom), i, pathArcOperation.startAngle, pathArcOperation.sweepAngle);
        }
    }

    public static class PathLineOperation extends PathOperation {

        /* renamed from: a, reason: collision with root package name */
        public float f3207a;

        /* renamed from: b, reason: collision with root package name */
        public float f3208b;

        @Override // com.google.android.material.shape.ShapePath.PathOperation
        public void applyToPath(@NonNull Matrix matrix, @NonNull Path path) {
            Matrix matrix2 = this.matrix;
            matrix.invert(matrix2);
            path.transform(matrix2);
            path.lineTo(this.f3207a, this.f3208b);
            path.transform(matrix);
        }
    }

    public static class PathQuadOperation extends PathOperation {

        @Deprecated
        public float controlX;

        @Deprecated
        public float controlY;

        @Deprecated
        public float endX;

        @Deprecated
        public float endY;

        @Override // com.google.android.material.shape.ShapePath.PathOperation
        public void applyToPath(@NonNull Matrix matrix, @NonNull Path path) {
            Matrix matrix2 = this.matrix;
            matrix.invert(matrix2);
            path.transform(matrix2);
            path.quadTo(this.controlX, this.controlY, this.endX, this.endY);
            path.transform(matrix);
        }
    }

    public static class PathArcOperation extends PathOperation {

        /* renamed from: a, reason: collision with root package name */
        public static final RectF f3204a = new RectF();

        @Deprecated
        public float bottom;

        @Deprecated
        public float left;

        @Deprecated
        public float right;

        @Deprecated
        public float startAngle;

        @Deprecated
        public float sweepAngle;

        @Deprecated
        public float top;

        public PathArcOperation(float f, float f2, float f3, float f4) {
            this.left = f;
            this.top = f2;
            this.right = f3;
            this.bottom = f4;
        }

        @Override // com.google.android.material.shape.ShapePath.PathOperation
        public void applyToPath(@NonNull Matrix matrix, @NonNull Path path) {
            Matrix matrix2 = this.matrix;
            matrix.invert(matrix2);
            path.transform(matrix2);
            RectF rectF = f3204a;
            rectF.set(this.left, this.top, this.right, this.bottom);
            path.arcTo(rectF, this.startAngle, this.sweepAngle, false);
            path.transform(matrix);
        }
    }

    public static class PathCubicOperation extends PathOperation {

        /* renamed from: a, reason: collision with root package name */
        public final float f3205a;

        /* renamed from: b, reason: collision with root package name */
        public final float f3206b;
        public final float c;
        public final float d;
        public final float e;
        public final float f;

        public PathCubicOperation(float f, float f2, float f3, float f4, float f5, float f6) {
            this.f3205a = f;
            this.f3206b = f2;
            this.c = f3;
            this.d = f4;
            this.e = f5;
            this.f = f6;
        }

        @Override // com.google.android.material.shape.ShapePath.PathOperation
        public void applyToPath(@NonNull Matrix matrix, @NonNull Path path) {
            Matrix matrix2 = this.matrix;
            matrix.invert(matrix2);
            path.transform(matrix2);
            path.cubicTo(this.f3205a, this.f3206b, this.c, this.d, this.e, this.f);
            path.transform(matrix);
        }
    }
}
