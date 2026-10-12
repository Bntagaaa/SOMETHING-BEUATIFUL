package com.google.appinventor.components.runtime;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.view.ViewTreeObserver;
import com.google.android.material.badge.BadgeDrawable;
import com.google.android.material.badge.BadgeUtils;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.DesignerProperty;
import com.google.appinventor.components.annotations.PropertyCategory;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.common.PropertyTypeConstants;

@DesignerComponent(category = ComponentCategory.USERINTERFACE, description = "A badge component that sticks to the view provided in a specific location", iconName = "images/niotronBadge.png", nonVisible = true, version = 1)
@SimpleObject
/* loaded from: classes.dex */
public final class NiotronBadge extends AndroidNonvisibleComponent {
    BadgeDrawable badgeDrawable;
    Context context;
    View view;

    public NiotronBadge(ComponentContainer componentContainer) {
        super(componentContainer.$form());
        Activity activity$context = componentContainer.$context();
        this.context = activity$context;
        this.badgeDrawable = BadgeDrawable.create(activity$context);
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Property for setting background color")
    @DesignerProperty(defaultValue = Component.DEFAULT_VALUE_COLOR_RED, editorType = PropertyTypeConstants.PROPERTY_TYPE_COLOR)
    public void BackgroundColor(int i) {
        this.badgeDrawable.setBackgroundColor(i);
        updateDrawable();
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Property for setting text color")
    @DesignerProperty(defaultValue = Component.DEFAULT_VALUE_COLOR_RED, editorType = PropertyTypeConstants.PROPERTY_TYPE_COLOR)
    public void TextColor(int i) {
        this.badgeDrawable.setBadgeTextColor(i);
        updateDrawable();
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Property for setting alpha")
    @DesignerProperty(defaultValue = "1", editorType = PropertyTypeConstants.PROPERTY_TYPE_NON_NEGATIVE_INTEGER)
    public void Alpha(int i) {
        this.badgeDrawable.setAlpha(i);
        updateDrawable();
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Property for setting number")
    @DesignerProperty(defaultValue = "1", editorType = PropertyTypeConstants.PROPERTY_TYPE_NON_NEGATIVE_INTEGER)
    public void Number(int i) {
        this.badgeDrawable.setNumber(i);
        updateDrawable();
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "Property for setting max character")
    @DesignerProperty(defaultValue = "1", editorType = PropertyTypeConstants.PROPERTY_TYPE_NON_NEGATIVE_INTEGER)
    public void MaxCharacter(int i) {
        this.badgeDrawable.setMaxCharacterCount(i);
        updateDrawable();
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "Property for setting auto mirrored")
    @DesignerProperty(defaultValue = "False", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void AutoMirrored(boolean z) {
        this.badgeDrawable.setAutoMirrored(z);
        updateDrawable();
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "Property for setting horizontal offset")
    @DesignerProperty(defaultValue = "0", editorType = PropertyTypeConstants.PROPERTY_TYPE_NON_NEGATIVE_INTEGER)
    public void HorizontalOffset(int i) {
        this.badgeDrawable.setHorizontalOffset(i);
        updateDrawable();
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "Property for setting vertical offset")
    @DesignerProperty(defaultValue = "0", editorType = PropertyTypeConstants.PROPERTY_TYPE_NON_NEGATIVE_INTEGER)
    public void VerticalOffset(int i) {
        this.badgeDrawable.setVerticalOffset(i);
        updateDrawable();
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Property for setting vertical offset", userVisible = false)
    @DesignerProperty(defaultValue = "Top Right", editorArgs = {"Top Right", "Top Left", "Bottom Right", "Bottom Left"}, editorType = PropertyTypeConstants.PROPERTY_TYPE_CHOICES)
    public void BadgeGravity(String str) {
        if (str.equalsIgnoreCase("Top Right")) {
            this.badgeDrawable.setBadgeGravity(8388661);
        } else if (str.equalsIgnoreCase("Top Left")) {
            this.badgeDrawable.setBadgeGravity(8388659);
        } else if (str.equalsIgnoreCase("Bottom Left")) {
            this.badgeDrawable.setBadgeGravity(8388691);
        } else if (str.equalsIgnoreCase("Bottom Right")) {
            this.badgeDrawable.setBadgeGravity(8388693);
        }
        updateDrawable();
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "Property for attaching badge into a component")
    @DesignerProperty(editorType = PropertyTypeConstants.PROPERTY_TYPE_VISIBLE_COMPONENTS)
    public void AnchorComponent(AndroidViewComponent androidViewComponent) {
        this.view = androidViewComponent.getView();
        updateDrawable();
    }

    private void updateDrawable() {
        this.view.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.google.appinventor.components.runtime.NiotronBadge.1
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                NiotronBadge niotronBadge = NiotronBadge.this;
                BadgeUtils.attachBadgeDrawable(niotronBadge.badgeDrawable, niotronBadge.view);
                NiotronBadge.this.view.getViewTreeObserver().removeOnGlobalLayoutListener(this);
            }
        });
    }
}
