package com.google.appinventor.components.runtime;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.widget.Toast;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.DesignerProperty;
import com.google.appinventor.components.annotations.PropertyCategory;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.annotations.UsesPermissions;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.common.PropertyTypeConstants;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@UsesPermissions(permissionNames = "android.permission.WRITE_EXTERNAL_STORAGE, android.permission.READ_EXTERNAL_STORAGE")
@DesignerComponent(category = ComponentCategory.EXTRAS, description = "A non-visible component to get info about installed packages. Some Blocks Need QUERY_ALL_PACKAGES Permission To Work", iconName = "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAADgdz34AAAABmJLR0QA/wD/AP+gvaeTAAAAgElEQVRIiWNgGE7AmYGB4QEDA8N/CvEDqFkYgBqGI1uCAWCSlAIUc5ioYCBeQFcLnkFpSsOfgYGB4Sk2y+ypYDgM28EMZUSzhBqRjGLu0I9kFiLVoQclDBAM0kHjA7Ijf+hH8qgFJFtwnwpm3sUnaQtVQG4hd4eBgcGGCo4cRAAA8+RjB1REzvwAAAAASUVORK5CYII=", nonVisible = true, version = 1)
@SimpleObject
/* loaded from: classes.dex */
public class PackageUtils extends AndroidNonvisibleComponent {
    public Context context;
    private boolean showToast;

    public PackageUtils(ComponentContainer componentContainer) {
        super(componentContainer.$form());
        this.showToast = false;
        this.context = componentContainer.$context();
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "Show toast message, if true")
    @DesignerProperty(defaultValue = "False", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void ShowToast(boolean z) {
        this.showToast = z;
    }

    @SimpleProperty(description = "Returns true if 'Show Toast' is enabled.")
    public boolean ShowToast() {
        return this.showToast;
    }

    @SimpleFunction(description = "Returns app name from given package")
    @UsesPermissions({"android.permission.QUERY_ALL_PACKAGES"})
    public String AppNameFrom(String str) {
        try {
            PackageManager packageManager = this.context.getPackageManager();
            return (String) packageManager.getApplicationLabel(packageManager.getApplicationInfo(str, 128));
        } catch (Exception e) {
            if (this.showToast) {
                Toast.makeText(this.context, e.toString(), 1).show();
                return "";
            }
            return "";
        }
    }

    @SimpleProperty(description = "Returns name of current running app")
    public String ApplicationName() {
        return AppNameFrom(PackageName());
    }

    @SimpleFunction(description = "Returns version code of given package")
    @UsesPermissions({"android.permission.QUERY_ALL_PACKAGES"})
    public int VersionCodeFrom(String str) {
        try {
            return this.context.getPackageManager().getPackageInfo(str, 0).versionCode;
        } catch (Exception e) {
            if (this.showToast) {
                Toast.makeText(this.context, e.toString(), 1).show();
            }
            return 0;
        }
    }

    @SimpleFunction(description = "Returns version name of given package")
    @UsesPermissions({"android.permission.QUERY_ALL_PACKAGES"})
    public String VersionNameFrom(String str) {
        try {
            return this.context.getPackageManager().getPackageInfo(str, 0).versionName;
        } catch (Exception e) {
            if (this.showToast) {
                Toast.makeText(this.context, e.toString(), 1).show();
                return "";
            }
            return "";
        }
    }

    @SimpleFunction(description = "Returns a list of all apps installed by users")
    @UsesPermissions({"android.permission.QUERY_ALL_PACKAGES"})
    public List<String> UserInstalledAppsList() {
        PackageManager packageManager = this.context.getPackageManager();
        ArrayList arrayList = new ArrayList();
        for (ApplicationInfo applicationInfo : packageManager.getInstalledApplications(0)) {
            if (!IsSystemPackage(applicationInfo.packageName)) {
                arrayList.add(applicationInfo.packageName);
            }
        }
        return arrayList;
    }

    @SimpleFunction(description = "Returns a list of all system apps")
    public List<String> SystemAppsList() {
        PackageManager packageManager = this.context.getPackageManager();
        ArrayList arrayList = new ArrayList();
        for (ApplicationInfo applicationInfo : packageManager.getInstalledApplications(0)) {
            if (IsSystemPackage(applicationInfo.packageName)) {
                arrayList.add(applicationInfo.packageName);
            }
        }
        return arrayList;
    }

    @SimpleFunction(description = "Returns true if app is system app")
    public boolean IsSystemPackage(String str) {
        try {
            this.context.getPackageManager();
        } catch (Exception unused) {
        }
        return (this.context.getPackageManager().getApplicationInfo(str, 128).flags & 1) != 0;
    }

    @SimpleProperty(description = "Returns package name of current running app")
    public String PackageName() {
        try {
            return this.context.getPackageName();
        } catch (Exception e) {
            if (this.showToast) {
                Toast.makeText(this.context, e.toString(), 1).show();
                return "";
            }
            return "";
        }
    }

    @SimpleProperty(description = "Return version code of current running app")
    public int VersionCode() {
        return VersionCodeFrom(PackageName());
    }

    @SimpleProperty(description = "Return version name of current running app")
    public String VersionName() {
        return VersionNameFrom(PackageName());
    }

    @SimpleFunction(description = "Returns true if the package is installed")
    @UsesPermissions({"android.permission.QUERY_ALL_PACKAGES"})
    public boolean IsPackageInstalled(String str) throws PackageManager.NameNotFoundException {
        try {
            this.context.getPackageManager().getApplicationInfo(str, 0);
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    @SimpleFunction(description = "Return true if the given package has specific permission has been granted")
    @UsesPermissions({"android.permission.QUERY_ALL_PACKAGES"})
    public boolean isPermissionGranted(String str, String str2) {
        return this.context.getPackageManager().checkPermission(str, str2) == 0;
    }

    @SimpleFunction(description = "Return path of icon of given package")
    @UsesPermissions({"android.permission.QUERY_ALL_PACKAGES"})
    public String AppIconFrom(String str, String str2) throws IOException {
        try {
            java.io.File file = new java.io.File(this.context.getExternalFilesDir(null), AppNameFrom(str) + ".png");
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            getBitmap(str).compress(Bitmap.CompressFormat.PNG, 100, fileOutputStream);
            fileOutputStream.flush();
            fileOutputStream.close();
            return String.valueOf(file);
        } catch (Exception e) {
            if (this.showToast) {
                Toast.makeText(this.context, e.toString(), 1).show();
            }
            return str2;
        }
    }

    public Bitmap getBitmap(String str) {
        try {
            return drawableToBitmap(this.context.getPackageManager().getApplicationInfo(str, 0).loadIcon(this.context.getPackageManager()));
        } catch (Exception unused) {
            return null;
        }
    }

    public static Bitmap drawableToBitmap(Drawable drawable) {
        if (drawable instanceof BitmapDrawable) {
            return ((BitmapDrawable) drawable).getBitmap();
        }
        int intrinsicWidth = drawable.getIntrinsicWidth();
        if (intrinsicWidth <= 0) {
            intrinsicWidth = 1;
        }
        int intrinsicHeight = drawable.getIntrinsicHeight();
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(intrinsicWidth, intrinsicHeight > 0 ? intrinsicHeight : 1, Bitmap.Config.ARGB_8888);
        android.graphics.Canvas canvas = new android.graphics.Canvas(bitmapCreateBitmap);
        drawable.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
        drawable.draw(canvas);
        return bitmapCreateBitmap;
    }

    @SimpleFunction(description = "Launch an app from its package name")
    public void Launch(String str) {
        Intent launchIntentForPackage;
        try {
            if (!IsPackageInstalled(str) || (launchIntentForPackage = this.context.getPackageManager().getLaunchIntentForPackage(str)) == null) {
                return;
            }
            this.context.startActivity(launchIntentForPackage);
        } catch (Exception e) {
            if (this.showToast) {
                Toast.makeText(this.context, e.toString(), 1).show();
            }
        }
    }
}
