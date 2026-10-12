package kawa.lib;

import androidx.fragment.app.FragmentTransaction;
import com.google.youngandroid.a;
import gnu.expr.Keyword;
import gnu.expr.ModuleBody;
import gnu.expr.ModuleInfo;
import gnu.expr.ModuleMethod;
import gnu.lists.Consumer;
import gnu.mapping.CallContext;
import gnu.mapping.SimpleSymbol;
import gnu.mapping.WrongType;

/* loaded from: classes2.dex */
public class keywords extends ModuleBody {
    public static final keywords $instance;
    static final SimpleSymbol Lit0;
    static final SimpleSymbol Lit1;
    static final SimpleSymbol Lit2;
    public static final ModuleMethod keyword$Mn$Grstring;
    public static final ModuleMethod keyword$Qu;
    public static final ModuleMethod string$Mn$Grkeyword;

    static {
        SimpleSymbol simpleSymbol = (SimpleSymbol) a.f("string->keyword");
        Lit2 = simpleSymbol;
        SimpleSymbol simpleSymbol2 = (SimpleSymbol) a.f("keyword->string");
        Lit1 = simpleSymbol2;
        SimpleSymbol simpleSymbol3 = (SimpleSymbol) a.f("keyword?");
        Lit0 = simpleSymbol3;
        keywords keywordsVar = new keywords();
        $instance = keywordsVar;
        keyword$Qu = new ModuleMethod(keywordsVar, 1, simpleSymbol3, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        keyword$Mn$Grstring = new ModuleMethod(keywordsVar, 2, simpleSymbol2, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        string$Mn$Grkeyword = new ModuleMethod(keywordsVar, 3, simpleSymbol, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        keywordsVar.run();
    }

    public keywords() {
        ModuleInfo.register(this);
    }

    @Override // gnu.expr.ModuleBody
    public final void run(CallContext callContext) {
        Consumer consumer = callContext.consumer;
    }

    @Override // gnu.expr.ModuleBody
    public int match1(ModuleMethod moduleMethod, Object obj, CallContext callContext) {
        int i = moduleMethod.selector;
        if (i == 1) {
            callContext.value1 = obj;
            callContext.proc = moduleMethod;
            callContext.pc = 1;
            return 0;
        }
        if (i != 2) {
            if (i != 3) {
                return super.match1(moduleMethod, obj, callContext);
            }
            callContext.value1 = obj;
            callContext.proc = moduleMethod;
            callContext.pc = 1;
            return 0;
        }
        if (!(obj instanceof Keyword)) {
            return -786431;
        }
        callContext.value1 = obj;
        callContext.proc = moduleMethod;
        callContext.pc = 1;
        return 0;
    }

    public static boolean isKeyword(Object obj) {
        return Keyword.isKeyword(obj);
    }

    @Override // gnu.expr.ModuleBody
    public Object apply1(ModuleMethod moduleMethod, Object obj) {
        int i = moduleMethod.selector;
        if (i == 1) {
            return isKeyword(obj) ? Boolean.TRUE : Boolean.FALSE;
        }
        if (i != 2) {
            if (i != 3) {
                return super.apply1(moduleMethod, obj);
            }
            return Keyword.make(obj == null ? null : obj.toString());
        }
        try {
            return ((Keyword) obj).getName();
        } catch (ClassCastException e) {
            throw new WrongType(e, "keyword->string", 1, obj);
        }
    }
}
