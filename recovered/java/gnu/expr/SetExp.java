package gnu.expr;

import gnu.bytecode.ClassType;
import gnu.bytecode.CodeAttr;
import gnu.bytecode.Field;
import gnu.bytecode.Method;
import gnu.bytecode.Type;
import gnu.bytecode.Variable;
import gnu.kawa.functions.AddOp;
import gnu.mapping.OutPort;
import gnu.mapping.Values;
import gnu.math.IntNum;
import java.io.IOException;

/* loaded from: classes2.dex */
public class SetExp extends AccessExp {
    public static final int BAD_SHORT = 65536;
    public static final int DEFINING_FLAG = 2;
    public static final int GLOBAL_FLAG = 4;
    public static final int HAS_VALUE = 64;
    public static final int PREFER_BINDING2 = 8;
    public static final int PROCEDURE = 16;
    public static final int SET_IF_UNBOUND = 32;
    Expression new_value;

    @Override // gnu.expr.Expression
    public boolean mustCompile() {
        return false;
    }

    public SetExp(Object obj, Expression expression) {
        this.symbol = obj;
        this.new_value = expression;
    }

    public SetExp(Declaration declaration, Expression expression) {
        this.binding = declaration;
        this.symbol = declaration.getSymbol();
        this.new_value = expression;
    }

    public static SetExp makeDefinition(Object obj, Expression expression) {
        SetExp setExp = new SetExp(obj, expression);
        setExp.setDefining(true);
        return setExp;
    }

    public static SetExp makeDefinition(Declaration declaration, Expression expression) {
        SetExp setExp = new SetExp(declaration, expression);
        setExp.setDefining(true);
        return setExp;
    }

    public final Expression getNewValue() {
        return this.new_value;
    }

    public final boolean isDefining() {
        return (this.flags & 2) != 0;
    }

    public final void setDefining(boolean z) {
        this.flags = z ? this.flags | 2 : this.flags & (-3);
    }

    public final boolean getHasValue() {
        return (this.flags & 64) != 0;
    }

    public final void setHasValue(boolean z) {
        this.flags = z ? this.flags | 64 : this.flags & (-65);
    }

    public final boolean isFuncDef() {
        return (this.flags & 16) != 0;
    }

    public final void setFuncDef(boolean z) {
        this.flags = z ? this.flags | 16 : this.flags & (-17);
    }

    public final boolean isSetIfUnbound() {
        return (this.flags & 32) != 0;
    }

    public final void setSetIfUnbound(boolean z) {
        this.flags = z ? this.flags | 32 : this.flags & (-33);
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x0091  */
    @Override // gnu.expr.Expression, gnu.mapping.Procedure
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void apply(gnu.mapping.CallContext r7) throws java.lang.Throwable {
        /*
            r6 = this;
            gnu.mapping.Environment r0 = gnu.mapping.Environment.getCurrent()
            java.lang.Object r1 = r6.symbol
            boolean r2 = r1 instanceof gnu.mapping.Symbol
            if (r2 == 0) goto Ld
            gnu.mapping.Symbol r1 = (gnu.mapping.Symbol) r1
            goto L15
        Ld:
            java.lang.String r1 = r1.toString()
            gnu.mapping.Symbol r1 = r0.getSymbol(r1)
        L15:
            gnu.expr.Language r2 = gnu.expr.Language.getDefaultLanguage()
            boolean r3 = r6.isFuncDef()
            if (r3 == 0) goto L28
            boolean r2 = r2.hasSeparateFunctionNamespace()
            if (r2 == 0) goto L28
            java.lang.Object r2 = gnu.mapping.EnvironmentKey.FUNCTION
            goto L29
        L28:
            r2 = 0
        L29:
            boolean r3 = r6.isSetIfUnbound()
            if (r3 == 0) goto L4c
            gnu.mapping.Location r1 = r0.getLocation(r1, r2)
            boolean r2 = r1.isBound()
            if (r2 != 0) goto L42
            gnu.expr.Expression r2 = r6.new_value
            java.lang.Object r0 = r2.eval(r0)
            r1.set(r0)
        L42:
            boolean r0 = r6.getHasValue()
            if (r0 == 0) goto La7
            r7.writeValue(r1)
            return
        L4c:
            gnu.expr.Expression r3 = r6.new_value
            java.lang.Object r3 = r3.eval(r0)
            gnu.expr.Declaration r4 = r6.binding
            if (r4 == 0) goto L91
            gnu.expr.ScopeExp r4 = r4.context
            boolean r5 = r4 instanceof gnu.expr.ModuleExp
            if (r5 != 0) goto L91
            java.lang.Object[][] r0 = r7.evalFrames
            int r2 = gnu.expr.ScopeExp.nesting(r4)
            r0 = r0[r2]
            gnu.expr.Declaration r2 = r6.binding
            boolean r2 = r2.isIndirectBinding()
            if (r2 == 0) goto L8a
            boolean r2 = r6.isDefining()
            if (r2 == 0) goto L7c
            gnu.expr.Declaration r2 = r6.binding
            int r2 = r2.evalIndex
            gnu.mapping.IndirectableLocation r1 = gnu.mapping.Location.make(r1)
            r0[r2] = r1
        L7c:
            gnu.expr.Declaration r1 = r6.binding
            int r1 = r1.evalIndex
            r0 = r0[r1]
            gnu.mapping.Location r0 = (gnu.mapping.Location) r0
            gnu.expr.Expression r1 = r6.new_value
            r0.set(r1)
            goto L9e
        L8a:
            gnu.expr.Declaration r1 = r6.binding
            int r1 = r1.evalIndex
            r0[r1] = r3
            goto L9e
        L91:
            boolean r4 = r6.isDefining()
            if (r4 == 0) goto L9b
            r0.define(r1, r2, r3)
            goto L9e
        L9b:
            r0.put(r1, r2, r3)
        L9e:
            boolean r0 = r6.getHasValue()
            if (r0 == 0) goto La7
            r7.writeValue(r3)
        La7:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.expr.SetExp.apply(gnu.mapping.CallContext):void");
    }

    @Override // gnu.expr.Expression
    public void compile(Compilation compilation, Target target) {
        AccessExp accessExp;
        boolean z;
        AccessExp accessExp2;
        Declaration declaration;
        Expression expression;
        Expression expression2 = this.new_value;
        if ((expression2 instanceof LambdaExp) && (target instanceof IgnoreTarget) && ((LambdaExp) expression2).getInlineOnly()) {
            return;
        }
        CodeAttr code = compilation.getCode();
        boolean z2 = false;
        boolean z3 = getHasValue() && !(target instanceof IgnoreTarget);
        Declaration declaration2 = this.binding;
        Expression value = declaration2.getValue();
        if ((value instanceof LambdaExp) && (declaration2.context instanceof ModuleExp) && !declaration2.ignorable() && ((LambdaExp) value).getName() != null && value == (expression = this.new_value)) {
            ((LambdaExp) expression).compileSetField(compilation);
        } else if ((declaration2.shouldEarlyInit() || declaration2.isAlias()) && (declaration2.context instanceof ModuleExp) && isDefining() && !declaration2.ignorable()) {
            if (declaration2.shouldEarlyInit()) {
                BindingInitializer.create(declaration2, this.new_value, compilation);
            }
            if (z3) {
                declaration2.load(this, 0, compilation, Target.pushObject);
                z2 = true;
            }
        } else {
            Declaration declarationContextDecl = contextDecl();
            if (!isDefining()) {
                accessExp = this;
                while (declaration2.isAlias()) {
                    Expression value2 = declaration2.getValue();
                    if (!(value2 instanceof ReferenceExp) || (declaration = (accessExp2 = (ReferenceExp) value2).binding) == null || (declarationContextDecl != null && declaration.needsContext())) {
                        break;
                    }
                    declarationContextDecl = accessExp2.contextDecl();
                    accessExp = accessExp2;
                    declaration2 = declaration;
                }
            } else {
                accessExp = this;
            }
            if (declaration2.ignorable()) {
                this.new_value.compile(compilation, Target.Ignore);
            } else if (declaration2.isAlias() && isDefining()) {
                Target target2 = Target.pushObject;
                declaration2.load(this, 2, compilation, target2);
                ClassType classTypeMake = ClassType.make("gnu.mapping.IndirectableLocation");
                code.emitCheckcast(classTypeMake);
                this.new_value.compile(compilation, target2);
                code.emitInvokeVirtual(classTypeMake.getDeclaredMethod("setAlias", 1));
            } else if (declaration2.isIndirectBinding()) {
                Target target3 = Target.pushObject;
                declaration2.load(accessExp, 2, compilation, target3);
                if (isSetIfUnbound()) {
                    if (z3) {
                        code.emitDup();
                        z = true;
                    } else {
                        z = false;
                    }
                    code.pushScope();
                    code.emitDup();
                    Variable variableAddLocal = code.addLocal(Compilation.typeLocation);
                    code.emitStore(variableAddLocal);
                    code.emitInvokeVirtual(Compilation.typeLocation.getDeclaredMethod("isBound", 0));
                    code.emitIfIntEqZero();
                    code.emitLoad(variableAddLocal);
                    z2 = z;
                }
                this.new_value.compile(compilation, target3);
                if (z3 && !isSetIfUnbound()) {
                    code.emitDupX();
                    z2 = true;
                }
                code.emitInvokeVirtual(Compilation.typeLocation.getDeclaredMethod("set", 1));
                if (isSetIfUnbound()) {
                    code.emitFi();
                    code.popScope();
                }
            } else if (declaration2.isSimple()) {
                Type type = declaration2.getType();
                Variable variable = declaration2.getVariable();
                if (variable == null) {
                    variable = declaration2.allocateVariable(code);
                }
                int iCanUseInc = canUseInc(this.new_value, declaration2);
                if (iCanUseInc != 65536) {
                    compilation.getCode().emitInc(variable, (short) iCanUseInc);
                    if (z3) {
                        code.emitLoad(variable);
                        z2 = true;
                    }
                } else {
                    this.new_value.compile(compilation, declaration2);
                    if (z3) {
                        code.emitDup(type);
                        z2 = true;
                    }
                    code.emitStore(variable);
                }
            } else if ((declaration2.context instanceof ClassExp) && declaration2.field == null && !getFlag(16) && ((ClassExp) declaration2.context).isMakingClassPair()) {
                String strSlotToMethodName = ClassExp.slotToMethodName("set", declaration2.getName());
                ClassExp classExp = (ClassExp) declaration2.context;
                Method declaredMethod = classExp.type.getDeclaredMethod(strSlotToMethodName, 1);
                classExp.loadHeapFrame(compilation);
                this.new_value.compile(compilation, declaration2);
                if (z3) {
                    code.emitDupX();
                    z2 = true;
                }
                code.emitInvoke(declaredMethod);
            } else {
                Field field = declaration2.field;
                if (!field.getStaticFlag()) {
                    declaration2.loadOwningObject(declarationContextDecl, compilation);
                }
                Type type2 = field.getType();
                this.new_value.compile(compilation, declaration2);
                compilation.usedClass(field.getDeclaringClass());
                if (field.getStaticFlag()) {
                    if (z3) {
                        code.emitDup(type2);
                        z2 = true;
                    }
                    code.emitPutStatic(field);
                } else {
                    if (z3) {
                        code.emitDupX();
                        z2 = true;
                    }
                    code.emitPutField(field);
                }
            }
        }
        if (z3 && !z2) {
            throw new Error("SetExp.compile: not implemented - return value");
        }
        if (z3) {
            target.compileFromStack(compilation, getType());
        } else {
            compilation.compileConstant(Values.empty, target);
        }
    }

    public static int canUseInc(Expression expression, Declaration declaration) {
        int i;
        int i2;
        int i3;
        Variable variable = declaration.getVariable();
        if (!declaration.isSimple() || variable.getType().getImplementationType().promote() != Type.intType || !(expression instanceof ApplyExp)) {
            return 65536;
        }
        ApplyExp applyExp = (ApplyExp) expression;
        if (applyExp.getArgCount() != 2) {
            return 65536;
        }
        Object objValueIfConstant = applyExp.getFunction().valueIfConstant();
        if (objValueIfConstant == AddOp.$Pl) {
            i = 1;
        } else {
            if (objValueIfConstant != AddOp.$Mn) {
                return 65536;
            }
            i = -1;
        }
        Expression arg = applyExp.getArg(0);
        Expression arg2 = applyExp.getArg(1);
        if ((arg instanceof QuoteExp) && i > 0) {
            arg = arg2;
            arg2 = arg;
        }
        if (!(arg instanceof ReferenceExp)) {
            return 65536;
        }
        ReferenceExp referenceExp = (ReferenceExp) arg;
        if (referenceExp.getBinding() != declaration || referenceExp.getDontDereference()) {
            return 65536;
        }
        Object objValueIfConstant2 = arg2.valueIfConstant();
        if (objValueIfConstant2 instanceof Integer) {
            int iIntValue = ((Integer) objValueIfConstant2).intValue();
            if (i < 0) {
                iIntValue = -iIntValue;
            }
            if (((short) iIntValue) == iIntValue) {
                return iIntValue;
            }
            return 65536;
        }
        if (!(objValueIfConstant2 instanceof IntNum)) {
            return 65536;
        }
        IntNum intNum = (IntNum) objValueIfConstant2;
        if (i > 0) {
            i3 = 32767;
            i2 = -32768;
        } else {
            i2 = -32767;
            i3 = 32768;
        }
        if (IntNum.compare(intNum, i2) < 0 || IntNum.compare(intNum, i3) > 0) {
            return 65536;
        }
        return intNum.intValue() * i;
    }

    @Override // gnu.expr.Expression
    public final Type getType() {
        if (!getHasValue()) {
            return Type.voidType;
        }
        Declaration declaration = this.binding;
        return declaration == null ? Type.pointer_type : declaration.getType();
    }

    @Override // gnu.expr.Expression
    public <R, D> R visit(ExpVisitor<R, D> expVisitor, D d) {
        return expVisitor.visitSetExp(this, d);
    }

    @Override // gnu.expr.Expression
    public <R, D> void visitChildren(ExpVisitor<R, D> expVisitor, D d) {
        this.new_value = expVisitor.visitAndUpdate(this.new_value, d);
    }

    @Override // gnu.expr.Expression
    public void print(OutPort outPort) throws IOException {
        outPort.startLogicalBlock(isDefining() ? "(Define" : "(Set", ")", 2);
        outPort.writeSpaceFill();
        printLineColumn(outPort);
        if (this.binding == null || this.symbol.toString() != this.binding.getName()) {
            outPort.print('/');
            outPort.print(this.symbol);
        }
        if (this.binding != null) {
            outPort.print('/');
            outPort.print(this.binding);
        }
        outPort.writeSpaceLinear();
        this.new_value.print(outPort);
        outPort.endLogicalBlock(")");
    }

    @Override // gnu.expr.Expression, gnu.mapping.Procedure
    public String toString() {
        return "SetExp[" + this.symbol + ":=" + this.new_value + ']';
    }
}
