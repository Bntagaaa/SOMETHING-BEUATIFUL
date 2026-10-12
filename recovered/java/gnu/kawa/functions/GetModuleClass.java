package gnu.kawa.functions;

import androidx.fragment.app.FragmentTransaction;
import gnu.bytecode.ClassType;
import gnu.bytecode.Method;
import gnu.bytecode.Type;
import gnu.expr.ApplyExp;
import gnu.expr.BindingInitializer;
import gnu.expr.Compilation;
import gnu.expr.Declaration;
import gnu.expr.Expression;
import gnu.expr.Inlineable;
import gnu.expr.QuoteExp;
import gnu.expr.ReferenceExp;
import gnu.expr.Target;
import gnu.mapping.Namespace;
import gnu.mapping.ProcedureN;
import gnu.mapping.Symbol;
import gnu.text.Path;
import gnu.text.URLPath;

/* loaded from: classes2.dex */
public class GetModuleClass extends ProcedureN implements Inlineable {
    private static Symbol CLASS_RESOURCE_NAME;
    public static final GetModuleClass getModuleClass = new GetModuleClass();
    public static final GetModuleClass getModuleUri = new GetModuleClass();
    public static final GetModuleClass getModuleUriDummy = new GetModuleClass();
    static final Method maker;
    static final ClassType typeURLPath;

    static {
        ClassType classTypeMake = ClassType.make("gnu.text.URLPath");
        typeURLPath = classTypeMake;
        maker = classTypeMake.getDeclaredMethod("classResourcePath", 1);
        CLASS_RESOURCE_NAME = Namespace.getDefaultSymbol("$class_resource_URL$");
    }

    @Override // gnu.mapping.ProcedureN, gnu.mapping.Procedure
    public Object applyN(Object[] objArr) {
        throw new Error("get-module-class must be inlined");
    }

    @Override // gnu.mapping.Procedure
    public int numArgs() {
        if (this == getModuleUriDummy) {
            return FragmentTransaction.TRANSIT_FRAGMENT_OPEN;
        }
        return 0;
    }

    @Override // gnu.expr.Inlineable
    public void compile(ApplyExp applyExp, Compilation compilation, Target target) {
        if (this == getModuleUriDummy) {
            ReferenceExp referenceExp = (ReferenceExp) applyExp.getArgs()[0];
            referenceExp.compile(compilation, target);
            Declaration binding = referenceExp.getBinding();
            Expression value = binding.getValue();
            if (value != null) {
                BindingInitializer.create(binding, value, compilation);
                binding.setValue(null);
                return;
            }
            return;
        }
        compilation.loadClassRef(compilation.mainClass);
        if (this == getModuleUri) {
            compilation.getCode().emitInvoke(maker);
        }
        target.compileFromStack(compilation, applyExp.getType());
    }

    @Override // gnu.mapping.Procedure
    public Type getReturnType(Expression[] expressionArr) {
        return this == getModuleClass ? Type.javalangClassType : typeURLPath;
    }

    public static Expression getModuleClassURI(Compilation compilation) {
        Expression applyExp;
        Declaration declarationLookup = compilation.mainLambda.lookup(CLASS_RESOURCE_NAME);
        if (declarationLookup == null) {
            declarationLookup = new Declaration(CLASS_RESOURCE_NAME, typeURLPath);
            declarationLookup.setFlag(536889344L);
            if (compilation.immediate) {
                Path sourceAbsPath = compilation.minfo.getSourceAbsPath();
                if (sourceAbsPath == null) {
                    sourceAbsPath = Path.currentPath();
                }
                if (!(sourceAbsPath instanceof URLPath)) {
                    sourceAbsPath = URLPath.valueOf(sourceAbsPath.toURL());
                }
                applyExp = QuoteExp.getInstance(sourceAbsPath);
            } else {
                applyExp = new ApplyExp(maker, new ApplyExp(getModuleClass, Expression.noExpressions));
            }
            declarationLookup.setValue(applyExp);
            compilation.mainLambda.add(null, declarationLookup);
        }
        ReferenceExp referenceExp = new ReferenceExp(declarationLookup);
        return compilation.immediate ? referenceExp : new ApplyExp(getModuleUriDummy, referenceExp);
    }
}
