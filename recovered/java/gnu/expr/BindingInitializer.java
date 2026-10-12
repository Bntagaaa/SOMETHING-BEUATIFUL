package gnu.expr;

import gnu.bytecode.ClassType;
import gnu.bytecode.CodeAttr;
import gnu.bytecode.Field;
import gnu.bytecode.Method;
import gnu.bytecode.Type;
import gnu.bytecode.Variable;
import gnu.mapping.EnvironmentKey;
import gnu.mapping.Namespace;
import gnu.mapping.Symbol;
import gnu.text.SourceLocator;
import gnu.text.SourceMessages;

/* loaded from: classes2.dex */
public class BindingInitializer extends Initializer {
    static final ClassType typeThreadLocation = ClassType.make("gnu.mapping.ThreadLocation");
    Declaration decl;
    Expression value;

    public static void create(Declaration declaration, Expression expression, Compilation compilation) {
        BindingInitializer bindingInitializer = new BindingInitializer(declaration, expression);
        Field field = declaration.field;
        if (field == null ? declaration.isStatic() : field.getStaticFlag()) {
            bindingInitializer.next = compilation.clinitChain;
            compilation.clinitChain = bindingInitializer;
        } else {
            ModuleExp moduleExp = compilation.mainLambda;
            bindingInitializer.next = moduleExp.initChain;
            moduleExp.initChain = bindingInitializer;
        }
    }

    public BindingInitializer(Declaration declaration, Expression expression) {
        this.decl = declaration;
        this.value = expression;
        this.field = declaration.field;
    }

    @Override // gnu.expr.Initializer
    public void emit(Compilation compilation) {
        Object value;
        if (this.decl.ignorable()) {
            Expression expression = this.value;
            if (expression != null) {
                expression.compile(compilation, Target.Ignore);
                return;
            }
            return;
        }
        CodeAttr code = compilation.getCode();
        Expression expression2 = this.value;
        if (!(expression2 instanceof QuoteExp) || (value = ((QuoteExp) expression2).getValue()) == null || (value instanceof String) || compilation.litTable.findLiteral(value).field != this.field) {
            int lineNumber = this.decl.getLineNumber();
            SourceMessages messages = compilation.getMessages();
            SourceLocator sourceLocatorSwapSourceLocator = messages.swapSourceLocator(this.decl);
            if (lineNumber > 0) {
                code.putLineNumber(this.decl.getFileName(), lineNumber);
            }
            Field field = this.field;
            if (field != null && !field.getStaticFlag()) {
                code.emitPushThis();
            }
            if (this.value == null) {
                Object obj = (compilation.getLanguage().hasSeparateFunctionNamespace() && this.decl.isProcedureDecl()) ? EnvironmentKey.FUNCTION : null;
                Object symbol = this.decl.getSymbol();
                if (this.decl.getFlag(268500992L)) {
                    if (symbol instanceof String) {
                        symbol = Namespace.EmptyNamespace.getSymbol((String) symbol);
                    }
                    Target target = Target.pushObject;
                    compilation.compileConstant(symbol, target);
                    if (obj == null) {
                        code.emitPushNull();
                    } else {
                        compilation.compileConstant(obj, target);
                    }
                    code.emitInvokeStatic(typeThreadLocation.getDeclaredMethod("getInstance", 2));
                } else if (this.decl.isFluid()) {
                    ClassType classType = symbol instanceof Symbol ? Compilation.typeSymbol : Type.toStringType;
                    compilation.compileConstant(symbol, Target.pushObject);
                    code.emitInvokeStatic(typeThreadLocation.getDeclaredMethod("makeAnonymous", new Type[]{classType}));
                } else {
                    compilation.compileConstant(symbol, Target.pushObject);
                    code.emitInvokeStatic(makeLocationMethod(symbol));
                }
            } else {
                Field field2 = this.field;
                this.value.compileWithPosition(compilation, StackTarget.getInstance(field2 == null ? this.decl.getType() : field2.getType()));
            }
            Field field3 = this.field;
            if (field3 == null) {
                Variable variable = this.decl.getVariable();
                if (variable == null) {
                    variable = this.decl.allocateVariable(code);
                }
                code.emitStore(variable);
            } else if (field3.getStaticFlag()) {
                code.emitPutStatic(this.field);
            } else {
                code.emitPutField(this.field);
            }
            messages.swapSourceLocator(sourceLocatorSwapSourceLocator);
        }
    }

    public static Method makeLocationMethod(Object obj) {
        Type[] typeArr = new Type[1];
        if (obj instanceof Symbol) {
            typeArr[0] = Compilation.typeSymbol;
        } else {
            typeArr[0] = Type.javalangStringType;
        }
        return Compilation.typeLocation.getDeclaredMethod("make", typeArr);
    }
}
