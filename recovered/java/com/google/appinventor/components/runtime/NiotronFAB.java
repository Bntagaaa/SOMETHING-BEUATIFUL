package com.google.appinventor.components.runtime;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.OvalShape;
import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton;
import com.google.appinventor.components.annotations.Asset;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.DesignerProperty;
import com.google.appinventor.components.annotations.PropertyCategory;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.common.PropertyTypeConstants;
import com.google.appinventor.components.runtime.errors.YailRuntimeError;
import com.google.appinventor.components.runtime.util.MediaUtil;
import java.io.IOException;

@DesignerComponent(category = ComponentCategory.MATERIAL, description = "A new component ", iconName = "images/niotronFAB.png", nonVisible = true, version = 1)
@SimpleObject
/* loaded from: classes.dex */
public final class NiotronFAB extends AndroidNonvisibleComponent {
    ComponentContainer container;
    ExtendedFloatingActionButton extendedFloatingActionButton;
    private int marginBottom;
    private int marginLeft;
    private int marginRight;
    private int marginTop;

    @SimpleProperty(category = PropertyCategory.APPEARANCE, userVisible = false)
    @DesignerProperty(defaultValue = "0,0,0,0", editorType = PropertyTypeConstants.PROPERTY_TYPE_FOUR)
    public void HeihPadding(String str) {
    }

    public NiotronFAB(ComponentContainer componentContainer) {
        super(componentContainer.$form());
        this.marginLeft = 0;
        this.marginTop = 0;
        this.marginRight = 0;
        this.marginBottom = 0;
        this.container = componentContainer;
        this.extendedFloatingActionButton = new ExtendedFloatingActionButton(componentContainer.$context());
        componentContainer.$form().setFAB(this.extendedFloatingActionButton);
        this.extendedFloatingActionButton.setIconTint(null);
        addListeners();
        HeihMargin("16,16,16,16");
        Text("Text");
        Icon("");
        Extended(false);
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Sets the text")
    @DesignerProperty(defaultValue = "Text", editorType = PropertyTypeConstants.PROPERTY_TYPE_STRING)
    public void Text(String str) {
        this.container.$form().getFAB().setText(str);
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Sets the icon")
    @DesignerProperty(defaultValue = "", editorType = PropertyTypeConstants.PROPERTY_TYPE_ASSET)
    public void Icon(@Asset String str) {
        if (!str.isEmpty()) {
            try {
                this.container.$form().getFAB().setIcon(MediaUtil.getBitmapDrawable(this.form, str));
            } catch (IOException unused) {
                throw new YailRuntimeError("FAB", "Icon not found");
            }
        } else {
            ShapeDrawable shapeDrawable = new ShapeDrawable(new OvalShape());
            shapeDrawable.setPadding(px(12), px(12), px(12), px(12));
            this.container.$form().getFAB().setIcon(shapeDrawable);
        }
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Set extended")
    @DesignerProperty(editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void Extended(boolean z) {
        this.container.$form().getFAB().setExtended(z);
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Set text color")
    @DesignerProperty(defaultValue = Component.DEFAULT_VALUE_COLOR_BLACK, editorType = PropertyTypeConstants.PROPERTY_TYPE_COLOR)
    public void TextColor(int i) {
        this.container.$form().getFAB().setTextColor(i);
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Set icon color")
    @DesignerProperty(defaultValue = Component.DEFAULT_VALUE_COLOR_NONE, editorType = PropertyTypeConstants.PROPERTY_TYPE_COLOR)
    public void IconColor(int i) {
        if (i == 16777215) {
            this.container.$form().getFAB().setIconTint(null);
        } else {
            this.container.$form().getFAB().setIconTint(ColorStateList.valueOf(i));
        }
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Set background color")
    @DesignerProperty(defaultValue = Component.DEFAULT_VALUE_COLOR_PINK, editorType = PropertyTypeConstants.PROPERTY_TYPE_COLOR)
    public void BackgroundColor(int i) {
        this.container.$form().getFAB().setBackgroundColor(i);
    }

    @SimpleFunction(description = "Shrinks the FAB")
    public void Shrink() {
        this.container.$form().getFAB().shrink();
    }

    @SimpleFunction(description = "Shows the FAB")
    public void Extend() {
        this.container.$form().getFAB().extend();
    }

    @SimpleFunction(description = "Hides the FAB")
    public void Hide() {
        this.container.$form().getFAB().hide();
    }

    @SimpleFunction(description = "Shows the FAB")
    public void Show() {
        this.container.$form().getFAB().show();
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, userVisible = false)
    @DesignerProperty(defaultValue = "16,16,16,16", editorType = PropertyTypeConstants.PROPERTY_TYPE_FOUR)
    public void HeihMargin(String str) {
        String[] strArrSplit = str.split(",");
        this.marginLeft = Integer.parseInt(strArrSplit[0]);
        this.marginRight = Integer.parseInt(strArrSplit[1]);
        this.marginTop = Integer.parseInt(strArrSplit[2]);
        this.marginBottom = Integer.parseInt(strArrSplit[3]);
        refreshMargin();
    }

    @SimpleEvent(description = "Invokes when fab clicked")
    public void Click() {
        EventDispatcher.dispatchEvent(this, "Click", new Object[0]);
    }

    @SimpleEvent(description = "Invokes when fab long clicked")
    public void LongClick() {
        EventDispatcher.dispatchEvent(this, "LongClick", new Object[0]);
    }

    private void addListeners() {
        this.container.$form().getFAB().setOnClickListener(new View.OnClickListener() { // from class: com.google.appinventor.components.runtime.NiotronFAB.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                NiotronFAB.this.Click();
            }
        });
        this.container.$form().getFAB().setOnLongClickListener(new View.OnLongClickListener() { // from class: com.google.appinventor.components.runtime.NiotronFAB.2
            @Override // android.view.View.OnLongClickListener
            public boolean onLongClick(View view) {
                NiotronFAB.this.LongClick();
                return true;
            }
        });
    }

    private void refreshMargin() {
        ExtendedFloatingActionButton fab = this.container.$form().getFAB();
        CoordinatorLayout.LayoutParams layoutParams = (CoordinatorLayout.LayoutParams) fab.getLayoutParams();
        layoutParams.setMargins(px(this.marginLeft), px(this.marginTop), px(this.marginRight), px(this.marginBottom));
        fab.setLayoutParams(layoutParams);
    }

    private int px(int i) {
        return (int) (i * Resources.getSystem().getDisplayMetrics().density);
    }
}
