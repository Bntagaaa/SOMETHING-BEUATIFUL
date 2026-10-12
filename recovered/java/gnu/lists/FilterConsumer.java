package gnu.lists;

/* loaded from: classes2.dex */
public class FilterConsumer implements XConsumer {
    protected Object attributeType;
    protected Consumer base;
    protected boolean inAttribute;
    protected boolean skipping;

    public void beforeContent() {
    }

    public void beforeNode() {
    }

    public FilterConsumer(Consumer consumer) {
        this.base = consumer;
    }

    @Override // gnu.lists.Consumer
    public void write(int i) {
        beforeContent();
        if (this.skipping) {
            return;
        }
        this.base.write(i);
    }

    @Override // gnu.lists.Consumer
    public void writeBoolean(boolean z) {
        beforeContent();
        if (this.skipping) {
            return;
        }
        this.base.writeBoolean(z);
    }

    @Override // gnu.lists.Consumer
    public void writeFloat(float f) {
        beforeContent();
        if (this.skipping) {
            return;
        }
        this.base.writeFloat(f);
    }

    @Override // gnu.lists.Consumer
    public void writeDouble(double d) {
        beforeContent();
        if (this.skipping) {
            return;
        }
        this.base.writeDouble(d);
    }

    @Override // gnu.lists.Consumer
    public void writeInt(int i) {
        beforeContent();
        if (this.skipping) {
            return;
        }
        this.base.writeInt(i);
    }

    @Override // gnu.lists.Consumer
    public void writeLong(long j) {
        beforeContent();
        if (this.skipping) {
            return;
        }
        this.base.writeLong(j);
    }

    @Override // gnu.lists.Consumer
    public void startDocument() {
        if (this.skipping) {
            return;
        }
        this.base.startDocument();
    }

    @Override // gnu.lists.Consumer
    public void endDocument() {
        if (this.skipping) {
            return;
        }
        this.base.endDocument();
    }

    @Override // gnu.lists.Consumer
    public void startElement(Object obj) {
        if (this.skipping) {
            return;
        }
        beforeNode();
        this.base.startElement(obj);
    }

    @Override // gnu.lists.Consumer
    public void endElement() {
        if (this.skipping) {
            return;
        }
        this.base.endElement();
    }

    @Override // gnu.lists.Consumer
    public void startAttribute(Object obj) {
        this.attributeType = obj;
        this.inAttribute = true;
        if (this.skipping) {
            return;
        }
        beforeNode();
        this.base.startAttribute(obj);
    }

    @Override // gnu.lists.Consumer
    public void endAttribute() {
        if (!this.skipping) {
            this.base.endAttribute();
        }
        this.inAttribute = false;
    }

    @Override // gnu.lists.XConsumer
    public void writeComment(char[] cArr, int i, int i2) {
        if (this.skipping) {
            return;
        }
        beforeNode();
        Consumer consumer = this.base;
        if (consumer instanceof XConsumer) {
            ((XConsumer) consumer).writeComment(cArr, i, i2);
        }
    }

    @Override // gnu.lists.XConsumer
    public void writeProcessingInstruction(String str, char[] cArr, int i, int i2) {
        if (this.skipping) {
            return;
        }
        beforeNode();
        Consumer consumer = this.base;
        if (consumer instanceof XConsumer) {
            ((XConsumer) consumer).writeProcessingInstruction(str, cArr, i, i2);
        }
    }

    @Override // gnu.lists.XConsumer
    public void writeCDATA(char[] cArr, int i, int i2) {
        beforeContent();
        if (this.skipping) {
            return;
        }
        Consumer consumer = this.base;
        if (consumer instanceof XConsumer) {
            ((XConsumer) consumer).writeCDATA(cArr, i, i2);
        } else {
            consumer.write(cArr, i, i2);
        }
    }

    @Override // gnu.lists.XConsumer
    public void beginEntity(Object obj) {
        if (this.skipping) {
            return;
        }
        beforeNode();
        Consumer consumer = this.base;
        if (consumer instanceof XConsumer) {
            ((XConsumer) consumer).beginEntity(obj);
        }
    }

    @Override // gnu.lists.XConsumer
    public void endEntity() {
        if (this.skipping) {
            return;
        }
        Consumer consumer = this.base;
        if (consumer instanceof XConsumer) {
            ((XConsumer) consumer).endEntity();
        }
    }

    @Override // gnu.lists.Consumer
    public void writeObject(Object obj) {
        beforeContent();
        if (this.skipping) {
            return;
        }
        this.base.writeObject(obj);
    }

    @Override // gnu.lists.Consumer
    public boolean ignoring() {
        return this.base.ignoring();
    }

    @Override // gnu.lists.Consumer
    public void write(char[] cArr, int i, int i2) {
        beforeContent();
        if (this.skipping) {
            return;
        }
        this.base.write(cArr, i, i2);
    }

    @Override // gnu.lists.Consumer
    public void write(String str) {
        write(str, 0, str.length());
    }

    @Override // gnu.lists.Consumer
    public void write(CharSequence charSequence, int i, int i2) {
        beforeContent();
        if (this.skipping) {
            return;
        }
        this.base.write(charSequence, i, i2);
    }

    @Override // java.lang.Appendable
    public Consumer append(char c) {
        write(c);
        return this;
    }

    @Override // java.lang.Appendable
    public Consumer append(CharSequence charSequence) {
        if (charSequence == null) {
            charSequence = "null";
        }
        write(charSequence, 0, charSequence.length());
        return this;
    }

    @Override // java.lang.Appendable
    public Consumer append(CharSequence charSequence, int i, int i2) {
        if (charSequence == null) {
            charSequence = "null";
        }
        write(charSequence, i, i2 - i);
        return this;
    }
}
