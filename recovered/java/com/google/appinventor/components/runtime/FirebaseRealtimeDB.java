package com.google.appinventor.components.runtime;

import android.app.Activity;
import android.content.Context;
import android.util.Log;
import androidx.annotation.NonNull;
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
import com.google.appinventor.components.runtime.util.YailDictionary;
import com.google.appinventor.components.runtime.util.YailList;
import com.google.firebase.FirebaseApp;
import com.google.firebase.database.ChildEventListener;
import com.google.firebase.database.DataSnapshot;
import com.google.firebase.database.DatabaseError;
import com.google.firebase.database.DatabaseReference;
import com.google.firebase.database.FirebaseDatabase;
import com.google.firebase.database.MutableData;
import com.google.firebase.database.Query;
import com.google.firebase.database.ServerValue;
import com.google.firebase.database.Transaction;
import com.google.firebase.database.ValueEventListener;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;

@SimpleObject
@UsesPermissions(permissionNames = "android.permission.INTERNET, android.permission.ACCESS_NETWORK_STATE")
@DesignerComponent(category = ComponentCategory.FIREBASE, description = "Firebase Realtime Database component for Niotron that enables real-time data storage and synchronization in the cloud. This component allows you to store and retrieve data that syncs across all connected devices instantly. Before using any database operations, you must first initialize the component with a Firebase Core instance. The database organizes data in a JSON tree structure where you can store strings, numbers, booleans, lists, and objects. Perfect for building chat apps, collaborative tools, live dashboards, and any app requiring real-time data updates.", iconName = "images/firebaseDB.png", nonVisible = true, version = 1)
@UsesLibraries(libraries = "firebase-database.aar, firebase-database.jar")
/* loaded from: classes.dex */
public final class FirebaseRealtimeDB extends AndroidNonvisibleComponent {
    private Activity activity;
    private java.util.Map<String, ChildEventListener> childListeners;
    private Context context;
    private DatabaseReference databaseReference;
    private FirebaseDatabase firebaseDatabase;
    private java.util.Map<String, ValueEventListener> valueListeners;

    public FirebaseRealtimeDB(ComponentContainer componentContainer) {
        super(componentContainer.$form());
        this.valueListeners = new HashMap();
        this.childListeners = new HashMap();
        this.context = this.form.$context();
        this.activity = this.form.$context();
    }

    @SimpleFunction(description = "Initialize the Firebase Realtime Database component with your Firebase Core instance. This must be called before using any other database functions. Pass the Firebase Core component that you have already set up with your project credentials. Once initialized successfully, the FirebaseRealtimeDBInitialized event will trigger.")
    public void InitializeFirebaseRealtimeDB(Object obj) {
        if (obj instanceof FirebaseCore) {
            FirebaseApp firebaseAppInstance = ((FirebaseCore) obj).getFirebaseAppInstance();
            if (firebaseAppInstance == null) {
                FailedToInitialize("Firebase Core Component is not Initialized");
                return;
            }
            try {
                FirebaseDatabase firebaseDatabase = FirebaseDatabase.getInstance(firebaseAppInstance);
                this.firebaseDatabase = firebaseDatabase;
                this.databaseReference = firebaseDatabase.getReference();
                FirebaseRealtimeDBInitialized();
                return;
            } catch (Exception e) {
                FailedToInitialize("Firebase Realtime Database failed to Initialize: " + e.getMessage());
                return;
            }
        }
        FailedToInitialize("Invalid Firebase Core Component");
    }

    @SimpleEvent(description = "Event triggered when Firebase Realtime Database is successfully initialized")
    public void FirebaseRealtimeDBInitialized() {
        EventDispatcher.dispatchEvent(this, "FirebaseRealtimeDBInitialized", new Object[0]);
    }

    @SimpleEvent(description = "Event triggered when Firebase Realtime Database fails to initialize")
    public void FailedToInitialize(String str) {
        EventDispatcher.dispatchEvent(this, "FailedToInitialize", str);
    }

    @SimpleFunction(description = "Store any value (text, number, boolean, list, or object) at the specified path in your database. The 'tag' parameter acts as the path/location where data will be stored (e.g., 'users/john/age'). This completely replaces any existing data at that location. Use forward slashes to create nested paths. Triggers StoreValueSuccessful event on success or StoreValueFailed event on failure.")
    public void StoreValue(final String str, Object obj) {
        if (checkInitialized()) {
            try {
                this.databaseReference.child(str).setValue(convertToFirebaseType(obj)).addOnSuccessListener(new OnSuccessListener<Void>() { // from class: com.google.appinventor.components.runtime.FirebaseRealtimeDB.2
                    public void onSuccess(Void r2) {
                        FirebaseRealtimeDB.this.StoreValueSuccessful(str);
                    }
                }).addOnFailureListener(new OnFailureListener() { // from class: com.google.appinventor.components.runtime.FirebaseRealtimeDB.1
                    public void onFailure(@NonNull Exception exc) {
                        FirebaseRealtimeDB.this.StoreValueFailed(str, exc.getMessage());
                    }
                });
            } catch (Exception e) {
                ErrorOccurred("StoreValue", e.getMessage());
            }
        }
    }

    @SimpleFunction(description = "Update a single value at the specified path in your database. Similar to StoreValue but semantically indicates you're updating existing data. The 'tag' parameter specifies the exact path to update (e.g., 'users/john/email'). Completely replaces the value at that location. Triggers UpdateValueSuccessful or UpdateValueFailed events.")
    public void UpdateValue(final String str, Object obj) {
        if (checkInitialized()) {
            try {
                this.databaseReference.child(str).setValue(convertToFirebaseType(obj)).addOnSuccessListener(new OnSuccessListener<Void>() { // from class: com.google.appinventor.components.runtime.FirebaseRealtimeDB.4
                    public void onSuccess(Void r2) {
                        FirebaseRealtimeDB.this.UpdateValueSuccessful(str);
                    }
                }).addOnFailureListener(new OnFailureListener() { // from class: com.google.appinventor.components.runtime.FirebaseRealtimeDB.3
                    public void onFailure(@NonNull Exception exc) {
                        FirebaseRealtimeDB.this.UpdateValueFailed(str, exc.getMessage());
                    }
                });
            } catch (Exception e) {
                ErrorOccurred("UpdateValue", e.getMessage());
            }
        }
    }

    @SimpleFunction(description = "Update multiple fields at once under the specified path without overwriting the entire object. Use this when you want to update several properties of an object simultaneously. The 'updates' parameter should be a dictionary where keys are field names and values are the new data. For example, to update both name and age: create a dictionary with 'name':'John' and 'age':25. Only the specified fields are updated; other existing fields remain unchanged.")
    public void UpdateValues(final String str, YailDictionary yailDictionary) {
        if (checkInitialized()) {
            if (yailDictionary != null) {
                try {
                    if (!yailDictionary.isEmpty()) {
                        HashMap map = new HashMap();
                        for (Map.Entry<Object, Object> entry : yailDictionary.entrySet()) {
                            map.put(entry.getKey().toString(), convertToFirebaseType(entry.getValue()));
                        }
                        this.databaseReference.child(str).updateChildren(map).addOnSuccessListener(new OnSuccessListener<Void>() { // from class: com.google.appinventor.components.runtime.FirebaseRealtimeDB.6
                            public void onSuccess(Void r2) {
                                FirebaseRealtimeDB.this.UpdateValueSuccessful(str);
                            }
                        }).addOnFailureListener(new OnFailureListener() { // from class: com.google.appinventor.components.runtime.FirebaseRealtimeDB.5
                            public void onFailure(@NonNull Exception exc) {
                                FirebaseRealtimeDB.this.UpdateValueFailed(str, exc.getMessage());
                            }
                        });
                        return;
                    }
                } catch (Exception e) {
                    ErrorOccurred("UpdateValues", e.getMessage());
                    return;
                }
            }
            ErrorOccurred("UpdateValues", "Updates dictionary cannot be null or empty");
        }
    }

    @SimpleFunction(description = "Delete all data at the specified path in your database. The 'tag' parameter specifies which path to remove (e.g., 'users/john' removes the entire john user object). This operation cannot be undone, so use carefully. If the path doesn't exist, the operation still succeeds. Triggers RemoveValueSuccessful on success or RemoveValueFailed on failure.")
    public void RemoveValue(final String str) {
        if (checkInitialized()) {
            try {
                this.databaseReference.child(str).removeValue().addOnSuccessListener(new OnSuccessListener<Void>() { // from class: com.google.appinventor.components.runtime.FirebaseRealtimeDB.8
                    public void onSuccess(Void r2) {
                        FirebaseRealtimeDB.this.RemoveValueSuccessful(str);
                    }
                }).addOnFailureListener(new OnFailureListener() { // from class: com.google.appinventor.components.runtime.FirebaseRealtimeDB.7
                    public void onFailure(@NonNull Exception exc) {
                        FirebaseRealtimeDB.this.RemoveValueFailed(str, exc.getMessage());
                    }
                });
            } catch (Exception e) {
                ErrorOccurred("RemoveValue", e.getMessage());
            }
        }
    }

    @SimpleFunction(description = "Add a new item to a list at the specified path with an automatically generated unique key. Firebase creates a unique timestamp-based key for each pushed item, ensuring proper ordering and preventing conflicts. Perfect for adding new entries to lists like messages, posts, or user-generated content. Returns the generated key in the PushValueSuccessful event, which you can save for future reference.")
    public void PushValue(final String str, Object obj) {
        if (checkInitialized()) {
            try {
                final DatabaseReference databaseReferencePush = this.databaseReference.child(str).push();
                databaseReferencePush.setValue(convertToFirebaseType(obj)).addOnSuccessListener(new OnSuccessListener<Void>() { // from class: com.google.appinventor.components.runtime.FirebaseRealtimeDB.10
                    public void onSuccess(Void r3) {
                        FirebaseRealtimeDB.this.PushValueSuccessful(str, databaseReferencePush.getKey());
                    }
                }).addOnFailureListener(new OnFailureListener() { // from class: com.google.appinventor.components.runtime.FirebaseRealtimeDB.9
                    public void onFailure(@NonNull Exception exc) {
                        FirebaseRealtimeDB.this.PushValueFailed(str, exc.getMessage());
                    }
                });
            } catch (Exception e) {
                ErrorOccurred("PushValue", e.getMessage());
            }
        }
    }

    @SimpleFunction(description = "Add a new item to a list at the specified path using your own custom key instead of auto-generated one. Use this when you need predictable keys or want to ensure no duplicates (since using the same key twice overwrites). The final path becomes 'tag/key' where your data is stored. For example, tag='users' and key='john123' stores data at 'users/john123'. Triggers PushValueSuccessful or PushValueFailed events.")
    public void PushValueWithKey(final String str, final String str2, Object obj) {
        if (checkInitialized()) {
            try {
                this.databaseReference.child(str).child(str2).setValue(convertToFirebaseType(obj)).addOnSuccessListener(new OnSuccessListener<Void>() { // from class: com.google.appinventor.components.runtime.FirebaseRealtimeDB.12
                    public void onSuccess(Void r3) {
                        FirebaseRealtimeDB.this.PushValueSuccessful(str, str2);
                    }
                }).addOnFailureListener(new OnFailureListener() { // from class: com.google.appinventor.components.runtime.FirebaseRealtimeDB.11
                    public void onFailure(@NonNull Exception exc) {
                        FirebaseRealtimeDB.this.PushValueFailed(str, exc.getMessage());
                    }
                });
            } catch (Exception e) {
                ErrorOccurred("PushValueWithKey", e.getMessage());
            }
        }
    }

    @SimpleFunction(description = "Retrieve data from the specified path in your database one time (not real-time). Use this for one-off data reads when you don't need live updates. The 'tag' parameter specifies the path to read. If the path exists, GotValue event triggers with the data. If path doesn't exist, GotValue triggers with empty/null value. For real-time updates that automatically notify you of changes, use StartListening instead.")
    public void GetValue(String str) {
        GetValue(str, null);
    }

    @SimpleFunction(description = "Retrieve data from the specified path, with a fallback value if the path doesn't exist. This version allows you to specify a default value to return when the requested path has no data. Useful for providing default settings or handling missing user preferences gracefully. The GotValue event will trigger with either the actual data or your specified default value.")
    public void GetValue(final String str, final Object obj) {
        if (checkInitialized()) {
            try {
                this.databaseReference.child(str).get().addOnCompleteListener(new OnCompleteListener<DataSnapshot>() { // from class: com.google.appinventor.components.runtime.FirebaseRealtimeDB.13
                    public void onComplete(@NonNull Task<DataSnapshot> task) {
                        Object objConvertFromFirebaseType;
                        if (task.isSuccessful()) {
                            DataSnapshot dataSnapshot = (DataSnapshot) task.getResult();
                            if (dataSnapshot.exists()) {
                                objConvertFromFirebaseType = FirebaseRealtimeDB.this.convertFromFirebaseType(dataSnapshot.getValue());
                            } else {
                                objConvertFromFirebaseType = obj;
                            }
                            FirebaseRealtimeDB.this.GotValue(str, objConvertFromFirebaseType);
                            return;
                        }
                        FirebaseRealtimeDB.this.GetValueFailed(str, task.getException() != null ? task.getException().getMessage() : "Unknown error");
                    }
                });
            } catch (Exception e) {
                ErrorOccurred("GetValue", e.getMessage());
            }
        }
    }

    @SimpleFunction(description = "Start listening for real-time changes to data at the specified path. Once activated, any changes to the data (by any user, from any device) will automatically trigger the DataChanged event. Perfect for live chat, collaborative editing, or any feature requiring instant updates. The listener stays active until you call StopListening. Only one listener per path is allowed - calling this again on the same path replaces the previous listener.")
    public void StartListening(final String str) {
        if (checkInitialized()) {
            try {
                stopListening(str);
                DatabaseReference databaseReferenceChild = this.databaseReference.child(str);
                ValueEventListener valueEventListener = new ValueEventListener() { // from class: com.google.appinventor.components.runtime.FirebaseRealtimeDB.14
                    public void onDataChange(@NonNull DataSnapshot dataSnapshot) {
                        FirebaseRealtimeDB.this.DataChanged(str, FirebaseRealtimeDB.this.convertFromFirebaseType(dataSnapshot.getValue()));
                    }

                    public void onCancelled(@NonNull DatabaseError databaseError) {
                        FirebaseRealtimeDB.this.ListeningCancelled(str, databaseError.getMessage());
                    }
                };
                this.valueListeners.put(str, valueEventListener);
                databaseReferenceChild.addValueEventListener(valueEventListener);
                ListeningStarted(str);
            } catch (Exception e) {
                ErrorOccurred("StartListening", e.getMessage());
            }
        }
    }

    @SimpleFunction(description = "Stop receiving real-time updates for the specified path. Call this to conserve bandwidth and battery when you no longer need live updates for a particular path. Good practice to stop listeners when users navigate away from screens or when data is no longer needed. If no listener exists for the path, this operation does nothing (no error occurs).")
    public void StopListening(String str) {
        if (checkInitialized()) {
            stopListening(str);
        }
    }

    @SimpleFunction(description = "Start listening for child-level changes (add, remove, modify, move) at the specified path. Unlike StartListening which notifies of any changes, this provides detailed events for each child item. Triggers separate events: ChildAdded, ChildChanged, ChildRemoved, and ChildMoved. Perfect for managing lists where you need to know exactly what happened to each item, like updating a list view efficiently. Use for chat message lists, user lists, or any collection where individual item changes matter.")
    public void StartChildListening(final String str) {
        if (checkInitialized()) {
            try {
                stopChildListening(str);
                DatabaseReference databaseReferenceChild = this.databaseReference.child(str);
                ChildEventListener childEventListener = new ChildEventListener() { // from class: com.google.appinventor.components.runtime.FirebaseRealtimeDB.15
                    public void onChildAdded(@NonNull DataSnapshot dataSnapshot, String str2) {
                        FirebaseRealtimeDB.this.ChildAdded(str, dataSnapshot.getKey(), FirebaseRealtimeDB.this.convertFromFirebaseType(dataSnapshot.getValue()), str2);
                    }

                    public void onChildChanged(@NonNull DataSnapshot dataSnapshot, String str2) {
                        FirebaseRealtimeDB.this.ChildChanged(str, dataSnapshot.getKey(), FirebaseRealtimeDB.this.convertFromFirebaseType(dataSnapshot.getValue()), str2);
                    }

                    public void onChildRemoved(@NonNull DataSnapshot dataSnapshot) {
                        FirebaseRealtimeDB.this.ChildRemoved(str, dataSnapshot.getKey(), FirebaseRealtimeDB.this.convertFromFirebaseType(dataSnapshot.getValue()));
                    }

                    public void onChildMoved(@NonNull DataSnapshot dataSnapshot, String str2) {
                        FirebaseRealtimeDB.this.ChildMoved(str, dataSnapshot.getKey(), FirebaseRealtimeDB.this.convertFromFirebaseType(dataSnapshot.getValue()), str2);
                    }

                    public void onCancelled(@NonNull DatabaseError databaseError) {
                        FirebaseRealtimeDB.this.ChildListeningCancelled(str, databaseError.getMessage());
                    }
                };
                this.childListeners.put(str, childEventListener);
                databaseReferenceChild.addChildEventListener(childEventListener);
                ChildListeningStarted(str);
            } catch (Exception e) {
                ErrorOccurred("StartChildListening", e.getMessage());
            }
        }
    }

    @SimpleFunction(description = "Stop receiving child-level change notifications for the specified path. Removes the child event listener that was created by StartChildListening. Call this when you no longer need detailed information about individual child changes. Good practice for memory management and reducing unnecessary network traffic.")
    public void StopChildListening(String str) {
        if (checkInitialized()) {
            stopChildListening(str);
        }
    }

    @SimpleFunction(description = "Query and sort data by the value of a specific child property. Use this to retrieve data ordered by a particular field within each item. For example, if storing users with 'age' property, use 'age' as childKey to get users sorted by age. Results are returned in the QueryResult event as a sorted list. Combine with limit functions for pagination. Note: The child key must exist in the items you're sorting, or those items will appear first in results.")
    public void QueryOrderByChild(String str, String str2) {
        if (checkInitialized()) {
            try {
                executeQuery(this.databaseReference.child(str).orderByChild(str2), str, "OrderByChild");
            } catch (Exception e) {
                ErrorOccurred("QueryOrderByChild", e.getMessage());
            }
        }
    }

    @SimpleFunction(description = "Query and sort data by the keys (names) of child items in alphabetical order. Useful when your child keys are meaningful (like usernames, dates, or IDs) and you want them sorted alphabetically. For timestamp-based keys, this provides chronological ordering. Results appear in QueryResult event. Commonly used with auto-generated Firebase keys since they sort chronologically by creation time.")
    public void QueryOrderByKey(String str) {
        if (checkInitialized()) {
            try {
                executeQuery(this.databaseReference.child(str).orderByKey(), str, "OrderByKey");
            } catch (Exception e) {
                ErrorOccurred("QueryOrderByKey", e.getMessage());
            }
        }
    }

    @SimpleFunction(description = "Query and sort data by the actual values stored at each child location. Use this when each child contains a simple value (string, number) that you want to sort by. For example, if storing a list of scores where each child is just a number, this sorts by those scores. Results are returned in QueryResult event in ascending order. Works best with simple data types.")
    public void QueryOrderByValue(String str) {
        if (checkInitialized()) {
            try {
                executeQuery(this.databaseReference.child(str).orderByValue(), str, "OrderByValue");
            } catch (Exception e) {
                ErrorOccurred("QueryOrderByValue", e.getMessage());
            }
        }
    }

    @SimpleFunction(description = "Limit query results to the first N items in the sorted order. Must be combined with an ordering function (QueryOrderByChild, QueryOrderByKey, or QueryOrderByValue). Perfect for implementing 'top 10' lists, recent items, or pagination where you want the first page of results. For example, use with QueryOrderByChild('score') and limit=5 to get the 5 lowest scores.")
    public void QueryLimitToFirst(String str, int i) {
        if (checkInitialized()) {
            try {
                executeQuery(this.databaseReference.child(str).limitToFirst(i), str, "LimitToFirst");
            } catch (Exception e) {
                ErrorOccurred("QueryLimitToFirst", e.getMessage());
            }
        }
    }

    @SimpleFunction(description = "Limit query results to the last N items in the sorted order. Must be combined with an ordering function to specify the sort criteria. Perfect for getting the 'latest' or 'highest' items, like recent messages or top scores. For example, use with QueryOrderByChild('timestamp') and limit=10 to get the 10 most recent items. Note: 'Last' refers to the end of the sorted list, so with ascending order this gives you the highest values.")
    public void QueryLimitToLast(String str, int i) {
        if (checkInitialized()) {
            try {
                executeQuery(this.databaseReference.child(str).limitToLast(i), str, "LimitToLast");
            } catch (Exception e) {
                ErrorOccurred("QueryLimitToLast", e.getMessage());
            }
        }
    }

    @SimpleFunction(description = "Atomically increment a numeric value by the specified amount, handling concurrent users safely. Perfect for counters, scores, or any number that multiple users might modify simultaneously. Firebase ensures the increment happens atomically, preventing race conditions where simultaneous updates could cause data loss. If the path doesn't exist, it starts at 0. The 'incrementBy' can be positive or negative. Triggers TransactionSuccessful with the final value, or TransactionFailed if something goes wrong.")
    public void RunTransactionIncrement(final String str, final Object obj) {
        if (checkInitialized()) {
            try {
                this.databaseReference.child(str).runTransaction(new Transaction.Handler() { // from class: com.google.appinventor.components.runtime.FirebaseRealtimeDB.16
                    @NonNull
                    public Transaction.Result doTransaction(@NonNull MutableData mutableData) {
                        Object value = mutableData.getValue();
                        if (value == null) {
                            mutableData.setValue(Double.valueOf(FirebaseRealtimeDB.this.convertToNumber(obj)));
                        } else {
                            mutableData.setValue(Double.valueOf(FirebaseRealtimeDB.this.convertToNumber(obj) + FirebaseRealtimeDB.this.convertToNumber(value)));
                        }
                        return Transaction.success(mutableData);
                    }

                    public void onComplete(DatabaseError databaseError, boolean z, DataSnapshot dataSnapshot) {
                        if (databaseError == null && z) {
                            FirebaseRealtimeDB.this.TransactionSuccessful(str, FirebaseRealtimeDB.this.convertFromFirebaseType(dataSnapshot.getValue()));
                        } else {
                            FirebaseRealtimeDB.this.TransactionFailed(str, databaseError != null ? databaseError.getMessage() : "Transaction not committed");
                        }
                    }
                });
            } catch (Exception e) {
                ErrorOccurred("RunTransactionIncrement", e.getMessage());
            }
        }
    }

    @SimpleFunction(description = "Update data only if the current value matches what you expect, preventing conflicts. This conditional update is perfect for implementing optimistic concurrency control. For example, only update a user's status if it's currently 'online', or only increment a counter if it's below a limit. If the current value matches 'expectedValue', it gets replaced with 'newValue'. If not, the transaction aborts safely. Triggers TransactionSuccessful if updated, TransactionAborted if condition not met, or TransactionFailed on error.")
    public void RunTransactionConditional(final String str, final Object obj, final Object obj2) {
        if (checkInitialized()) {
            try {
                this.databaseReference.child(str).runTransaction(new Transaction.Handler() { // from class: com.google.appinventor.components.runtime.FirebaseRealtimeDB.17
                    @NonNull
                    public Transaction.Result doTransaction(@NonNull MutableData mutableData) {
                        if (FirebaseRealtimeDB.this.valuesEqual(FirebaseRealtimeDB.this.convertFromFirebaseType(mutableData.getValue()), obj)) {
                            mutableData.setValue(FirebaseRealtimeDB.this.convertToFirebaseType(obj2));
                            return Transaction.success(mutableData);
                        }
                        return Transaction.abort();
                    }

                    public void onComplete(DatabaseError databaseError, boolean z, DataSnapshot dataSnapshot) {
                        if (databaseError != null) {
                            FirebaseRealtimeDB.this.TransactionFailed(str, databaseError.getMessage());
                        } else if (z) {
                            FirebaseRealtimeDB.this.TransactionSuccessful(str, FirebaseRealtimeDB.this.convertFromFirebaseType(dataSnapshot.getValue()));
                        } else {
                            FirebaseRealtimeDB.this.TransactionAborted(str, "Current value did not match expected value");
                        }
                    }
                });
            } catch (Exception e) {
                ErrorOccurred("RunTransactionConditional", e.getMessage());
            }
        }
    }

    @SimpleFunction(description = "Safely add an item to the end of a list, even if multiple users are adding simultaneously. This ensures items are properly appended without overwriting each other's additions. If the path doesn't contain a list, it creates a new list. If it contains a non-list value, that value becomes the first item and your value is appended as the second. Perfect for chat messages, notifications, or any growing list where order matters.")
    public void RunTransactionAppend(final String str, final Object obj) {
        if (checkInitialized()) {
            try {
                this.databaseReference.child(str).runTransaction(new Transaction.Handler() { // from class: com.google.appinventor.components.runtime.FirebaseRealtimeDB.18
                    @NonNull
                    public Transaction.Result doTransaction(@NonNull MutableData mutableData) {
                        YailList yailListMakeList;
                        Object value = mutableData.getValue();
                        if (value == null) {
                            yailListMakeList = new YailList();
                        } else if (value instanceof List) {
                            yailListMakeList = YailList.makeList((List) value);
                        } else {
                            yailListMakeList = YailList.makeList(new Object[]{value});
                        }
                        Object[] objArr = new Object[yailListMakeList.size() + 1];
                        System.arraycopy(yailListMakeList.toArray(), 0, objArr, 0, yailListMakeList.size());
                        objArr[yailListMakeList.size()] = obj;
                        mutableData.setValue(FirebaseRealtimeDB.this.convertToFirebaseType(YailList.makeList(objArr)));
                        return Transaction.success(mutableData);
                    }

                    public void onComplete(DatabaseError databaseError, boolean z, DataSnapshot dataSnapshot) {
                        if (databaseError == null && z) {
                            FirebaseRealtimeDB.this.TransactionSuccessful(str, FirebaseRealtimeDB.this.convertFromFirebaseType(dataSnapshot.getValue()));
                        } else {
                            FirebaseRealtimeDB.this.TransactionFailed(str, databaseError != null ? databaseError.getMessage() : "Transaction not committed");
                        }
                    }
                });
            } catch (Exception e) {
                ErrorOccurred("RunTransactionAppend", e.getMessage());
            }
        }
    }

    @SimpleFunction(description = "Increment a counter by 1 in a thread-safe manner, perfect for like counts, view counts, or visitor counters. This is a convenience function that calls RunTransactionIncrement with a value of 1. Multiple users can call this simultaneously without data corruption or lost increments. If the counter doesn't exist, it starts at 1. Triggers TransactionSuccessful with the new count.")
    public void RunTransactionCounter(String str) {
        RunTransactionIncrement(str, 1);
    }

    @SimpleFunction(description = "Remove all data at the specified path (compatibility function matching the original FirebaseDB component). This function provides the same behavior as RemoveValue but with the familiar name from the classic FirebaseDB component. Use this if you're migrating from the old FirebaseDB component and want to keep your existing block names. Completely deletes the data at the specified path. Triggers RemoveValueSuccessful or RemoveValueFailed events.")
    public void ClearTag(String str) {
        RemoveValue(str);
    }

    @SimpleFunction(description = "Add an item to the end of a list atomically, ensuring thread-safety when multiple users are adding items. This is similar to RunTransactionAppend but provides compatibility with the original FirebaseDB component naming. Creates a new list if none exists, or converts existing non-list values into a list with your new item appended. Perfect for building features like comment lists, activity feeds, or any growing collection of items.")
    public void AppendValue(final String str, final Object obj) {
        if (checkInitialized()) {
            try {
                this.databaseReference.child(str).runTransaction(new Transaction.Handler() { // from class: com.google.appinventor.components.runtime.FirebaseRealtimeDB.19
                    @NonNull
                    public Transaction.Result doTransaction(@NonNull MutableData mutableData) {
                        YailList yailListMakeList;
                        Object value = mutableData.getValue();
                        if (value == null) {
                            yailListMakeList = new YailList();
                        } else {
                            Object objConvertFromFirebaseType = FirebaseRealtimeDB.this.convertFromFirebaseType(value);
                            if (objConvertFromFirebaseType instanceof YailList) {
                                yailListMakeList = (YailList) objConvertFromFirebaseType;
                            } else if (objConvertFromFirebaseType instanceof List) {
                                yailListMakeList = YailList.makeList((List) objConvertFromFirebaseType);
                            } else {
                                yailListMakeList = YailList.makeList(new Object[]{objConvertFromFirebaseType});
                            }
                        }
                        Object[] objArr = new Object[yailListMakeList.size() + 1];
                        System.arraycopy(yailListMakeList.toArray(), 0, objArr, 0, yailListMakeList.size());
                        objArr[yailListMakeList.size()] = obj;
                        mutableData.setValue(FirebaseRealtimeDB.this.convertToFirebaseType(YailList.makeList(objArr)));
                        return Transaction.success(mutableData);
                    }

                    public void onComplete(DatabaseError databaseError, boolean z, DataSnapshot dataSnapshot) {
                        if (databaseError == null && z) {
                            FirebaseRealtimeDB firebaseRealtimeDB = FirebaseRealtimeDB.this;
                            firebaseRealtimeDB.TransactionSuccessful(str, firebaseRealtimeDB.convertFromFirebaseType(dataSnapshot.getValue()));
                        } else {
                            FirebaseRealtimeDB.this.TransactionFailed(str, databaseError != null ? databaseError.getMessage() : "Transaction not committed");
                        }
                    }
                });
            } catch (Exception e) {
                ErrorOccurred("AppendValue", e.getMessage());
            }
        }
    }

    @SimpleFunction(description = "Atomically remove and return the first item from a list, useful for implementing queues or processing lists. This safely removes the first element even if multiple users are accessing the list simultaneously. Perfect for implementing job queues, message processing, or any first-in-first-out (FIFO) system. If the list is empty or the path doesn't contain a list, the operation fails gracefully. The removed value is returned in the FirstRemoved event.")
    public void RemoveFirst(String str) {
        if (checkInitialized()) {
            try {
                DatabaseReference databaseReferenceChild = this.databaseReference.child(str);
                final AtomicReference atomicReference = new AtomicReference();
                databaseReferenceChild.runTransaction(new Transaction.Handler() { // from class: com.google.appinventor.components.runtime.FirebaseRealtimeDB.20
                    @NonNull
                    public Transaction.Result doTransaction(@NonNull MutableData mutableData) {
                        YailList yailListMakeList;
                        Object value = mutableData.getValue();
                        if (value == null) {
                            return Transaction.abort();
                        }
                        Object objConvertFromFirebaseType = FirebaseRealtimeDB.this.convertFromFirebaseType(value);
                        if (objConvertFromFirebaseType instanceof YailList) {
                            yailListMakeList = (YailList) objConvertFromFirebaseType;
                        } else if (objConvertFromFirebaseType instanceof List) {
                            yailListMakeList = YailList.makeList((List) objConvertFromFirebaseType);
                        } else {
                            return Transaction.abort();
                        }
                        if (yailListMakeList.size() == 0) {
                            return Transaction.abort();
                        }
                        atomicReference.set(yailListMakeList.getObject(0));
                        Object[] objArr = new Object[yailListMakeList.size() - 1];
                        System.arraycopy(yailListMakeList.toArray(), 1, objArr, 0, yailListMakeList.size() - 1);
                        mutableData.setValue(FirebaseRealtimeDB.this.convertToFirebaseType(YailList.makeList(objArr)));
                        return Transaction.success(mutableData);
                    }

                    public void onComplete(DatabaseError databaseError, boolean z, DataSnapshot dataSnapshot) {
                        String message;
                        if (databaseError == null && z) {
                            FirebaseRealtimeDB.this.FirstRemoved(atomicReference.get());
                            return;
                        }
                        if (databaseError != null) {
                            message = databaseError.getMessage();
                        } else {
                            message = "The list was empty or transaction failed";
                        }
                        FirebaseRealtimeDB.this.ErrorOccurred("RemoveFirst", message);
                    }
                });
            } catch (Exception e) {
                ErrorOccurred("RemoveFirst", e.getMessage());
            }
        }
    }

    @SimpleFunction(description = "Get a list of all top-level paths (tags) in your database, useful for discovering what data exists. This returns the names of all immediate children at the root level of your database. Perfect for building navigation, showing available categories, or implementing data management interfaces. The list is returned in the GotTagList event. Note: This only shows direct children, not nested paths.")
    public void GetTagList() {
        if (checkInitialized()) {
            try {
                this.databaseReference.addListenerForSingleValueEvent(new ValueEventListener() { // from class: com.google.appinventor.components.runtime.FirebaseRealtimeDB.21
                    public void onDataChange(@NonNull DataSnapshot dataSnapshot) {
                        ArrayList arrayList = new ArrayList();
                        Iterator it = dataSnapshot.getChildren().iterator();
                        while (it.hasNext()) {
                            arrayList.add(((DataSnapshot) it.next()).getKey());
                        }
                        FirebaseRealtimeDB.this.GotTagList(YailList.makeList((List) arrayList));
                    }

                    public void onCancelled(@NonNull DatabaseError databaseError) {
                        FirebaseRealtimeDB.this.ErrorOccurred("GetTagList", databaseError.getMessage());
                    }
                });
            } catch (Exception e) {
                ErrorOccurred("GetTagList", e.getMessage());
            }
        }
    }

    @SimpleFunction(description = "Get a list of all child paths (tags) under the specified tag in your database. This returns the names of all immediate children under the given tag, allowing you to explore nested data structures. The 'tag' parameter specifies which path to examine (e.g., 'users' to get all user IDs, 'posts/user123' to get all posts by user123). Perfect for building dynamic navigation, showing available subcategories, or implementing hierarchical data browsing. The list is returned in the GotTagListFromTag event. Note: This only shows direct children, not deeper nested paths.")
    public void GetTagListFromTag(final String str) {
        if (checkInitialized()) {
            try {
                this.databaseReference.child(str).addListenerForSingleValueEvent(new ValueEventListener() { // from class: com.google.appinventor.components.runtime.FirebaseRealtimeDB.22
                    public void onDataChange(@NonNull DataSnapshot dataSnapshot) {
                        ArrayList arrayList = new ArrayList();
                        Iterator it = dataSnapshot.getChildren().iterator();
                        while (it.hasNext()) {
                            arrayList.add(((DataSnapshot) it.next()).getKey());
                        }
                        FirebaseRealtimeDB.this.GotTagListFromTag(str, YailList.makeList((List) arrayList));
                    }

                    public void onCancelled(@NonNull DatabaseError databaseError) {
                        FirebaseRealtimeDB.this.ErrorOccurred("GetTagListFromTag", databaseError.getMessage());
                    }
                });
            } catch (Exception e) {
                ErrorOccurred("GetTagListFromTag", e.getMessage());
            }
        }
    }

    @SimpleFunction(description = "Placeholder function for compatibility with the original FirebaseDB component. Modern Firebase authentication should be handled through the separate FirebaseAuth component in Niotron. This function doesn't perform any actual authentication operations - it's only provided for backward compatibility when migrating projects from the classic FirebaseDB component.")
    public void Unauthenticate() {
        Log.i("FirebaseRealtimeDB", "Unauthenticate called - use FirebaseAuth component for authentication management");
    }

    @SimpleFunction(description = "Enable offline data persistence, allowing your app to work even when users lose internet connection. When enabled, Firebase keeps a local copy of data that your app has read, and writes are cached until reconnection. Must be called before any database operations. Perfect for apps that need to work offline or in areas with poor connectivity. Note: This affects the entire Firebase Database instance and should only be called once per app session.")
    public void EnableOfflinePersistence() {
        try {
            FirebaseDatabase.getInstance().setPersistenceEnabled(true);
            OfflinePersistenceEnabled();
        } catch (Exception e) {
            ErrorOccurred("EnableOfflinePersistence", e.getMessage());
        }
    }

    @SimpleFunction(description = "Keep specific data synchronized and available offline, ensuring this data is always accessible. When enabled for a path, Firebase automatically downloads and keeps this data updated locally. Perfect for critical data like user profiles, app configuration, or frequently accessed content. Set 'keepSynced' to true to enable or false to disable. Use sparingly as it consumes local storage and bandwidth.")
    public void KeepSynced(String str, boolean z) {
        if (checkInitialized()) {
            try {
                this.databaseReference.child(str).keepSynced(z);
                if (z) {
                    KeepSyncedEnabled(str);
                } else {
                    KeepSyncedDisabled(str);
                }
            } catch (Exception e) {
                ErrorOccurred("KeepSynced", e.getMessage());
            }
        }
    }

    @SimpleFunction(description = "Manually disconnect from Firebase servers while keeping the app running. Useful for testing offline behavior, reducing battery usage during inactive periods, or implementing custom connectivity logic. All pending writes are queued and will be sent when you call GoOnline. Listeners continue working with local cached data. The app will automatically reconnect if offline persistence is enabled and data is accessed.")
    public void GoOffline() {
        try {
            FirebaseDatabase.getInstance().goOffline();
            WentOffline();
        } catch (Exception e) {
            ErrorOccurred("GoOffline", e.getMessage());
        }
    }

    @SimpleFunction(description = "Manually reconnect to Firebase servers after being offline. Call this after GoOffline to resume normal online operations. All queued writes will be sent to the server, and real-time listeners will resume receiving live updates. Firebase also automatically reconnects when network connectivity is restored, so manual calling is optional.")
    public void GoOnline() {
        try {
            FirebaseDatabase.getInstance().goOnline();
            WentOnline();
        } catch (Exception e) {
            ErrorOccurred("GoOnline", e.getMessage());
        }
    }

    @SimpleFunction(description = "Generate a unique key that can be used for creating new items in your database. These keys are timestamp-based and guaranteed to be unique, making them perfect for creating new records. Use this when you want to generate a key in advance before pushing data, or when implementing custom push logic. The generated key follows Firebase's standard format and will sort chronologically.")
    public String GenerateKey() {
        if (!checkInitialized()) {
            return "";
        }
        try {
            return this.databaseReference.push().getKey();
        } catch (Exception e) {
            ErrorOccurred("GenerateKey", e.getMessage());
            return "";
        }
    }

    @SimpleFunction(description = "Get the current server timestamp from Firebase and store it at the specified path. This provides a reliable server-side timestamp that's consistent across all users regardless of their device's clock settings. Perfect for recording when events occurred, implementing 'last updated' fields, or sorting by creation time. The timestamp is returned in the ServerTimestampReceived event as a string representing milliseconds since epoch.")
    public void GetServerTimestamp(final String str) {
        if (checkInitialized()) {
            try {
                final DatabaseReference databaseReferenceChild = this.databaseReference.child(str);
                databaseReferenceChild.setValue(ServerValue.TIMESTAMP).addOnSuccessListener(new OnSuccessListener<Void>() { // from class: com.google.appinventor.components.runtime.FirebaseRealtimeDB.24
                    public void onSuccess(Void r2) {
                        databaseReferenceChild.get().addOnCompleteListener(new OnCompleteListener<DataSnapshot>() { // from class: com.google.appinventor.components.runtime.FirebaseRealtimeDB.24.1
                            public void onComplete(@NonNull Task<DataSnapshot> task) {
                                if (task.isSuccessful()) {
                                    Object value = ((DataSnapshot) task.getResult()).getValue();
                                    AnonymousClass24 anonymousClass24 = AnonymousClass24.this;
                                    FirebaseRealtimeDB.this.ServerTimestampReceived(str, value != null ? value.toString() : "");
                                }
                            }
                        });
                    }
                }).addOnFailureListener(new OnFailureListener() { // from class: com.google.appinventor.components.runtime.FirebaseRealtimeDB.23
                    public void onFailure(@NonNull Exception exc) {
                        FirebaseRealtimeDB.this.ErrorOccurred("GetServerTimestamp", exc.getMessage());
                    }
                });
            } catch (Exception e) {
                ErrorOccurred("GetServerTimestamp", e.getMessage());
            }
        }
    }

    @SimpleEvent(description = "Triggered when data is successfully stored at the specified path using StoreValue. The 'tag' parameter indicates which path was successfully updated. This confirms your data has been written to Firebase servers and synchronized to all connected devices.")
    public void StoreValueSuccessful(String str) {
        EventDispatcher.dispatchEvent(this, "StoreValueSuccessful", str);
    }

    @SimpleEvent(description = "Triggered when storing data fails due to network issues, permission problems, or invalid data. The 'tag' parameter shows which path failed, and 'errorMessage' provides details about the failure. Common causes include being offline, insufficient database permissions, or invalid JSON data.")
    public void StoreValueFailed(String str, String str2) {
        EventDispatcher.dispatchEvent(this, "StoreValueFailed", str, str2);
    }

    @SimpleEvent(description = "Triggered when data is successfully updated at the specified path using UpdateValue or UpdateValues. The 'tag' parameter indicates which path was successfully modified. This confirms your update has been applied to Firebase servers and synchronized across all devices.")
    public void UpdateValueSuccessful(String str) {
        EventDispatcher.dispatchEvent(this, "UpdateValueSuccessful", str);
    }

    @SimpleEvent(description = "Triggered when updating data fails due to network issues, permission problems, or invalid data. The 'tag' parameter shows which path failed to update, and 'errorMessage' explains the failure reason. Common causes include being offline, insufficient database permissions, or malformed update data.")
    public void UpdateValueFailed(String str, String str2) {
        EventDispatcher.dispatchEvent(this, "UpdateValueFailed", str, str2);
    }

    @SimpleEvent(description = "Triggered when data is successfully deleted from the specified path using RemoveValue or ClearTag. The 'tag' parameter indicates which path was successfully removed from the database. This confirms the deletion has been processed by Firebase servers and applied across all connected devices.")
    public void RemoveValueSuccessful(String str) {
        EventDispatcher.dispatchEvent(this, "RemoveValueSuccessful", str);
    }

    @SimpleEvent(description = "Triggered when deleting data fails due to network issues, permission problems, or database rules. The 'tag' parameter shows which path failed to be removed, and 'errorMessage' provides failure details. Common causes include being offline, insufficient delete permissions, or database security rules preventing deletion.")
    public void RemoveValueFailed(String str, String str2) {
        EventDispatcher.dispatchEvent(this, "RemoveValueFailed", str, str2);
    }

    @SimpleEvent(description = "Triggered when data is successfully pushed to the database using PushValue or PushValueWithKey. The 'tag' parameter shows where the data was pushed, and 'key' provides the unique identifier for the new item. Save this key if you need to reference, update, or delete this specific item later.")
    public void PushValueSuccessful(String str, String str2) {
        EventDispatcher.dispatchEvent(this, "PushValueSuccessful", str, str2);
    }

    @SimpleEvent(description = "Triggered when pushing data fails due to network issues, permission problems, or invalid data. The 'tag' parameter shows which path failed, and 'errorMessage' provides details about the failure. Common causes include being offline, insufficient write permissions, or database rules rejecting the data.")
    public void PushValueFailed(String str, String str2) {
        EventDispatcher.dispatchEvent(this, "PushValueFailed", str, str2);
    }

    @SimpleEvent(description = "Triggered when data is successfully retrieved from the database using GetValue. The 'tag' parameter shows which path was read, and 'value' contains the actual data from that location. If the path doesn't exist, 'value' will be empty/null or the default value you specified.")
    public void GotValue(String str, Object obj) {
        EventDispatcher.dispatchEvent(this, "GotValue", str, obj);
    }

    @SimpleEvent(description = "Triggered when retrieving data fails due to network issues, permission problems, or database errors. The 'tag' parameter shows which path failed to read, and 'errorMessage' explains why the read operation failed. Common causes include being offline, insufficient read permissions, or invalid path names.")
    public void GetValueFailed(String str, String str2) {
        EventDispatcher.dispatchEvent(this, "GetValueFailed", str, str2);
    }

    @SimpleEvent(description = "Triggered whenever data changes at a path you're listening to with StartListening. The 'tag' parameter shows which path changed, and 'value' contains the new data at that location. This fires immediately when you start listening (with current data) and then again whenever the data changes. Perfect for updating your app's UI in real-time as data changes.")
    public void DataChanged(String str, Object obj) {
        EventDispatcher.dispatchEvent(this, "DataChanged", str, obj);
    }

    @SimpleEvent(description = "Triggered when you successfully start listening for real-time changes at a path using StartListening. The 'tag' parameter shows which path is now being monitored for changes. After this event, you'll receive DataChanged events whenever the data at this path is modified.")
    public void ListeningStarted(String str) {
        EventDispatcher.dispatchEvent(this, "ListeningStarted", str);
    }

    @SimpleEvent(description = "Triggered when real-time listening is cancelled due to permission changes, network issues, or database errors. The 'tag' parameter shows which path stopped being monitored, and 'errorMessage' explains why listening was cancelled. Common causes include database permission changes, network connectivity loss, or database rule violations.")
    public void ListeningCancelled(String str, String str2) {
        EventDispatcher.dispatchEvent(this, "ListeningCancelled", str, str2);
    }

    @SimpleEvent(description = "Triggered when a new child item is added to a path you're monitoring with StartChildListening. The 'tag' shows which parent path the child was added to, 'key' is the new child's unique identifier, 'value' contains the new child's data, and 'previousChildName' indicates where in the list it was inserted. Perfect for adding new items to lists or collections in your app's UI.")
    public void ChildAdded(String str, String str2, Object obj, String str3) {
        if (str3 == null) {
            str3 = "";
        }
        EventDispatcher.dispatchEvent(this, "ChildAdded", str, str2, obj, str3);
    }

    @SimpleEvent(description = "Triggered when an existing child item is modified at a path you're monitoring with StartChildListening. The 'tag' shows which parent path contains the changed child, 'key' identifies which child was modified, 'value' contains the updated data, and 'previousChildName' shows the child's position in the list. Perfect for updating specific items in lists without refreshing the entire list.")
    public void ChildChanged(String str, String str2, Object obj, String str3) {
        if (str3 == null) {
            str3 = "";
        }
        EventDispatcher.dispatchEvent(this, "ChildChanged", str, str2, obj, str3);
    }

    @SimpleEvent(description = "Triggered when a child item is deleted from a path you're monitoring with StartChildListening. The 'tag' shows which parent path the child was removed from, 'key' identifies which child was deleted, and 'value' contains the data that was removed (useful for undo functionality). Perfect for removing items from lists in your app's UI when they're deleted from the database.")
    public void ChildRemoved(String str, String str2, Object obj) {
        EventDispatcher.dispatchEvent(this, "ChildRemoved", str, str2, obj);
    }

    @SimpleEvent(description = "Triggered when a child item changes position in an ordered list you're monitoring with StartChildListening. The 'tag' shows which parent path contains the moved child, 'key' identifies which child was moved, 'value' contains the child's data, and 'previousChildName' shows its new position in the list. This happens when using ordered queries and the sort criteria changes for an item.")
    public void ChildMoved(String str, String str2, Object obj, String str3) {
        if (str3 == null) {
            str3 = "";
        }
        EventDispatcher.dispatchEvent(this, "ChildMoved", str, str2, obj, str3);
    }

    @SimpleEvent(description = "Triggered when you successfully start monitoring child changes at a path using StartChildListening. The 'tag' parameter shows which path is now being monitored for child-level changes. After this event, you'll receive ChildAdded, ChildChanged, ChildRemoved, and ChildMoved events as appropriate.")
    public void ChildListeningStarted(String str) {
        EventDispatcher.dispatchEvent(this, "ChildListeningStarted", str);
    }

    @SimpleEvent(description = "Triggered when child listening is cancelled due to permission changes, network issues, or database errors. The 'tag' parameter shows which path stopped being monitored for child changes, and 'errorMessage' explains the cancellation reason. Common causes include database permission changes, network connectivity loss, or database rule violations.")
    public void ChildListeningCancelled(String str, String str2) {
        EventDispatcher.dispatchEvent(this, "ChildListeningCancelled", str, str2);
    }

    @SimpleEvent(description = "Triggered when a database query returns results from functions like QueryOrderByChild, QueryOrderByKey, etc. The 'tag' shows which path was queried, 'queryType' indicates which type of query was performed, and 'results' contains a list of objects with 'key' and 'value' properties for each matching item. Results are returned in the order specified by your query (sorted by child, key, or value).")
    public void QueryResult(String str, String str2, YailList yailList) {
        EventDispatcher.dispatchEvent(this, "QueryResult", str, str2, yailList);
    }

    @SimpleEvent(description = "Triggered when a database query fails due to network issues, permission problems, or invalid query parameters. The 'tag' shows which path was being queried, 'queryType' indicates which query failed, and 'errorMessage' provides details about why the query couldn't be completed. Common causes include being offline, insufficient read permissions, or invalid sort criteria.")
    public void QueryFailed(String str, String str2, String str3) {
        EventDispatcher.dispatchEvent(this, "QueryFailed", str, str2, str3);
    }

    @SimpleEvent(description = "Triggered when a transaction completes successfully, such as from RunTransactionIncrement or RunTransactionConditional. The 'tag' shows which path was modified by the transaction, and 'finalValue' contains the resulting data after the transaction. This confirms that your atomic operation completed successfully and shows you the final state of the data.")
    public void TransactionSuccessful(String str, Object obj) {
        EventDispatcher.dispatchEvent(this, "TransactionSuccessful", str, obj);
    }

    @SimpleEvent(description = "Triggered when a transaction fails due to network issues, permission problems, or too many retries. The 'tag' shows which path the transaction was attempting to modify, and 'errorMessage' explains why it failed. Transactions may fail due to being offline, insufficient permissions, or if Firebase retries too many times due to conflicts.")
    public void TransactionFailed(String str, String str2) {
        EventDispatcher.dispatchEvent(this, "TransactionFailed", str, str2);
    }

    @SimpleEvent(description = "Triggered when offline data persistence is successfully enabled for your Firebase Database. After this event, your app can read previously accessed data and queue writes even when offline. This setting affects the entire Firebase Database instance and persists until the app is closed.")
    public void OfflinePersistenceEnabled() {
        EventDispatcher.dispatchEvent(this, "OfflinePersistenceEnabled", new Object[0]);
    }

    @SimpleEvent(description = "Triggered when automatic synchronization is enabled for a specific path using KeepSynced. The 'tag' parameter shows which path will now be kept synchronized locally for offline access. This data will be automatically downloaded and kept up-to-date on the device.")
    public void KeepSyncedEnabled(String str) {
        EventDispatcher.dispatchEvent(this, "KeepSyncedEnabled", str);
    }

    @SimpleEvent(description = "Triggered when automatic synchronization is disabled for a specific path using KeepSynced. The 'tag' parameter shows which path will no longer be automatically synchronized for offline access. The local cached data remains available but won't be automatically updated.")
    public void KeepSyncedDisabled(String str) {
        EventDispatcher.dispatchEvent(this, "KeepSyncedDisabled", str);
    }

    @SimpleEvent(description = "Triggered when the Firebase Database connection goes offline, either manually via GoOffline or due to network loss. While offline, writes are queued locally and listeners work with cached data. Your app can continue functioning with previously loaded data until connectivity is restored.")
    public void WentOffline() {
        EventDispatcher.dispatchEvent(this, "WentOffline", new Object[0]);
    }

    @SimpleEvent(description = "Triggered when the Firebase Database connection comes back online, either manually via GoOnline or when network is restored. When online, all queued writes are sent to the server and real-time listeners will resume receiving live updates. Your app will start receiving fresh data from the server again.")
    public void WentOnline() {
        EventDispatcher.dispatchEvent(this, "WentOnline", new Object[0]);
    }

    @SimpleEvent(description = "Triggered when a server timestamp is successfully retrieved and stored using GetServerTimestamp. The 'tag' shows where the timestamp was stored, and 'timestamp' contains the server time as milliseconds since epoch. Use this timestamp for accurate time-based operations that need to be consistent across all users.")
    public void ServerTimestampReceived(String str, String str2) {
        EventDispatcher.dispatchEvent(this, "ServerTimestampReceived", str, str2);
    }

    @SimpleEvent(description = "Triggered when any database operation encounters an error not covered by specific failure events. The 'functionName' indicates which operation failed, and 'errorMessage' provides details about the error. This is a catch-all event for unexpected errors during database operations.")
    public void ErrorOccurred(String str, String str2) {
        EventDispatcher.dispatchEvent(this, "ErrorOccurred", str, str2);
    }

    @SimpleEvent(description = "Triggered when a conditional transaction is aborted because the current value didn't match the expected value. The 'tag' shows which path was being updated, and 'reason' explains why the transaction was aborted. This is normal behavior for RunTransactionConditional when the condition check fails - it's not an error.")
    public void TransactionAborted(String str, String str2) {
        EventDispatcher.dispatchEvent(this, "TransactionAborted", str, str2);
    }

    @SimpleEvent(description = "Triggered during transaction processing to provide information about the current data state. The 'tag' shows which path is being processed, and 'currentValue' contains the current data at that location. This event is primarily for debugging and monitoring transaction behavior.")
    public void TransactionData(String str, Object obj) {
        EventDispatcher.dispatchEvent(this, "TransactionData", str, obj);
    }

    @SimpleEvent(description = "Triggered when GetTagList successfully retrieves the list of all top-level paths in your database. The 'tagList' parameter contains a YailList of strings representing all immediate child paths at the root level. Use this to discover what data exists in your database or to build navigation interfaces.")
    public void GotTagList(YailList yailList) {
        EventDispatcher.dispatchEvent(this, "GotTagList", yailList);
    }

    @SimpleEvent(description = "Triggered when RemoveFirst successfully removes and returns the first item from a list. The 'value' parameter contains the data that was removed from the front of the list. Perfect for implementing queue processing where you need to know what item was processed.")
    public void FirstRemoved(Object obj) {
        EventDispatcher.dispatchEvent(this, "FirstRemoved", obj);
    }

    @SimpleEvent(description = "Triggered when GetTagListFromTag successfully retrieves the list of all child paths under the specified tag in your database. The 'tag' parameter shows which path was queried, and 'tagList' contains a YailList of strings representing all immediate child paths under the given tag. Use this to explore nested data structures in your database or build dynamic navigation for hierarchical data.")
    public void GotTagListFromTag(String str, YailList yailList) {
        EventDispatcher.dispatchEvent(this, "GotTagListFromTag", str, yailList);
    }

    private boolean checkInitialized() {
        if (this.firebaseDatabase != null && this.databaseReference != null) {
            return true;
        }
        ErrorOccurred("Database", "Firebase Realtime Database is not initialized. Call InitializeFirebaseRealtimeDB first.");
        return false;
    }

    private void stopListening(String str) {
        ValueEventListener valueEventListener = this.valueListeners.get(str);
        if (valueEventListener != null) {
            this.databaseReference.child(str).removeEventListener(valueEventListener);
            this.valueListeners.remove(str);
        }
    }

    private void stopChildListening(String str) {
        ChildEventListener childEventListener = this.childListeners.get(str);
        if (childEventListener != null) {
            this.databaseReference.child(str).removeEventListener(childEventListener);
            this.childListeners.remove(str);
        }
    }

    private void executeQuery(Query query, final String str, final String str2) {
        query.addListenerForSingleValueEvent(new ValueEventListener() { // from class: com.google.appinventor.components.runtime.FirebaseRealtimeDB.25
            public void onDataChange(@NonNull DataSnapshot dataSnapshot) {
                FirebaseRealtimeDB.this.QueryResult(str, str2, FirebaseRealtimeDB.this.convertSnapshotToList(dataSnapshot));
            }

            public void onCancelled(@NonNull DatabaseError databaseError) {
                FirebaseRealtimeDB.this.QueryFailed(str, str2, databaseError.getMessage());
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public YailList convertSnapshotToList(DataSnapshot dataSnapshot) {
        ArrayList arrayList = new ArrayList();
        for (DataSnapshot dataSnapshot2 : dataSnapshot.getChildren()) {
            YailDictionary yailDictionary = new YailDictionary();
            yailDictionary.put("key", dataSnapshot2.getKey());
            yailDictionary.put("value", convertFromFirebaseType(dataSnapshot2.getValue()));
            arrayList.add(yailDictionary);
        }
        return YailList.makeList((List) arrayList);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Object convertToFirebaseType(Object obj) {
        if (obj == null) {
            return null;
        }
        if (obj instanceof YailDictionary) {
            YailDictionary yailDictionary = (YailDictionary) obj;
            HashMap map = new HashMap();
            for (Object obj2 : yailDictionary.keySet()) {
                map.put(obj2.toString(), convertToFirebaseType(yailDictionary.get(obj2)));
            }
            return map;
        }
        if (obj instanceof YailList) {
            YailList yailList = (YailList) obj;
            if (yailList.size() > 0 && (yailList.getObject(0) instanceof YailList) && ((YailList) yailList.getObject(0)).size() == 2) {
                HashMap map2 = new HashMap();
                for (int i = 0; i < yailList.size(); i++) {
                    Object object = yailList.getObject(i);
                    if (object instanceof YailList) {
                        YailList yailList2 = (YailList) object;
                        if (yailList2.size() >= 2) {
                            map2.put(yailList2.getObject(0).toString(), convertToFirebaseType(yailList2.getObject(1)));
                        }
                    }
                }
                return map2;
            }
            ArrayList arrayList = new ArrayList();
            for (int i2 = 0; i2 < yailList.size(); i2++) {
                arrayList.add(convertToFirebaseType(yailList.getObject(i2)));
            }
            return arrayList;
        }
        if (obj instanceof List) {
            ArrayList arrayList2 = new ArrayList();
            Iterator it = ((List) obj).iterator();
            while (it.hasNext()) {
                arrayList2.add(convertToFirebaseType(it.next()));
            }
            return arrayList2;
        }
        if (obj instanceof java.util.Map) {
            HashMap map3 = new HashMap();
            for (Map.Entry entry : ((java.util.Map) obj).entrySet()) {
                map3.put(entry.getKey().toString(), convertToFirebaseType(entry.getValue()));
            }
            return map3;
        }
        boolean z = obj instanceof String;
        return obj;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Object convertFromFirebaseType(Object obj) {
        if (obj == null) {
            return null;
        }
        if (obj instanceof java.util.Map) {
            YailDictionary yailDictionary = new YailDictionary();
            for (Map.Entry entry : ((java.util.Map) obj).entrySet()) {
                yailDictionary.put(entry.getKey().toString(), convertFromFirebaseType(entry.getValue()));
            }
            return yailDictionary;
        }
        if (!(obj instanceof List)) {
            return obj;
        }
        List list = (List) obj;
        Object[] objArr = new Object[list.size()];
        for (int i = 0; i < list.size(); i++) {
            objArr[i] = convertFromFirebaseType(list.get(i));
        }
        return YailList.makeList(objArr);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public double convertToNumber(Object obj) {
        if (obj == null) {
            return 0.0d;
        }
        if (obj instanceof Number) {
            return ((Number) obj).doubleValue();
        }
        try {
            return Double.parseDouble(obj.toString());
        } catch (NumberFormatException unused) {
            return 0.0d;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean valuesEqual(Object obj, Object obj2) {
        if (obj == null && obj2 == null) {
            return true;
        }
        if (obj == null || obj2 == null) {
            return false;
        }
        return obj.toString().equals(obj2.toString());
    }
}
