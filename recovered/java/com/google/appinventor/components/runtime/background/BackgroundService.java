package com.google.appinventor.components.runtime.background;

import _COROUTINE.a;
import android.content.Context;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.work.ListenableWorker;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import com.google.appinventor.components.runtime.BackgroundFunctions;
import com.google.appinventor.components.runtime.Form;
import com.google.appinventor.components.runtime.ReplForm;
import com.google.appinventor.components.runtime.errors.IllegalArgumentError;
import com.google.appinventor.components.runtime.util.YailList;
import gnu.lists.LList;
import gnu.mapping.ProcedureN;
import gnu.mapping.SimpleSymbol;
import gnu.mapping.Symbol;
import java.util.Iterator;
import kawa.standard.Scheme;

/* loaded from: classes.dex */
public class BackgroundService extends Worker {
    private final Form form;
    private final String procedureName;

    public BackgroundService(@NonNull Context context, @NonNull WorkerParameters workerParameters) {
        super(context, workerParameters);
        this.procedureName = getInputData().getString("PROCEDURE_NAME");
        this.form = BackgroundFunctions.form;
    }

    public void onStopped() {
        super.onStopped();
    }

    @NonNull
    public ListenableWorker.Result doWork() {
        try {
            Log.i("Niotron", "Procedure Called: " + this.procedureName);
            doCall("Call", this.procedureName, null);
            return ListenableWorker.Result.success();
        } catch (Exception e) {
            e.printStackTrace();
            return ListenableWorker.Result.failure();
        }
    }

    private Object doCall(String str, String str2, YailList yailList) {
        if (str2 == "") {
            return null;
        }
        ProcedureN procedureNLookupProcedure = lookupProcedure(str2);
        if (procedureNLookupProcedure == null) {
            throw new IllegalArgumentError(a.A("Unable to locate procedure ", str2, " in form"));
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
                this.form.runOnUiThread(new Runnable() { // from class: com.google.appinventor.components.runtime.background.BackgroundService.1
                    @Override // java.lang.Runnable
                    public void run() {
                        a.w("Error: ", th.getMessage(), "BackgroundFunctions");
                    }
                });
                th.printStackTrace();
                return "";
            }
        }
        return procedureNLookupProcedure.apply0();
    }

    private ProcedureN lookupProcedureInRepl(String str) {
        try {
            Object objEval = Scheme.getInstance().eval("(begin (require <com.google.youngandroid.runtime>)(get-var p$" + str + "))");
            if (objEval instanceof ProcedureN) {
                return (ProcedureN) objEval;
            }
            Log.e("BackgroundFunctions", "Wanted a procedure, but got a " + (objEval == null ? "null" : objEval.getClass().toString()));
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
        Log.e("BackgroundFunctions", "Wanted a procedure, but got a " + (obj == null ? "null" : obj.getClass().toString()));
        return null;
    }

    private ProcedureN lookupProcedure(String str) {
        if (this.form instanceof ReplForm) {
            return lookupProcedureInRepl(str);
        }
        return lookupProcedureInForm(str);
    }
}
