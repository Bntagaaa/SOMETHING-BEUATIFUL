package com.google.appinventor.components.runtime;

import android.R;
import android.content.Context;
import android.graphics.BlendMode;
import android.graphics.BlendModeColorFilter;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.Log;
import android.widget.ProgressBar;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.DesignerProperty;
import com.google.appinventor.components.annotations.PropertyCategory;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.common.PropertyTypeConstants;

@DesignerComponent(category = ComponentCategory.INTERNAL, description = "A visible component that indicates the progress of an operation using an animated linear bar.", iconName = "images/linearProgress.png", version = 1)
@SimpleObject
/* loaded from: classes.dex */
public final class LinearProgress extends AndroidViewComponent {
    private static final String LOG_TAG = "LinearProgress";
    private Context context;
    private int indeterminateColor;
    private ProgressBar progressBar;
    private int progressColor;

    @Override // com.google.appinventor.components.runtime.AndroidViewComponent, com.google.appinventor.components.runtime.VisibleComponent
    public void HeightPercent(int i) {
    }

    public LinearProgress(ComponentContainer componentContainer) {
        super(componentContainer);
        this.progressColor = Component.COLOR_BLUE;
        this.indeterminateColor = Component.COLOR_BLUE;
        this.context = componentContainer.$context();
        this.progressBar = new ProgressBar(this.context, null, R.attr.progressBarStyleHorizontal);
        componentContainer.$add(this);
        Minimum(0);
        Maximum(100);
        ProgressColor(Component.COLOR_BLUE);
        IndeterminateColor(Component.COLOR_BLUE);
        Indeterminate(true);
        Width(-2);
        Log.d(LOG_TAG, "Linear Progress created");
    }

    @Override // com.google.appinventor.components.runtime.AndroidViewComponent
    public ProgressBar getView() {
        return this.progressBar;
    }

    @Override // com.google.appinventor.components.runtime.AndroidViewComponent, com.google.appinventor.components.runtime.VisibleComponent
    public int Height() {
        return getView().getHeight();
    }

    @Override // com.google.appinventor.components.runtime.AndroidViewComponent, com.google.appinventor.components.runtime.VisibleComponent
    public void Height(int i) {
        this.container.setChildHeight(this, i);
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "Set the lower range of the progress bar to min. This function works only for devices with API >= 26")
    @DesignerProperty(defaultValue = "0", editorType = PropertyTypeConstants.PROPERTY_TYPE_INTEGER)
    public void Minimum(int i) {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 26) {
            this.progressBar.setMin(i);
            Log.i(LOG_TAG, "setMin = " + i);
            return;
        }
        Log.i(LOG_TAG, "setMin of progress bar is not possible. API is " + i2);
    }

    @SimpleProperty
    public int Minimum() {
        if (Build.VERSION.SDK_INT >= 26) {
            return this.progressBar.getMin();
        }
        return 0;
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "Set the upper range of the progress bar max.")
    @DesignerProperty(defaultValue = "100", editorType = PropertyTypeConstants.PROPERTY_TYPE_INTEGER)
    public void Maximum(int i) {
        this.progressBar.setMax(i);
        Log.i(LOG_TAG, "setMax = " + i);
    }

    @SimpleProperty
    public int Maximum() {
        return this.progressBar.getMax();
    }

    @SimpleProperty(description = "Sets the current progress to the specified value. Does not do anything if the progress bar is in indeterminate mode.")
    public void Progress(int i) {
        if (Build.VERSION.SDK_INT >= 24) {
            this.progressBar.setProgress(i, true);
        } else {
            this.progressBar.setProgress(i);
        }
        ProgressChanged(this.progressBar.getProgress());
    }

    @SimpleProperty(description = "Get the progress bar's current level of progress.")
    public int Progress() {
        return this.progressBar.getProgress();
    }

    @SimpleFunction(description = "Increase the progress bar's progress by the specified amount.")
    public void IncrementProgressBy(int i) {
        this.progressBar.incrementProgressBy(i);
        ProgressChanged(this.progressBar.getProgress());
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Change the progress color of the progress bar.")
    @DesignerProperty(defaultValue = Component.DEFAULT_VALUE_COLOR_BLUE, editorType = PropertyTypeConstants.PROPERTY_TYPE_COLOR)
    public void ProgressColor(int i) {
        this.progressColor = i;
        Drawable progressDrawable = this.progressBar.getProgressDrawable();
        if (Build.VERSION.SDK_INT >= 29) {
            progressDrawable.setColorFilter(new BlendModeColorFilter(i, BlendMode.SRC_IN));
        } else {
            progressDrawable.setColorFilter(i, PorterDuff.Mode.SRC_IN);
        }
        Log.i(LOG_TAG, "Progress Color = " + i);
    }

    @SimpleProperty
    public int ProgressColor() {
        return this.progressColor;
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Change the indeterminate color of the progress bar.")
    @DesignerProperty(defaultValue = Component.DEFAULT_VALUE_COLOR_BLUE, editorType = PropertyTypeConstants.PROPERTY_TYPE_COLOR)
    public void IndeterminateColor(int i) {
        this.indeterminateColor = i;
        Drawable progressDrawable = this.progressBar.getProgressDrawable();
        if (Build.VERSION.SDK_INT >= 29) {
            progressDrawable.setColorFilter(new BlendModeColorFilter(i, BlendMode.SRC_IN));
        } else {
            progressDrawable.setColorFilter(i, PorterDuff.Mode.SRC_IN);
        }
        Log.i(LOG_TAG, "Indeterminate Color = " + i);
    }

    @SimpleProperty
    public int IndeterminateColor() {
        return this.indeterminateColor;
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "Change the indeterminate mode for this progress bar. In indeterminate mode, the progress is ignored and the progress bar shows an infinite animation instead.")
    @DesignerProperty(defaultValue = "True", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void Indeterminate(boolean z) {
        this.progressBar.setIndeterminate(z);
        Log.i(LOG_TAG, "Indeterminate is: " + z);
    }

    @SimpleProperty(description = "Indicate whether this progress bar is in indeterminate mode.")
    public boolean Indeterminate() {
        return this.progressBar.isIndeterminate();
    }

    @SimpleEvent(description = "Event that indicates that the progress of the progress bar has been changed. Returns the current progress value. If \"Indeterminate\" is set to true, then it returns \"0\".")
    public void ProgressChanged(int i) {
        EventDispatcher.dispatchEvent(this, "ProgressChanged", Integer.valueOf(i));
    }
}
