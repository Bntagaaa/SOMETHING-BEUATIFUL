package androidx.cardview.widget;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import androidx.annotation.RequiresApi;
import androidx.cardview.widget.g;

@RequiresApi(17)
/* loaded from: classes.dex */
class a extends c {
    @Override // androidx.cardview.widget.c, androidx.cardview.widget.e
    public void initStatic() {
        g.r = new C0005a();
    }

    /* renamed from: androidx.cardview.widget.a$a, reason: collision with other inner class name */
    public class C0005a implements g.a {
        @Override // androidx.cardview.widget.g.a
        public void drawRoundRect(Canvas canvas, RectF rectF, float f, Paint paint) {
            canvas.drawRoundRect(rectF, f, f, paint);
        }
    }
}
