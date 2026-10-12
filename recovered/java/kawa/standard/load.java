package kawa.standard;

import gnu.mapping.Environment;
import gnu.mapping.Procedure1;
import gnu.mapping.Values;
import gnu.text.Path;
import gnu.text.SyntaxException;
import java.io.FileNotFoundException;
import kawa.Shell;

/* loaded from: classes2.dex */
public class load extends Procedure1 {
    public static final load load = new load("load", false);
    public static final load loadRelative = new load("load-relative", true);
    boolean relative;

    public load(String str, boolean z) {
        super(str);
        this.relative = z;
    }

    @Override // gnu.mapping.Procedure1, gnu.mapping.Procedure
    public final Object apply1(Object obj) throws Throwable {
        return apply2(obj, Environment.getCurrent());
    }

    @Override // gnu.mapping.Procedure1, gnu.mapping.Procedure
    public final Object apply2(Object obj, Object obj2) throws Throwable {
        Path path;
        try {
            Environment environment = (Environment) obj2;
            Path pathValueOf = Path.valueOf(obj);
            if (this.relative && (path = (Path) Shell.currentLoadPath.get()) != null) {
                pathValueOf = path.resolve(pathValueOf);
            }
            Shell.runFile(pathValueOf.openInputStream(), pathValueOf, environment, true, 0);
            return Values.empty;
        } catch (SyntaxException e) {
            throw new RuntimeException("load: errors while compiling '" + obj + "':\n" + e.getMessages().toString(20));
        } catch (FileNotFoundException e2) {
            throw new RuntimeException("cannot load " + e2.getMessage());
        }
    }
}
