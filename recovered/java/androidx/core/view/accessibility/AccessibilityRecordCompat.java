package androidx.core.view.accessibility;

import android.annotation.SuppressLint;
import android.os.Parcelable;
import android.view.View;
import android.view.accessibility.AccessibilityRecord;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import java.util.List;

/* loaded from: classes.dex */
public class AccessibilityRecordCompat {

    /* renamed from: a, reason: collision with root package name */
    public final AccessibilityRecord f1390a;

    @Deprecated
    public AccessibilityRecordCompat(Object obj) {
        this.f1390a = (AccessibilityRecord) obj;
    }

    @Deprecated
    public Object getImpl() {
        return this.f1390a;
    }

    @Deprecated
    public static AccessibilityRecordCompat obtain(AccessibilityRecordCompat accessibilityRecordCompat) {
        return new AccessibilityRecordCompat(AccessibilityRecord.obtain(accessibilityRecordCompat.f1390a));
    }

    @Deprecated
    public static AccessibilityRecordCompat obtain() {
        return new AccessibilityRecordCompat(AccessibilityRecord.obtain());
    }

    @SuppressLint({"KotlinPropertyAccess"})
    @Deprecated
    public void setSource(View view) {
        this.f1390a.setSource(view);
    }

    @Deprecated
    public void setSource(View view, int i) {
        setSource(this.f1390a, view, i);
    }

    public static void setSource(@NonNull AccessibilityRecord accessibilityRecord, @Nullable View view, int i) {
        b.a(accessibilityRecord, view, i);
    }

    @SuppressLint({"KotlinPropertyAccess"})
    @Deprecated
    public AccessibilityNodeInfoCompat getSource() {
        return AccessibilityNodeInfoCompat.e(this.f1390a.getSource());
    }

    @Deprecated
    public int getWindowId() {
        return this.f1390a.getWindowId();
    }

    @Deprecated
    public boolean isChecked() {
        return this.f1390a.isChecked();
    }

    @Deprecated
    public void setChecked(boolean z) {
        this.f1390a.setChecked(z);
    }

    @Deprecated
    public boolean isEnabled() {
        return this.f1390a.isEnabled();
    }

    @Deprecated
    public void setEnabled(boolean z) {
        this.f1390a.setEnabled(z);
    }

    @Deprecated
    public boolean isPassword() {
        return this.f1390a.isPassword();
    }

    @Deprecated
    public void setPassword(boolean z) {
        this.f1390a.setPassword(z);
    }

    @Deprecated
    public boolean isFullScreen() {
        return this.f1390a.isFullScreen();
    }

    @Deprecated
    public void setFullScreen(boolean z) {
        this.f1390a.setFullScreen(z);
    }

    @Deprecated
    public boolean isScrollable() {
        return this.f1390a.isScrollable();
    }

    @Deprecated
    public void setScrollable(boolean z) {
        this.f1390a.setScrollable(z);
    }

    @Deprecated
    public int getItemCount() {
        return this.f1390a.getItemCount();
    }

    @Deprecated
    public void setItemCount(int i) {
        this.f1390a.setItemCount(i);
    }

    @Deprecated
    public int getCurrentItemIndex() {
        return this.f1390a.getCurrentItemIndex();
    }

    @Deprecated
    public void setCurrentItemIndex(int i) {
        this.f1390a.setCurrentItemIndex(i);
    }

    @Deprecated
    public int getFromIndex() {
        return this.f1390a.getFromIndex();
    }

    @Deprecated
    public void setFromIndex(int i) {
        this.f1390a.setFromIndex(i);
    }

    @Deprecated
    public int getToIndex() {
        return this.f1390a.getToIndex();
    }

    @Deprecated
    public void setToIndex(int i) {
        this.f1390a.setToIndex(i);
    }

    @Deprecated
    public int getScrollX() {
        return this.f1390a.getScrollX();
    }

    @Deprecated
    public void setScrollX(int i) {
        this.f1390a.setScrollX(i);
    }

    @Deprecated
    public int getScrollY() {
        return this.f1390a.getScrollY();
    }

    @Deprecated
    public void setScrollY(int i) {
        this.f1390a.setScrollY(i);
    }

    @Deprecated
    public int getMaxScrollX() {
        return getMaxScrollX(this.f1390a);
    }

    public static int getMaxScrollX(@NonNull AccessibilityRecord accessibilityRecord) {
        return a.a(accessibilityRecord);
    }

    @Deprecated
    public void setMaxScrollX(int i) {
        setMaxScrollX(this.f1390a, i);
    }

    public static void setMaxScrollX(@NonNull AccessibilityRecord accessibilityRecord, int i) {
        a.c(accessibilityRecord, i);
    }

    @Deprecated
    public int getMaxScrollY() {
        return getMaxScrollY(this.f1390a);
    }

    public static int getMaxScrollY(@NonNull AccessibilityRecord accessibilityRecord) {
        return a.b(accessibilityRecord);
    }

    @Deprecated
    public void setMaxScrollY(int i) {
        setMaxScrollY(this.f1390a, i);
    }

    public static void setMaxScrollY(@NonNull AccessibilityRecord accessibilityRecord, int i) {
        a.d(accessibilityRecord, i);
    }

    @Deprecated
    public int getAddedCount() {
        return this.f1390a.getAddedCount();
    }

    @Deprecated
    public void setAddedCount(int i) {
        this.f1390a.setAddedCount(i);
    }

    @Deprecated
    public int getRemovedCount() {
        return this.f1390a.getRemovedCount();
    }

    @Deprecated
    public void setRemovedCount(int i) {
        this.f1390a.setRemovedCount(i);
    }

    @Deprecated
    public CharSequence getClassName() {
        return this.f1390a.getClassName();
    }

    @Deprecated
    public void setClassName(CharSequence charSequence) {
        this.f1390a.setClassName(charSequence);
    }

    @Deprecated
    public List<CharSequence> getText() {
        return this.f1390a.getText();
    }

    @Deprecated
    public CharSequence getBeforeText() {
        return this.f1390a.getBeforeText();
    }

    @Deprecated
    public void setBeforeText(CharSequence charSequence) {
        this.f1390a.setBeforeText(charSequence);
    }

    @Deprecated
    public CharSequence getContentDescription() {
        return this.f1390a.getContentDescription();
    }

    @Deprecated
    public void setContentDescription(CharSequence charSequence) {
        this.f1390a.setContentDescription(charSequence);
    }

    @Deprecated
    public Parcelable getParcelableData() {
        return this.f1390a.getParcelableData();
    }

    @Deprecated
    public void setParcelableData(Parcelable parcelable) {
        this.f1390a.setParcelableData(parcelable);
    }

    @Deprecated
    public void recycle() {
        this.f1390a.recycle();
    }

    @Deprecated
    public int hashCode() {
        AccessibilityRecord accessibilityRecord = this.f1390a;
        if (accessibilityRecord == null) {
            return 0;
        }
        return accessibilityRecord.hashCode();
    }

    @Deprecated
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AccessibilityRecordCompat)) {
            return false;
        }
        AccessibilityRecordCompat accessibilityRecordCompat = (AccessibilityRecordCompat) obj;
        AccessibilityRecord accessibilityRecord = this.f1390a;
        if (accessibilityRecord == null) {
            return accessibilityRecordCompat.f1390a == null;
        }
        return accessibilityRecord.equals(accessibilityRecordCompat.f1390a);
    }

    @RequiresApi(16)
    public static class b {
        private b() {
        }

        @DoNotInline
        public static void a(AccessibilityRecord accessibilityRecord, View view, int i) {
            accessibilityRecord.setSource(view, i);
        }
    }

    @RequiresApi(15)
    public static class a {
        private a() {
        }

        @DoNotInline
        public static int a(AccessibilityRecord accessibilityRecord) {
            return accessibilityRecord.getMaxScrollX();
        }

        @DoNotInline
        public static void c(AccessibilityRecord accessibilityRecord, int i) {
            accessibilityRecord.setMaxScrollX(i);
        }

        @DoNotInline
        public static int b(AccessibilityRecord accessibilityRecord) {
            return accessibilityRecord.getMaxScrollY();
        }

        @DoNotInline
        public static void d(AccessibilityRecord accessibilityRecord, int i) {
            accessibilityRecord.setMaxScrollY(i);
        }
    }
}
