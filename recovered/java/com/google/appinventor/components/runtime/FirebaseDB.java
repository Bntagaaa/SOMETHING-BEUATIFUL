package com.google.appinventor.components.runtime;

import android.os.Handler;
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
import java.util.List;

@SimpleObject
@Deprecated
@UsesPermissions(permissionNames = "android.permission.INTERNET")
@DesignerComponent(androidMinSdk = 10, category = ComponentCategory.INTERNAL, description = "Non-visible component that communicates with Firebase to store and retrieve information.", designerHelpDescription = "Non-visible component that communicates with a Firebase to store and retrieve information.", iconName = "images/firebaseDB.png", nonVisible = true, version = 3)
/* loaded from: classes.dex */
public class FirebaseDB extends AndroidNonvisibleComponent implements Component {
    private static final String LOG_TAG = "Firebase";
    private static boolean isInitialized = false;
    private static boolean persist = false;
    private Handler androidUIHandler;
    private String defaultURL;
    private String developerBucket;
    private String firebaseToken;
    private String firebaseURL;
    private String projectBucket;
    private boolean useDefault;

    private void connectFirebase() {
    }

    private void firebaseTransaction(Transactional transactional, Object obj, Runnable runnable) {
    }

    private void resetListener() {
    }

    @SimpleFunction(description = "Append a value to the end of a list atomically. If two devices use this function simultaneously, both will be appended and no data lost.")
    @Deprecated
    public void AppendValue(String str, Object obj) {
    }

    @SimpleFunction(description = "Remove the tag from Firebase")
    @Deprecated
    public void ClearTag(String str) {
    }

    @SimpleEvent
    @Deprecated
    public void DataChanged(String str, Object obj) {
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, userVisible = false)
    @DesignerProperty(editorType = PropertyTypeConstants.PROPERTY_TYPE_STRING)
    @Deprecated
    public void DefaultURL(String str) {
    }

    @SimpleProperty
    @DesignerProperty(editorType = PropertyTypeConstants.PROPERTY_TYPE_STRING)
    @Deprecated
    public void DeveloperBucket(String str) {
    }

    @SimpleEvent
    @Deprecated
    public void FirebaseError(String str) {
    }

    @SimpleProperty
    @DesignerProperty(editorType = PropertyTypeConstants.PROPERTY_TYPE_STRING)
    @Deprecated
    public void FirebaseToken(String str) {
    }

    @SimpleProperty(description = "Sets the URL for this FirebaseDB.")
    @DesignerProperty(defaultValue = "DEFAULT", editorType = PropertyTypeConstants.PROPERTY_TYPE_STRING)
    @Deprecated
    public void FirebaseURL(String str) {
    }

    @SimpleEvent(description = "Event triggered by the \"RemoveFirst\" function. The argument \"value\" is the object that was the first in the list, and which is now removed.")
    @Deprecated
    public void FirstRemoved(Object obj) {
    }

    @SimpleFunction(description = "Get the list of tags for this application. When complete a \"TagList\" event will be triggered with the list of known tags.")
    @Deprecated
    public void GetTagList() {
    }

    @SimpleFunction
    @Deprecated
    public void GetValue(String str, Object obj) {
    }

    @SimpleEvent
    @Deprecated
    public void GotValue(String str, Object obj) {
    }

    public void Initialize() {
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "If true, variables will retain their values when off-line and the App exits. Values will be uploaded to Firebase the next time the App is run while connected to the network. This is useful for applications which will gather data while not connected to the network. Note: AppendValue and RemoveFirst will not work correctly when off-line, they require a network connection.<br/><br/> <i>Note</i>: If you set Persist on any Firebase component, on any screen, it makes all Firebase components on all screens persistent. This is a limitation of the low level Firebase library. Also be aware that if you want to set persist to true, you should do so before connecting the Companion for incremental development.", userVisible = false)
    @DesignerProperty(defaultValue = "False", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    @Deprecated
    public void Persist(boolean z) {
    }

    @SimpleProperty(description = "Sets the ProjectBucket for this FirebaseDB.")
    @DesignerProperty(defaultValue = "", editorType = PropertyTypeConstants.PROPERTY_TYPE_STRING)
    @Deprecated
    public void ProjectBucket(String str) {
    }

    @SimpleFunction(description = "Return the first element of a list and atomically remove it. If two devices use this function simultaneously, one will get the first element and the the other will get the second element, or an error if there is no available element. When the element is available, the \"FirstRemoved\" event will be triggered.")
    @Deprecated
    public void RemoveFirst(String str) {
    }

    @SimpleFunction
    @Deprecated
    public void StoreValue(String str, Object obj) {
    }

    @SimpleEvent(description = "Event triggered when we have received the list of known tags. Used with the \"GetTagList\" Function.")
    @Deprecated
    public void TagList(List list) {
    }

    @SimpleFunction(description = "If you are having difficulty with the Companion and you are switching between different Firebase accounts, you may need to use this function to clear internal Firebase caches. You can just use the \"Do It\" function on this block in the blocks editor. Note: You should not normally need to use this block as part of an application.")
    @Deprecated
    public void Unauthenticate() {
    }

    public static class ReturnVal {
        String err;
        Object retval;

        private ReturnVal() {
        }

        public Object getRetval() {
            return this.retval;
        }
    }

    public static abstract class Transactional {
        final Object arg1;
        final Object arg2;
        final ReturnVal retv;

        public Transactional(Object obj, Object obj2, ReturnVal returnVal) {
            this.arg1 = obj;
            this.arg2 = obj2;
            this.retv = returnVal;
        }

        public ReturnVal getResult() {
            return this.retv;
        }
    }

    public FirebaseDB(ComponentContainer componentContainer) {
        super(componentContainer.$form());
        this.firebaseURL = null;
        this.defaultURL = null;
        this.useDefault = true;
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "Gets the URL for this FirebaseDB.")
    @Deprecated
    public String FirebaseURL() {
        return "DEFAULT";
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR)
    @Deprecated
    public String DeveloperBucket() {
        return "";
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "Gets the ProjectBucket for this FirebaseDB.")
    @Deprecated
    public String ProjectBucket() {
        return "";
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR)
    @Deprecated
    public String FirebaseToken() {
        return "";
    }
}
