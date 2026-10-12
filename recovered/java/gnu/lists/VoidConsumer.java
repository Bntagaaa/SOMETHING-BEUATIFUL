package gnu.lists;

/* loaded from: classes2.dex */
public class VoidConsumer extends FilterConsumer {
    public static VoidConsumer instance = new VoidConsumer();

    @Override // gnu.lists.FilterConsumer, gnu.lists.Consumer
    public boolean ignoring() {
        return true;
    }

    public static VoidConsumer getInstance() {
        return instance;
    }

    public VoidConsumer() {
        super(null);
        this.skipping = true;
    }
}
