package com.google.android.material.transition.platform;

import android.app.Activity;
import android.app.SharedElementCallback;
import android.content.Context;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Parcelable;
import android.transition.Transition;
import android.view.View;
import android.view.Window;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.google.android.material.R;
import com.google.android.material.internal.ContextUtils;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.shape.Shapeable;
import java.lang.ref.WeakReference;
import java.util.List;
import java.util.Map;

@RequiresApi(21)
/* loaded from: classes.dex */
public class MaterialContainerTransformSharedElementCallback extends SharedElementCallback {
    public static WeakReference f;
    public Rect d;

    /* renamed from: a, reason: collision with root package name */
    public boolean f3453a = true;

    /* renamed from: b, reason: collision with root package name */
    public boolean f3454b = true;
    public boolean c = false;
    public ShapeProvider e = new ShapeableViewShapeProvider();

    public interface ShapeProvider {
        @Nullable
        ShapeAppearanceModel provideShape(@NonNull View view);
    }

    public static class ShapeableViewShapeProvider implements ShapeProvider {
        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.android.material.transition.platform.MaterialContainerTransformSharedElementCallback.ShapeProvider
        @Nullable
        public ShapeAppearanceModel provideShape(@NonNull View view) {
            if (view instanceof Shapeable) {
                return ((Shapeable) view).getShapeAppearanceModel();
            }
            return null;
        }
    }

    @Override // android.app.SharedElementCallback
    @Nullable
    public Parcelable onCaptureSharedElementSnapshot(@NonNull View view, @NonNull Matrix matrix, @NonNull RectF rectF) {
        f = new WeakReference(view);
        return super.onCaptureSharedElementSnapshot(view, matrix, rectF);
    }

    @Override // android.app.SharedElementCallback
    @Nullable
    public View onCreateSnapshotView(@NonNull Context context, @Nullable Parcelable parcelable) {
        WeakReference weakReference;
        View view;
        ShapeAppearanceModel shapeAppearanceModelProvideShape;
        View viewOnCreateSnapshotView = super.onCreateSnapshotView(context, parcelable);
        if (viewOnCreateSnapshotView != null && (weakReference = f) != null && this.e != null && (view = (View) weakReference.get()) != null && (shapeAppearanceModelProvideShape = this.e.provideShape(view)) != null) {
            viewOnCreateSnapshotView.setTag(R.id.mtrl_motion_snapshot_view, shapeAppearanceModelProvideShape);
        }
        return viewOnCreateSnapshotView;
    }

    @Override // android.app.SharedElementCallback
    public void onMapSharedElements(@NonNull List<String> list, @NonNull Map<String, View> map) {
        View view;
        Activity activity;
        if (list.isEmpty() || map.isEmpty() || (view = map.get(list.get(0))) == null || (activity = ContextUtils.getActivity(view.getContext())) == null) {
            return;
        }
        Window window = activity.getWindow();
        if (this.f3453a) {
            Transition sharedElementEnterTransition = window.getSharedElementEnterTransition();
            if (sharedElementEnterTransition instanceof MaterialContainerTransform) {
                MaterialContainerTransform materialContainerTransform = (MaterialContainerTransform) sharedElementEnterTransition;
                if (!this.c) {
                    window.setSharedElementReenterTransition(null);
                }
                if (this.f3454b) {
                    if (materialContainerTransform.getDuration() >= 0) {
                        window.setTransitionBackgroundFadeDuration(materialContainerTransform.getDuration());
                    }
                    materialContainerTransform.addListener(new n(window));
                    return;
                }
                return;
            }
            return;
        }
        Transition sharedElementReturnTransition = window.getSharedElementReturnTransition();
        if (sharedElementReturnTransition instanceof MaterialContainerTransform) {
            MaterialContainerTransform materialContainerTransform2 = (MaterialContainerTransform) sharedElementReturnTransition;
            materialContainerTransform2.setHoldAtEndEnabled(true);
            materialContainerTransform2.addListener(new o(activity));
            if (this.f3454b) {
                if (materialContainerTransform2.getDuration() >= 0) {
                    window.setTransitionBackgroundFadeDuration(materialContainerTransform2.getDuration());
                }
                materialContainerTransform2.addListener(new p(window));
            }
        }
    }

    @Override // android.app.SharedElementCallback
    public void onSharedElementStart(@NonNull List<String> list, @NonNull List<View> list2, @NonNull List<View> list3) {
        if (!list2.isEmpty() && !list3.isEmpty()) {
            list2.get(0).setTag(R.id.mtrl_motion_snapshot_view, list3.get(0));
        }
        if (this.f3453a || list2.isEmpty() || this.d == null) {
            return;
        }
        View view = list2.get(0);
        view.measure(View.MeasureSpec.makeMeasureSpec(this.d.width(), 1073741824), View.MeasureSpec.makeMeasureSpec(this.d.height(), 1073741824));
        Rect rect = this.d;
        view.layout(rect.left, rect.top, rect.right, rect.bottom);
    }

    @Override // android.app.SharedElementCallback
    public void onSharedElementEnd(@NonNull List<String> list, @NonNull List<View> list2, @NonNull List<View> list3) {
        if (!list2.isEmpty()) {
            View view = list2.get(0);
            int i = R.id.mtrl_motion_snapshot_view;
            if (view.getTag(i) instanceof View) {
                list2.get(0).setTag(i, null);
            }
        }
        if (!this.f3453a && !list2.isEmpty()) {
            View view2 = list2.get(0);
            RectF rectF = x.f3494a;
            this.d = new Rect(view2.getLeft(), view2.getTop(), view2.getRight(), view2.getBottom());
        }
        this.f3453a = false;
    }

    @Nullable
    public ShapeProvider getShapeProvider() {
        return this.e;
    }

    public void setShapeProvider(@Nullable ShapeProvider shapeProvider) {
        this.e = shapeProvider;
    }

    public boolean isTransparentWindowBackgroundEnabled() {
        return this.f3454b;
    }

    public void setTransparentWindowBackgroundEnabled(boolean z) {
        this.f3454b = z;
    }

    public boolean isSharedElementReenterTransitionEnabled() {
        return this.c;
    }

    public void setSharedElementReenterTransitionEnabled(boolean z) {
        this.c = z;
    }
}
