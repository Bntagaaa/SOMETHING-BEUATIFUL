package gnu.mapping;

import gnu.lists.Consumer;
import gnu.lists.LList;
import gnu.lists.Pair;
import gnu.math.IntNum;

/* loaded from: classes2.dex */
public class CallContext {
    public static final int ARG_IN_IVALUE1 = 5;
    public static final int ARG_IN_IVALUE2 = 6;
    public static final int ARG_IN_VALUE1 = 1;
    public static final int ARG_IN_VALUE2 = 2;
    public static final int ARG_IN_VALUE3 = 3;
    public static final int ARG_IN_VALUE4 = 4;
    public static final int ARG_IN_VALUES_ARRAY = 0;
    static ThreadLocal currentContext = new ThreadLocal();
    public Consumer consumer;
    public int count;
    public Object[][] evalFrames;
    public int ivalue1;
    public int ivalue2;
    public int next;
    public int pc;
    public Procedure proc;
    public Object value1;
    public Object value2;
    public Object value3;
    public Object value4;
    public Object[] values;
    public ValueStack vstack;
    public int where;

    public CallContext() {
        ValueStack valueStack = new ValueStack();
        this.vstack = valueStack;
        this.consumer = valueStack;
    }

    public static void setInstance(CallContext callContext) {
        Thread.currentThread();
        currentContext.set(callContext);
    }

    public static CallContext getOnlyInstance() {
        return (CallContext) currentContext.get();
    }

    public static CallContext getInstance() {
        CallContext onlyInstance = getOnlyInstance();
        if (onlyInstance != null) {
            return onlyInstance;
        }
        CallContext callContext = new CallContext();
        setInstance(callContext);
        return callContext;
    }

    public Object getArgAsObject(int i) {
        if (i < 8) {
            switch ((this.where >> (i * 4)) & 15) {
                case 1:
                    return this.value1;
                case 2:
                    return this.value2;
                case 3:
                    return this.value3;
                case 4:
                    return this.value4;
                case 5:
                    return IntNum.make(this.ivalue1);
                case 6:
                    return IntNum.make(this.ivalue2);
            }
        }
        return this.values[i];
    }

    public int getArgCount() {
        return this.count;
    }

    public Object getNextArg() {
        int i = this.next;
        if (i >= this.count) {
            throw new WrongArguments(null, this.count);
        }
        this.next = i + 1;
        return getArgAsObject(i);
    }

    public int getNextIntArg() {
        int i = this.next;
        if (i >= this.count) {
            throw new WrongArguments(null, this.count);
        }
        this.next = i + 1;
        return ((Number) getArgAsObject(i)).intValue();
    }

    public Object getNextArg(Object obj) {
        int i = this.next;
        if (i >= this.count) {
            return obj;
        }
        this.next = i + 1;
        return getArgAsObject(i);
    }

    public int getNextIntArg(int i) {
        int i2 = this.next;
        if (i2 >= this.count) {
            return i;
        }
        this.next = i2 + 1;
        return ((Number) getArgAsObject(i2)).intValue();
    }

    public final Object[] getRestArgsArray(int i) {
        Object[] objArr = new Object[this.count - i];
        int i2 = 0;
        while (i < this.count) {
            objArr[i2] = getArgAsObject(i);
            i2++;
            i++;
        }
        return objArr;
    }

    public final LList getRestArgsList(int i) {
        LList lList = LList.Empty;
        Pair pair = null;
        LList lList2 = lList;
        while (i < this.count) {
            int i2 = i + 1;
            Pair pair2 = new Pair(getArgAsObject(i), lList);
            if (pair == null) {
                lList2 = pair2;
            } else {
                pair.setCdr(pair2);
            }
            pair = pair2;
            i = i2;
        }
        return lList2;
    }

    public void lastArg() {
        if (this.next < this.count) {
            throw new WrongArguments(null, this.count);
        }
        this.values = null;
    }

    public Object[] getArgs() {
        if (this.where == 0) {
            return this.values;
        }
        int i = this.count;
        this.next = 0;
        Object[] objArr = new Object[i];
        for (int i2 = 0; i2 < i; i2++) {
            objArr[i2] = getNextArg();
        }
        return objArr;
    }

    public void runUntilDone() throws Throwable {
        while (true) {
            Procedure procedure = this.proc;
            if (procedure == null) {
                return;
            }
            this.proc = null;
            procedure.apply(this);
        }
    }

    public final int startFromContext() {
        ValueStack valueStack = this.vstack;
        int iFind = valueStack.find(this.consumer);
        valueStack.ensureSpace(3);
        int i = valueStack.gapStart;
        valueStack.data[i] = 61698;
        valueStack.setIntN(i + 1, iFind);
        int i2 = i + 3;
        this.consumer = valueStack;
        valueStack.gapStart = i2;
        return i2;
    }

    public final Object getFromContext(int i) throws Throwable {
        runUntilDone();
        ValueStack valueStack = this.vstack;
        Object objMake = Values.make(valueStack, i, valueStack.gapStart);
        cleanupFromContext(i);
        return objMake;
    }

    public final void cleanupFromContext(int i) {
        ValueStack valueStack = this.vstack;
        char[] cArr = valueStack.data;
        int i2 = (cArr[i - 1] & 65535) | (cArr[i - 2] << 16);
        Object[] objArr = valueStack.objects;
        this.consumer = (Consumer) objArr[i2];
        objArr[i2] = null;
        valueStack.oindex = i2;
        valueStack.gapStart = i - 3;
    }

    public final Object runUntilValue() throws Throwable {
        Consumer consumer = this.consumer;
        ValueStack valueStack = this.vstack;
        this.consumer = valueStack;
        int i = valueStack.gapStart;
        int i2 = valueStack.oindex;
        try {
            runUntilDone();
            return Values.make(valueStack, i, valueStack.gapStart);
        } finally {
            this.consumer = consumer;
            valueStack.gapStart = i;
            valueStack.oindex = i2;
        }
    }

    public final void runUntilValue(Consumer consumer) throws Throwable {
        Consumer consumer2 = this.consumer;
        this.consumer = consumer;
        try {
            runUntilDone();
        } finally {
            this.consumer = consumer2;
        }
    }

    public void writeValue(Object obj) {
        Values.writeValues(obj, this.consumer);
    }
}
