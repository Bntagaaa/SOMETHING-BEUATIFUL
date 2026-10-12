package com.google.appinventor.components.runtime;

import android.content.ContentUris;
import android.database.Cursor;
import android.provider.Contacts;
import android.util.Log;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.PropertyCategory;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.annotations.UsesPermissions;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.runtime.util.HoneycombMR1Util;
import java.util.ArrayList;

@UsesPermissions(permissionNames = "android.permission.READ_CONTACTS")
@DesignerComponent(category = ComponentCategory.SOCIAL, description = "A button that, when clicked on, displays a list of the contacts' phone numbers to choose among. After the user has made a selection, the following properties will be set to information about the chosen contact: <ul>\n<li> <code>ContactName</code>: the contact's name </li>\n <li> <code>PhoneNumber</code>: the contact's phone number </li>\n <li> <code>EmailAddress</code>: the contact's email address </li> <li> <code>Picture</code>: the name of the file containing the contact's image, which can be used as a <code>Picture</code> property value for the <code>Image</code> or <code>ImageSprite</code> component.</li></ul>\n</p><p>Other properties affect the appearance of the button (<code>TextAlignment</code>, <code>BackgroundColor</code>, etc.) and whether it can be clicked on (<code>Enabled</code>).</p>\n<p>The PhoneNumberPicker component may not work on all Android devices. For example, on Android systems before system 3.0, the returned lists of phone numbers and email addresses will be empty.\n", iconName = "images/phoneNumberPicker.png", version = 5)
@SimpleObject
/* loaded from: classes.dex */
public class PhoneNumberPicker extends ContactPicker {
    private static String[] DATA_PROJECTION = null;
    private static final int EMAIL_INDEX = 3;
    private static final String LOG_TAG = "PhoneNumberPicker";
    private static final int NAME_INDEX = 0;
    private static String[] NAME_PROJECTION = null;
    private static final int NUMBER_INDEX = 1;
    private static final int PERSON_INDEX = 2;
    private static final String[] PROJECTION = {"name", "number", "person", "primary_email"};

    public PhoneNumberPicker(ComponentContainer componentContainer) {
        super(componentContainer, Contacts.Phones.CONTENT_URI);
    }

    @Override // com.google.appinventor.components.runtime.ContactPicker
    @SimpleProperty(category = PropertyCategory.BEHAVIOR)
    public String PhoneNumber() {
        return ensureNotNull(this.phoneNumber);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00c2 A[PHI: r9 r11
      0x00c2: PHI (r9v13 ??) = (r9v12 ??), (r9v19 ??) binds: [B:40:0x00d9, B:32:0x00c0] A[DONT_GENERATE, DONT_INLINE]
      0x00c2: PHI (r11v8 ??) = (r11v7 ??), (r11v16 ??) binds: [B:40:0x00d9, B:32:0x00c0] A[DONT_GENERATE, DONT_INLINE]] */
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
    @Override // com.google.appinventor.components.runtime.ContactPicker, com.google.appinventor.components.runtime.ActivityResultListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void resultReturned(int r9, int r10, android.content.Intent r11) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 235
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.appinventor.components.runtime.PhoneNumberPicker.resultReturned(int, int, android.content.Intent):void");
    }

    public void preHoneycombGetContactInfo(Cursor cursor) {
        if (cursor.moveToFirst()) {
            this.contactName = guardCursorGetString(cursor, 0);
            this.phoneNumber = guardCursorGetString(cursor, 1);
            this.contactPictureUri = ContentUris.withAppendedId(Contacts.People.CONTENT_URI, cursor.getInt(2)).toString();
            this.emailAddress = getEmailAddress(guardCursorGetString(cursor, 3));
        }
    }

    @Override // com.google.appinventor.components.runtime.ContactPicker
    public String postHoneycombGetContactNameAndPicture(Cursor cursor) {
        if (cursor.moveToFirst()) {
            int contactIdIndex = HoneycombMR1Util.getContactIdIndex(cursor);
            int nameIndex = HoneycombMR1Util.getNameIndex(cursor);
            int thumbnailIndex = HoneycombMR1Util.getThumbnailIndex(cursor);
            this.phoneNumber = guardCursorGetString(cursor, HoneycombMR1Util.getPhoneIndex(cursor));
            String strGuardCursorGetString = guardCursorGetString(cursor, contactIdIndex);
            this.contactName = guardCursorGetString(cursor, nameIndex);
            this.contactPictureUri = guardCursorGetString(cursor, thumbnailIndex);
            return strGuardCursorGetString;
        }
        return "";
    }

    public void postHoneycombGetContactEmailsAndPhones(Cursor cursor) {
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
            this.phoneNumberList = arrayList;
            this.emailAddressList = arrayList2;
            if (!arrayList2.isEmpty()) {
                this.emailAddress = (String) this.emailAddressList.get(0);
            } else {
                this.emailAddress = "";
            }
        }
    }
}
