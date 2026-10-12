package com.google.appinventor.components.runtime;

import android.app.WallpaperManager;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.widget.Toast;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.DesignerProperty;
import com.google.appinventor.components.annotations.PropertyCategory;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.annotations.UsesPermissions;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.common.PropertyTypeConstants;
import com.google.appinventor.components.runtime.util.MediaUtil;
import java.io.FileOutputStream;
import java.io.IOException;

@UsesPermissions(permissionNames = "android.permission.SET_WALLPAPER, android.permission.READ_EXTERNAL_STORAGE, android.permission.READ_INTERNAL_STORAGE")
@DesignerComponent(category = ComponentCategory.EXTRAS, description = "A new component ", iconName = "images/niotronWallpaperManager.png", nonVisible = true, version = 1)
@SimpleObject
/* loaded from: classes.dex */
public final class NiotronWallpaperManager extends AndroidNonvisibleComponent {
    ComponentContainer container;
    boolean highQuality;
    WallpaperManager manager;
    boolean scrollable;

    public NiotronWallpaperManager(ComponentContainer componentContainer) {
        super(componentContainer.$form());
        this.scrollable = true;
        this.highQuality = true;
        this.container = componentContainer;
        this.manager = WallpaperManager.getInstance(componentContainer.$context());
    }

    @SimpleFunction
    public void SaveWallpaper(String str) {
        try {
            ((BitmapDrawable) this.manager.getDrawable()).getBitmap().compress(Bitmap.CompressFormat.PNG, 100, new FileOutputStream(str));
        } catch (Exception unused) {
            WallpaperSaved();
        }
    }

    @SimpleFunction
    public void ResetWallpaper() throws IOException {
        try {
            this.manager.clear();
        } catch (Exception unused) {
            OnWallpaperReset();
        }
    }

    @SimpleFunction
    public void SetWallpaper(final String str) {
        if (MediaUtil.isExternalFile(this.container.$context(), str) && this.container.$form().isDeniedPermission("android.permission.READ_EXTERNAL_STORAGE")) {
            this.container.$form().askPermission("android.permission.READ_EXTERNAL_STORAGE", new PermissionResultHandler() { // from class: com.google.appinventor.components.runtime.NiotronWallpaperManager.1
                @Override // com.google.appinventor.components.runtime.PermissionResultHandler
                public void HandlePermissionResponse(String str2, boolean z) {
                    if (z) {
                        NiotronWallpaperManager.this.SetWallpaper(str);
                    } else {
                        NiotronWallpaperManager.this.container.$form().dispatchPermissionDeniedEvent(NiotronWallpaperManager.this, "Wallpaper", str2);
                    }
                }
            });
        } else {
            new Thread() { // from class: com.google.appinventor.components.runtime.NiotronWallpaperManager.2
                @Override // java.lang.Thread, java.lang.Runnable
                public void run() throws IOException {
                    try {
                        NiotronWallpaperManager niotronWallpaperManager = NiotronWallpaperManager.this;
                        Bitmap bitmap = (!niotronWallpaperManager.highQuality ? MediaUtil.getBitmapDrawable(niotronWallpaperManager.container.$form(), str) : MediaUtil.getHighQualityImage(niotronWallpaperManager.container.$form(), str)).getBitmap();
                        NiotronWallpaperManager niotronWallpaperManager2 = NiotronWallpaperManager.this;
                        if (!niotronWallpaperManager2.scrollable) {
                            Drawable builtInDrawable = niotronWallpaperManager2.manager.getBuiltInDrawable();
                            NiotronWallpaperManager.this.manager.setWallpaperOffsetSteps(1.0f, 1.0f);
                            bitmap = Bitmap.createScaledBitmap(bitmap, builtInDrawable.getIntrinsicWidth(), builtInDrawable.getIntrinsicHeight(), true);
                        }
                        NiotronWallpaperManager.this.manager.setBitmap(bitmap);
                        NiotronWallpaperManager.this.form.runOnUiThread(new Runnable() { // from class: com.google.appinventor.components.runtime.NiotronWallpaperManager.2.1
                            @Override // java.lang.Runnable
                            public void run() {
                                NiotronWallpaperManager.this.OnWallpaperSet();
                            }
                        });
                    } catch (IOException unused) {
                        _COROUTINE.a.w("Unable to load ", str, Component.LISTVIEW_KEY_IMAGE);
                    }
                }
            }.start();
        }
    }

    @SimpleFunction
    public void SetLockScreenWallpaper(final String str) {
        if (Build.VERSION.SDK_INT >= 24) {
            if (MediaUtil.isExternalFile(this.container.$context(), str) && this.container.$form().isDeniedPermission("android.permission.READ_EXTERNAL_STORAGE")) {
                this.container.$form().askPermission("android.permission.READ_EXTERNAL_STORAGE", new PermissionResultHandler() { // from class: com.google.appinventor.components.runtime.NiotronWallpaperManager.3
                    @Override // com.google.appinventor.components.runtime.PermissionResultHandler
                    public void HandlePermissionResponse(String str2, boolean z) {
                        if (z) {
                            NiotronWallpaperManager.this.SetLockScreenWallpaper(str);
                        } else {
                            NiotronWallpaperManager.this.container.$form().dispatchPermissionDeniedEvent(NiotronWallpaperManager.this, "Wallpaper", str2);
                        }
                    }
                });
                return;
            } else {
                new Thread() { // from class: com.google.appinventor.components.runtime.NiotronWallpaperManager.4
                    @Override // java.lang.Thread, java.lang.Runnable
                    public void run() throws IOException {
                        try {
                            NiotronWallpaperManager niotronWallpaperManager = NiotronWallpaperManager.this;
                            NiotronWallpaperManager.this.manager.setBitmap((!niotronWallpaperManager.highQuality ? MediaUtil.getBitmapDrawable(niotronWallpaperManager.container.$form(), str) : MediaUtil.getHighQualityImage(niotronWallpaperManager.container.$form(), str)).getBitmap(), null, true, 2);
                            NiotronWallpaperManager.this.form.runOnUiThread(new Runnable() { // from class: com.google.appinventor.components.runtime.NiotronWallpaperManager.4.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    NiotronWallpaperManager.this.OnWallpaperSet();
                                }
                            });
                        } catch (IOException unused) {
                            _COROUTINE.a.w("Unable to load ", str, Component.LISTVIEW_KEY_IMAGE);
                        }
                    }
                }.start();
                return;
            }
        }
        Toast.makeText(this.form, "Set Lock Screen Wallpaper only works for android 7 and above.", 1).show();
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE)
    @DesignerProperty(defaultValue = "True", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void HighQuality(boolean z) {
        this.highQuality = z;
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR)
    @DesignerProperty(defaultValue = "True", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void Scrollable(boolean z) {
        this.scrollable = z;
    }

    @SimpleEvent
    public void WallpaperSaved() {
        EventDispatcher.dispatchEvent(this, "WallpaperSaved", new Object[0]);
    }

    @SimpleEvent
    public void OnWallpaperSet() {
        EventDispatcher.dispatchEvent(this, "OnWallpaperSet", new Object[0]);
    }

    @SimpleEvent
    public void OnWallpaperReset() {
        EventDispatcher.dispatchEvent(this, "OnWallpaperReset", new Object[0]);
    }
}
