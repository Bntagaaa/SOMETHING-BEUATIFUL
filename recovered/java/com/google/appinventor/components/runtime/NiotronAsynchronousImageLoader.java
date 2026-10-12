package com.google.appinventor.components.runtime;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.DesignerProperty;
import com.google.appinventor.components.annotations.PropertyCategory;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.annotations.UsesLibraries;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.common.PropertyTypeConstants;
import com.google.appinventor.components.runtime.util.MediaUtil;
import com.squareup.picasso.Callback;
import com.squareup.picasso.Picasso;

@DesignerComponent(category = ComponentCategory.EXPERIMENTAL, description = "A new component ", iconName = "images/asynchronousImageLoader.png", nonVisible = true, version = 1)
@UsesLibraries(libraries = "picasso.jar, okhttp.jar")
@SimpleObject
/* loaded from: classes.dex */
public final class NiotronAsynchronousImageLoader extends AndroidNonvisibleComponent {
    public Context context;
    private Drawable placeholder;

    public NiotronAsynchronousImageLoader(ComponentContainer componentContainer) {
        super(componentContainer.$form());
        this.placeholder = null;
        this.context = componentContainer.$context();
    }

    @SimpleFunction(description = "Loads image async")
    public void LoadImage(Image image, final String str, boolean z) {
        if (!z) {
            Picasso.with(this.context).load(str).placeholder(this.placeholder).into((ImageView) image.getView(), new Callback() { // from class: com.google.appinventor.components.runtime.NiotronAsynchronousImageLoader.1
                public void onSuccess() {
                    NiotronAsynchronousImageLoader.this.ImageLoaded(str);
                }

                public void onError() {
                    NiotronAsynchronousImageLoader.this.ImageFailedToLoad(str);
                }
            });
            ((ImageView) image.getView()).setAdjustViewBounds(true);
        } else {
            Picasso.with(this.context).load(str).placeholder(this.placeholder).fit().centerCrop().into((ImageView) image.getView(), new Callback() { // from class: com.google.appinventor.components.runtime.NiotronAsynchronousImageLoader.2
                public void onSuccess() {
                    NiotronAsynchronousImageLoader.this.ImageLoaded(str);
                }

                public void onError() {
                    NiotronAsynchronousImageLoader.this.ImageFailedToLoad(str);
                }
            });
        }
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Sets the place holder")
    @DesignerProperty(editorType = PropertyTypeConstants.PROPERTY_TYPE_ASSET)
    public void Placeholder(String str) {
        try {
            this.placeholder = MediaUtil.getBitmapDrawable(this.form, str);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @SimpleEvent(description = "Image loaded")
    public void ImageLoaded(String str) {
        EventDispatcher.dispatchEvent(this, "ImageLoaded", str);
    }

    @SimpleEvent(description = "Image failed to load")
    public void ImageFailedToLoad(String str) {
        EventDispatcher.dispatchEvent(this, "ImageFailedToLoad", str);
    }
}
