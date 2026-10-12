package com.google.appinventor.components.runtime;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.util.Log;
import androidx.annotation.NonNull;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.android.gms.tasks.Task;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.UsesLibraries;
import com.google.appinventor.components.annotations.UsesPermissions;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.runtime.errors.YailRuntimeError;
import com.google.appinventor.components.runtime.util.YailDictionary;
import com.google.appinventor.components.runtime.util.YailList;
import com.google.firebase.FirebaseApp;
import com.google.firebase.storage.FirebaseStorage;
import com.google.firebase.storage.ListResult;
import com.google.firebase.storage.OnPausedListener;
import com.google.firebase.storage.OnProgressListener;
import com.google.firebase.storage.StorageMetadata;
import com.google.firebase.storage.StorageReference;
import com.google.firebase.storage.UploadTask;
import java.util.Iterator;
import java.util.Objects;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@SimpleObject
@UsesPermissions(permissionNames = "android.permission.INTERNET, android.permission.ACCESS_NETWORK_STATE")
@DesignerComponent(category = ComponentCategory.INTERNAL, description = "Component for firebase cloud storage", iconName = "images/niotronFirebaseStorage.png", nonVisible = true, version = 1)
@UsesLibraries(libraries = "firebase-storage.aar, firebase-storage.jar, json.jar, firebase-auth-interop.aar, firebase-auth-interop.jar, firebase-appcheck.aar, firebase-appcheck.jar, firebase-appcheck-interop.aar, firebase-appcheck-interop.jar")
/* loaded from: classes.dex */
public final class NiotronFirebaseStorage extends AndroidNonvisibleComponent {
    private static String TAG = "Firebase Storage";
    private Activity activity;
    private Context context;
    private FirebaseStorage storage;
    private StorageReference storageRef;
    private UploadTask uploadTask;

    public NiotronFirebaseStorage(ComponentContainer componentContainer) {
        super(componentContainer.$form());
        this.context = this.form.$context();
        this.activity = this.form.$context();
    }

    @SimpleFunction(description = "Initialize the Firebase Storage Component")
    public void InitializeFirebaseStorage(Object obj) {
        if (obj instanceof FirebaseCore) {
            FirebaseApp firebaseAppInstance = ((FirebaseCore) obj).getFirebaseAppInstance();
            if (firebaseAppInstance == null) {
                FailedToInitialize("Firebase Core Component failed to Initialize");
                return;
            }
            FirebaseStorage firebaseStorage = FirebaseStorage.getInstance(firebaseAppInstance);
            this.storage = firebaseStorage;
            this.storageRef = firebaseStorage.getReference();
            return;
        }
        FailedToInitialize("Invalid Firebase Core Component");
    }

    @SimpleEvent(description = "Failed to Initialized Firebase Storage Component")
    public void FailedToInitialize(String str) {
        EventDispatcher.dispatchEvent(this, "FailedToInitialize", str);
    }

    @SimpleFunction
    public void UploadFile(String str, String str2, Object obj) {
        java.io.File file = new java.io.File(str);
        if (!file.exists()) {
            throw new YailRuntimeError("Local file does not exist", "Firebase Storage");
        }
        Uri uriFromFile = Uri.fromFile(file);
        final StorageReference storageReferenceChild = this.storageRef.child(str2);
        if (obj instanceof StorageMetadata) {
            this.uploadTask = storageReferenceChild.putFile(uriFromFile, (StorageMetadata) obj);
        } else if (obj instanceof String) {
            this.uploadTask = storageReferenceChild.putFile(uriFromFile);
        } else {
            throw new YailRuntimeError("Invalid metadata provided", "Firebase Storage");
        }
        this.uploadTask.continueWithTask(new Continuation<UploadTask.TaskSnapshot, Task<Uri>>() { // from class: com.google.appinventor.components.runtime.NiotronFirebaseStorage.2
            /* renamed from: then, reason: collision with other method in class */
            public /* bridge */ /* synthetic */ Object m8then(@NonNull Task task) throws Exception {
                return then((Task<UploadTask.TaskSnapshot>) task);
            }

            public Task<Uri> then(@NonNull Task<UploadTask.TaskSnapshot> task) throws Exception {
                if (!task.isSuccessful()) {
                    Exception exception = task.getException();
                    Objects.requireNonNull(exception);
                    throw exception;
                }
                return storageReferenceChild.getDownloadUrl();
            }
        }).addOnCompleteListener(new OnCompleteListener<Uri>() { // from class: com.google.appinventor.components.runtime.NiotronFirebaseStorage.1
            public void onComplete(@NonNull Task<Uri> task) {
                if (task.isSuccessful()) {
                    NiotronFirebaseStorage.this.FileUploaded(((Uri) task.getResult()).toString());
                }
            }
        });
        this.uploadTask.addOnProgressListener(new OnProgressListener<UploadTask.TaskSnapshot>() { // from class: com.google.appinventor.components.runtime.NiotronFirebaseStorage.6
            public void onProgress(UploadTask.TaskSnapshot taskSnapshot) {
                double bytesTransferred = (taskSnapshot.getBytesTransferred() * 100.0d) / taskSnapshot.getTotalByteCount();
                Log.d(NiotronFirebaseStorage.TAG, "Upload is " + bytesTransferred + "% done");
                NiotronFirebaseStorage.this.UploadProgressed(bytesTransferred);
            }
        }).addOnPausedListener(new OnPausedListener<UploadTask.TaskSnapshot>() { // from class: com.google.appinventor.components.runtime.NiotronFirebaseStorage.5
            public void onPaused(UploadTask.TaskSnapshot taskSnapshot) {
                Log.d(NiotronFirebaseStorage.TAG, "Upload is paused");
                NiotronFirebaseStorage.this.UploadPaused();
            }
        }).addOnFailureListener(new OnFailureListener() { // from class: com.google.appinventor.components.runtime.NiotronFirebaseStorage.4
            public void onFailure(@NonNull Exception exc) {
                NiotronFirebaseStorage.this.UploadFailed(exc.getMessage());
            }
        }).addOnSuccessListener(new OnSuccessListener<UploadTask.TaskSnapshot>() { // from class: com.google.appinventor.components.runtime.NiotronFirebaseStorage.3
            public void onSuccess(UploadTask.TaskSnapshot taskSnapshot) {
            }
        });
    }

    @SimpleFunction
    public void UpdateProperties(String str, Object obj) {
        if (!(obj instanceof StorageMetadata)) {
            throw new YailRuntimeError("Firebase Storage", "Metadata format invalid");
        }
        this.storageRef.child(str).updateMetadata((StorageMetadata) obj).addOnSuccessListener(new OnSuccessListener<StorageMetadata>() { // from class: com.google.appinventor.components.runtime.NiotronFirebaseStorage.8
            public void onSuccess(StorageMetadata storageMetadata) {
                NiotronFirebaseStorage.this.UpdatedMetaData();
            }
        }).addOnFailureListener(new OnFailureListener() { // from class: com.google.appinventor.components.runtime.NiotronFirebaseStorage.7
            public void onFailure(@NonNull Exception exc) {
                NiotronFirebaseStorage.this.MetaDataUpdateFailed(exc.getMessage());
            }
        });
    }

    @SimpleFunction(description = "Fetched the publicly accessible url of the file")
    public void GetDownloadURL(String str) {
        this.storageRef.child(str).getDownloadUrl().addOnSuccessListener(new OnSuccessListener<Uri>() { // from class: com.google.appinventor.components.runtime.NiotronFirebaseStorage.10
            public void onSuccess(Uri uri) {
                NiotronFirebaseStorage.this.DownloadUrl(uri.toString());
            }
        }).addOnFailureListener(new OnFailureListener() { // from class: com.google.appinventor.components.runtime.NiotronFirebaseStorage.9
            public void onFailure(@NonNull Exception exc) {
                NiotronFirebaseStorage.this.DownloadUrlFailed(exc.getMessage());
            }
        });
    }

    @SimpleFunction(description = "Deletes the file in the cloud")
    public void DeleteFile(String str) {
        this.storageRef.child(str).delete().addOnSuccessListener(new OnSuccessListener<Void>() { // from class: com.google.appinventor.components.runtime.NiotronFirebaseStorage.12
            public void onSuccess(Void r1) {
                NiotronFirebaseStorage.this.FileDeleted();
            }
        }).addOnFailureListener(new OnFailureListener() { // from class: com.google.appinventor.components.runtime.NiotronFirebaseStorage.11
            public void onFailure(@NonNull Exception exc) {
                NiotronFirebaseStorage.this.DeleteFailed(exc.getMessage());
            }
        });
    }

    @SimpleFunction(description = "Lists all the files in the path given")
    public void ListFiles(String str) {
        this.storageRef.child(str).listAll().addOnSuccessListener(new OnSuccessListener<ListResult>() { // from class: com.google.appinventor.components.runtime.NiotronFirebaseStorage.14
            public void onSuccess(ListResult listResult) throws JSONException {
                for (StorageReference storageReference : listResult.getPrefixes()) {
                }
                JSONArray jSONArray = new JSONArray();
                for (StorageReference storageReference2 : listResult.getItems()) {
                    try {
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put("Path", storageReference2.getPath());
                        jSONObject.put("Name", storageReference2.getName());
                        jSONArray.put(jSONObject);
                    } catch (JSONException unused) {
                    }
                }
                NiotronFirebaseStorage.this.FileListFound(jSONArray.toString());
            }
        }).addOnFailureListener(new OnFailureListener() { // from class: com.google.appinventor.components.runtime.NiotronFirebaseStorage.13
            public void onFailure(@NonNull Exception exc) {
                NiotronFirebaseStorage.this.FileListError(exc.getMessage());
            }
        });
    }

    @SimpleFunction
    public Object BuildMetadata(String str, String str2, String str3, String str4, String str5, YailDictionary yailDictionary) {
        StorageMetadata.Builder contentEncoding = new StorageMetadata.Builder().setContentType(str).setContentLanguage(str2).setCacheControl(str3).setContentDisposition(str4).setContentEncoding(str5);
        Iterator<YailList> it = yailDictionary.iterator();
        while (it.hasNext()) {
            YailList next = it.next();
            contentEncoding.setCustomMetadata(next.getString(0), next.getString(1));
        }
        return contentEncoding.build();
    }

    @SimpleEvent
    public void UpdatedMetaData() {
        EventDispatcher.dispatchEvent(this, "UpdatedMetaData", new Object[0]);
    }

    @SimpleEvent
    public void MetaDataUpdateFailed(String str) {
        EventDispatcher.dispatchEvent(this, "MetaDataUpdateFailed", str);
    }

    @SimpleEvent
    public void DownloadUrl(String str) {
        EventDispatcher.dispatchEvent(this, "DownloadUrl", str);
    }

    @SimpleEvent
    public void DownloadUrlFailed(String str) {
        EventDispatcher.dispatchEvent(this, "DownloadUrlFailed", str);
    }

    @SimpleEvent
    public void FileListFound(String str) {
        EventDispatcher.dispatchEvent(this, "FileListFound", str);
    }

    @SimpleEvent
    public void FileListError(String str) {
        EventDispatcher.dispatchEvent(this, "FileListError", str);
    }

    @SimpleEvent
    public void DeleteFailed(String str) {
        EventDispatcher.dispatchEvent(this, "DeleteFailed", str);
    }

    @SimpleEvent
    public void FileDeleted() {
        EventDispatcher.dispatchEvent(this, "DeleteFailed", new Object[0]);
    }

    @SimpleEvent
    public void FileUploaded(String str) {
        EventDispatcher.dispatchEvent(this, "FileUploaded", str);
    }

    @SimpleEvent
    public void UploadFailed(String str) {
        EventDispatcher.dispatchEvent(this, "UploadFailed", str);
    }

    @SimpleEvent
    public void UploadPaused() {
        EventDispatcher.dispatchEvent(this, "UploadPaused", new Object[0]);
    }

    @SimpleEvent
    public void UploadProgressed(double d) {
        EventDispatcher.dispatchEvent(this, "UploadProgressed", Double.valueOf(d));
    }

    @SimpleFunction(description = "Pauses the ongoing upload")
    public void PauseUpload() {
        this.uploadTask.pause();
    }

    @SimpleFunction(description = "Resumes the paused upload")
    public void ResumeUpload() {
        this.uploadTask.resume();
    }

    @SimpleFunction(description = "Cancels the ongoing upload")
    public void CancelUpload() {
        this.uploadTask.cancel();
    }
}
