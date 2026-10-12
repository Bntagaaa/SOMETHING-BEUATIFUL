package com.google.appinventor.components.runtime;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import androidx.browser.customtabs.CustomTabsIntent;
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
import gnu.expr.Declaration;
import java.io.IOException;

@DesignerComponent(androidMinSdk = 15, category = ComponentCategory.EXPERIMENTAL, description = "Chrome Custom Tabs give apps more control over their web experience, and make transitions between native and web content more seamless without having to resort to a WebView.", iconName = "images/chromeCustomTab.png", nonVisible = true, version = 1)
@UsesLibraries(libraries = "browser.aar, browser.jar")
@SimpleObject
/* loaded from: classes.dex */
public final class ChromeCustomTab extends AndroidNonvisibleComponent {
    private String URL;
    private CustomTabsIntent.Builder builder;
    private Context context;

    public ChromeCustomTab(ComponentContainer componentContainer) {
        super(componentContainer.$form());
        this.context = componentContainer.$context();
        this.builder = new CustomTabsIntent.Builder();
    }

    @SimpleProperty(category = PropertyCategory.CREDENTIALS, description = "Set the Url For Chrome Custom Tab")
    @DesignerProperty(defaultValue = "https://niotron.com", editorType = PropertyTypeConstants.PROPERTY_TYPE_STRING)
    public void Url(String str) {
        this.URL = str;
    }

    @SimpleProperty
    public String Url() {
        return this.URL;
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Color of the Toolbar on top")
    @DesignerProperty(defaultValue = Component.DEFAULT_VALUE_COLOR_NONE, editorType = PropertyTypeConstants.PROPERTY_TYPE_COLOR)
    public void ToolbarColor(int i) {
        this.builder.setToolbarColor(i);
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "Enable or Disable Share Menu Item")
    @DesignerProperty(defaultValue = "False", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void DefaultShareMenuItem(boolean z) {
        if (z) {
            this.builder.addDefaultShareMenuItem();
        }
    }

    @SimpleFunction(description = "The Action Button is represented as a Bundle with an icon of the action button and a pendingIntent that will be called by Chrome when your user hits the action button. The icon is currently 24dp in height and 24-48 dp in width. 'intent' should be a url or a package name starting with package:")
    public void SetActionButton(String str, String str2, String str3, boolean z) {
        PendingIntent activity;
        try {
            if (str3.startsWith("http://") || str3.startsWith("https://")) {
                activity = PendingIntent.getActivity(this.context, 1, new Intent("android.intent.action.VIEW", Uri.parse(str3)), Declaration.PACKAGE_ACCESS);
            } else if (str3.startsWith("package:")) {
                activity = PendingIntent.getActivity(this.context, 1, this.context.getPackageManager().getLaunchIntentForPackage(str3.split("package:")[1]), Declaration.PACKAGE_ACCESS);
            } else {
                activity = null;
            }
            if (activity != null) {
                this.builder.setActionButton(this.form.getBitmapFromAsset(str), str2, activity, z);
            } else {
                ErrorOccurred("Unrecognised Intent while setting Action Button");
            }
        } catch (IOException e) {
            ErrorOccurred("Failed to Add Action Button " + e.getLocalizedMessage());
        }
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "Enable or Disable the Title On Top of the CustomTab")
    @DesignerProperty(defaultValue = "False", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void ShowTitle(boolean z) {
        this.builder.setShowTitle(z);
    }

    @SimpleFunction(description = "Calls the Custom Tab and Displays it to the User")
    public void LaunchCustomTab() {
        this.builder.build().launchUrl(this.context, Uri.parse(this.URL));
    }

    @SimpleFunction(description = "Calls the Chrome Custom Tab and Displays it to the User")
    public void LaunchCustomTabByChrome() {
        CustomTabsIntent customTabsIntentBuild = this.builder.build();
        customTabsIntentBuild.intent.setPackage("com.android.chrome");
        customTabsIntentBuild.intent.addFlags(Integer.valueOf("67108864").intValue());
        customTabsIntentBuild.launchUrl(this.context, Uri.parse(this.URL));
    }

    @SimpleFunction(description = "Adds a Menu Item to the Custom Tab. Set the Title and pass the intent as a Url or a package Name. Example : https://niotron.com or package:com.niotron.package When User Clicks on the Item the Intent Will be Called")
    public void AddMenuItem(String str, String str2) {
        if (str2.startsWith("http://") || str2.startsWith("https://")) {
            this.builder.addMenuItem(str, PendingIntent.getActivity(this.context, 1, new Intent("android.intent.action.VIEW", Uri.parse(str2)), Declaration.PACKAGE_ACCESS));
        } else {
            if (str2.startsWith("package:")) {
                this.builder.addMenuItem(str, PendingIntent.getActivity(this.context, 1, this.context.getPackageManager().getLaunchIntentForPackage(str2.split("package:")[1]), Declaration.PACKAGE_ACCESS));
                return;
            }
            AddMenuItemErrorOccurred("Unknown Intent Type");
        }
    }

    @SimpleEvent(description = "Event Called When There is an Error in the Intent You Provided")
    public void AddMenuItemErrorOccurred(String str) {
        EventDispatcher.dispatchEvent(this, "AddMenuItemErrorOccurred", str);
    }

    @SimpleEvent(description = "Event Called When Some Error Occurs")
    public void ErrorOccurred(String str) {
        EventDispatcher.dispatchEvent(this, "ErrorOccurred", str);
    }
}
