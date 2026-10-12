package com.google.appinventor.components.runtime.repackaged.org.json.zip;

import com.google.appinventor.components.runtime.repackaged.org.json.Kim;

/* loaded from: classes.dex */
class TrieKeep extends Keep {
    private int[] froms;
    private Kim[] kims;
    private Node root;
    private int[] thrus;

    public class Node implements PostMortem {
        private int integer = -1;
        private Node[] next = null;

        public Node() {
        }

        public Node get(int i) {
            Node[] nodeArr = this.next;
            if (nodeArr == null) {
                return null;
            }
            return nodeArr[i];
        }

        public Node get(byte b2) {
            return get(b2 & 255);
        }

        @Override // com.google.appinventor.components.runtime.repackaged.org.json.zip.PostMortem
        public boolean postMortem(PostMortem postMortem) {
            Node node = (Node) postMortem;
            if (node == null) {
                JSONzip.log("\nMisalign");
                return false;
            }
            if (this.integer != node.integer) {
                StringBuffer stringBuffer = new StringBuffer("\nInteger ");
                stringBuffer.append(this.integer);
                stringBuffer.append(" <> ");
                stringBuffer.append(node.integer);
                JSONzip.log(stringBuffer.toString());
                return false;
            }
            if (this.next == null) {
                if (node.next == null) {
                    return true;
                }
                StringBuffer stringBuffer2 = new StringBuffer("\nNext is null ");
                stringBuffer2.append(this.integer);
                JSONzip.log(stringBuffer2.toString());
                return false;
            }
            for (int i = 0; i < 256; i++) {
                Node node2 = this.next[i];
                if (node2 != null) {
                    if (!node2.postMortem(node.next[i])) {
                        return false;
                    }
                } else if (node.next[i] != null) {
                    StringBuffer stringBuffer3 = new StringBuffer("\nMisalign ");
                    stringBuffer3.append(i);
                    JSONzip.log(stringBuffer3.toString());
                    return false;
                }
            }
            return true;
        }

        public void set(int i, Node node) {
            if (this.next == null) {
                this.next = new Node[256];
            }
            this.next[i] = node;
        }

        public void set(byte b2, Node node) {
            set(b2 & 255, node);
        }

        public Node vet(int i) {
            Node node = get(i);
            if (node != null) {
                return node;
            }
            Node node2 = TrieKeep.this.new Node();
            set(i, node2);
            return node2;
        }

        public Node vet(byte b2) {
            return vet(b2 & 255);
        }
    }

    public TrieKeep(int i) {
        super(i);
        int i2 = this.capacity;
        this.froms = new int[i2];
        this.thrus = new int[i2];
        this.kims = new Kim[i2];
        this.root = new Node();
    }

    public Kim kim(int i) {
        Kim kim = this.kims[i];
        int i2 = this.froms[i];
        int i3 = this.thrus[i];
        if (i2 == 0 && i3 == kim.length) {
            return kim;
        }
        Kim kim2 = new Kim(kim, i2, i3);
        this.froms[i] = 0;
        this.thrus[i] = kim2.length;
        this.kims[i] = kim2;
        return kim2;
    }

    public int length(int i) {
        return this.thrus[i] - this.froms[i];
    }

    public int match(Kim kim, int i, int i2) {
        Node node = this.root;
        int i3 = -1;
        while (i < i2) {
            node = node.get(kim.get(i));
            if (node == null) {
                break;
            }
            if (node.integer != -1) {
                i3 = node.integer;
            }
            i++;
        }
        return i3;
    }

    @Override // com.google.appinventor.components.runtime.repackaged.org.json.zip.PostMortem
    public boolean postMortem(PostMortem postMortem) {
        TrieKeep trieKeep = (TrieKeep) postMortem;
        if (this.length != trieKeep.length) {
            StringBuffer stringBuffer = new StringBuffer("\nLength ");
            stringBuffer.append(this.length);
            stringBuffer.append(" <> ");
            stringBuffer.append(trieKeep.length);
            JSONzip.log(stringBuffer.toString());
            return false;
        }
        if (this.capacity != trieKeep.capacity) {
            StringBuffer stringBuffer2 = new StringBuffer("\nCapacity ");
            stringBuffer2.append(this.capacity);
            stringBuffer2.append(" <> ");
            stringBuffer2.append(trieKeep.capacity);
            JSONzip.log(stringBuffer2.toString());
            return false;
        }
        boolean z = true;
        for (int i = 0; i < this.length; i++) {
            Kim kim = kim(i);
            Kim kim2 = trieKeep.kim(i);
            if (!kim.equals(kim2)) {
                StringBuffer stringBuffer3 = new StringBuffer("\n[");
                stringBuffer3.append(i);
                stringBuffer3.append("] ");
                stringBuffer3.append(kim);
                stringBuffer3.append(" <> ");
                stringBuffer3.append(kim2);
                JSONzip.log(stringBuffer3.toString());
                z = false;
            }
        }
        return z && this.root.postMortem(trieKeep.root);
    }

    public void registerMany(Kim kim) {
        int i = kim.length;
        int i2 = this.capacity - this.length;
        if (i2 > 40) {
            i2 = 40;
        }
        int i3 = i - 2;
        for (int i4 = 0; i4 < i3; i4++) {
            int i5 = i - i4;
            if (i5 > 10) {
                i5 = 10;
            }
            int i6 = i5 + i4;
            Node nodeVet = this.root;
            for (int i7 = i4; i7 < i6; i7++) {
                nodeVet = nodeVet.vet(kim.get(i7));
                if (nodeVet.integer == -1 && i7 - i4 >= 2) {
                    nodeVet.integer = this.length;
                    long[] jArr = this.uses;
                    int i8 = this.length;
                    jArr[i8] = 1;
                    this.kims[i8] = kim;
                    this.froms[i8] = i4;
                    this.thrus[i8] = i7 + 1;
                    this.length = i8 + 1;
                    i2--;
                    if (i2 <= 0) {
                        return;
                    }
                }
            }
        }
    }

    public void registerOne(Kim kim) {
        int iRegisterOne = registerOne(kim, 0, kim.length);
        if (iRegisterOne != -1) {
            this.kims[iRegisterOne] = kim;
        }
    }

    public int registerOne(Kim kim, int i, int i2) {
        if (this.length < this.capacity) {
            Node nodeVet = this.root;
            for (int i3 = i; i3 < i2; i3++) {
                nodeVet = nodeVet.vet(kim.get(i3));
            }
            if (nodeVet.integer == -1) {
                int i4 = this.length;
                nodeVet.integer = i4;
                this.uses[i4] = 1;
                this.kims[i4] = kim;
                this.froms[i4] = i;
                this.thrus[i4] = i2;
                this.length++;
                return i4;
            }
        }
        return -1;
    }

    public void reserve() {
        int i;
        if (this.capacity - this.length < 40) {
            this.root = new Node();
            int i2 = 0;
            int i3 = 0;
            while (true) {
                i = this.capacity;
                if (i2 >= i) {
                    break;
                }
                if (this.uses[i2] > 1) {
                    Kim kim = this.kims[i2];
                    int i4 = this.thrus[i2];
                    Node nodeVet = this.root;
                    for (int i5 = this.froms[i2]; i5 < i4; i5++) {
                        nodeVet = nodeVet.vet(kim.get(i5));
                    }
                    nodeVet.integer = i3;
                    long[] jArr = this.uses;
                    jArr[i3] = Keep.age(jArr[i2]);
                    int[] iArr = this.froms;
                    iArr[i3] = iArr[i2];
                    this.thrus[i3] = i4;
                    this.kims[i3] = kim;
                    i3++;
                }
                i2++;
            }
            if (i - i3 < 40) {
                this.power = 0;
                this.root = new Node();
                i3 = 0;
            }
            this.length = i3;
            while (i3 < this.capacity) {
                this.uses[i3] = 0;
                this.kims[i3] = null;
                this.froms[i3] = 0;
                this.thrus[i3] = 0;
                i3++;
            }
        }
    }

    @Override // com.google.appinventor.components.runtime.repackaged.org.json.zip.Keep
    public Object value(int i) {
        return kim(i);
    }
}
