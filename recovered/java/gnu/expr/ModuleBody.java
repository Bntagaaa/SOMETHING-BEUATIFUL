package gnu.expr;

import com.google.appinventor.components.runtime.util.ErrorMessages;
import gnu.lists.Consumer;
import gnu.lists.VoidConsumer;
import gnu.mapping.CallContext;
import gnu.mapping.OutPort;
import gnu.mapping.Procedure0;
import gnu.mapping.ProcedureN;
import gnu.mapping.Values;
import gnu.mapping.WrappedException;
import gnu.mapping.WrongArguments;
import gnu.text.WriterManager;
import kawa.Shell;

/* loaded from: classes2.dex */
public abstract class ModuleBody extends Procedure0 {
    private static int exitCounter;
    private static boolean mainPrintValues;
    protected boolean runDone;

    public void run(CallContext callContext) throws Throwable {
    }

    @Override // gnu.mapping.Procedure
    public void apply(CallContext callContext) throws Throwable {
        if (callContext.pc == 0) {
            run(callContext);
        }
    }

    public void run() {
        synchronized (this) {
            try {
                if (this.runDone) {
                    return;
                }
                this.runDone = true;
                run(VoidConsumer.instance);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void run(Consumer consumer) {
        CallContext callContext = CallContext.getInstance();
        Consumer consumer2 = callContext.consumer;
        callContext.consumer = consumer;
        try {
            run(callContext);
            th = null;
        } catch (Throwable th) {
            th = th;
        }
        runCleanup(callContext, th, consumer2);
    }

    public static void runCleanup(CallContext callContext, Throwable th, Consumer consumer) {
        if (th == null) {
            try {
                callContext.runUntilDone();
            } catch (Throwable th2) {
                th = th2;
            }
        }
        callContext.consumer = consumer;
        if (th != null) {
            if (th instanceof RuntimeException) {
                throw ((RuntimeException) th);
            }
            if (th instanceof Error) {
                throw ((Error) th);
            }
            throw new WrappedException(th);
        }
    }

    @Override // gnu.mapping.Procedure0, gnu.mapping.Procedure
    public Object apply0() throws Throwable {
        CallContext callContext = CallContext.getInstance();
        match0(callContext);
        return callContext.runUntilValue();
    }

    public static boolean getMainPrintValues() {
        return mainPrintValues;
    }

    public static void setMainPrintValues(boolean z) {
        mainPrintValues = z;
    }

    public static synchronized void exitIncrement() {
        try {
            int i = exitCounter;
            if (i == 0) {
                exitCounter = i + 1;
            }
            exitCounter++;
        } catch (Throwable th) {
            throw th;
        }
    }

    public static synchronized void exitDecrement() {
        try {
            int i = exitCounter;
            if (i > 0) {
                int i2 = i - 1;
                if (i2 == 0) {
                    System.exit(0);
                } else {
                    exitCounter = i2;
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final void runAsMain() {
        WriterManager.instance.registerShutdownHook();
        try {
            CallContext callContext = CallContext.getInstance();
            if (getMainPrintValues()) {
                OutPort outPortOutDefault = OutPort.outDefault();
                callContext.consumer = Shell.getOutputConsumer(outPortOutDefault);
                run(callContext);
                callContext.runUntilDone();
                outPortOutDefault.freshLine();
            } else {
                run();
                callContext.runUntilDone();
            }
            OutPort.runCleanups();
            exitDecrement();
        } catch (Throwable th) {
            th.printStackTrace();
            OutPort.runCleanups();
            System.exit(-1);
        }
    }

    public Object apply0(ModuleMethod moduleMethod) throws Throwable {
        return applyN(moduleMethod, Values.noArgs);
    }

    public Object apply1(ModuleMethod moduleMethod, Object obj) throws Throwable {
        return applyN(moduleMethod, new Object[]{obj});
    }

    public Object apply2(ModuleMethod moduleMethod, Object obj, Object obj2) throws Throwable {
        return applyN(moduleMethod, new Object[]{obj, obj2});
    }

    public Object apply3(ModuleMethod moduleMethod, Object obj, Object obj2, Object obj3) throws Throwable {
        return applyN(moduleMethod, new Object[]{obj, obj2, obj3});
    }

    public Object apply4(ModuleMethod moduleMethod, Object obj, Object obj2, Object obj3, Object obj4) throws Throwable {
        return applyN(moduleMethod, new Object[]{obj, obj2, obj3, obj4});
    }

    public Object applyN(ModuleMethod moduleMethod, Object[] objArr) throws Throwable {
        int length = objArr.length;
        int iNumArgs = moduleMethod.numArgs();
        if (length >= (iNumArgs & 4095) && (iNumArgs < 0 || length <= (iNumArgs >> 12))) {
            if (length == 0) {
                return apply0(moduleMethod);
            }
            if (length == 1) {
                return apply1(moduleMethod, objArr[0]);
            }
            if (length == 2) {
                return apply2(moduleMethod, objArr[0], objArr[1]);
            }
            if (length == 3) {
                return apply3(moduleMethod, objArr[0], objArr[1], objArr[2]);
            }
            if (length == 4) {
                return apply4(moduleMethod, objArr[0], objArr[1], objArr[2], objArr[3]);
            }
        }
        throw new WrongArguments(moduleMethod, length);
    }

    public int match0(ModuleMethod moduleMethod, CallContext callContext) {
        int iNumArgs = moduleMethod.numArgs();
        int i = iNumArgs & 4095;
        if (i > 0) {
            return (-983040) | i;
        }
        if (iNumArgs < 0) {
            return matchN(moduleMethod, ProcedureN.noArgs, callContext);
        }
        callContext.count = 0;
        callContext.where = 0;
        callContext.next = 0;
        callContext.proc = moduleMethod;
        return 0;
    }

    public int match1(ModuleMethod moduleMethod, Object obj, CallContext callContext) {
        int iNumArgs = moduleMethod.numArgs();
        int i = iNumArgs & 4095;
        if (i > 1) {
            return (-983040) | i;
        }
        if (iNumArgs < 0) {
            return matchN(moduleMethod, new Object[]{obj}, callContext);
        }
        int i2 = iNumArgs >> 12;
        if (i2 < 1) {
            return (-917504) | i2;
        }
        callContext.value1 = obj;
        callContext.count = 1;
        callContext.where = 1;
        callContext.next = 0;
        callContext.proc = moduleMethod;
        return 0;
    }

    public int match2(ModuleMethod moduleMethod, Object obj, Object obj2, CallContext callContext) {
        int iNumArgs = moduleMethod.numArgs();
        int i = iNumArgs & 4095;
        if (i > 2) {
            return (-983040) | i;
        }
        if (iNumArgs < 0) {
            return matchN(moduleMethod, new Object[]{obj, obj2}, callContext);
        }
        int i2 = iNumArgs >> 12;
        if (i2 < 2) {
            return (-917504) | i2;
        }
        callContext.value1 = obj;
        callContext.value2 = obj2;
        callContext.count = 2;
        callContext.where = 33;
        callContext.next = 0;
        callContext.proc = moduleMethod;
        return 0;
    }

    public int match3(ModuleMethod moduleMethod, Object obj, Object obj2, Object obj3, CallContext callContext) {
        int iNumArgs = moduleMethod.numArgs();
        int i = iNumArgs & 4095;
        if (i > 3) {
            return (-983040) | i;
        }
        if (iNumArgs < 0) {
            return matchN(moduleMethod, new Object[]{obj, obj2, obj3}, callContext);
        }
        int i2 = iNumArgs >> 12;
        if (i2 < 3) {
            return (-917504) | i2;
        }
        callContext.value1 = obj;
        callContext.value2 = obj2;
        callContext.value3 = obj3;
        callContext.count = 3;
        callContext.where = ErrorMessages.ERROR_SOUND_RECORDER;
        callContext.next = 0;
        callContext.proc = moduleMethod;
        return 0;
    }

    public int match4(ModuleMethod moduleMethod, Object obj, Object obj2, Object obj3, Object obj4, CallContext callContext) {
        int iNumArgs = moduleMethod.numArgs();
        int i = iNumArgs & 4095;
        if (i > 4) {
            return (-983040) | i;
        }
        if (iNumArgs < 0) {
            return matchN(moduleMethod, new Object[]{obj, obj2, obj3, obj4}, callContext);
        }
        int i2 = iNumArgs >> 12;
        if (i2 < 4) {
            return (-917504) | i2;
        }
        callContext.value1 = obj;
        callContext.value2 = obj2;
        callContext.value3 = obj3;
        callContext.value4 = obj4;
        callContext.count = 4;
        callContext.where = 17185;
        callContext.next = 0;
        callContext.proc = moduleMethod;
        return 0;
    }

    public int matchN(ModuleMethod moduleMethod, Object[] objArr, CallContext callContext) {
        int iNumArgs = moduleMethod.numArgs();
        int i = iNumArgs & 4095;
        if (objArr.length < i) {
            return (-983040) | i;
        }
        if (iNumArgs >= 0) {
            int length = objArr.length;
            if (length == 0) {
                return match0(moduleMethod, callContext);
            }
            if (length == 1) {
                return match1(moduleMethod, objArr[0], callContext);
            }
            if (length == 2) {
                return match2(moduleMethod, objArr[0], objArr[1], callContext);
            }
            if (length == 3) {
                return match3(moduleMethod, objArr[0], objArr[1], objArr[2], callContext);
            }
            if (length == 4) {
                return match4(moduleMethod, objArr[0], objArr[1], objArr[2], objArr[3], callContext);
            }
            int i2 = iNumArgs >> 12;
            if (objArr.length > i2) {
                return (-917504) | i2;
            }
        }
        callContext.values = objArr;
        callContext.count = objArr.length;
        callContext.where = 0;
        callContext.next = 0;
        callContext.proc = moduleMethod;
        return 0;
    }
}
