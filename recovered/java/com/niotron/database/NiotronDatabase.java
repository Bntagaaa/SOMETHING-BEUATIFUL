package com.niotron.database;

import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.DesignerProperty;
import com.google.appinventor.components.annotations.PropertyCategory;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.annotations.UsesLibraries;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.runtime.AndroidNonvisibleComponent;
import com.google.appinventor.components.runtime.ComponentContainer;
import com.google.appinventor.components.runtime.EventDispatcher;
import com.niotron.niotrondatabase.NiotronDB;

@DesignerComponent(category = ComponentCategory.EXPERIMENTAL, description = "Niotron Realtime database. Lets you store your data in NiotronDB,", iconName = "images/niotron.png", nonVisible = true, version = 1)
@UsesLibraries(libraries = "niotron-db.jar, socket-io.jar, engine-io.jar, json-20090211.jar, okhttp.jar, okio-jvm.jar")
@SimpleObject
/* loaded from: classes2.dex */
public final class NiotronDatabase extends AndroidNonvisibleComponent {

    /* renamed from: a, reason: collision with root package name */
    public NiotronDB f5352a;

    /* renamed from: b, reason: collision with root package name */
    public String f5353b;

    public NiotronDatabase(ComponentContainer componentContainer) {
        super(componentContainer.$form());
        componentContainer.$context();
    }

    public final void b() {
        this.f5352a = new NiotronDB(this.f5353b);
        a();
    }

    public final void a() {
        this.f5352a.setOnDataChangeListener(new a());
        this.f5352a.setOnGetAllRecordListener(new b());
        this.f5352a.setOnGetValueByTagListener(new c());
        this.f5352a.setOnCreateRecordListener(new d());
        this.f5352a.setOnDeleteRecordListener(new e());
    }

    @SimpleProperty(category = PropertyCategory.CREDENTIALS, userVisible = false)
    @DesignerProperty
    public void ApiKey(String str) {
        this.f5353b = str;
        b();
    }

    @SimpleFunction(description = "Starts Listenign to data change")
    public void StartListeningToDataChange() {
        this.f5352a.startListeningToDataChange();
    }

    @SimpleFunction(description = "Stops listening to data change")
    public void StopListeningToDataChange() {
        this.f5352a.stopListeningToDataChange();
    }

    @SimpleFunction(description = "Creates a record with provided tag and value")
    public void CreateRecord(String str, String str2) {
        this.f5352a.createRecord(str, str2);
    }

    @SimpleFunction(description = "Deletes record with provided tag")
    public void DeleteRecord(String str) {
        this.f5352a.deleteRecord(str);
    }

    @SimpleFunction(description = "Fetches all records")
    public void GetAllRecord() {
        this.f5352a.getAllRecord();
    }

    @SimpleFunction(description = "Gets the value of the provided tag")
    public void GetValueByTag(String str) {
        this.f5352a.getValueByTag(str);
    }

    @SimpleEvent(description = "Raises when some data added into the database")
    public void OnDataAdded(String str, String str2) {
        EventDispatcher.dispatchEvent(this, "OnDataAdded", str, str2);
    }

    @SimpleEvent(description = "Raises when some data removed from database")
    public void OnDataRemoved(String str) {
        EventDispatcher.dispatchEvent(this, "OnDataRemoved", str);
    }

    @SimpleEvent(description = "Raises when record created successfully")
    public void OnCreatedRecord(String str, String str2) {
        EventDispatcher.dispatchEvent(this, "OnCreatedRecord", str, str2);
    }

    @SimpleEvent(description = "Raises when error creating record")
    public void OnErrorCreateingRecord(String str) {
        EventDispatcher.dispatchEvent(this, "OnErrorCreateingRecord", str);
    }

    @SimpleEvent(description = "Raises when record deleted successfully")
    public void OnDeletedRecord(String str) {
        EventDispatcher.dispatchEvent(this, "OnDeletedRecord", str);
    }

    @SimpleEvent(description = "Raises when error deleting record")
    public void OnErrorDeletingRecord(String str) {
        EventDispatcher.dispatchEvent(this, "OnErrorDeletingRecord", str);
    }

    @SimpleEvent(description = "Raises when got all record")
    public void OnGotAllRecords(String str) {
        EventDispatcher.dispatchEvent(this, "OnGotAllRecords", str);
    }

    @SimpleEvent(description = "Raises when error getting all records")
    public void OnErrorGettingAllRecords(String str) {
        EventDispatcher.dispatchEvent(this, "OnErrorGettingAllRecords", str);
    }

    @SimpleEvent(description = "Raises when got value of a tag")
    public void OnGotValueByTag(String str, String str2) {
        EventDispatcher.dispatchEvent(this, "OnGotValueByTag", str, str2);
    }

    @SimpleEvent(description = "Raises when error getting value of a tag")
    public void OnErrorGettingValueByTag(String str) {
        EventDispatcher.dispatchEvent(this, "OnErrorGettingValueByTag", str);
    }
}
