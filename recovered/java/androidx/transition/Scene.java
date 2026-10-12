package androidx.transition;

import android.content.Context;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.LayoutRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* loaded from: classes.dex */
public class Scene {

    /* renamed from: a, reason: collision with root package name */
    public Context f2246a;

    /* renamed from: b, reason: collision with root package name */
    public int f2247b = -1;
    public ViewGroup c;
    public final View d;
    public Runnable e;
    public Runnable f;

    @NonNull
    public static Scene getSceneForLayout(@NonNull ViewGroup viewGroup, @LayoutRes int i, @NonNull Context context) {
        int i2 = R.id.transition_scene_layoutid_cache;
        SparseArray sparseArray = (SparseArray) viewGroup.getTag(i2);
        if (sparseArray == null) {
            sparseArray = new SparseArray();
            viewGroup.setTag(i2, sparseArray);
        }
        Scene scene = (Scene) sparseArray.get(i);
        if (scene != null) {
            return scene;
        }
        Scene scene2 = new Scene();
        scene2.f2246a = context;
        scene2.c = viewGroup;
        scene2.f2247b = i;
        sparseArray.put(i, scene2);
        return scene2;
    }

    public Scene(@NonNull ViewGroup viewGroup) {
        this.c = viewGroup;
    }

    public Scene(@NonNull ViewGroup viewGroup, @NonNull View view) {
        this.c = viewGroup;
        this.d = view;
    }

    @NonNull
    public ViewGroup getSceneRoot() {
        return this.c;
    }

    public void exit() {
        Runnable runnable;
        if (getCurrentScene(this.c) != this || (runnable = this.f) == null) {
            return;
        }
        runnable.run();
    }

    public void enter() {
        View view = this.d;
        ViewGroup viewGroup = this.c;
        int i = this.f2247b;
        if (i > 0 || view != null) {
            getSceneRoot().removeAllViews();
            if (i > 0) {
                LayoutInflater.from(this.f2246a).inflate(i, viewGroup);
            } else {
                viewGroup.addView(view);
            }
        }
        Runnable runnable = this.e;
        if (runnable != null) {
            runnable.run();
        }
        viewGroup.setTag(R.id.transition_current_scene, this);
    }

    @Nullable
    public static Scene getCurrentScene(@NonNull ViewGroup viewGroup) {
        return (Scene) viewGroup.getTag(R.id.transition_current_scene);
    }

    public void setEnterAction(@Nullable Runnable runnable) {
        this.e = runnable;
    }

    public void setExitAction(@Nullable Runnable runnable) {
        this.f = runnable;
    }
}
