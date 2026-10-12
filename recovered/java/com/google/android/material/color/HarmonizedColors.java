package com.google.android.material.color;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.content.res.loader.ResourcesLoader;
import android.content.res.loader.ResourcesProvider;
import android.os.Build;
import android.os.ParcelFileDescriptor;
import android.system.Os;
import android.util.Log;
import android.view.ContextThemeWrapper;
import androidx.annotation.ChecksSdkIntAtLeast;
import androidx.annotation.NonNull;
import androidx.core.content.ContextCompat;
import com.google.android.material.R;
import java.io.FileDescriptor;
import java.io.FileOutputStream;
import java.util.HashMap;

/* loaded from: classes.dex */
public class HarmonizedColors {
    public static boolean a(Context context, HashMap map) throws Throwable {
        FileDescriptor fileDescriptorMemfd_create;
        ResourcesLoader resourcesLoader = null;
        try {
            byte[] bArrC = d.c(context, map);
            Log.i("c", "Table created, length: " + bArrC.length);
            if (bArrC.length != 0) {
                try {
                    fileDescriptorMemfd_create = Os.memfd_create("temp.arsc", 0);
                } catch (Throwable th) {
                    th = th;
                    fileDescriptorMemfd_create = null;
                }
                try {
                    FileOutputStream fileOutputStream = new FileOutputStream(fileDescriptorMemfd_create);
                    try {
                        fileOutputStream.write(bArrC);
                        ParcelFileDescriptor parcelFileDescriptorDup = ParcelFileDescriptor.dup(fileDescriptorMemfd_create);
                        try {
                            androidx.core.view.accessibility.b.f();
                            ResourcesLoader resourcesLoaderA = androidx.core.view.accessibility.b.a();
                            resourcesLoaderA.addProvider(ResourcesProvider.loadFromTable(parcelFileDescriptorDup, null));
                            if (parcelFileDescriptorDup != null) {
                                parcelFileDescriptorDup.close();
                            }
                            fileOutputStream.close();
                            if (fileDescriptorMemfd_create != null) {
                                Os.close(fileDescriptorMemfd_create);
                            }
                            resourcesLoader = resourcesLoaderA;
                        } finally {
                        }
                    } finally {
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (fileDescriptorMemfd_create != null) {
                        Os.close(fileDescriptorMemfd_create);
                    }
                    throw th;
                }
            }
        } catch (Exception e) {
            Log.e("c", "Failed to create the ColorResourcesTableCreator.", e);
        }
        if (resourcesLoader == null) {
            return false;
        }
        context.getResources().addLoaders(resourcesLoader);
        return true;
    }

    private HarmonizedColors() {
    }

    @NonNull
    public static void applyToContextIfAvailable(@NonNull Context context, @NonNull HarmonizedColorsOptions harmonizedColorsOptions) {
        if (isHarmonizedColorAvailable()) {
            HashMap mapB = b(context, harmonizedColorsOptions);
            HarmonizedColorAttributes harmonizedColorAttributes = harmonizedColorsOptions.f2891b;
            int themeOverlay = (harmonizedColorAttributes == null || harmonizedColorAttributes.getThemeOverlay() == 0) ? 0 : harmonizedColorAttributes.getThemeOverlay();
            if (!a(context, mapB) || themeOverlay == 0) {
                return;
            }
            h.a(context, themeOverlay);
        }
    }

    @NonNull
    public static Context wrapContextIfAvailable(@NonNull Context context, @NonNull HarmonizedColorsOptions harmonizedColorsOptions) {
        if (isHarmonizedColorAvailable()) {
            HashMap mapB = b(context, harmonizedColorsOptions);
            int themeOverlay = R.style.ThemeOverlay_Material3_HarmonizedColors_Empty;
            HarmonizedColorAttributes harmonizedColorAttributes = harmonizedColorsOptions.f2891b;
            if (harmonizedColorAttributes != null && harmonizedColorAttributes.getThemeOverlay() != 0) {
                themeOverlay = harmonizedColorAttributes.getThemeOverlay();
            }
            ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(context, themeOverlay);
            contextThemeWrapper.applyOverrideConfiguration(new Configuration());
            if (a(contextThemeWrapper, mapB)) {
                return contextThemeWrapper;
            }
        }
        return context;
    }

    @ChecksSdkIntAtLeast(api = 30)
    public static boolean isHarmonizedColorAvailable() {
        return Build.VERSION.SDK_INT >= 30;
    }

    public static HashMap b(Context context, HarmonizedColorsOptions harmonizedColorsOptions) {
        int type;
        HashMap map = new HashMap();
        int color = MaterialColors.getColor(context, harmonizedColorsOptions.getColorAttributeToHarmonizeWith(), "HarmonizedColors");
        for (int i : harmonizedColorsOptions.getColorResourceIds()) {
            map.put(Integer.valueOf(i), Integer.valueOf(MaterialColors.harmonize(ContextCompat.getColor(context, i), color)));
        }
        HarmonizedColorAttributes colorAttributes = harmonizedColorsOptions.getColorAttributes();
        if (colorAttributes != null) {
            int[] attributes = colorAttributes.getAttributes();
            if (attributes.length > 0) {
                int themeOverlay = colorAttributes.getThemeOverlay();
                TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributes);
                TypedArray typedArrayObtainStyledAttributes2 = themeOverlay != 0 ? new ContextThemeWrapper(context, themeOverlay).obtainStyledAttributes(attributes) : null;
                TypedArray typedArray = typedArrayObtainStyledAttributes2 != null ? typedArrayObtainStyledAttributes2 : typedArrayObtainStyledAttributes;
                for (int i2 = 0; i2 < typedArrayObtainStyledAttributes.getIndexCount(); i2++) {
                    int resourceId = typedArray.getResourceId(i2, 0);
                    if (resourceId != 0 && typedArrayObtainStyledAttributes.hasValue(i2) && 28 <= (type = typedArrayObtainStyledAttributes.getType(i2)) && type <= 31) {
                        map.put(Integer.valueOf(resourceId), Integer.valueOf(MaterialColors.harmonize(typedArrayObtainStyledAttributes.getColor(i2, 0), color)));
                    }
                }
                typedArrayObtainStyledAttributes.recycle();
                if (typedArrayObtainStyledAttributes2 != null) {
                    typedArrayObtainStyledAttributes2.recycle();
                }
            }
        }
        return map;
    }
}
