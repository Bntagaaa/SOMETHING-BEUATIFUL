package androidx.constraintlayout.utils.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import androidx.constraintlayout.widget.R;

/* loaded from: classes.dex */
public class MockView extends View {

    /* renamed from: a, reason: collision with root package name */
    public final Paint f776a;

    /* renamed from: b, reason: collision with root package name */
    public final Paint f777b;
    public final Paint c;
    public boolean d;
    public boolean e;
    public final Rect f;

    /* renamed from: g, reason: collision with root package name */
    public int f778g;
    public int h;
    public int i;
    public int j;
    protected String mText;

    public MockView(Context context) {
        super(context);
        this.f776a = new Paint();
        this.f777b = new Paint();
        this.c = new Paint();
        this.d = true;
        this.e = true;
        this.mText = null;
        this.f = new Rect();
        this.f778g = Color.argb(255, 0, 0, 0);
        this.h = Color.argb(255, 200, 200, 200);
        this.i = Color.argb(255, 50, 50, 50);
        this.j = 4;
        a(context, null);
    }

    public MockView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f776a = new Paint();
        this.f777b = new Paint();
        this.c = new Paint();
        this.d = true;
        this.e = true;
        this.mText = null;
        this.f = new Rect();
        this.f778g = Color.argb(255, 0, 0, 0);
        this.h = Color.argb(255, 200, 200, 200);
        this.i = Color.argb(255, 50, 50, 50);
        this.j = 4;
        a(context, attributeSet);
    }

    public MockView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f776a = new Paint();
        this.f777b = new Paint();
        this.c = new Paint();
        this.d = true;
        this.e = true;
        this.mText = null;
        this.f = new Rect();
        this.f778g = Color.argb(255, 0, 0, 0);
        this.h = Color.argb(255, 200, 200, 200);
        this.i = Color.argb(255, 50, 50, 50);
        this.j = 4;
        a(context, attributeSet);
    }

    public final void a(Context context, AttributeSet attributeSet) {
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.MockView);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i);
                if (index == R.styleable.MockView_mock_label) {
                    this.mText = typedArrayObtainStyledAttributes.getString(index);
                } else if (index == R.styleable.MockView_mock_showDiagonals) {
                    this.d = typedArrayObtainStyledAttributes.getBoolean(index, this.d);
                } else if (index == R.styleable.MockView_mock_diagonalsColor) {
                    this.f778g = typedArrayObtainStyledAttributes.getColor(index, this.f778g);
                } else if (index == R.styleable.MockView_mock_labelBackgroundColor) {
                    this.i = typedArrayObtainStyledAttributes.getColor(index, this.i);
                } else if (index == R.styleable.MockView_mock_labelColor) {
                    this.h = typedArrayObtainStyledAttributes.getColor(index, this.h);
                } else if (index == R.styleable.MockView_mock_showLabel) {
                    this.e = typedArrayObtainStyledAttributes.getBoolean(index, this.e);
                }
            }
        }
        if (this.mText == null) {
            try {
                this.mText = context.getResources().getResourceEntryName(getId());
            } catch (Exception unused) {
            }
        }
        int i2 = this.f778g;
        Paint paint = this.f776a;
        paint.setColor(i2);
        paint.setAntiAlias(true);
        int i3 = this.h;
        Paint paint2 = this.f777b;
        paint2.setColor(i3);
        paint2.setAntiAlias(true);
        this.c.setColor(this.i);
        this.j = Math.round((getResources().getDisplayMetrics().xdpi / 160.0f) * this.j);
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        Canvas canvas2;
        super.onDraw(canvas);
        int width = getWidth();
        int height = getHeight();
        if (this.d) {
            width--;
            height--;
            float f = width;
            float f2 = height;
            canvas2 = canvas;
            canvas2.drawLine(0.0f, 0.0f, f, f2, this.f776a);
            canvas2.drawLine(0.0f, f2, f, 0.0f, this.f776a);
            canvas2.drawLine(0.0f, 0.0f, f, 0.0f, this.f776a);
            canvas2.drawLine(f, 0.0f, f, f2, this.f776a);
            canvas2.drawLine(f, f2, 0.0f, f2, this.f776a);
            canvas2.drawLine(0.0f, f2, 0.0f, 0.0f, this.f776a);
        } else {
            canvas2 = canvas;
        }
        String str = this.mText;
        if (str == null || !this.e) {
            return;
        }
        int length = str.length();
        Paint paint = this.f777b;
        Rect rect = this.f;
        paint.getTextBounds(str, 0, length, rect);
        float fWidth = (width - rect.width()) / 2.0f;
        float fHeight = ((height - rect.height()) / 2.0f) + rect.height();
        rect.offset((int) fWidth, (int) fHeight);
        int i = rect.left;
        int i2 = this.j;
        rect.set(i - i2, rect.top - i2, rect.right + i2, rect.bottom + i2);
        canvas2.drawRect(rect, this.c);
        canvas2.drawText(this.mText, fWidth, fHeight, paint);
    }
}
