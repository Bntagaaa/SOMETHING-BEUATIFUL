package gnu.expr;

/* loaded from: classes2.dex */
class BlockExitException extends RuntimeException {
    ExitExp exit;
    Object result;

    public BlockExitException(ExitExp exitExp, Object obj) {
        this.exit = exitExp;
        this.result = obj;
    }
}
