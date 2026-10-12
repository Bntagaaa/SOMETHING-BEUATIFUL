package com.google.appinventor.components.runtime;

import android.R;
import android.animation.StateListAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.OvalShape;
import android.graphics.drawable.shapes.RectShape;
import android.graphics.drawable.shapes.RoundRectShape;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewOutlineProvider;
import com.google.appinventor.components.annotations.Asset;
import com.google.appinventor.components.annotations.DesignerProperty;
import com.google.appinventor.components.annotations.PropertyCategory;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.annotations.UsesPermissions;
import com.google.appinventor.components.common.HtmlEntities;
import com.google.appinventor.components.common.PropertyTypeConstants;
import com.google.appinventor.components.runtime.util.IceCreamSandwichUtil;
import com.google.appinventor.components.runtime.util.KitkatUtil;
import com.google.appinventor.components.runtime.util.MediaUtil;
import com.google.appinventor.components.runtime.util.TextViewUtil;
import com.google.appinventor.components.runtime.util.ViewUtil;
import java.io.IOException;

@UsesPermissions(permissionNames = "android.permission.INTERNET")
@SimpleObject
/* loaded from: classes.dex */
public abstract class ButtonBase extends AndroidViewComponent implements View.OnClickListener, View.OnFocusChangeListener, View.OnLongClickListener, View.OnTouchListener, AccessibleComponent {
    private static final String LOG_TAG = "ButtonBase";
    private static final float ROUNDED_CORNERS_RADIUS = 10.0f;
    private static final int SHAPED_DEFAULT_BACKGROUND_COLOR = -3355444;
    private Bitmap backgroundBitmap;
    private int backgroundColor;
    private Drawable backgroundImageDrawable;
    private boolean bold;
    private Context context;
    private Drawable defaultButtonDrawable;
    private ColorStateList defaultColorStateList;
    private Object defaultOutlineProvider;
    private Object defaultStateAnimator;
    private boolean fontAwesome;
    private String fontTypeface;
    private String imagePath;
    private boolean isBigText;
    private boolean isHighContrast;
    private boolean isRepl;
    private boolean italic;
    private Drawable myBackgroundDrawable;
    private int shape;
    private boolean showFeedback;
    private int textAlignment;
    private int textColor;
    private final android.widget.Button view;
    private static final float[] ROUNDED_CORNERS_ARRAY = {10.0f, 10.0f, 10.0f, 10.0f, 10.0f, 10.0f, 10.0f, 10.0f};
    private static int defaultButtonMinWidth = 0;
    private static int defaultButtonMinHeight = 0;

    public abstract void click();

    public boolean longClick() {
        return false;
    }

    public ButtonBase(ComponentContainer componentContainer) {
        super(componentContainer);
        this.showFeedback = true;
        this.imagePath = "";
        this.myBackgroundDrawable = null;
        this.isHighContrast = false;
        this.isBigText = false;
        android.widget.Button button = new android.widget.Button(componentContainer.$context());
        this.view = button;
        this.isRepl = componentContainer.$form() instanceof ReplForm;
        this.context = componentContainer.$context();
        this.defaultButtonDrawable = button.getBackground();
        this.defaultColorStateList = button.getTextColors();
        defaultButtonMinWidth = KitkatUtil.getMinWidth(button);
        defaultButtonMinHeight = KitkatUtil.getMinHeight(button);
        this.defaultOutlineProvider = button.getOutlineProvider();
        this.defaultStateAnimator = button.getStateListAnimator();
        componentContainer.$add(this);
        button.setOnClickListener(this);
        button.setOnFocusChangeListener(this);
        button.setOnLongClickListener(this);
        button.setOnTouchListener(this);
        IceCreamSandwichUtil.setAllCaps(button, false);
        TextAlignment(1);
        BackgroundColor(0);
        Image("");
        Enabled(true);
        this.fontTypeface = "0";
        TextViewUtil.setFontTypeface(componentContainer.$form(), button, this.fontTypeface, this.bold, this.italic);
        FontSize(14.0f);
        Text("");
        TextColor(0);
        Shape(0);
    }

    public ButtonBase(ComponentContainer componentContainer, android.widget.Button button) {
        super(componentContainer);
        this.showFeedback = true;
        this.imagePath = "";
        this.myBackgroundDrawable = null;
        this.isHighContrast = false;
        this.isBigText = false;
        this.view = button;
    }

    public void Initialize() {
        updateAppearance();
    }

    public boolean onTouch(View view, MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            ShowFeedback();
            TouchDown();
            return false;
        }
        if (motionEvent.getAction() != 1 && motionEvent.getAction() != 3) {
            return false;
        }
        ShowFeedback();
        TouchUp();
        return false;
    }

    @Override // com.google.appinventor.components.runtime.AndroidViewComponent
    public View getView() {
        return this.view;
    }

    @SimpleEvent(description = "Indicates that the %type% was pressed down.")
    public void TouchDown() {
        EventDispatcher.dispatchEvent(this, "TouchDown", new Object[0]);
    }

    @SimpleEvent(description = "Indicates that the %type% has been released.")
    public void TouchUp() {
        EventDispatcher.dispatchEvent(this, "TouchUp", new Object[0]);
    }

    @SimpleEvent(description = "Indicates the cursor moved over the %type% so it is now possible to click it.")
    public void GotFocus() {
        EventDispatcher.dispatchEvent(this, "GotFocus", new Object[0]);
    }

    @SimpleEvent(description = "Indicates the cursor moved away from the %type% so it is now no longer possible to click it.")
    public void LostFocus() {
        EventDispatcher.dispatchEvent(this, "LostFocus", new Object[0]);
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Left, center, or right.", userVisible = false)
    public int TextAlignment() {
        return this.textAlignment;
    }

    @SimpleProperty(userVisible = false)
    @DesignerProperty(defaultValue = "1", editorType = PropertyTypeConstants.PROPERTY_TYPE_TEXTALIGNMENT)
    public void TextAlignment(int i) {
        this.textAlignment = i;
        TextViewUtil.setAlignment(this.view, i, true);
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, userVisible = false)
    public int Shape() {
        return this.shape;
    }

    @SimpleProperty(description = "Specifies the shape of the %type% (default, rounded, rectangular, oval). The shape will not be visible if an Image is being displayed.", userVisible = false)
    @DesignerProperty(defaultValue = "0", editorType = PropertyTypeConstants.PROPERTY_TYPE_BUTTON_SHAPE)
    public void Shape(int i) {
        this.shape = i;
        updateAppearance();
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Image to display on button.")
    public String Image() {
        return this.imagePath;
    }

    @SimpleProperty(description = "Specifies the path of the image of the %type%.  If there is both an Image and a BackgroundColor, only the Image will be visible.")
    @DesignerProperty(defaultValue = "", editorType = PropertyTypeConstants.PROPERTY_TYPE_ASSET)
    public void Image(@Asset String str) {
        if (!str.equals(this.imagePath) || this.backgroundImageDrawable == null) {
            this.imagePath = str;
            this.backgroundImageDrawable = null;
            if (str.length() > 0) {
                try {
                    this.backgroundImageDrawable = MediaUtil.getBitmapDrawable(this.container.$form(), this.imagePath);
                } catch (IOException unused) {
                    _COROUTINE.a.w("Unable to load ", this.imagePath, LOG_TAG);
                }
            }
            updateAppearance();
        }
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Returns the button's background color")
    public int BackgroundColor() {
        return this.backgroundColor;
    }

    @SimpleProperty(description = "Specifies the background color of the %type%. The background color will not be visible if an Image is being displayed.")
    @DesignerProperty(defaultValue = Component.DEFAULT_VALUE_COLOR_DEFAULT, editorType = PropertyTypeConstants.PROPERTY_TYPE_COLOR)
    public void BackgroundColor(int i) {
        this.backgroundColor = i;
        updateAppearance();
    }

    private void updateAppearance() {
        Drawable drawable = this.backgroundImageDrawable;
        if (drawable == null) {
            if (this.shape == 0) {
                int i = this.backgroundColor;
                if (i == 0) {
                    if (this.isHighContrast || this.container.$form().HighContrast()) {
                        ViewUtil.setBackgroundDrawable(this.view, null);
                        ViewUtil.setBackgroundDrawable(this.view, getSafeBackgroundDrawable());
                        this.view.getBackground().setColorFilter(-16777216, PorterDuff.Mode.SRC_ATOP);
                    } else {
                        ViewUtil.setBackgroundDrawable(this.view, this.defaultButtonDrawable);
                    }
                } else if (i == 16777215) {
                    ViewUtil.setBackgroundDrawable(this.view, null);
                    ViewUtil.setBackgroundDrawable(this.view, getSafeBackgroundDrawable());
                    this.view.getBackground().setColorFilter(this.backgroundColor, PorterDuff.Mode.CLEAR);
                } else {
                    ViewUtil.setBackgroundDrawable(this.view, null);
                    ViewUtil.setBackgroundDrawable(this.view, getSafeBackgroundDrawable());
                    this.view.getBackground().setColorFilter(this.backgroundColor, PorterDuff.Mode.SRC_ATOP);
                }
            } else {
                setShape();
            }
            TextViewUtil.setMinSize(this.view, defaultButtonMinWidth, defaultButtonMinHeight);
            return;
        }
        if (this.shape == 0) {
            ViewUtil.setBackgroundImage(this.view, drawable);
            return;
        }
        Paint paint = new Paint();
        paint.setAntiAlias(true);
        this.backgroundBitmap = ((BitmapDrawable) this.backgroundImageDrawable).getBitmap();
        float f = this.view.getContext().getResources().getDisplayMetrics().density;
        int iRound = Math.round(this.backgroundImageDrawable.getIntrinsicHeight() * f);
        int iRound2 = Math.round(this.backgroundImageDrawable.getIntrinsicWidth() * f);
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(iRound2, iRound, Bitmap.Config.ARGB_8888);
        android.graphics.Canvas canvas = new android.graphics.Canvas(bitmapCreateBitmap);
        int i2 = this.shape;
        if (i2 == 1) {
            canvas.drawRoundRect(new RectF(0.0f, 0.0f, iRound2, iRound), 100.0f, 100.0f, paint);
        } else if (i2 == 2) {
            canvas.drawRect(new RectF(0.0f, 0.0f, iRound2, iRound), paint);
        } else if (i2 == 3) {
            canvas.drawOval(new RectF(0.0f, 0.0f, iRound2, iRound), paint);
        } else {
            throw new IllegalArgumentException();
        }
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
        canvas.drawBitmap(this.backgroundBitmap, (Rect) null, new Rect(0, 0, iRound2, iRound), paint);
        ViewUtil.setBackgroundImage(this.view, new BitmapDrawable(bitmapCreateBitmap));
    }

    private Drawable getSafeBackgroundDrawable() {
        if (this.myBackgroundDrawable == null) {
            Drawable.ConstantState constantState = this.defaultButtonDrawable.getConstantState();
            if (constantState != null) {
                try {
                    this.myBackgroundDrawable = constantState.newDrawable().mutate();
                } catch (NullPointerException e) {
                    Log.e(LOG_TAG, "Unable to clone button drawable", e);
                    this.myBackgroundDrawable = this.defaultButtonDrawable;
                }
            } else {
                this.myBackgroundDrawable = this.defaultButtonDrawable;
            }
        }
        return this.myBackgroundDrawable;
    }

    private ColorStateList createRippleState() {
        int[][] iArr = {new int[]{R.attr.state_enabled}};
        int colorForState = this.defaultColorStateList.getColorForState(this.view.getDrawableState(), R.attr.state_enabled);
        return new ColorStateList(iArr, new int[]{Color.argb(70, Color.red(colorForState), Color.green(colorForState), Color.blue(colorForState))});
    }

    private void setShape() {
        ShapeDrawable shapeDrawable = new ShapeDrawable();
        int i = this.shape;
        if (i == 1) {
            shapeDrawable.setShape(new RoundRectShape(ROUNDED_CORNERS_ARRAY, null, null));
        } else if (i == 2) {
            shapeDrawable.setShape(new RectShape());
        } else if (i == 3) {
            shapeDrawable.setShape(new OvalShape());
        } else {
            throw new IllegalArgumentException();
        }
        if (this.backgroundColor != 0 && !this.container.$form().HighContrast()) {
            shapeDrawable.getPaint().setColor(this.backgroundColor);
        }
        ViewUtil.setBackgroundDrawable(this.view, new RippleDrawable(createRippleState(), shapeDrawable, shapeDrawable));
        if (this.backgroundColor == 16777215) {
            this.view.setOutlineProvider(null);
            this.view.setStateListAnimator(null);
        } else {
            this.view.setOutlineProvider((ViewOutlineProvider) this.defaultOutlineProvider);
            this.view.setStateListAnimator((StateListAnimator) this.defaultStateAnimator);
        }
        int i2 = this.backgroundColor;
        if (i2 == 16777215) {
            this.view.getBackground().setColorFilter(this.backgroundColor, PorterDuff.Mode.CLEAR);
        } else if (i2 == 0) {
            if (this.isHighContrast || this.container.$form().HighContrast()) {
                this.view.getBackground().setColorFilter(-16777216, PorterDuff.Mode.SRC_ATOP);
            } else {
                this.view.getBackground().setColorFilter(-3355444, PorterDuff.Mode.SRC_ATOP);
            }
        } else {
            this.view.getBackground().setColorFilter(this.backgroundColor, PorterDuff.Mode.SRC_ATOP);
        }
        this.view.invalidate();
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "If set, user can tap %type% to cause action.")
    public boolean Enabled() {
        return TextViewUtil.isEnabled(this.view);
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = "True", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void Enabled(boolean z) {
        TextViewUtil.setEnabled(this.view, z);
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "If set, %type% text is displayed in bold.")
    public boolean FontBold() {
        return this.bold;
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE)
    @DesignerProperty(defaultValue = "False", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void FontBold(boolean z) {
        this.bold = z;
        TextViewUtil.setFontTypeface(this.container.$form(), this.view, this.fontTypeface, z, this.italic);
    }

    @SimpleProperty(description = "Specifies if a visual feedback should be shown  for a %type% that has an image as background.")
    @DesignerProperty(defaultValue = "True", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void ShowFeedback(boolean z) {
        this.showFeedback = z;
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Returns the visual feedback state of the %type%")
    public boolean ShowFeedback() {
        return this.showFeedback;
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "If set, %type% text is displayed in italics.")
    public boolean FontItalic() {
        return this.italic;
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE)
    @DesignerProperty(defaultValue = "False", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void FontItalic(boolean z) {
        this.italic = z;
        TextViewUtil.setFontTypeface(this.container.$form(), this.view, this.fontTypeface, this.bold, z);
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Point size for %type% text.")
    public float FontSize() {
        return TextViewUtil.getFontSize(this.view, this.container.$context());
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE)
    @DesignerProperty(defaultValue = "14.0", editorType = PropertyTypeConstants.PROPERTY_TYPE_NON_NEGATIVE_FLOAT)
    public void FontSize(float f) {
        if (f == 14.0f && this.container.$form().BigDefaultText()) {
            TextViewUtil.setFontSize(this.view, 24.0f);
        } else {
            TextViewUtil.setFontSize(this.view, f);
        }
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Font family for %type% text.", userVisible = false)
    public String FontTypeface() {
        return this.fontTypeface;
    }

    @SimpleProperty(userVisible = false)
    @DesignerProperty(defaultValue = "0", editorType = PropertyTypeConstants.PROPERTY_TYPE_TYPEFACE)
    public void FontTypeface(String str) {
        this.fontTypeface = str;
        TextViewUtil.setFontTypeface(this.container.$form(), this.view, this.fontTypeface, this.bold, this.italic);
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Text to display on %type%.")
    public String Text() {
        return TextViewUtil.getText(this.view);
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = "", editorType = PropertyTypeConstants.PROPERTY_TYPE_STRING)
    public void Text(String str) {
        if (this.fontAwesome) {
            try {
                TextViewUtil.setText(this.view, HtmlEntities.decodeHtmlText("&#x" + str + ";"));
                return;
            } catch (IllegalArgumentException unused) {
                TextViewUtil.setText(this.view, str);
                return;
            }
        }
        TextViewUtil.setText(this.view, str);
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Color for button text.")
    public int TextColor() {
        return this.textColor;
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = Component.DEFAULT_VALUE_COLOR_DEFAULT, editorType = PropertyTypeConstants.PROPERTY_TYPE_COLOR)
    public void TextColor(int i) {
        this.textColor = i;
        if (i != 0) {
            TextViewUtil.setTextColor(this.view, i);
        } else if (this.isHighContrast || this.container.$form().HighContrast()) {
            TextViewUtil.setTextColor(this.view, -1);
        } else {
            TextViewUtil.setTextColors(this.view, this.defaultColorStateList);
        }
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE)
    public void CustomFontTypeFace(String str) {
        if (str == null || str.isEmpty() || str == "") {
            return;
        }
        TextViewUtil.setFontTypeface(this.container.$form(), this.view, str, this.bold, this.italic);
    }

    @SimpleFunction
    public void PerformClick() {
        this.view.performClick();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        click();
    }

    @Override // android.view.View.OnFocusChangeListener
    public void onFocusChange(View view, boolean z) {
        if (z) {
            GotFocus();
        } else {
            LostFocus();
        }
    }

    @Override // android.view.View.OnLongClickListener
    public boolean onLongClick(View view) {
        return longClick();
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Set opacity value between 1 to 10")
    @DesignerProperty(defaultValue = "0", editorType = PropertyTypeConstants.PROPERTY_TYPE_INTEGER)
    public void Opacity(int i) {
        this.view.setAlpha(Float.parseFloat(i > 9 ? "1f" : _COROUTINE.a.e(i, "0.", "f")));
    }

    @Override // com.google.appinventor.components.runtime.AccessibleComponent
    public void setHighContrast(boolean z) {
        if (this.backgroundImageDrawable == null && this.shape == 0 && this.backgroundColor == 0) {
            if (z) {
                ViewUtil.setBackgroundDrawable(this.view, null);
                ViewUtil.setBackgroundDrawable(this.view, getSafeBackgroundDrawable());
                this.view.getBackground().setColorFilter(-16777216, PorterDuff.Mode.SRC_ATOP);
            } else {
                ViewUtil.setBackgroundDrawable(this.view, this.defaultButtonDrawable);
            }
        }
        if (this.textColor == 0) {
            if (z) {
                TextViewUtil.setTextColor(this.view, -1);
            } else {
                TextViewUtil.setTextColors(this.view, this.defaultColorStateList);
            }
        }
    }

    @Override // com.google.appinventor.components.runtime.AccessibleComponent
    public boolean getHighContrast() {
        return this.isHighContrast;
    }

    @Override // com.google.appinventor.components.runtime.AccessibleComponent
    public void setLargeFont(boolean z) {
        if (TextViewUtil.getFontSize(this.view, this.container.$context()) == 24.0d || TextViewUtil.getFontSize(this.view, this.container.$context()) == 14.0f) {
            if (z) {
                TextViewUtil.setFontSize(this.view, 24.0f);
            } else {
                TextViewUtil.setFontSize(this.view, 14.0f);
            }
        }
    }

    @Override // com.google.appinventor.components.runtime.AccessibleComponent
    public boolean getLargeFont() {
        return this.isBigText;
    }
}
