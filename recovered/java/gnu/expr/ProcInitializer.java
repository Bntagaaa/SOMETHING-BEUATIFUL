package gnu.expr;

import gnu.bytecode.ClassType;
import gnu.bytecode.CodeAttr;
import gnu.bytecode.Field;
import gnu.bytecode.Method;
import gnu.mapping.Environment;
import gnu.mapping.PropertySet;
import gnu.mapping.Symbol;

/* loaded from: classes2.dex */
public class ProcInitializer extends Initializer {
    LambdaExp proc;

    public ProcInitializer(LambdaExp lambdaExp, Compilation compilation, Field field) {
        this.field = field;
        this.proc = lambdaExp;
        LambdaExp module = field.getStaticFlag() ? compilation.getModule() : lambdaExp.getOwningLambda();
        if ((module instanceof ModuleExp) && compilation.isStatic()) {
            this.next = compilation.clinitChain;
            compilation.clinitChain = this;
        } else {
            this.next = module.initChain;
            module.initChain = this;
        }
    }

    public static void emitLoadModuleMethod(LambdaExp lambdaExp, Compilation compilation) {
        String str;
        Declaration declaration = lambdaExp.nameDecl;
        Object name = declaration == null ? lambdaExp.getName() : declaration.getSymbol();
        ModuleMethod moduleMethod = null;
        if (compilation.immediate && name != null && declaration != null) {
            Object obj = Environment.getCurrent().get(name instanceof Symbol ? (Symbol) name : Symbol.make("", name.toString().intern()), compilation.getLanguage().getEnvPropertyFor(lambdaExp.nameDecl), null);
            if (obj instanceof ModuleMethod) {
                moduleMethod = (ModuleMethod) obj;
            }
        }
        CodeAttr code = compilation.getCode();
        ClassType classType = Compilation.typeModuleMethod;
        if (moduleMethod == null) {
            code.emitNew(classType);
            code.emitDup(1);
            str = "<init>";
        } else {
            compilation.compileConstant(moduleMethod, Target.pushValue(classType));
            str = "init";
        }
        Method declaredMethod = classType.getDeclaredMethod(str, 4);
        LambdaExp owningLambda = lambdaExp.getNeedsClosureEnv() ? lambdaExp.getOwningLambda() : compilation.getModule();
        if ((owningLambda instanceof ClassExp) && owningLambda.staticLinkField != null) {
            code.emitLoad(code.getCurrentScope().getVariable(1));
        } else if (!(owningLambda instanceof ModuleExp) || (compilation.moduleClass == compilation.mainClass && !compilation.method.getStaticFlag())) {
            code.emitPushThis();
        } else {
            if (compilation.moduleInstanceVar == null) {
                compilation.moduleInstanceVar = code.locals.current_scope.addVariable(code, compilation.moduleClass, "$instance");
                if (compilation.moduleClass != compilation.mainClass && !compilation.isStatic()) {
                    code.emitNew(compilation.moduleClass);
                    code.emitDup(compilation.moduleClass);
                    code.emitInvokeSpecial(compilation.moduleClass.constructor);
                    compilation.moduleInstanceMainField = compilation.moduleClass.addField("$main", compilation.mainClass, 0);
                    code.emitDup(compilation.moduleClass);
                    code.emitPushThis();
                    code.emitPutField(compilation.moduleInstanceMainField);
                } else {
                    code.emitGetStatic(compilation.moduleInstanceMainField);
                }
                code.emitStore(compilation.moduleInstanceVar);
            }
            code.emitLoad(compilation.moduleInstanceVar);
        }
        code.emitPushInt(lambdaExp.getSelectorValue(compilation));
        compilation.compileConstant(name, Target.pushObject);
        code.emitPushInt(lambdaExp.min_args | ((lambdaExp.keywords == null ? lambdaExp.max_args : -1) << 12));
        code.emitInvoke(declaredMethod);
        Object[] objArr = lambdaExp.properties;
        if (objArr != null) {
            int length = objArr.length;
            for (int i = 0; i < length; i += 2) {
                Object[] objArr2 = lambdaExp.properties;
                Object obj2 = objArr2[i];
                if (obj2 != null && obj2 != PropertySet.nameKey) {
                    Object obj3 = objArr2[i + 1];
                    code.emitDup(1);
                    compilation.compileConstant(obj2);
                    Target target = Target.pushObject;
                    if (obj3 instanceof Expression) {
                        ((Expression) obj3).compile(compilation, target);
                    } else {
                        compilation.compileConstant(obj3, target);
                    }
                    code.emitInvokeVirtual(ClassType.make("gnu.mapping.PropertySet").getDeclaredMethod("setProperty", 2));
                }
            }
        }
    }

    @Override // gnu.expr.Initializer
    public void emit(Compilation compilation) {
        CodeAttr code = compilation.getCode();
        if (!this.field.getStaticFlag()) {
            code.emitPushThis();
        }
        emitLoadModuleMethod(this.proc, compilation);
        if (this.field.getStaticFlag()) {
            code.emitPutStatic(this.field);
        } else {
            code.emitPutField(this.field);
        }
    }

    @Override // gnu.expr.Initializer
    public void reportError(String str, Compilation compilation) {
        String fileName = compilation.getFileName();
        int lineNumber = compilation.getLineNumber();
        int columnNumber = compilation.getColumnNumber();
        compilation.setLocation(this.proc);
        String name = this.proc.getName();
        StringBuffer stringBuffer = new StringBuffer(str);
        if (name == null) {
            stringBuffer.append("unnamed procedure");
        } else {
            stringBuffer.append("procedure ");
            stringBuffer.append(name);
        }
        compilation.error('e', stringBuffer.toString());
        compilation.setLine(fileName, lineNumber, columnNumber);
    }
}
