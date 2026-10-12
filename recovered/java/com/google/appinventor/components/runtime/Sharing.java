package com.google.appinventor.components.runtime;

import android.content.Intent;
import android.net.Uri;
import android.webkit.MimeTypeMap;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.DesignerProperty;
import com.google.appinventor.components.annotations.PropertyCategory;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.annotations.UsesPermissions;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.common.PropertyTypeConstants;
import com.google.appinventor.components.runtime.util.ErrorMessages;
import com.google.appinventor.components.runtime.util.NanoHTTPD;
import com.google.appinventor.components.runtime.util.NougatUtil;

@UsesPermissions(permissionNames = "android.permission.READ_EXTERNAL_STORAGE")
@DesignerComponent(category = ComponentCategory.SOCIAL, description = "Sharing is a non-visible component that enables sharing files and/or messages between your app and other apps installed on a device. The component will display a list of the installed apps that can handle the information provided, and will allow the user to choose one to share the content with, for instance a mail app, a social network app, a texting app, and so on.<br>The file path can be taken directly from other components such as the Camera or the ImagePicker, but can also be specified directly to read from storage. The default behaviour is to share files from the private data directory associated with your app. If the file path starts with a slash (/), the the file relative to / is shared.<br>Be aware that different devices treat storage differently, so a few things to try if, for instance, you have a file called arrow.gif in the folder <code>Appinventor/assets</code>, would be: <ul><li><code>\"file:///sdcard/Appinventor/assets/arrow.gif\"</code></li> or <li><code>\"/storage/Appinventor/assets/arrow.gif\"</code></li></ul>", iconName = "images/sharing.png", nonVisible = true, version = 1)
@SimpleObject
/* loaded from: classes.dex */
public class Sharing extends AndroidNonvisibleComponent {
    private static String packageName = "";

    public Sharing(ComponentContainer componentContainer) {
        super(componentContainer.$form());
    }

    @SimpleProperty(category = PropertyCategory.CREDENTIALS, description = "Set Package Name")
    @DesignerProperty(defaultValue = "", editorType = PropertyTypeConstants.PROPERTY_TYPE_TEXT)
    public void PackageName(String str) {
        packageName = str;
    }

    @SimpleProperty
    public String PackageName() {
        return packageName;
    }

    @SimpleFunction(description = "Shares a message through any capable application installed on the phone by displaying a list of the available apps and allowing the user to choose one from the list. The selected app will open with the message inserted on it.")
    public void ShareMessage(String str) {
        Intent intent = new Intent("android.intent.action.SEND");
        intent.putExtra("android.intent.extra.TEXT", str);
        intent.setType(NanoHTTPD.MIME_PLAINTEXT);
        if (!packageName.isEmpty()) {
            intent.setPackage(packageName);
        }
        this.form.startActivity(intent);
    }

    @SimpleFunction(description = "Shares a file through any capable application installed on the phone by displaying a list of the available apps and allowing the user to choose one from the list. The selected app will open with the file inserted on it.")
    public void ShareFile(String str) {
        ShareFileWithMessage(str, "");
    }

    @SimpleFunction(description = "Shares both a file and a message through any capable application installed on the phone by displaying a list of available apps and allowing the user to  choose one from the list. The selected app will open with the file and message inserted on it.")
    public void ShareFileWithMessage(String str, String str2) {
        String str3;
        if (!str.startsWith("file://")) {
            if (!str.startsWith("/")) {
                str = this.form.getDefaultPath(str);
            } else {
                str = "file://".concat(str);
            }
        }
        java.io.File file = new java.io.File(Uri.parse(str).getPath());
        if (file.isFile()) {
            String mimeTypeFromExtension = MimeTypeMap.getSingleton().getMimeTypeFromExtension(str.substring(str.lastIndexOf(".") + 1).toLowerCase());
            if (mimeTypeFromExtension == null) {
                mimeTypeFromExtension = NanoHTTPD.MIME_DEFAULT_BINARY;
            }
            Uri packageUri = NougatUtil.getPackageUri(this.form, file);
            Intent intent = new Intent("android.intent.action.SEND");
            intent.putExtra("android.intent.extra.STREAM", packageUri);
            intent.setFlags(1);
            intent.setType(mimeTypeFromExtension);
            if (str2.length() > 0) {
                intent.putExtra("android.intent.extra.TEXT", str2);
            }
            if (!packageName.isEmpty()) {
                intent.setPackage(packageName);
            }
            this.form.startActivity(intent);
            return;
        }
        if (!str2.equals("")) {
            str3 = "ShareFile";
        } else {
            str3 = "ShareFileWithMessage";
        }
        this.form.dispatchErrorOccurredEvent(this, str3, ErrorMessages.ERROR_FILE_NOT_FOUND_FOR_SHARING, str);
    }
}
