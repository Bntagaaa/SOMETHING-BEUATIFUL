package com.google.appinventor.components.runtime;

import android.content.Context;
import android.content.SharedPreferences;
import android.util.Log;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.DesignerProperty;
import com.google.appinventor.components.annotations.PropertyCategory;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.common.PropertyTypeConstants;
import com.google.appinventor.components.runtime.errors.YailRuntimeError;
import com.google.appinventor.components.runtime.util.JsonUtil;
import com.google.appinventor.components.runtime.util.YailDictionary;
import com.google.appinventor.components.runtime.util.YailList;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import org.json.JSONException;

@DesignerComponent(category = ComponentCategory.STORAGE, description = "TinyDB is a non-visible component that stores data for an app. <p> Apps created with App Inventor are initialized each time they run: If an app sets the value of a variable and the user then quits the app, the value of that variable will not be remembered the next time the app is run. In contrast, TinyDB is a <em> persistent </em> data store for the app, that is, the data stored there will be available each time the app is run. An example might be a game that saves the high score and retrieves it each time the game is played. </<p> <p> Data items are strings stored under <em>tags</em> . To store a data item, you specify the tag it should be stored under.  Subsequently, you can retrieve the data that was stored under a given tag. </p><p> There is only one data store per app. Even if you have multiple TinyDB components, they will use the same data store. To get the effect of separate stores, use different keys. Also each app has its own data store. You cannot use TinyDB to pass data between two different apps on the phone, although you <em>can</em> use TinyDb to shares data between the different screens of a multi-screen app. </p> <p>When you are developing apps using the AI Companion, all the apps using that companion will share the same TinyDb.  That sharing will disappear once the apps are packaged.  But, during development, you should be careful to clear the TinyDb each time you start working on a new app.</p>", iconName = "images/tinyDB.png", nonVisible = true, version = 3)
@SimpleObject
/* loaded from: classes.dex */
public class TinyDB extends AndroidNonvisibleComponent implements Component, Deleteable, ObservableDataSource<String, YailList> {
    public static final String DEFAULT_NAMESPACE = "TinyDB1";
    private Context context;
    private HashSet<DataSourceChangeListener> dataSourceObservers;
    private String namespace;
    private final SharedPreferences.OnSharedPreferenceChangeListener sharedPreferenceChangeListener;
    private SharedPreferences sharedPreferences;

    public TinyDB(ComponentContainer componentContainer) {
        super(componentContainer.$form());
        this.dataSourceObservers = new HashSet<>();
        this.context = componentContainer.$context();
        this.sharedPreferenceChangeListener = new SharedPreferences.OnSharedPreferenceChangeListener() { // from class: com.google.appinventor.components.runtime.TinyDB.1
            @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
            public void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
                TinyDB tinyDB = TinyDB.this;
                tinyDB.notifyDataObservers(str, tinyDB.GetValue(str, null));
            }
        };
        Namespace(DEFAULT_NAMESPACE);
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "Namespace for storing data.")
    @DesignerProperty(defaultValue = DEFAULT_NAMESPACE, editorType = PropertyTypeConstants.PROPERTY_TYPE_STRING)
    public void Namespace(String str) {
        this.namespace = str;
        SharedPreferences sharedPreferences = this.sharedPreferences;
        if (sharedPreferences != null) {
            sharedPreferences.unregisterOnSharedPreferenceChangeListener(this.sharedPreferenceChangeListener);
        }
        SharedPreferences sharedPreferences2 = this.context.getSharedPreferences(str, 0);
        this.sharedPreferences = sharedPreferences2;
        sharedPreferences2.registerOnSharedPreferenceChangeListener(this.sharedPreferenceChangeListener);
    }

    @SimpleProperty(description = "Namespace for storing data.")
    public String Namespace() {
        return this.namespace;
    }

    @SimpleFunction(description = "Store the given value under the given tag.  The storage persists on the phone when the app is restarted.")
    public void StoreValue(String str, Object obj) {
        SharedPreferences.Editor editorEdit = this.sharedPreferences.edit();
        try {
            editorEdit.putString(str, JsonUtil.getJsonRepresentation(obj));
            editorEdit.commit();
        } catch (JSONException unused) {
            throw new YailRuntimeError("Value failed to convert to JSON.", "JSON Creation Error.");
        }
    }

    @SimpleFunction(description = "Retrieve the value stored under the given tag. If there's no such tag, then return valueIfTagNotThere.")
    public Object GetValue(String str, Object obj) {
        try {
            String string = this.sharedPreferences.getString(str, "");
            return string.length() == 0 ? obj : JsonUtil.getObjectFromJson(string, true);
        } catch (JSONException unused) {
            throw new YailRuntimeError("Value failed to convert from JSON.", "JSON Creation Error.");
        }
    }

    @SimpleFunction(description = "Return a list of all the tags in the data store.")
    public Object GetTags() {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(this.sharedPreferences.getAll().keySet());
        Collections.sort(arrayList);
        return arrayList;
    }

    @SimpleFunction(description = "Clear the entire data store.")
    public void ClearAll() {
        SharedPreferences.Editor editorEdit = this.sharedPreferences.edit();
        editorEdit.clear();
        editorEdit.commit();
        notifyDataObservers((String) null, (Object) null);
    }

    @SimpleFunction(description = "Clear the entry with the given tag.")
    public void ClearTag(String str) {
        SharedPreferences.Editor editorEdit = this.sharedPreferences.edit();
        editorEdit.remove(str);
        editorEdit.commit();
    }

    @Override // com.google.appinventor.components.runtime.Deleteable
    public void onDelete() {
        SharedPreferences.Editor editorEdit = this.sharedPreferences.edit();
        editorEdit.clear();
        editorEdit.commit();
        notifyDataObservers((String) null, (Object) null);
    }

    @Override // com.google.appinventor.components.runtime.DataSource
    public YailList getDataValue(String str) {
        Object objGetValue = GetValue(str, YailList.makeEmptyList());
        if (objGetValue instanceof YailList) {
            return (YailList) objGetValue;
        }
        return YailList.makeEmptyList();
    }

    @Override // com.google.appinventor.components.runtime.ObservableDataSource
    public void addDataObserver(DataSourceChangeListener dataSourceChangeListener) {
        this.dataSourceObservers.add(dataSourceChangeListener);
    }

    @Override // com.google.appinventor.components.runtime.ObservableDataSource
    public void removeDataObserver(DataSourceChangeListener dataSourceChangeListener) {
        this.dataSourceObservers.remove(dataSourceChangeListener);
    }

    @Override // com.google.appinventor.components.runtime.ObservableDataSource
    public void notifyDataObservers(String str, Object obj) {
        Log.i("Tag", "Notified: " + this.dataSourceObservers.size() + " observers.");
        Iterator<DataSourceChangeListener> it = this.dataSourceObservers.iterator();
        while (it.hasNext()) {
            it.next().onDataSourceValueChange(this, str, obj);
        }
    }

    @SimpleFunction(description = "Retrieves all data entries of TinyDB in form of Dictionaries")
    public YailDictionary GetEntries() {
        ArrayList arrayList = new ArrayList(this.sharedPreferences.getAll().keySet());
        Collections.sort(arrayList);
        YailDictionary yailDictionary = new YailDictionary();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            yailDictionary.put(str, GetValue(str, ""));
        }
        return yailDictionary;
    }
}
