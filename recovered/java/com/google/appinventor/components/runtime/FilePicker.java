package com.google.appinventor.components.runtime;

import android.content.Intent;
import android.net.Uri;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.DesignerProperty;
import com.google.appinventor.components.annotations.Options;
import com.google.appinventor.components.annotations.PropertyCategory;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.common.FileAction;
import com.google.appinventor.components.common.FileType;
import com.google.appinventor.components.common.PropertyTypeConstants;
import com.google.appinventor.components.runtime.util.ErrorMessages;

@DesignerComponent(androidMinSdk = 19, category = ComponentCategory.MEDIA, iconName = "images/filepicker.png", version = 2)
@SimpleObject
/* loaded from: classes.dex */
public class FilePicker extends Picker {
    private FileAction action;
    private String mimeType;
    private String selection;

    public FilePicker(ComponentContainer componentContainer) {
        super(componentContainer);
        this.action = FileAction.PickExistingFile;
        this.selection = "";
        this.mimeType = "*/*";
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = "Pick Existing File", editorArgs = {"Pick Existing File", "Pick New File", "Pick Directory"}, editorType = PropertyTypeConstants.PROPERTY_TYPE_CHOICES)
    public void Action(FileAction fileAction) {
        this.action = fileAction;
    }

    public void Action(String str) {
        Action(FileAction.fromUnderlyingValue(str));
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR)
    public FileAction Action() {
        return this.action;
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = "*/*", editorType = PropertyTypeConstants.PROPERTY_TYPE_STRING)
    public void MimeType(@Options(FileType.class) String str) {
        this.mimeType = str;
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR)
    public String MimeType() {
        return this.mimeType;
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR)
    public String Selection() {
        return this.selection;
    }

    @Override // com.google.appinventor.components.runtime.ActivityResultListener
    public void resultReturned(int i, int i2, Intent intent) {
        if (intent != null) {
            Uri data = intent.getData();
            ((Picker) this).container.$form().getContentResolver().takePersistableUriPermission(data, intent.getFlags() & 3);
            this.selection = data.toString();
            AfterPicking();
            return;
        }
        ((Picker) this).container.$form().dispatchErrorOccurredEvent(this, "Open", ErrorMessages.ERROR_FILEPICKER_NO_URI_RETURNED, new Object[0]);
    }

    @Override // com.google.appinventor.components.runtime.Picker
    public Intent getIntent() {
        Intent intent = new Intent(actionToIntent(this.action));
        FileAction fileAction = this.action;
        FileAction fileAction2 = FileAction.PickExistingFile;
        if (fileAction == fileAction2) {
            intent.addCategory("android.intent.category.OPENABLE");
        }
        if (this.action == FileAction.PickDirectory) {
            return Intent.createChooser(intent, "Test");
        }
        intent.setType(this.mimeType);
        intent.setFlags(this.action == fileAction2 ? 67 : 65);
        return intent;
    }

    /* renamed from: com.google.appinventor.components.runtime.FilePicker$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$google$appinventor$components$common$FileAction;

        static {
            int[] iArr = new int[FileAction.values().length];
            $SwitchMap$com$google$appinventor$components$common$FileAction = iArr;
            try {
                iArr[FileAction.PickExistingFile.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$google$appinventor$components$common$FileAction[FileAction.PickDirectory.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$google$appinventor$components$common$FileAction[FileAction.PickNewFile.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    private static String actionToIntent(FileAction fileAction) {
        int i = AnonymousClass1.$SwitchMap$com$google$appinventor$components$common$FileAction[fileAction.ordinal()];
        if (i == 1) {
            return "android.intent.action.OPEN_DOCUMENT";
        }
        if (i == 2) {
            return "android.intent.action.OPEN_DOCUMENT_TREE";
        }
        if (i == 3) {
            return "android.intent.action.CREATE_DOCUMENT";
        }
        throw new IllegalArgumentException("Unknown file action: " + fileAction);
    }
}
