package com.google.android.material.shape;

import android.graphics.Canvas;
import android.graphics.Matrix;
import com.google.android.material.shadow.ShadowRenderer;
import com.google.android.material.shape.ShapePath;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
class c extends ShapePath.c {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ArrayList f3216b;
    public final /* synthetic */ Matrix c;

    public c(ArrayList arrayList, Matrix matrix) {
        this.f3216b = arrayList;
        this.c = matrix;
    }

    @Override // com.google.android.material.shape.ShapePath.c
    public void draw(Matrix matrix, ShadowRenderer shadowRenderer, int i, Canvas canvas) {
        Iterator it = this.f3216b.iterator();
        while (it.hasNext()) {
            ((ShapePath.c) it.next()).draw(this.c, shadowRenderer, i, canvas);
        }
    }
}
