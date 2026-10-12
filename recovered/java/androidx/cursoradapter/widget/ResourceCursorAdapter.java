package androidx.cursoradapter.widget;

import android.content.Context;
import android.database.Cursor;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

/* loaded from: classes.dex */
public abstract class ResourceCursorAdapter extends CursorAdapter {

    /* renamed from: a, reason: collision with root package name */
    public int f1447a;

    /* renamed from: b, reason: collision with root package name */
    public int f1448b;
    public final LayoutInflater c;

    @Deprecated
    public ResourceCursorAdapter(Context context, int i, Cursor cursor) {
        super(context, cursor);
        this.f1448b = i;
        this.f1447a = i;
        this.c = (LayoutInflater) context.getSystemService("layout_inflater");
    }

    @Deprecated
    public ResourceCursorAdapter(Context context, int i, Cursor cursor, boolean z) {
        super(context, cursor, z);
        this.f1448b = i;
        this.f1447a = i;
        this.c = (LayoutInflater) context.getSystemService("layout_inflater");
    }

    public ResourceCursorAdapter(Context context, int i, Cursor cursor, int i2) {
        super(context, cursor, i2);
        this.f1448b = i;
        this.f1447a = i;
        this.c = (LayoutInflater) context.getSystemService("layout_inflater");
    }

    @Override // androidx.cursoradapter.widget.CursorAdapter
    public View newView(Context context, Cursor cursor, ViewGroup viewGroup) {
        return this.c.inflate(this.f1447a, viewGroup, false);
    }

    @Override // androidx.cursoradapter.widget.CursorAdapter
    public View newDropDownView(Context context, Cursor cursor, ViewGroup viewGroup) {
        return this.c.inflate(this.f1448b, viewGroup, false);
    }

    public void setViewResource(int i) {
        this.f1447a = i;
    }

    public void setDropDownViewResource(int i) {
        this.f1448b = i;
    }
}
