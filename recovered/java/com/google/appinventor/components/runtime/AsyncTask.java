package com.google.appinventor.components.runtime;

import android.util.Log;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.runtime.errors.IllegalArgumentError;
import com.google.appinventor.components.runtime.util.AsynchUtil;
import com.google.appinventor.components.runtime.util.ErrorMessages;
import com.google.appinventor.components.runtime.util.YailList;
import gnu.lists.LList;
import gnu.mapping.ProcedureN;
import gnu.mapping.SimpleSymbol;
import gnu.mapping.Symbol;
import java.util.Iterator;
import kawa.standard.Scheme;

@DesignerComponent(category = ComponentCategory.EXTRAS, description = "Run Functions Asynchronously or in the <br> Background when the App is Closed(Coming Soon) ", iconName = "images/asyncTask.png", nonVisible = true, version = 1)
@SimpleObject
/* loaded from: classes.dex */
public final class AsyncTask extends AndroidNonvisibleComponent {
    private static final String LOG_TAG = "AsyncTask";

    public AsyncTask(ComponentContainer componentContainer) {
        super(componentContainer.$form());
    }

    @SimpleFunction(description = "Calls the procedure in the current screen with the given name.")
    public Object Call(String str) {
        return doCall("Call", str, null);
    }

    @SimpleFunction(description = "Calls the procedure in the current screen with a list of arguments.")
    public Object CallWithArgs(String str, YailList yailList) {
        return doCall("CallWithArgs", str, yailList);
    }

    @SimpleFunction(description = "Calls the procedure in the current screen on a thread separate from the UI thread.")
    public void CallAsynchronous(final String str) {
        AsynchUtil.runAsynchronously(new Runnable() { // from class: com.google.appinventor.components.runtime.AsyncTask.1
            @Override // java.lang.Runnable
            public void run() {
                final Object objDoCall = AsyncTask.this.doCall("CallAsynchronous", str, null);
                AsyncTask.this.form.runOnUiThread(new Runnable() { // from class: com.google.appinventor.components.runtime.AsyncTask.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                        AsyncTask.this.CallFinishedWithResult(str, YailList.makeEmptyList(), objDoCall);
                    }
                });
            }
        });
    }

    @SimpleFunction(description = "Calls the procedure in the current screen on a thread separate from the UI thread with the given list of arguments.")
    public void CallAsynchronousWithArgs(final String str, final YailList yailList) {
        AsynchUtil.runAsynchronously(new Runnable() { // from class: com.google.appinventor.components.runtime.AsyncTask.2
            @Override // java.lang.Runnable
            public void run() {
                final Object objDoCall = AsyncTask.this.doCall("CallAsynchronousWithArgs", str, yailList);
                AsyncTask.this.form.runOnUiThread(new Runnable() { // from class: com.google.appinventor.components.runtime.AsyncTask.2.1
                    @Override // java.lang.Runnable
                    public void run() {
                        AnonymousClass2 anonymousClass2 = AnonymousClass2.this;
                        AsyncTask.this.CallFinishedWithResult(str, yailList, objDoCall);
                    }
                });
            }
        });
    }

    @SimpleFunction(description = "Calls the procedure on the UI thread after waiting delay milliseconds on a separate thread.")
    public void CallAfterDelay(final int i, final String str) {
        AsynchUtil.runAsynchronously(new Runnable() { // from class: com.google.appinventor.components.runtime.AsyncTask.3
            @Override // java.lang.Runnable
            public void run() throws InterruptedException {
                try {
                    Thread.sleep(i);
                    AsyncTask.this.form.runOnUiThread(new Runnable() { // from class: com.google.appinventor.components.runtime.AsyncTask.3.1
                        @Override // java.lang.Runnable
                        public void run() {
                            AnonymousClass3 anonymousClass3 = AnonymousClass3.this;
                            Object objDoCall = AsyncTask.this.doCall("CallAfterDelay", str, null);
                            AnonymousClass3 anonymousClass32 = AnonymousClass3.this;
                            AsyncTask.this.CallFinishedWithResult(str, YailList.makeEmptyList(), objDoCall);
                        }
                    });
                } catch (InterruptedException e) {
                    throw new RuntimeException(e);
                }
            }
        });
    }

    @SimpleFunction(description = "Calls the procedure on the UI thread with the given arguments after waiting delay milliseconds on a separate thread.")
    public void CallAfterDelayWithArgs(final int i, final String str, final YailList yailList) {
        AsynchUtil.runAsynchronously(new Runnable() { // from class: com.google.appinventor.components.runtime.AsyncTask.4
            @Override // java.lang.Runnable
            public void run() throws InterruptedException {
                try {
                    Thread.sleep(i);
                    AsyncTask.this.form.runOnUiThread(new Runnable() { // from class: com.google.appinventor.components.runtime.AsyncTask.4.1
                        @Override // java.lang.Runnable
                        public void run() {
                            AnonymousClass4 anonymousClass4 = AnonymousClass4.this;
                            Object objDoCall = AsyncTask.this.doCall("CallAfterDelayWithArgs", str, yailList);
                            AnonymousClass4 anonymousClass42 = AnonymousClass4.this;
                            AsyncTask.this.CallFinishedWithResult(str, yailList, objDoCall);
                        }
                    });
                } catch (InterruptedException e) {
                    throw new RuntimeException(e);
                }
            }
        });
    }

    @SimpleEvent(description = "After an asynchronous procedure call, this event is run with the results of the invocation.")
    public void CallFinishedWithResult(String str, YailList yailList, Object obj) {
        EventDispatcher.dispatchEvent(this, "CallFinishedWithResult", str, yailList, obj);
    }

    private ProcedureN lookupProcedureInRepl(String str) {
        try {
            Object objEval = Scheme.getInstance().eval("(begin (require <com.google.youngandroid.runtime>)(get-var p$" + str + "))");
            if (objEval instanceof ProcedureN) {
                return (ProcedureN) objEval;
            }
            Log.e(LOG_TAG, "Wanted a procedure, but got a " + (objEval == null ? "null" : objEval.getClass().toString()));
            return null;
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    private ProcedureN lookupProcedureInForm(String str) {
        Object obj;
        try {
            LList lList = (LList) this.form.getClass().getField("global$Mnvars$Mnto$Mncreate").get(this.form);
            SimpleSymbol simpleSymbol = new SimpleSymbol("p$" + str);
            Iterator it = lList.iterator();
            while (true) {
                if (!it.hasNext()) {
                    obj = null;
                    break;
                }
                Object next = it.next();
                if (!LList.Empty.equals(next)) {
                    LList lList2 = (LList) next;
                    if (((Symbol) lList2.get(0)).getName().equals(simpleSymbol.getName())) {
                        obj = lList2.get(1);
                        break;
                    }
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        if (obj instanceof ProcedureN) {
            return (ProcedureN) ((ProcedureN) obj).apply0();
        }
        Log.e(LOG_TAG, "Wanted a procedure, but got a " + (obj == null ? "null" : obj.getClass().toString()));
        return null;
    }

    private ProcedureN lookupProcedure(String str) {
        if (this.form instanceof ReplForm) {
            return lookupProcedureInRepl(str);
        }
        return lookupProcedureInForm(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Object doCall(final String str, String str2, YailList yailList) {
        ProcedureN procedureNLookupProcedure = lookupProcedure(str2);
        if (procedureNLookupProcedure == null) {
            throw new IllegalArgumentError("Unable to locate procedure " + str2 + " in form " + this.form.toString());
        }
        if (yailList != null) {
            try {
                if (procedureNLookupProcedure.numArgs() != 0) {
                    Object[] objArr = new Object[yailList.size()];
                    Iterator it = yailList.iterator();
                    it.next();
                    int i = 0;
                    while (it.hasNext()) {
                        objArr[i] = it.next();
                        i++;
                    }
                    return procedureNLookupProcedure.applyN(objArr);
                }
            } catch (Throwable th) {
                this.form.runOnUiThread(new Runnable() { // from class: com.google.appinventor.components.runtime.AsyncTask.5
                    @Override // java.lang.Runnable
                    public void run() {
                        AsyncTask asyncTask = AsyncTask.this;
                        asyncTask.form.dispatchErrorOccurredEvent(asyncTask, str, ErrorMessages.ERROR_EXTENSION_ERROR, 1, "an unknown error occurred", th.getMessage());
                    }
                });
                th.printStackTrace();
                return "";
            }
        }
        return procedureNLookupProcedure.apply0();
    }
}
