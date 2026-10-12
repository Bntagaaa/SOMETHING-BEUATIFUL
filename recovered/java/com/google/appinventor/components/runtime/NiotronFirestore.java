package com.google.appinventor.components.runtime;

import android.app.Activity;
import android.content.Context;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.UsesLibraries;
import com.google.appinventor.components.annotations.UsesPermissions;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.runtime.query.QueryHelper;
import com.google.appinventor.components.runtime.util.YailDictionary;
import com.google.appinventor.components.runtime.util.YailList;
import com.google.firebase.FirebaseApp;
import com.google.firebase.firestore.CollectionReference;
import com.google.firebase.firestore.DocumentChange;
import com.google.firebase.firestore.DocumentReference;
import com.google.firebase.firestore.DocumentSnapshot;
import com.google.firebase.firestore.EventListener;
import com.google.firebase.firestore.FieldPath;
import com.google.firebase.firestore.FirebaseFirestore;
import com.google.firebase.firestore.FirebaseFirestoreException;
import com.google.firebase.firestore.ListenerRegistration;
import com.google.firebase.firestore.Query;
import com.google.firebase.firestore.QueryDocumentSnapshot;
import com.google.firebase.firestore.QuerySnapshot;
import com.google.firebase.firestore.SetOptions;
import com.google.firebase.firestore.WriteBatch;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONException;

@SimpleObject
@UsesPermissions(permissionNames = "android.permission.INTERNET, android.permission.ACCESS_NETWORK_STATE")
@DesignerComponent(category = ComponentCategory.STORAGE, description = "Firebase Firestore component for storing data", iconName = "images/firestore.png", nonVisible = true, version = 1)
@UsesLibraries(libraries = "firebase-firestore.aar, firebase-firestore.jar, firebase-common.aar, firebase-common.jar, firebase-components.aar, firebase-components.jar, firebase-auth-interop.aar, firebase-auth-interop.jar, firebase-annotations.jar, protolite-well-known-types.aar, protolite-well-known-types.jar, firebase-database-collection.aar, firebase-database-collection.jar, firebase-appcheck-interop.aar, firebase-appcheck-interop.jar, play-services-base.aar, play-services-base.jar, play-services-tasks.aar, play-services-tasks.jar, play-services-basement.aar, play-services-basement.jar, annotation.jar, grpc-stub.jar, grpc-protobuf-lite.jar, grpc-okhttp.jar, grpc-android.aar, grpc-android.jar, javax.inject.jar, protobuf-javalite.jar, grpc-core.jar, grpc-api.jar, jsr305.jar, okio-jvm.jar, perfmark-api.jar, grpc-context.jar, failureaccess.jar, gson.jar, annotations.jar, animal-sniffer-annotations.jar")
/* loaded from: classes.dex */
public class NiotronFirestore extends AndroidNonvisibleComponent implements OnDestroyListener {
    private static final ThreadPoolExecutor EXECUTOR = new ThreadPoolExecutor(2, 4, 60, TimeUnit.SECONDS, new LinkedBlockingQueue());
    private static final String TAG = "Niotron Firestore";
    public Activity activity;
    public Context context;
    private FirebaseFirestore db;
    private java.util.Map<String, ListenerRegistration> listeners;

    public NiotronFirestore(ComponentContainer componentContainer) {
        super(componentContainer.$form());
        this.listeners = new ConcurrentHashMap();
        this.context = componentContainer.$context();
        this.activity = componentContainer.$context();
        this.form.registerForOnDestroy(this);
    }

    @SimpleFunction(description = "Initialize the Firebase Firestore Component")
    public void InitializeFirestore(Object obj) {
        if (obj instanceof FirebaseCore) {
            FirebaseApp firebaseAppInstance = ((FirebaseCore) obj).getFirebaseAppInstance();
            if (firebaseAppInstance == null) {
                FailedToInitialize("Firebase Core Component is not Initialized");
                return;
            }
            FirebaseFirestore firebaseFirestore = FirebaseFirestore.getInstance(firebaseAppInstance);
            this.db = firebaseFirestore;
            if (firebaseFirestore == null) {
                FailedToInitialize("Firebase Firestore failed to Initialize. Returned Null");
                return;
            } else {
                FirestoreInitialized();
                return;
            }
        }
        FailedToInitialize("Invalid Firebase Core Component");
    }

    @SimpleFunction(description = "Gets the Document by returning a Dictionary in \"GotDocument\".")
    public void GetDocument(String str) {
        if (this.db == null) {
            OnFailure("Firestore not initialized");
        } else if (str == null || str.isEmpty()) {
            OnFailure("Document reference cannot be null or empty");
        } else {
            this.db.document(str).get().addOnCompleteListener(new OnCompleteListener<DocumentSnapshot>() { // from class: com.google.appinventor.components.runtime.NiotronFirestore.1
                public void onComplete(@NonNull Task<DocumentSnapshot> task) {
                    if (task.isSuccessful()) {
                        DocumentSnapshot documentSnapshot = (DocumentSnapshot) task.getResult();
                        if (documentSnapshot.exists()) {
                            NiotronFirestore.this.GotDocument(YailDictionary.makeDictionary((java.util.Map<Object, Object>) documentSnapshot.getData()));
                            NiotronFirestore.this.OnSuccess("DocumentSnapshot data: " + documentSnapshot.getData());
                            Log.d(NiotronFirestore.TAG, "DocumentSnapshot data: " + documentSnapshot.getData());
                            return;
                        }
                        NiotronFirestore.this.GotDocument(YailDictionary.makeDictionary());
                        NiotronFirestore.this.OnSuccess("No such document");
                        Log.d(NiotronFirestore.TAG, "No such document");
                        return;
                    }
                    NiotronFirestore.this.OnFailure("get failed with " + task.getException().getMessage());
                    Log.d(NiotronFirestore.TAG, "get failed with ", task.getException());
                }
            });
        }
    }

    @SimpleFunction(description = "Get a list of documents according to the query, returning it in \"GotQuery\".")
    public void GetDocumentQuery(String str, YailList yailList) {
        if (this.db == null) {
            OnFailure("Firestore not initialized");
            return;
        }
        if (str == null || str.isEmpty()) {
            OnFailure("Collection reference cannot be null or empty");
            return;
        }
        if (yailList == null) {
            OnFailure("Query cannot be null");
            return;
        }
        try {
            QueryHelper.processQueries(new JSONArray(yailList.toJSONString()), this.db.collection(str)).get().addOnCompleteListener(new OnCompleteListener<QuerySnapshot>() { // from class: com.google.appinventor.components.runtime.NiotronFirestore.2
                public void onComplete(@NonNull Task<QuerySnapshot> task) {
                    if (task.isSuccessful()) {
                        ArrayList arrayList = new ArrayList();
                        Iterator it = ((QuerySnapshot) task.getResult()).iterator();
                        while (it.hasNext()) {
                            QueryDocumentSnapshot queryDocumentSnapshot = (QueryDocumentSnapshot) it.next();
                            NiotronFirestore.this.OnSuccess(queryDocumentSnapshot.getId() + " => " + queryDocumentSnapshot.getData());
                            Log.d(NiotronFirestore.TAG, queryDocumentSnapshot.getId() + " => " + queryDocumentSnapshot.getData());
                            arrayList.add(YailDictionary.makeDictionary((java.util.Map<Object, Object>) queryDocumentSnapshot.getData()));
                        }
                        NiotronFirestore.this.GotQuery(YailList.makeList((List) arrayList));
                        return;
                    }
                    NiotronFirestore.this.OnFailure("Error getting documents query: " + task.getException().getMessage());
                    Log.d(NiotronFirestore.TAG, "Error getting documents query: ", task.getException());
                }
            });
        } catch (JSONException e) {
            OnFailure("Invalid query format: " + e.getMessage());
            Log.e(TAG, "JSON Exception in GetDocumentQuery", e);
        }
    }

    @SimpleFunction(description = "Set the documents.")
    public void SetDocument(String str, YailDictionary yailDictionary) {
        if (this.db == null) {
            OnFailure("Firestore not initialized");
            return;
        }
        if (str == null || str.isEmpty()) {
            OnFailure("Document reference cannot be null or empty");
        } else if (yailDictionary == null) {
            OnFailure("Document cannot be null");
        } else {
            this.db.document(str).set(toMap(yailDictionary)).addOnSuccessListener(new OnSuccessListener<Void>() { // from class: com.google.appinventor.components.runtime.NiotronFirestore.4
                public void onSuccess(Void r2) {
                    NiotronFirestore.this.OnSuccess("DocumentSnapshot successfully written!");
                    Log.d(NiotronFirestore.TAG, "DocumentSnapshot successfully written!");
                }
            }).addOnFailureListener(new OnFailureListener() { // from class: com.google.appinventor.components.runtime.NiotronFirestore.3
                public void onFailure(@NonNull Exception exc) {
                    NiotronFirestore.this.OnFailure("Error writing document " + exc.getMessage());
                    Log.w(NiotronFirestore.TAG, "Error writing document", exc);
                }
            });
        }
    }

    @SimpleFunction(description = "Update one field, creating the document if it does not already exist.")
    public void SetFieldWithMerge(String str, YailDictionary yailDictionary) {
        if (this.db == null) {
            OnFailure("Firestore not initialized");
            return;
        }
        if (str == null || str.isEmpty()) {
            OnFailure("Document reference cannot be null or empty");
        } else if (yailDictionary == null) {
            OnFailure("Document cannot be null");
        } else {
            this.db.document(str).set(toMap(yailDictionary), SetOptions.merge()).addOnSuccessListener(new OnSuccessListener<Void>() { // from class: com.google.appinventor.components.runtime.NiotronFirestore.6
                public void onSuccess(Void r2) {
                    NiotronFirestore.this.OnSuccess("DocumentSnapshot successfully set field!");
                    Log.d(NiotronFirestore.TAG, "DocumentSnapshot successfully set field!");
                }
            }).addOnFailureListener(new OnFailureListener() { // from class: com.google.appinventor.components.runtime.NiotronFirestore.5
                public void onFailure(@NonNull Exception exc) {
                    NiotronFirestore.this.OnFailure("Error set field document " + exc.getMessage());
                    Log.w(NiotronFirestore.TAG, "Error set field document", exc);
                }
            });
        }
    }

    @SimpleFunction(description = "Add a new document with a generated id.")
    public void AddDocument(String str, YailDictionary yailDictionary) {
        if (this.db == null) {
            OnFailure("Firestore not initialized");
            return;
        }
        if (str == null || str.isEmpty()) {
            OnFailure("Collection reference cannot be null or empty");
        } else if (yailDictionary == null) {
            OnFailure("Document cannot be null");
        } else {
            this.db.collection(str).add(toMap(yailDictionary)).addOnSuccessListener(new OnSuccessListener<DocumentReference>() { // from class: com.google.appinventor.components.runtime.NiotronFirestore.8
                public void onSuccess(DocumentReference documentReference) {
                    NiotronFirestore.this.OnSuccess("DocumentSnapshot written with ID: " + documentReference.getId());
                    _COROUTINE.a.B("DocumentSnapshot written with ID: ", documentReference.getId(), NiotronFirestore.TAG);
                }
            }).addOnFailureListener(new OnFailureListener() { // from class: com.google.appinventor.components.runtime.NiotronFirestore.7
                public void onFailure(@NonNull Exception exc) {
                    NiotronFirestore.this.OnFailure("Error adding document " + exc.getMessage());
                    Log.w(NiotronFirestore.TAG, "Error adding document", exc);
                }
            });
        }
    }

    @SimpleFunction(description = "Create a new empty document with a specific name, if you want to create it by generating an id leave the documentName field empty.")
    public void NewDocument(String str, String str2) {
        DocumentReference documentReferenceDocument;
        if (this.db == null) {
            OnFailure("Firestore not initialized");
            return;
        }
        if (str == null || str.isEmpty()) {
            OnFailure("Collection reference cannot be null or empty");
            return;
        }
        HashMap map = new HashMap();
        if (str2 == null || str2.isEmpty()) {
            documentReferenceDocument = this.db.collection(str).document();
        } else {
            documentReferenceDocument = this.db.collection(str).document(str2);
        }
        documentReferenceDocument.set(map).addOnSuccessListener(new OnSuccessListener<Void>() { // from class: com.google.appinventor.components.runtime.NiotronFirestore.10
            public void onSuccess(Void r2) {
                NiotronFirestore.this.OnSuccess("DocumentSnapshot successfully new!");
                Log.d(NiotronFirestore.TAG, "DocumentSnapshot successfully new!");
            }
        }).addOnFailureListener(new OnFailureListener() { // from class: com.google.appinventor.components.runtime.NiotronFirestore.9
            public void onFailure(@NonNull Exception exc) {
                NiotronFirestore.this.OnFailure("Error new document " + exc.getMessage());
                Log.w(NiotronFirestore.TAG, "Error new document", exc);
            }
        });
    }

    @SimpleFunction(description = "Updates the document.")
    public void UpdateDocument(String str, YailDictionary yailDictionary) {
        if (this.db == null) {
            OnFailure("Firestore not initialized");
            return;
        }
        if (str == null || str.isEmpty()) {
            OnFailure("Document reference cannot be null or empty");
        } else if (yailDictionary == null) {
            OnFailure("Document cannot be null");
        } else {
            this.db.document(str).update(toMap(yailDictionary)).addOnSuccessListener(new OnSuccessListener<Void>() { // from class: com.google.appinventor.components.runtime.NiotronFirestore.12
                public void onSuccess(Void r2) {
                    NiotronFirestore.this.OnSuccess("DocumentSnapshot successfully updated!");
                    Log.d(NiotronFirestore.TAG, "DocumentSnapshot successfully updated!");
                }
            }).addOnFailureListener(new OnFailureListener() { // from class: com.google.appinventor.components.runtime.NiotronFirestore.11
                public void onFailure(@NonNull Exception exc) {
                    NiotronFirestore.this.OnFailure("Error updating document " + exc.getMessage());
                    Log.w(NiotronFirestore.TAG, "Error updating document", exc);
                }
            });
        }
    }

    @SimpleFunction(description = "Gets the complete list of documents in the collection, returning to \"GotAllDocs.\"")
    public void GetAllDocs(String str) {
        if (this.db == null) {
            OnFailure("Firestore not initialized");
        } else if (str == null || str.isEmpty()) {
            OnFailure("Collection reference cannot be null or empty");
        } else {
            this.db.collection(str).get().addOnCompleteListener(new OnCompleteListener<QuerySnapshot>() { // from class: com.google.appinventor.components.runtime.NiotronFirestore.13
                public void onComplete(@NonNull Task<QuerySnapshot> task) {
                    if (task.isSuccessful()) {
                        ArrayList arrayList = new ArrayList();
                        Iterator it = ((QuerySnapshot) task.getResult()).iterator();
                        while (it.hasNext()) {
                            QueryDocumentSnapshot queryDocumentSnapshot = (QueryDocumentSnapshot) it.next();
                            NiotronFirestore.this.OnSuccess(queryDocumentSnapshot.getId() + " => " + queryDocumentSnapshot.getData());
                            Log.d(NiotronFirestore.TAG, queryDocumentSnapshot.getId() + " => " + queryDocumentSnapshot.getData());
                            arrayList.add(YailDictionary.makeDictionary((java.util.Map<Object, Object>) queryDocumentSnapshot.getData()));
                        }
                        NiotronFirestore.this.GotAllDocs(YailList.makeList((List) arrayList));
                        return;
                    }
                    NiotronFirestore.this.OnFailure("Error getting documents: " + task.getException().getMessage());
                    Log.d(NiotronFirestore.TAG, "Error getting documents: ", task.getException());
                }
            });
        }
    }

    @SimpleFunction(description = "Register a listener and if there are changes to the collection it will return to OnListenerAdded, OnListenerModified, OnListenerRemoved.")
    public void RegisterListener(String str) {
        if (this.db == null) {
            OnFailure("Firestore not initialized");
            return;
        }
        if (str == null || str.isEmpty()) {
            OnFailure("Collection reference cannot be null or empty");
        } else if (this.listeners.containsKey(str)) {
            OnFailure("Listener already exists for collection: ".concat(str));
        } else {
            this.listeners.put(str, this.db.collection(str).addSnapshotListener(new EventListener<QuerySnapshot>() { // from class: com.google.appinventor.components.runtime.NiotronFirestore.14
                public void onEvent(@Nullable QuerySnapshot querySnapshot, @Nullable FirebaseFirestoreException firebaseFirestoreException) {
                    if (firebaseFirestoreException != null) {
                        NiotronFirestore.this.OnFailure("listen:error: " + firebaseFirestoreException.getMessage());
                        return;
                    }
                    for (DocumentChange documentChange : querySnapshot.getDocumentChanges()) {
                        int i = AnonymousClass19.$SwitchMap$com$google$firebase$firestore$DocumentChange$Type[documentChange.getType().ordinal()];
                        if (i == 1) {
                            NiotronFirestore.this.OnListenerAdded(YailDictionary.makeDictionary((java.util.Map<Object, Object>) documentChange.getDocument().getData()));
                        } else if (i == 2) {
                            NiotronFirestore.this.OnListenerModified(YailDictionary.makeDictionary((java.util.Map<Object, Object>) documentChange.getDocument().getData()));
                        } else if (i == 3) {
                            NiotronFirestore.this.OnListenerRemoved(YailDictionary.makeDictionary((java.util.Map<Object, Object>) documentChange.getDocument().getData()));
                        }
                    }
                }
            }));
        }
    }

    /* renamed from: com.google.appinventor.components.runtime.NiotronFirestore$19, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass19 {
        static final /* synthetic */ int[] $SwitchMap$com$google$firebase$firestore$DocumentChange$Type;

        static {
            int[] iArr = new int[DocumentChange.Type.values().length];
            $SwitchMap$com$google$firebase$firestore$DocumentChange$Type = iArr;
            try {
                iArr[DocumentChange.Type.ADDED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$google$firebase$firestore$DocumentChange$Type[DocumentChange.Type.MODIFIED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$google$firebase$firestore$DocumentChange$Type[DocumentChange.Type.REMOVED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    @SimpleFunction(description = "Removes the listener.")
    public void RemoveListener(String str) {
        if (str == null || str.isEmpty()) {
            OnFailure("Collection reference cannot be null or empty");
            return;
        }
        ListenerRegistration listenerRegistration = this.listeners.get(str);
        if (listenerRegistration != null) {
            listenerRegistration.remove();
            this.listeners.remove(str);
        } else {
            OnFailure("No listener found for collection: ".concat(str));
        }
    }

    @SimpleFunction(description = "Deleted collection.")
    public void DeleteCollection(String str) {
        if (this.db == null) {
            OnFailure("Firestore not initialized");
        } else if (str == null || str.isEmpty()) {
            OnFailure("Collection reference cannot be null or empty");
        } else {
            deleteCollection(str);
        }
    }

    @SimpleFunction(description = "Deleted document.")
    public void DeleteDocument(String str) {
        if (this.db == null) {
            OnFailure("Firestore not initialized");
        } else if (str == null || str.isEmpty()) {
            OnFailure("Document reference cannot be null or empty");
        } else {
            this.db.document(str).delete().addOnSuccessListener(new OnSuccessListener<Void>() { // from class: com.google.appinventor.components.runtime.NiotronFirestore.16
                public void onSuccess(Void r2) {
                    NiotronFirestore.this.OnSuccess("DocumentSnapshot successfully deleted!");
                    Log.d(NiotronFirestore.TAG, "DocumentSnapshot successfully deleted!");
                }
            }).addOnFailureListener(new OnFailureListener() { // from class: com.google.appinventor.components.runtime.NiotronFirestore.15
                public void onFailure(@NonNull Exception exc) {
                    NiotronFirestore.this.OnFailure("Error deleting document " + exc.getMessage());
                    Log.w(NiotronFirestore.TAG, "Error deleting document", exc);
                }
            });
        }
    }

    @SimpleEvent(description = "Returns the document in the dictionary type obtained from \"GotValue\".")
    public void GotDocument(YailDictionary yailDictionary) {
        EventDispatcher.dispatchEvent(this, "GotDocument", yailDictionary);
    }

    @SimpleEvent(description = "Event returns all documents.")
    public void GotAllDocs(YailList yailList) {
        EventDispatcher.dispatchEvent(this, "GotAllDocs", yailList);
    }

    @SimpleEvent(description = "Event returns a list with the selected data.")
    public void GotQuery(YailList yailList) {
        EventDispatcher.dispatchEvent(this, "GotQuery", yailList);
    }

    @SimpleEvent(description = "Returns the event if any method is successful.")
    public void OnSuccess(String str) {
        EventDispatcher.dispatchEvent(this, "OnSuccess", str);
    }

    @SimpleEvent(description = "Returns the error message.")
    public void OnFailure(String str) {
        EventDispatcher.dispatchEvent(this, "OnFailure", str);
    }

    @SimpleEvent(description = "When registering the listener, this event will be called when adding a field to the collection.")
    public void OnListenerAdded(YailDictionary yailDictionary) {
        EventDispatcher.dispatchEvent(this, "OnListenerAdded", yailDictionary);
    }

    @SimpleEvent(description = "When registering the listener, this event will be called when modifying a field in the collection.")
    public void OnListenerModified(YailDictionary yailDictionary) {
        EventDispatcher.dispatchEvent(this, "OnListenerModified", yailDictionary);
    }

    @SimpleEvent(description = "When registering the listener, this event will be called when removing a field from the collection.")
    public void OnListenerRemoved(YailDictionary yailDictionary) {
        EventDispatcher.dispatchEvent(this, "OnListenerRemoved", yailDictionary);
    }

    @SimpleEvent(description = "Firebase Firestore Component Initialized")
    public void FirestoreInitialized() {
        EventDispatcher.dispatchEvent(this, "FirestoreInitialized", new Object[0]);
    }

    @SimpleEvent(description = "Failed to Initialize Firebase Firestore Component")
    public void FailedToInitialize(String str) {
        EventDispatcher.dispatchEvent(this, "FailedToInitialize", str);
    }

    @SimpleFunction(description = "Removes all listeners.")
    public void RemoveAllListeners() {
        for (Map.Entry<String, ListenerRegistration> entry : this.listeners.entrySet()) {
            if (entry.getValue() != null) {
                entry.getValue().remove();
            }
        }
        this.listeners.clear();
        OnSuccess("All listeners removed");
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [com.google.appinventor.components.runtime.NiotronFirestore$17] */
    private java.util.Map<String, Object> toMap(YailDictionary yailDictionary) {
        try {
            return (java.util.Map) new Gson().fromJson(yailDictionary.toString(), new TypeToken<HashMap<String, Object>>() { // from class: com.google.appinventor.components.runtime.NiotronFirestore.17
            }.getType());
        } catch (Exception e) {
            Log.e(TAG, "Error converting YailDictionary to Map", e);
            return new HashMap();
        }
    }

    private void deleteCollection(String str) {
        deleteCollection(this.db.collection(str), 50, EXECUTOR);
    }

    private Task<Void> deleteCollection(final CollectionReference collectionReference, final int i, Executor executor) {
        return Tasks.call(executor, new Callable<Void>() { // from class: com.google.appinventor.components.runtime.NiotronFirestore.18
            @Override // java.util.concurrent.Callable
            public Void call() throws Exception {
                List listDeleteQueryBatch = NiotronFirestore.this.deleteQueryBatch(collectionReference.orderBy(FieldPath.documentId()).limit(i));
                while (listDeleteQueryBatch.size() >= i) {
                    listDeleteQueryBatch = NiotronFirestore.this.deleteQueryBatch(collectionReference.orderBy(FieldPath.documentId()).startAfter(new Object[]{((DocumentSnapshot) listDeleteQueryBatch.get(listDeleteQueryBatch.size() - 1)).getId()}).limit(i));
                }
                return null;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    @WorkerThread
    public List<DocumentSnapshot> deleteQueryBatch(Query query) throws Exception {
        QuerySnapshot querySnapshot = (QuerySnapshot) Tasks.await(query.get());
        WriteBatch writeBatchBatch = query.getFirestore().batch();
        Iterator it = querySnapshot.iterator();
        while (it.hasNext()) {
            writeBatchBatch.delete(((QueryDocumentSnapshot) it.next()).getReference());
        }
        Tasks.await(writeBatchBatch.commit());
        return querySnapshot.getDocuments();
    }

    @Override // com.google.appinventor.components.runtime.OnDestroyListener
    public void onDestroy() {
        RemoveAllListeners();
    }
}
