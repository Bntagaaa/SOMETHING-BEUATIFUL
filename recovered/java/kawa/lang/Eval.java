package kawa.lang;

import gnu.expr.Compilation;
import gnu.expr.Language;
import gnu.expr.ModuleExp;
import gnu.expr.NameLookup;
import gnu.lists.LList;
import gnu.lists.PairWithPosition;
import gnu.mapping.CallContext;
import gnu.mapping.Environment;
import gnu.mapping.Procedure;
import gnu.mapping.Procedure1or2;
import gnu.text.SourceMessages;

/* loaded from: classes2.dex */
public class Eval extends Procedure1or2 {
    public static final Eval eval;
    static final String evalFunctionName = "atEvalLevel$";

    static {
        Eval eval2 = new Eval();
        eval = eval2;
        eval2.setName("eval");
    }

    public static void eval(Object obj, Environment environment, CallContext callContext) throws Throwable {
        PairWithPosition pairWithPosition;
        if (obj instanceof PairWithPosition) {
            pairWithPosition = new PairWithPosition((PairWithPosition) obj, obj, LList.Empty);
        } else {
            pairWithPosition = new PairWithPosition(obj, LList.Empty);
            pairWithPosition.setFile("<eval>");
        }
        evalBody(pairWithPosition, environment, new SourceMessages(), callContext);
    }

    public static Object evalBody(Object obj, Environment environment, SourceMessages sourceMessages) throws Throwable {
        CallContext callContext = CallContext.getInstance();
        int iStartFromContext = callContext.startFromContext();
        try {
            evalBody(obj, environment, sourceMessages, callContext);
            return callContext.getFromContext(iStartFromContext);
        } catch (Throwable th) {
            callContext.cleanupFromContext(iStartFromContext);
            throw th;
        }
    }

    public static Object eval(Object obj, Environment environment) throws Throwable {
        CallContext callContext = CallContext.getInstance();
        int iStartFromContext = callContext.startFromContext();
        try {
            eval(obj, environment, callContext);
            return callContext.getFromContext(iStartFromContext);
        } catch (Throwable th) {
            callContext.cleanupFromContext(iStartFromContext);
            throw th;
        }
    }

    public static void evalBody(Object obj, Environment environment, SourceMessages sourceMessages, CallContext callContext) throws Throwable {
        Language defaultLanguage = Language.getDefaultLanguage();
        Environment current = Environment.getCurrent();
        if (environment != current) {
            try {
                Environment.setCurrent(environment);
            } catch (Throwable th) {
                if (environment != current) {
                    Environment.setCurrent(current);
                }
                throw th;
            }
        }
        Translator translator = new Translator(defaultLanguage, sourceMessages, NameLookup.getInstance(environment, defaultLanguage));
        translator.immediate = true;
        translator.setState(3);
        translator.setSharedModuleDefs(true);
        ModuleExp moduleExpPushNewModule = translator.pushNewModule((String) null);
        Compilation saveCurrent = Compilation.setSaveCurrent(translator);
        try {
            int size = translator.formStack.size();
            translator.scanBody(obj, moduleExpPushNewModule, false);
            translator.firstForm = size;
            translator.finishModule(moduleExpPushNewModule);
            Compilation.restoreCurrent(saveCurrent);
            if (obj instanceof PairWithPosition) {
                moduleExpPushNewModule.setFile(((PairWithPosition) obj).getFileName());
            }
            StringBuilder sb = new StringBuilder(evalFunctionName);
            int i = ModuleExp.interactiveCounter + 1;
            ModuleExp.interactiveCounter = i;
            sb.append(i);
            moduleExpPushNewModule.setName(sb.toString());
            ModuleExp.evalModule(environment, callContext, translator, null, null);
            if (sourceMessages.seenErrors()) {
                throw new RuntimeException("invalid syntax in eval form:\n" + sourceMessages.toString(20));
            }
            if (environment != current) {
                Environment.setCurrent(current);
            }
        } catch (Throwable th2) {
            Compilation.restoreCurrent(saveCurrent);
            throw th2;
        }
    }

    @Override // gnu.mapping.Procedure1or2, gnu.mapping.Procedure
    public Object apply1(Object obj) throws Throwable {
        return eval(obj, Environment.user());
    }

    @Override // gnu.mapping.Procedure1or2, gnu.mapping.Procedure
    public Object apply2(Object obj, Object obj2) throws Throwable {
        return eval(obj, (Environment) obj2);
    }

    @Override // gnu.mapping.Procedure
    public void apply(CallContext callContext) throws Throwable {
        Procedure.checkArgCount(this, callContext.count);
        Object nextArg = callContext.getNextArg();
        Environment environmentUser = (Environment) callContext.getNextArg(null);
        if (environmentUser == null) {
            environmentUser = Environment.user();
        }
        callContext.lastArg();
        eval(nextArg, environmentUser, callContext);
    }
}
