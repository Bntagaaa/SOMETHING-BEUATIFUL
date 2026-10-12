package com.google.appinventor.components.runtime;

import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.DesignerProperty;
import com.google.appinventor.components.annotations.PropertyCategory;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.common.PropertyTypeConstants;
import com.google.appinventor.components.runtime.errors.YailRuntimeError;
import com.google.appinventor.components.runtime.util.AnimationUtil;
import com.google.appinventor.components.runtime.util.ErrorMessages;
import com.google.appinventor.components.runtime.util.NougatUtil;
import com.google.appinventor.components.runtime.util.YailList;

@DesignerComponent(category = ComponentCategory.CONNECTIVITY, description = "A component that can launch an activity using the <code>StartActivity</code> method. \n<p>Activities that can be launched include:<ul> <li> Starting another App Inventor for Android app. \n To do so, first      find out the <em>class</em> of the other application by      downloading the source code and using a file explorer or unzip      utility to find a file named      \"youngandroidproject/project.properties\".  \n The first line of      the file will start with \"main=\" and be followed by the class      name; for example,      <code>main=com.gmail.Bitdiddle.Ben.HelloPurr.Screen1</code>.       (The first components indicate that it was created by      Ben.Bitdiddle@gmail.com.)  \n To make your      <code>ActivityStarter</code> launch this application, set the      following properties: <ul>\n      <li> <code>ActivityPackage</code> to the class name, dropping the           last component (for example,           <code>com.gmail.Bitdiddle.Ben.HelloPurr</code>)</li>\n      <li> <code>ActivityClass</code> to the entire class name (for           example,           <code>com.gmail.Bitdiddle.Ben.HelloPurr.Screen1</code>)</li>      </ul></li> \n<li> Starting the camera application by setting the following      properties:<ul> \n     <li> <code>Action: android.intent.action.MAIN</code> </li> \n     <li> <code>ActivityPackage: com.android.camera</code> </li> \n     <li> <code>ActivityClass: com.android.camera.Camera</code></li>\n      </ul></li>\n<li> Performing web search.  Assuming the term you want to search      for is \"vampire\" (feel free to substitute your own choice), \n     set the properties to:\n<ul><code>     <li>Action: android.intent.action.WEB_SEARCH</li>      <li>ExtraKey: query</li>      <li>ExtraValue: vampire</li>      <li>ActivityPackage: com.google.android.providers.enhancedgooglesearch</li>     <li>ActivityClass: com.google.android.providers.enhancedgooglesearch.Launcher</li>      </code></ul></li> \n<li> Opening a browser to a specified web page.  Assuming the page you      want to go to is \"www.facebook.com\" (feel free to substitute      your own choice), set the properties to:\n<ul><code>      <li>Action: android.intent.action.VIEW</li>      <li>DataUri: http://www.facebook.com</li> </code> </ul> </li> </ul></p>", designerHelpDescription = "A component that can launch an activity using the <code>StartActivity</code> method.<p>Activities that can be launched include: <ul> \n<li> starting other App Inventor for Android apps </li> \n<li> starting the camera application </li> \n<li> performing web search </li> \n<li> opening a browser to a specified web page</li> \n<li> opening the map application to a specified location</li></ul> \nYou can also launch activities that return text data.  See the documentation on using the Activity Starter for examples.</p>", iconName = "images/activityStarter.png", nonVisible = true, version = 6)
@SimpleObject
/* loaded from: classes.dex */
public class ActivityStarter extends AndroidNonvisibleComponent implements ActivityResultListener, Component, Deleteable {
    private static final String LOG_TAG = "ActivityStarter";
    private String action;
    private String activityClass;
    private String activityPackage;
    private final ComponentContainer container;
    private String dataType;
    private String dataUri;
    private String extraKey;
    private String extraValue;
    private YailList extras;
    private int requestCode;
    private String result;
    private Intent resultIntent;
    private String resultName;

    @SimpleEvent(description = "The ActivityError event is no longer used. Please use the Screen.ErrorOccurred event instead.", userVisible = false)
    public void ActivityError(String str) {
    }

    public ActivityStarter(ComponentContainer componentContainer) {
        super(componentContainer.$form());
        this.container = componentContainer;
        this.result = "";
        Action("android.intent.action.MAIN");
        ActivityPackage("");
        ActivityClass("");
        DataUri("");
        DataType("");
        ExtraKey("");
        ExtraValue("");
        Extras(new YailList());
        ResultName("");
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR)
    public String Action() {
        return this.action;
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = "", editorType = PropertyTypeConstants.PROPERTY_TYPE_STRING)
    public void Action(String str) {
        this.action = str.trim();
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "Returns the extra key that will be passed to the activity.\nDEPRECATED: New code should use Extras property instead.")
    public String ExtraKey() {
        return this.extraKey;
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = "", editorType = PropertyTypeConstants.PROPERTY_TYPE_STRING)
    public void ExtraKey(String str) {
        this.extraKey = str.trim();
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "Returns the extra value that will be passed to the activity.\nDEPRECATED: New code should use Extras property instead.")
    public String ExtraValue() {
        return this.extraValue;
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = "", editorType = PropertyTypeConstants.PROPERTY_TYPE_STRING)
    public void ExtraValue(String str) {
        this.extraValue = str.trim();
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR)
    public String ResultName() {
        return this.resultName;
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = "", editorType = PropertyTypeConstants.PROPERTY_TYPE_STRING)
    public void ResultName(String str) {
        this.resultName = str.trim();
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR)
    public String Result() {
        return this.result;
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR)
    public String DataUri() {
        return this.dataUri;
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = "", editorType = PropertyTypeConstants.PROPERTY_TYPE_STRING)
    public void DataUri(String str) {
        this.dataUri = str.trim();
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR)
    public String DataType() {
        return this.dataType;
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = "", editorType = PropertyTypeConstants.PROPERTY_TYPE_STRING)
    public void DataType(String str) {
        this.dataType = str.trim();
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR)
    public String ActivityPackage() {
        return this.activityPackage;
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = "", editorType = PropertyTypeConstants.PROPERTY_TYPE_STRING)
    public void ActivityPackage(String str) {
        this.activityPackage = str.trim();
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR)
    public String ActivityClass() {
        return this.activityClass;
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = "", editorType = PropertyTypeConstants.PROPERTY_TYPE_STRING)
    public void ActivityClass(String str) {
        this.activityClass = str.trim();
    }

    @SimpleEvent(description = "Event raised after this ActivityStarter returns.")
    public void AfterActivity(String str) {
        EventDispatcher.dispatchEvent(this, "AfterActivity", str);
    }

    @SimpleEvent(description = "Event raised if this ActivityStarter returns because the activity was canceled.")
    public void ActivityCanceled() {
        EventDispatcher.dispatchEvent(this, "ActivityCanceled", new Object[0]);
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR)
    public String ResultType() {
        String type;
        Intent intent = this.resultIntent;
        return (intent == null || (type = intent.getType()) == null) ? "" : type;
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR)
    public String ResultUri() {
        String dataString;
        Intent intent = this.resultIntent;
        return (intent == null || (dataString = intent.getDataString()) == null) ? "" : dataString;
    }

    @SimpleProperty
    public void Extras(YailList yailList) {
        for (Object obj : yailList.toArray()) {
            boolean z = obj instanceof YailList;
            boolean z2 = z && ((YailList) obj).size() == 2;
            if (!z || !z2) {
                throw new YailRuntimeError("Argument to Extras should be a list of pairs", "ActivityStarter Error");
            }
        }
        this.extras = yailList;
    }

    @SimpleProperty
    public YailList Extras() {
        return this.extras;
    }

    @SimpleFunction(description = "Returns the name of the activity that corresponds to this ActivityStarter, or an empty string if no corresponding activity can be found.")
    public String ResolveActivity() {
        ActivityInfo activityInfo;
        ResolveInfo resolveInfoResolveActivity = this.container.$context().getPackageManager().resolveActivity(buildActivityIntent(), 0);
        if (resolveInfoResolveActivity != null && (activityInfo = resolveInfoResolveActivity.activityInfo) != null) {
            return activityInfo.name;
        }
        return "";
    }

    @SimpleFunction(description = "Start the activity corresponding to this ActivityStarter.")
    public void StartActivity() {
        this.resultIntent = null;
        this.result = "";
        Intent intentBuildActivityIntent = buildActivityIntent();
        if (this.requestCode == 0) {
            this.requestCode = this.form.registerForActivityResult(this);
        }
        if (intentBuildActivityIntent == null) {
            this.form.dispatchErrorOccurredEvent(this, "StartActivity", ErrorMessages.ERROR_ACTIVITY_STARTER_NO_ACTION_INFO, new Object[0]);
            return;
        }
        try {
            this.container.$context().startActivityForResult(intentBuildActivityIntent, this.requestCode);
            AnimationUtil.ApplyOpenScreenAnimation(this.container.$context(), this.container.$form().OpenScreenAnimation());
        } catch (ActivityNotFoundException unused) {
            this.form.dispatchErrorOccurredEvent(this, "StartActivity", ErrorMessages.ERROR_ACTIVITY_STARTER_NO_CORRESPONDING_ACTIVITY, new Object[0]);
        }
    }

    private Intent buildActivityIntent() {
        Uri packageUri = this.dataUri.length() != 0 ? Uri.parse(this.dataUri) : null;
        Intent intent = new Intent(this.action);
        if (packageUri != null && this.dataUri.toLowerCase().startsWith("file://")) {
            Log.d(LOG_TAG, "Using file://");
            java.io.File file = new java.io.File(packageUri.getPath());
            if (file.isFile()) {
                Log.d(LOG_TAG, "It's a file");
                packageUri = NougatUtil.getPackageUri(this.form, file);
                intent = new Intent(this.action);
                intent.setFlags(1);
                Log.d(LOG_TAG, "added permissions");
            }
        }
        if (TextUtils.isEmpty(Action())) {
            return null;
        }
        if (this.dataType.length() == 0) {
            intent.setData(packageUri);
        } else if (packageUri != null) {
            intent.setDataAndType(packageUri, this.dataType);
        } else {
            intent.setType(this.dataType);
        }
        if (this.activityPackage.length() != 0 || this.activityClass.length() != 0) {
            intent.setComponent(new ComponentName(this.activityPackage, this.activityClass));
        } else if (Action().equals("android.intent.action.MAIN")) {
            return null;
        }
        if (this.extraKey.length() != 0 && this.extraValue.length() != 0) {
            Log.i(LOG_TAG, "Adding extra, key = " + this.extraKey + " value = " + this.extraValue);
            intent.putExtra(this.extraKey, this.extraValue);
        }
        for (Object obj : this.extras.toArray()) {
            YailList yailList = (YailList) obj;
            String string = yailList.getString(0);
            Object object = yailList.getObject(1);
            Log.i(LOG_TAG, "Adding extra, key = " + string + " value = " + object);
            if (string.length() != 0) {
                if (object instanceof YailList) {
                    Log.i(LOG_TAG, "Adding extra list, key = " + string + " value = " + object);
                    intent.putExtra(string, ((YailList) object).toStringArray());
                } else {
                    String string2 = yailList.getString(1);
                    Log.i(LOG_TAG, "Adding extra string, key = " + string + " value = " + string2);
                    intent.putExtra(string, string2);
                }
            }
        }
        return intent;
    }

    @Override // com.google.appinventor.components.runtime.ActivityResultListener
    public void resultReturned(int i, int i2, Intent intent) {
        Intent intent2;
        if (i == this.requestCode) {
            Log.i(LOG_TAG, "resultReturned - resultCode = " + i2);
            if (i2 != -1) {
                if (i2 == 0) {
                    ActivityCanceled();
                    return;
                }
                return;
            }
            this.resultIntent = intent;
            if (this.resultName.length() != 0 && (intent2 = this.resultIntent) != null && intent2.hasExtra(this.resultName)) {
                this.result = this.resultIntent.getStringExtra(this.resultName);
            } else {
                this.result = "";
            }
            AfterActivity(this.result);
        }
    }

    @Override // com.google.appinventor.components.runtime.Deleteable
    public void onDelete() {
        this.form.unregisterForActivityResult(this);
    }
}
