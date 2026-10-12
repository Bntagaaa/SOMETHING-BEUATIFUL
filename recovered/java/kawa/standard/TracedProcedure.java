package kawa.standard;

import gnu.kawa.functions.ObjectFormat;
import gnu.mapping.Environment;
import gnu.mapping.Location;
import gnu.mapping.OutPort;
import gnu.mapping.Procedure;
import gnu.mapping.ProcedureN;
import gnu.mapping.Symbol;
import gnu.math.IntNum;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.Writer;
import kotlin.text.Typography;

/* loaded from: classes2.dex */
public class TracedProcedure extends ProcedureN {
    static Symbol curIndentSym = Symbol.makeUninterned("current-indentation");
    static int indentationStep = 2;
    boolean enabled;
    public Procedure proc;

    public TracedProcedure(Procedure procedure, boolean z) {
        this.proc = procedure;
        this.enabled = z;
        String name = procedure.getName();
        if (name != null) {
            setName(name);
        }
    }

    public static void put(Object obj, PrintWriter printWriter) {
        try {
            if (ObjectFormat.format(obj, (Writer) printWriter, 50, true)) {
                return;
            }
            printWriter.print("...");
        } catch (IOException e) {
            printWriter.print("<caught ");
            printWriter.print(e);
            printWriter.print(Typography.greater);
        }
    }

    public static void indent(int i, PrintWriter printWriter) {
        while (true) {
            i--;
            if (i < 0) {
                return;
            } else {
                printWriter.print(' ');
            }
        }
    }

    @Override // gnu.mapping.ProcedureN, gnu.mapping.Procedure
    public Object applyN(Object[] objArr) throws Throwable {
        int iIntValue;
        if (this.enabled) {
            Location location = Environment.getCurrent().getLocation(curIndentSym);
            Object obj = location.get(null);
            if (!(obj instanceof IntNum)) {
                location.set(IntNum.zero());
                iIntValue = 0;
            } else {
                iIntValue = ((IntNum) obj).intValue();
            }
            OutPort outPortErrDefault = OutPort.errDefault();
            String name = getName();
            if (name == null) {
                name = "??";
            }
            indent(iIntValue, outPortErrDefault);
            outPortErrDefault.print("call to ");
            outPortErrDefault.print(name);
            int length = objArr.length;
            outPortErrDefault.print(" (");
            for (int i = 0; i < length; i++) {
                if (i > 0) {
                    outPortErrDefault.print(' ');
                }
                put(objArr[i], outPortErrDefault);
            }
            outPortErrDefault.println(")");
            Object withSave = location.setWithSave(IntNum.make(indentationStep + iIntValue));
            try {
                try {
                    Object objApplyN = this.proc.applyN(objArr);
                    location.setRestore(withSave);
                    indent(iIntValue, outPortErrDefault);
                    outPortErrDefault.print("return from ");
                    outPortErrDefault.print(name);
                    outPortErrDefault.print(" => ");
                    put(objApplyN, outPortErrDefault);
                    outPortErrDefault.println();
                    return objApplyN;
                } catch (RuntimeException e) {
                    indent(iIntValue, outPortErrDefault);
                    outPortErrDefault.println("procedure " + name + " throws exception " + e);
                    throw e;
                }
            } catch (Throwable th) {
                location.setRestore(withSave);
                throw th;
            }
        }
        return this.proc.applyN(objArr);
    }

    public static Procedure doTrace(Procedure procedure, boolean z) {
        if (procedure instanceof TracedProcedure) {
            ((TracedProcedure) procedure).enabled = z;
            return procedure;
        }
        return new TracedProcedure(procedure, z);
    }

    public void print(PrintWriter printWriter) {
        printWriter.print("#<procedure ");
        String name = getName();
        if (name == null) {
            printWriter.print("<unnamed>");
        } else {
            printWriter.print(name);
        }
        printWriter.print(this.enabled ? ", traced>" : ">");
    }
}
