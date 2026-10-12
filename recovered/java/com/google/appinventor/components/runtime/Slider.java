package com.google.appinventor.components.runtime;

import android.R;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Build;
import android.view.MotionEvent;
import android.view.View;
import android.widget.SeekBar;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.DesignerProperty;
import com.google.appinventor.components.annotations.PropertyCategory;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.common.PropertyTypeConstants;
import com.google.appinventor.components.runtime.util.MediaUtil;
import com.google.appinventor.components.runtime.util.SdkLevel;

@DesignerComponent(category = ComponentCategory.USERINTERFACE, description = "A Slider is a progress bar that adds a draggable thumb. You can touch the thumb and drag left or right to set the slider thumb position. As the Slider thumb is dragged, it will trigger the PositionChanged event, reporting the position of the Slider thumb. The reported position of the Slider thumb can be used to dynamically update another component attribute, such as the font size of a TextBox or the radius of a Ball.", iconName = "images/slider.png", version = 2)
@SimpleObject
/* loaded from: classes.dex */
public class Slider extends AndroidViewComponent implements SeekBar.OnSeekBarChangeListener {
    private static final boolean DEBUG = false;
    private static final String LOG_TAG = "Slider";
    private static final int initialLeftColor = -14336;
    private static final String initialLeftColorString = "&HFFFFC800";
    private static final int initialRightColor = -7829368;
    private static final String initialRightColorString = "&HFF888888";
    private int leftColor;
    private float maxValue;
    private float minValue;
    public final boolean referenceGetThumb;
    private int rightColor;
    private final SeekBar seekbar;
    private boolean thumbEnabled;
    private float thumbPosition;

    public class SeekBarHelper {
        public /* synthetic */ SeekBarHelper(Slider slider, int i) {
            this();
        }

        private SeekBarHelper() {
        }

        public void getThumb(int i) {
            Slider.this.seekbar.getThumb().mutate().setAlpha(i);
        }
    }

    public Slider(ComponentContainer componentContainer) {
        super(componentContainer);
        this.referenceGetThumb = SdkLevel.getLevel() >= 16;
        SeekBar seekBar = new SeekBar(componentContainer.$context());
        this.seekbar = seekBar;
        if (SdkLevel.getLevel() >= 21) {
            seekBar.setSplitTrack(false);
        }
        this.leftColor = -14336;
        this.rightColor = -7829368;
        setSliderColors();
        componentContainer.$add(this);
        this.minValue = 10.0f;
        this.maxValue = 50.0f;
        this.thumbPosition = 30.0f;
        this.thumbEnabled = true;
        seekBar.setOnSeekBarChangeListener(this);
        seekBar.setMax(100);
        setSeekbarPosition();
    }

    private void setSliderColors() {
        int i = Build.VERSION.SDK_INT;
        this.seekbar.setProgressTintList(ColorStateList.valueOf(this.leftColor));
        if (i >= 22 || !(this.seekbar.getProgressDrawable() instanceof StateListDrawable)) {
            this.seekbar.setProgressBackgroundTintList(ColorStateList.valueOf(this.rightColor));
            this.seekbar.setProgressBackgroundTintMode(PorterDuff.Mode.MULTIPLY);
            return;
        }
        StateListDrawable stateListDrawable = (StateListDrawable) this.seekbar.getProgressDrawable();
        if (stateListDrawable.getCurrent() instanceof LayerDrawable) {
            Drawable drawableFindDrawableByLayerId = ((LayerDrawable) stateListDrawable.getCurrent()).findDrawableByLayerId(R.id.background);
            drawableFindDrawableByLayerId.setTintList(ColorStateList.valueOf(this.rightColor));
            drawableFindDrawableByLayerId.setTintMode(PorterDuff.Mode.MULTIPLY);
        }
    }

    private void setSeekbarPosition() {
        float f = this.thumbPosition;
        float f2 = this.minValue;
        this.seekbar.setProgress((int) (((f - f2) / (this.maxValue - f2)) * 100.0f));
    }

    @SimpleProperty(description = "Sets whether or not to display the slider thumb.", userVisible = true)
    @DesignerProperty(defaultValue = "True", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void ThumbEnabled(boolean z) {
        this.thumbEnabled = z;
        int i = 0;
        int i2 = z ? 255 : 0;
        if (this.referenceGetThumb) {
            new SeekBarHelper(this, i).getThumb(i2);
        }
        this.seekbar.setOnTouchListener(new View.OnTouchListener() { // from class: com.google.appinventor.components.runtime.Slider.1
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                return !Slider.this.thumbEnabled;
            }
        });
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Sets color of the slider thumb.", userVisible = true)
    @DesignerProperty(defaultValue = Component.DEFAULT_VALUE_COLOR_BLUE, editorType = PropertyTypeConstants.PROPERTY_TYPE_COLOR)
    public void ThumbColor(int i) {
        this.seekbar.getThumb().setColorFilter(i, PorterDuff.Mode.SRC_ATOP);
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Returns whether or not the slider thumb is being be shown", userVisible = true)
    public boolean ThumbEnabled() {
        return this.thumbEnabled;
    }

    @SimpleProperty(description = "Sets the position of the slider thumb. If this value is greater than MaxValue, then it will be set to same value as MaxValue. If this value is less than MinValue, then it will be set to same value as MinValue.", userVisible = true)
    @DesignerProperty(defaultValue = "30.0", editorType = PropertyTypeConstants.PROPERTY_TYPE_FLOAT)
    public void ThumbPosition(float f) {
        this.thumbPosition = Math.max(Math.min(f, this.maxValue), this.minValue);
        setSeekbarPosition();
        PositionChanged(this.thumbPosition);
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Returns the position of slider thumb", userVisible = true)
    public float ThumbPosition() {
        return this.thumbPosition;
    }

    @SimpleProperty(description = "Sets the minimum value of slider.  Changing the minimum value also resets Thumbposition to be halfway between the (new) minimum and the maximum. If the new minimum is greater than the current maximum, then minimum and maximum will both be set to this value.  Setting MinValue resets the thumb position to halfway between MinValue and MaxValue and signals the PositionChanged event.", userVisible = true)
    @DesignerProperty(defaultValue = "10.0", editorType = PropertyTypeConstants.PROPERTY_TYPE_FLOAT)
    public void MinValue(float f) {
        this.minValue = f;
        float fMax = Math.max(f, this.maxValue);
        this.maxValue = fMax;
        ThumbPosition((this.minValue + fMax) / 2.0f);
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Returns the value of slider min value.", userVisible = true)
    public float MinValue() {
        return this.minValue;
    }

    @SimpleProperty(description = "Sets the maximum value of slider.  Changing the maximum value also resets Thumbposition to be halfway between the minimum and the (new) maximum. If the new maximum is less than the current minimum, then minimum and maximum will both be set to this value.  Setting MaxValue resets the thumb position to halfway between MinValue and MaxValue and signals the PositionChanged event.", userVisible = true)
    @DesignerProperty(defaultValue = "50.0", editorType = PropertyTypeConstants.PROPERTY_TYPE_FLOAT)
    public void MaxValue(float f) {
        this.maxValue = f;
        float fMin = Math.min(f, this.minValue);
        this.minValue = fMin;
        ThumbPosition((fMin + this.maxValue) / 2.0f);
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Returns the slider max value.", userVisible = true)
    public float MaxValue() {
        return this.maxValue;
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "The color of slider to the left of the thumb.")
    public int ColorLeft() {
        return this.leftColor;
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = "&HFFFFC800", editorType = PropertyTypeConstants.PROPERTY_TYPE_COLOR)
    public void ColorLeft(int i) {
        this.leftColor = i;
        setSliderColors();
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "The color of slider to the right of the thumb.")
    public int ColorRight() {
        return this.rightColor;
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = "&HFF888888", editorType = PropertyTypeConstants.PROPERTY_TYPE_COLOR)
    public void ColorRight(int i) {
        this.rightColor = i;
        setSliderColors();
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Set thumb image of the slider", userVisible = true)
    @DesignerProperty(defaultValue = "", editorType = PropertyTypeConstants.PROPERTY_TYPE_ASSET)
    public void ThumbImage(String str) {
        try {
            this.seekbar.setThumb(MediaUtil.getBitmapDrawable(this.container.$form(), str));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // com.google.appinventor.components.runtime.AndroidViewComponent
    public View getView() {
        return this.seekbar;
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
        float f = this.maxValue;
        float f2 = this.minValue;
        float f3 = (((f - f2) * i) / 100.0f) + f2;
        this.thumbPosition = f3;
        PositionChanged(f3);
    }

    @SimpleEvent
    public void PositionChanged(float f) {
        EventDispatcher.dispatchEvent(this, "PositionChanged", Float.valueOf(f));
    }

    @SimpleEvent
    public void TouchUp() {
        EventDispatcher.dispatchEvent(this, "TouchUp", new Object[0]);
    }

    @SimpleEvent
    public void TouchDown() {
        EventDispatcher.dispatchEvent(this, "TouchDown", new Object[0]);
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onStartTrackingTouch(SeekBar seekBar) {
        TouchDown();
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onStopTrackingTouch(SeekBar seekBar) {
        TouchUp();
    }

    @Override // com.google.appinventor.components.runtime.AndroidViewComponent, com.google.appinventor.components.runtime.VisibleComponent
    public int Height() {
        return getView().getHeight();
    }

    @Override // com.google.appinventor.components.runtime.AndroidViewComponent, com.google.appinventor.components.runtime.VisibleComponent
    public void Height(int i) {
        this.container.setChildHeight(this, i);
    }
}
