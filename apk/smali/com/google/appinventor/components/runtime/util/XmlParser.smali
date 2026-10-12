.class public Lcom/google/appinventor/components/runtime/util/XmlParser;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "SourceFile"


# static fields
.field private static final CONTENT_TAG:Ljava/lang/String; = "$content"


# instance fields
.field private currentElement:Lcom/google/appinventor/components/runtime/util/YailDictionary;

.field private root:Lcom/google/appinventor/components/runtime/util/YailDictionary;

.field private stack:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lcom/google/appinventor/components/runtime/util/YailDictionary;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/XmlParser;->root:Lcom/google/appinventor/components/runtime/util/YailDictionary;

    .line 20
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/XmlParser;->currentElement:Lcom/google/appinventor/components/runtime/util/YailDictionary;

    .line 21
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/XmlParser;->stack:Ljava/util/Deque;

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/XmlParser;->currentElement:Lcom/google/appinventor/components/runtime/util/YailDictionary;

    const-string v1, "$content"

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 57
    instance-of v1, v0, Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 58
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .line 59
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 60
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    .line 61
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 68
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/XmlParser;->currentElement:Lcom/google/appinventor/components/runtime/util/YailDictionary;

    invoke-virtual {p1}, Ljava/util/AbstractMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 69
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    instance-of p3, p3, Ljava/util/ArrayList;

    if-eqz p3, :cond_0

    .line 70
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/List;

    invoke-static {p3}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 73
    :cond_1
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/XmlParser;->stack:Ljava/util/Deque;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 74
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/XmlParser;->stack:Ljava/util/Deque;

    invoke-interface {p1}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/XmlParser;->currentElement:Lcom/google/appinventor/components/runtime/util/YailDictionary;

    :cond_2
    return-void
.end method

.method public getRoot()Lcom/google/appinventor/components/runtime/util/YailDictionary;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/XmlParser;->root:Lcom/google/appinventor/components/runtime/util/YailDictionary;

    return-object v0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 3

    .line 25
    new-instance v0, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/util/YailDictionary;-><init>()V

    .line 26
    const-string v1, "$tag"

    invoke-virtual {v0, v1, p3}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    const-string v1, "$namespaceUri"

    invoke-virtual {v0, v1, p1}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    move-object p2, p3

    :cond_0
    const-string p1, "$localName"

    invoke-virtual {v0, p1, p2}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    const-string p1, ":"

    invoke-virtual {p3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 v1, 0x0

    const-string v2, "$namespace"

    if-eqz p2, :cond_1

    .line 30
    invoke-virtual {p3, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 31
    aget-object p1, p1, v1

    invoke-virtual {v0, v2, p1}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 33
    :cond_1
    const-string p1, ""

    invoke-virtual {v0, v2, p1}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    :goto_0
    new-instance p1, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    invoke-direct {p1}, Lcom/google/appinventor/components/runtime/util/YailDictionary;-><init>()V

    .line 36
    :goto_1
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result p2

    if-ge v1, p2, :cond_2

    .line 37
    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, p2, v2}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 39
    :cond_2
    const-string p2, "$attributes"

    invoke-virtual {v0, p2, p1}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const-string p2, "$content"

    invoke-virtual {v0, p2, p1}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/XmlParser;->currentElement:Lcom/google/appinventor/components/runtime/util/YailDictionary;

    if-eqz p1, :cond_4

    .line 42
    invoke-virtual {p1, p2}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/XmlParser;->currentElement:Lcom/google/appinventor/components/runtime/util/YailDictionary;

    invoke-virtual {p1, p3}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 44
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/XmlParser;->currentElement:Lcom/google/appinventor/components/runtime/util/YailDictionary;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, p3, p2}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    :cond_3
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/XmlParser;->currentElement:Lcom/google/appinventor/components/runtime/util/YailDictionary;

    invoke-virtual {p1, p3}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/XmlParser;->stack:Ljava/util/Deque;

    iget-object p2, p0, Lcom/google/appinventor/components/runtime/util/XmlParser;->currentElement:Lcom/google/appinventor/components/runtime/util/YailDictionary;

    invoke-interface {p1, p2}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    goto :goto_2

    .line 49
    :cond_4
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/XmlParser;->root:Lcom/google/appinventor/components/runtime/util/YailDictionary;

    .line 51
    :goto_2
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/XmlParser;->currentElement:Lcom/google/appinventor/components/runtime/util/YailDictionary;

    return-void
.end method
