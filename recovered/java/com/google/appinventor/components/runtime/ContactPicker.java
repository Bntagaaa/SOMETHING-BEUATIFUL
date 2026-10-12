package com.google.appinventor.components.runtime;

import android.app.Activity;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import android.provider.Contacts;
import android.util.Log;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.PropertyCategory;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.annotations.UsesPermissions;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.runtime.util.ErrorMessages;
import com.google.appinventor.components.runtime.util.HoneycombMR1Util;
import com.google.appinventor.components.runtime.util.SdkLevel;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@UsesPermissions(permissionNames = "android.permission.READ_CONTACTS")
@DesignerComponent(category = ComponentCategory.SOCIAL, description = "A button that, when clicked on, displays a list of the contacts to choose among. After the user has made a selection, the following properties will be set to information about the chosen contact: <ul>\n<li> <code>ContactName</code>: the contact's name </li>\n <li> <code>EmailAddress</code>: the contact's primary email address </li>\n <li> <code>ContactUri</code>: the contact's URI on the device </li>\n<li> <code>EmailAddressList</code>: a list of the contact's email addresses </li>\n <li> <code>PhoneNumber</code>: the contact's primary phone number (on Later Android Verisons)</li>\n <li> <code>PhoneNumberList</code>: a list of the contact's phone numbers (on Later Android Versions)</li>\n <li> <code>Picture</code>: the name of the file containing the contact's image, which can be used as a <code>Picture</code> property value for the <code>Image</code> or <code>ImageSprite</code> component.</li></ul>\n</p><p>Other properties affect the appearance of the button (<code>TextAlignment</code>, <code>BackgroundColor</code>, etc.) and whether it can be clicked on (<code>Enabled</code>).\n</p><p>The ContactPicker component might not work on all phones. For example, on Android systems before system 3.0, it cannot pick phone numbers, and the list of email addresses will contain only one email.", iconName = "images/contactPicker.png", version = 7)
@SimpleObject
/* loaded from: classes.dex */
public class ContactPicker extends Picker implements ActivityResultListener {
    private static String[] CONTACT_PROJECTION = null;
    private static String[] DATA_PROJECTION = null;
    private static final int EMAIL_INDEX = 1;
    private static final int NAME_INDEX = 0;
    private static final int PHONE_INDEX = 2;
    private static final String[] PROJECTION = {"name", "primary_email"};
    protected final Activity activityContext;
    protected String contactName;
    protected String contactPictureUri;
    protected String contactUri;
    protected String emailAddress;
    protected List emailAddressList;
    private boolean havePermission;
    private final Uri intentUri;
    protected String phoneNumber;
    protected List phoneNumberList;

    public ContactPicker(ComponentContainer componentContainer) {
        this(componentContainer, Contacts.People.CONTENT_URI);
    }

    public ContactPicker(ComponentContainer componentContainer, Uri uri) {
        super(componentContainer);
        this.havePermission = false;
        this.activityContext = componentContainer.$context();
        if (SdkLevel.getLevel() >= 12 && uri.equals(Contacts.People.CONTENT_URI)) {
            this.intentUri = HoneycombMR1Util.getContentUri();
        } else if (SdkLevel.getLevel() >= 12 && uri.equals(Contacts.Phones.CONTENT_URI)) {
            this.intentUri = HoneycombMR1Util.getPhoneContentUri();
        } else {
            this.intentUri = uri;
        }
    }

    @Override // com.google.appinventor.components.runtime.Picker, com.google.appinventor.components.runtime.ButtonBase
    public void click() {
        if (!this.havePermission) {
            ((Picker) this).container.$form().askPermission("android.permission.READ_CONTACTS", new PermissionResultHandler() { // from class: com.google.appinventor.components.runtime.ContactPicker.1
                @Override // com.google.appinventor.components.runtime.PermissionResultHandler
                public void HandlePermissionResponse(String str, boolean z) {
                    if (!z) {
                        ((Picker) ContactPicker.this).container.$form().dispatchPermissionDeniedEvent(ContactPicker.this, "Click", "android.permission.READ_CONTACTS");
                    } else {
                        ContactPicker.this.havePermission = true;
                        ContactPicker.this.click();
                    }
                }
            });
        } else {
            super.click();
        }
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR)
    public String Picture() {
        return ensureNotNull(this.contactPictureUri);
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR)
    public String ContactName() {
        return ensureNotNull(this.contactName);
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR)
    public String EmailAddress() {
        return ensureNotNull(this.emailAddress);
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "URI that specifies the location of the contact on the device.")
    public String ContactUri() {
        return ensureNotNull(this.contactUri);
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR)
    public List EmailAddressList() {
        return ensureNotNull(this.emailAddressList);
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR)
    public String PhoneNumber() {
        return ensureNotNull(this.phoneNumber);
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR)
    public List PhoneNumberList() {
        return ensureNotNull(this.phoneNumberList);
    }

    @SimpleFunction(description = "view a contact via its URI")
    public void ViewContact(String str) {
        if (this.contactUri != null) {
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str));
            if (intent.resolveActivity(this.activityContext.getPackageManager()) != null) {
                this.activityContext.startActivity(intent);
            }
        }
    }

    @Override // com.google.appinventor.components.runtime.Picker
    public Intent getIntent() {
        return new Intent("android.intent.action.PICK", this.intentUri);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00d1 A[PHI: r9 r11
      0x00d1: PHI (r9v13 ??) = (r9v12 ??), (r9v19 ??) binds: [B:37:0x00e7, B:30:0x00cf] A[DONT_GENERATE, DONT_INLINE]
      0x00d1: PHI (r11v8 ??) = (r11v7 ??), (r11v16 ??) binds: [B:37:0x00e7, B:30:0x00cf] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v11 */
    /* JADX WARN: Type inference failed for: r11v12 */
    /* JADX WARN: Type inference failed for: r11v16 */
    /* JADX WARN: Type inference failed for: r11v2 */
    /* JADX WARN: Type inference failed for: r11v20 */
    /* JADX WARN: Type inference failed for: r11v21 */
    /* JADX WARN: Type inference failed for: r11v22 */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* JADX WARN: Type inference failed for: r11v6 */
    /* JADX WARN: Type inference failed for: r11v7 */
    /* JADX WARN: Type inference failed for: r11v8, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r11v9 */
    /* JADX WARN: Type inference failed for: r9v11 */
    /* JADX WARN: Type inference failed for: r9v12, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r9v13 */
    /* JADX WARN: Type inference failed for: r9v14 */
    /* JADX WARN: Type inference failed for: r9v16 */
    /* JADX WARN: Type inference failed for: r9v17 */
    /* JADX WARN: Type inference failed for: r9v19, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r9v23 */
    /* JADX WARN: Type inference failed for: r9v24 */
    /* JADX WARN: Type inference failed for: r9v25 */
    /* JADX WARN: Type inference failed for: r9v7, types: [boolean] */
    /* JADX WARN: Type inference failed for: r9v8 */
    /* JADX WARN: Type inference failed for: r9v9 */
    @Override // com.google.appinventor.components.runtime.ActivityResultListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void resultReturned(int r9, int r10, android.content.Intent r11) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 249
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.appinventor.components.runtime.ContactPicker.resultReturned(int, int, android.content.Intent):void");
    }

    public void preHoneycombGetContactInfo(Cursor cursor, Uri uri) {
        if (cursor.moveToFirst()) {
            this.contactName = guardCursorGetString(cursor, 0);
            this.emailAddress = getEmailAddress(guardCursorGetString(cursor, 1));
            this.contactUri = uri.toString();
            this.contactPictureUri = uri.toString();
            this.emailAddressList = this.emailAddress.equals("") ? new ArrayList() : Arrays.asList(this.emailAddress);
        }
    }

    public String postHoneycombGetContactNameAndPicture(Cursor cursor) {
        if (!cursor.moveToFirst()) {
            return "";
        }
        int idIndex = HoneycombMR1Util.getIdIndex(cursor);
        int nameIndex = HoneycombMR1Util.getNameIndex(cursor);
        int thumbnailIndex = HoneycombMR1Util.getThumbnailIndex(cursor);
        int photoIndex = HoneycombMR1Util.getPhotoIndex(cursor);
        String strGuardCursorGetString = guardCursorGetString(cursor, idIndex);
        this.contactName = guardCursorGetString(cursor, nameIndex);
        this.contactPictureUri = guardCursorGetString(cursor, thumbnailIndex);
        _COROUTINE.a.C("photo_uri=", guardCursorGetString(cursor, photoIndex), "ContactPicker");
        return strGuardCursorGetString;
    }

    public void postHoneycombGetContactEmailAndPhone(Cursor cursor) {
        this.phoneNumber = "";
        this.emailAddress = "";
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        if (cursor.moveToFirst()) {
            int phoneIndex = HoneycombMR1Util.getPhoneIndex(cursor);
            int emailIndex = HoneycombMR1Util.getEmailIndex(cursor);
            int mimeIndex = HoneycombMR1Util.getMimeIndex(cursor);
            String phoneType = HoneycombMR1Util.getPhoneType();
            String emailType = HoneycombMR1Util.getEmailType();
            while (!cursor.isAfterLast()) {
                String strGuardCursorGetString = guardCursorGetString(cursor, mimeIndex);
                if (strGuardCursorGetString.contains(phoneType)) {
                    arrayList.add(guardCursorGetString(cursor, phoneIndex));
                } else if (strGuardCursorGetString.contains(emailType)) {
                    arrayList2.add(guardCursorGetString(cursor, emailIndex));
                } else {
                    Log.i("ContactPicker", "Type mismatch: " + strGuardCursorGetString + " not " + phoneType + " or " + emailType);
                }
                cursor.moveToNext();
            }
        }
        if (!arrayList.isEmpty()) {
            this.phoneNumber = (String) arrayList.get(0);
        }
        if (!arrayList2.isEmpty()) {
            this.emailAddress = (String) arrayList2.get(0);
        }
        this.phoneNumberList = arrayList;
        this.emailAddressList = arrayList2;
    }

    public boolean checkContactUri(Uri uri, String str) {
        Log.i("ContactPicker", "contactUri is " + uri);
        if (uri == null || !"content".equals(uri.getScheme())) {
            Log.i("ContactPicker", "checkContactUri failed: A");
            puntContactSelection(ErrorMessages.ERROR_PHONE_UNSUPPORTED_CONTACT_PICKER);
            return false;
        }
        if (uri.getSchemeSpecificPart().startsWith(str)) {
            return true;
        }
        Log.i("ContactPicker", "checkContactUri failed: C");
        Log.i("ContactPicker", uri.getPath());
        puntContactSelection(ErrorMessages.ERROR_PHONE_UNSUPPORTED_CONTACT_PICKER);
        return false;
    }

    public void puntContactSelection(int i) {
        this.contactName = "";
        this.emailAddress = "";
        this.contactPictureUri = "";
        ((Picker) this).container.$form().dispatchErrorOccurredEvent(this, "", i, new Object[0]);
    }

    public String getEmailAddress(String str) {
        try {
            Cursor cursorQuery = this.activityContext.getContentResolver().query(Contacts.ContactMethods.CONTENT_EMAIL_URI, new String[]{"data"}, _COROUTINE.a.d(Integer.parseInt(str), "contact_methods._id = "), null, null);
            try {
                String strGuardCursorGetString = cursorQuery.moveToFirst() ? guardCursorGetString(cursorQuery, 0) : "";
                cursorQuery.close();
                return ensureNotNull(strGuardCursorGetString);
            } catch (Throwable th) {
                cursorQuery.close();
                throw th;
            }
        } catch (NumberFormatException unused) {
            return "";
        }
    }

    public String guardCursorGetString(Cursor cursor, int i) {
        String string;
        try {
            string = cursor.getString(i);
        } catch (Exception unused) {
            string = "";
        }
        return ensureNotNull(string);
    }

    public String ensureNotNull(String str) {
        return str == null ? "" : str;
    }

    public List ensureNotNull(List list) {
        return list == null ? new ArrayList() : list;
    }
}
