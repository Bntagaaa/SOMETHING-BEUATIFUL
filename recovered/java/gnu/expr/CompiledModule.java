package gnu.expr;

import gnu.lists.AbstractFormat;
import gnu.lists.Consumer;
import gnu.lists.VoidConsumer;
import gnu.mapping.CallContext;
import gnu.mapping.Environment;
import gnu.mapping.OutPort;
import java.io.Writer;
import kawa.Shell;

/* loaded from: classes2.dex */
public class CompiledModule {
    Object cookie;
    Language language;
    ModuleExp mexp;

    public CompiledModule(ModuleExp moduleExp, Object obj, Language language) {
        this.mexp = moduleExp;
        this.cookie = obj;
        this.language = language;
    }

    public static CompiledModule make(Class cls, Language language) {
        return new CompiledModule(null, cls, language);
    }

    public void evalModule(Environment environment, CallContext callContext) throws Throwable {
        Language saveCurrent = Language.setSaveCurrent(this.language);
        Environment saveCurrent2 = Environment.setSaveCurrent(environment);
        try {
            ModuleExp.evalModule2(environment, callContext, this.language, this.mexp, this.cookie);
        } finally {
            Language.restoreCurrent(saveCurrent);
            Environment.restoreCurrent(saveCurrent2);
        }
    }

    public void evalModule(Environment environment, OutPort outPort) throws Throwable {
        CallContext callContext = CallContext.getInstance();
        Consumer consumer = callContext.consumer;
        boolean mainPrintValues = ModuleBody.getMainPrintValues();
        AbstractFormat abstractFormat = outPort.objectFormat;
        callContext.consumer = mainPrintValues ? Shell.getOutputConsumer(outPort) : new VoidConsumer();
        try {
            evalModule(environment, callContext);
            Appendable appendable = callContext.consumer;
            if (appendable instanceof Writer) {
                ((Writer) appendable).flush();
            }
            callContext.consumer = consumer;
            outPort.objectFormat = abstractFormat;
        } catch (Throwable th) {
            if (callContext.consumer instanceof Writer) {
                ((Writer) callContext.consumer).flush();
            }
            callContext.consumer = consumer;
            outPort.objectFormat = abstractFormat;
            throw th;
        }
    }

    public Object evalToResultValue(Environment environment, CallContext callContext) throws Throwable {
        int iStartFromContext = callContext.startFromContext();
        try {
            evalModule(environment, callContext);
            return callContext.getFromContext(iStartFromContext);
        } catch (Throwable th) {
            callContext.cleanupFromContext(iStartFromContext);
            throw th;
        }
    }
}
