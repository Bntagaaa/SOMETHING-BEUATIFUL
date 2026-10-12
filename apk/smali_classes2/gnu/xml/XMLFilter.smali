.class public Lgnu/xml/XMLFilter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/xml/sax/DocumentHandler;
.implements Lorg/xml/sax/ContentHandler;
.implements Lgnu/text/SourceLocator;
.implements Lgnu/lists/XConsumer;
.implements Lgnu/lists/PositionConsumer;


# static fields
.field public static final COPY_NAMESPACES_INHERIT:I = 0x2

.field public static final COPY_NAMESPACES_PRESERVE:I = 0x1


# instance fields
.field public final a:Lgnu/lists/TreeList;

.field public b:Lgnu/lists/Consumer;

.field public c:[Ljava/lang/Object;

.field public transient copyNamespacesMode:I

.field public d:Lgnu/xml/NamespaceBinding;

.field public e:Lgnu/text/SourceMessages;

.field public f:Lgnu/text/SourceLocator;

.field public g:Lgnu/text/LineBufferedReader;

.field public h:I

.field public i:[I

.field protected ignoringLevel:I

.field public j:I

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public final n:[Lgnu/xml/a;

.field public namespacePrefixes:Z

.field protected nesting:I

.field public final o:I

.field public out:Lgnu/lists/Consumer;

.field public p:Z

.field protected stringizingElementNesting:I

.field protected stringizingLevel:I


# direct methods
.method public constructor <init>(Lgnu/lists/Consumer;)V
    .locals 4

    .line 716
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 46
    iput v0, p0, Lgnu/xml/XMLFilter;->copyNamespacesMode:I

    const/4 v1, 0x0

    .line 73
    iput v1, p0, Lgnu/xml/XMLFilter;->h:I

    const/4 v2, -0x1

    .line 87
    iput v2, p0, Lgnu/xml/XMLFilter;->stringizingElementNesting:I

    const/4 v3, 0x0

    .line 95
    iput-object v3, p0, Lgnu/xml/XMLFilter;->i:[I

    .line 100
    iput v2, p0, Lgnu/xml/XMLFilter;->j:I

    .line 115
    iput-boolean v1, p0, Lgnu/xml/XMLFilter;->namespacePrefixes:Z

    const/16 v1, 0x80

    .line 126
    new-array v1, v1, [Lgnu/xml/a;

    iput-object v1, p0, Lgnu/xml/XMLFilter;->n:[Lgnu/xml/a;

    .line 127
    array-length v1, v1

    sub-int/2addr v1, v0

    iput v1, p0, Lgnu/xml/XMLFilter;->o:I

    .line 717
    iput-object p1, p0, Lgnu/xml/XMLFilter;->b:Lgnu/lists/Consumer;

    .line 718
    iput-object p1, p0, Lgnu/xml/XMLFilter;->out:Lgnu/lists/Consumer;

    .line 719
    instance-of v0, p1, Lgnu/xml/NodeTree;

    if-eqz v0, :cond_0

    .line 720
    check-cast p1, Lgnu/xml/NodeTree;

    iput-object p1, p0, Lgnu/xml/XMLFilter;->a:Lgnu/lists/TreeList;

    goto :goto_0

    .line 722
    :cond_0
    new-instance p1, Lgnu/lists/TreeList;

    invoke-direct {p1}, Lgnu/lists/TreeList;-><init>()V

    iput-object p1, p0, Lgnu/xml/XMLFilter;->a:Lgnu/lists/TreeList;

    .line 724
    :goto_0
    sget-object p1, Lgnu/xml/NamespaceBinding;->predefinedXML:Lgnu/xml/NamespaceBinding;

    iput-object p1, p0, Lgnu/xml/XMLFilter;->d:Lgnu/xml/NamespaceBinding;

    return-void
.end method

.method public static duplicateAttributeMessage(Lgnu/mapping/Symbol;Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    .line 1445
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "duplicate attribute: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1446
    invoke-virtual {p0}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1447
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 1449
    const-string v2, "{}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1451
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1453
    :cond_0
    invoke-virtual {p0}, Lgnu/mapping/Symbol;->getLocalPart()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz p1, :cond_1

    .line 1456
    const-string p0, " in <"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1457
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const/16 p0, 0x3e

    .line 1458
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1460
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 25

    move-object/from16 v0, p0

    .line 339
    iget v1, v0, Lgnu/xml/XMLFilter;->j:I

    if-ltz v1, :cond_3c

    iget v1, v0, Lgnu/xml/XMLFilter;->stringizingLevel:I

    if-lez v1, :cond_0

    goto/16 :goto_23

    :cond_0
    const/4 v1, 0x0

    .line 342
    iput v1, v0, Lgnu/xml/XMLFilter;->h:I

    .line 344
    iget-object v2, v0, Lgnu/xml/XMLFilter;->k:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 345
    invoke-virtual {v0}, Lgnu/xml/XMLFilter;->endAttribute()V

    .line 346
    :cond_1
    iget v2, v0, Lgnu/xml/XMLFilter;->nesting:I

    if-nez v2, :cond_2

    sget-object v2, Lgnu/xml/NamespaceBinding;->predefinedXML:Lgnu/xml/NamespaceBinding;

    goto :goto_0

    :cond_2
    iget-object v3, v0, Lgnu/xml/XMLFilter;->c:[Ljava/lang/Object;

    add-int/lit8 v2, v2, -0x2

    aget-object v2, v3, v2

    check-cast v2, Lgnu/xml/NamespaceBinding;

    .line 349
    :goto_0
    iget-object v3, v0, Lgnu/xml/XMLFilter;->d:Lgnu/xml/NamespaceBinding;

    const/4 v4, 0x0

    .line 353
    :goto_1
    iget v5, v0, Lgnu/xml/XMLFilter;->j:I

    const-string v7, ""

    const/4 v8, 0x1

    if-gt v4, v5, :cond_10

    .line 355
    iget-object v5, v0, Lgnu/xml/XMLFilter;->c:[Ljava/lang/Object;

    iget v9, v0, Lgnu/xml/XMLFilter;->nesting:I

    add-int/2addr v9, v4

    sub-int/2addr v9, v8

    aget-object v5, v5, v9

    .line 356
    instance-of v9, v5, Lgnu/mapping/Symbol;

    if-eqz v9, :cond_f

    .line 358
    check-cast v5, Lgnu/mapping/Symbol;

    .line 359
    invoke-virtual {v5}, Lgnu/mapping/Symbol;->getPrefix()Ljava/lang/String;

    move-result-object v9

    if-ne v9, v7, :cond_3

    const/4 v9, 0x0

    .line 362
    :cond_3
    invoke-virtual {v5}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v10

    if-ne v10, v7, :cond_4

    const/4 v6, 0x0

    goto :goto_2

    :cond_4
    move-object v6, v10

    :goto_2
    if-lez v4, :cond_5

    if-nez v9, :cond_5

    if-nez v6, :cond_5

    goto/16 :goto_8

    :cond_5
    move-object v10, v3

    const/4 v11, 0x0

    :goto_3
    if-ne v10, v2, :cond_6

    const/4 v11, 0x1

    :cond_6
    if-nez v10, :cond_8

    if-nez v9, :cond_7

    if-eqz v6, :cond_f

    .line 375
    :cond_7
    invoke-virtual {v0, v9, v6, v3}, Lgnu/xml/XMLFilter;->findNamespaceBinding(Ljava/lang/String;Ljava/lang/String;Lgnu/xml/NamespaceBinding;)Lgnu/xml/NamespaceBinding;

    move-result-object v3

    goto :goto_8

    .line 378
    :cond_8
    iget-object v12, v10, Lgnu/xml/NamespaceBinding;->a:Ljava/lang/String;

    if-ne v12, v9, :cond_e

    .line 380
    iget-object v10, v10, Lgnu/xml/NamespaceBinding;->b:Ljava/lang/String;

    if-eq v10, v6, :cond_f

    if-eqz v11, :cond_9

    .line 383
    invoke-virtual {v0, v9, v6, v3}, Lgnu/xml/XMLFilter;->findNamespaceBinding(Ljava/lang/String;Ljava/lang/String;Lgnu/xml/NamespaceBinding;)Lgnu/xml/NamespaceBinding;

    move-result-object v3

    goto :goto_8

    :cond_9
    move-object v9, v3

    :goto_4
    if-nez v9, :cond_b

    const/4 v9, 0x1

    .line 396
    :goto_5
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "_ns_"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v10

    .line 397
    invoke-virtual {v3, v10}, Lgnu/xml/NamespaceBinding;->resolve(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_a

    goto :goto_6

    :cond_a
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 402
    :cond_b
    iget-object v10, v9, Lgnu/xml/NamespaceBinding;->b:Ljava/lang/String;

    if-ne v10, v6, :cond_d

    .line 404
    iget-object v10, v9, Lgnu/xml/NamespaceBinding;->a:Ljava/lang/String;

    .line 405
    invoke-virtual {v3, v10}, Lgnu/xml/NamespaceBinding;->resolve(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-ne v11, v6, :cond_d

    .line 409
    :goto_6
    invoke-virtual {v0, v10, v6, v3}, Lgnu/xml/XMLFilter;->findNamespaceBinding(Ljava/lang/String;Ljava/lang/String;Lgnu/xml/NamespaceBinding;)Lgnu/xml/NamespaceBinding;

    move-result-object v3

    .line 410
    invoke-virtual {v5}, Lgnu/mapping/Symbol;->getLocalName()Ljava/lang/String;

    move-result-object v5

    if-nez v6, :cond_c

    goto :goto_7

    :cond_c
    move-object v7, v6

    .line 413
    :goto_7
    iget-object v6, v0, Lgnu/xml/XMLFilter;->c:[Ljava/lang/Object;

    iget v9, v0, Lgnu/xml/XMLFilter;->nesting:I

    add-int/2addr v9, v4

    sub-int/2addr v9, v8

    invoke-static {v7, v5, v10}, Lgnu/mapping/Symbol;->make(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v5

    aput-object v5, v6, v9

    goto :goto_8

    .line 389
    :cond_d
    iget-object v9, v9, Lgnu/xml/NamespaceBinding;->c:Lgnu/xml/NamespaceBinding;

    goto :goto_4

    .line 368
    :cond_e
    iget-object v10, v10, Lgnu/xml/NamespaceBinding;->c:Lgnu/xml/NamespaceBinding;

    goto :goto_3

    :cond_f
    :goto_8
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    :cond_10
    const/4 v2, 0x0

    .line 424
    :goto_9
    iget v4, v0, Lgnu/xml/XMLFilter;->j:I

    iget-object v5, v0, Lgnu/xml/XMLFilter;->a:Lgnu/lists/TreeList;

    if-gt v2, v4, :cond_38

    .line 426
    iget-object v4, v0, Lgnu/xml/XMLFilter;->c:[Ljava/lang/Object;

    iget v9, v0, Lgnu/xml/XMLFilter;->nesting:I

    add-int/2addr v9, v2

    sub-int/2addr v9, v8

    aget-object v4, v4, v9

    .line 430
    instance-of v9, v4, Lgnu/xml/a;

    const/16 v10, 0x65

    if-nez v9, :cond_12

    iget-object v11, v0, Lgnu/xml/XMLFilter;->out:Lgnu/lists/Consumer;

    if-ne v11, v5, :cond_11

    goto :goto_a

    .line 523
    :cond_11
    move-object v9, v4

    check-cast v9, Lgnu/mapping/Symbol;

    .line 524
    invoke-virtual {v9}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v11

    .line 525
    invoke-virtual {v9}, Lgnu/mapping/Symbol;->getLocalName()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v20, v4

    const/4 v8, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    const/16 v21, 0x0

    goto/16 :goto_18

    .line 432
    :cond_12
    :goto_a
    iget v11, v0, Lgnu/xml/XMLFilter;->o:I

    iget-object v12, v0, Lgnu/xml/XMLFilter;->n:[Lgnu/xml/a;

    if-eqz v9, :cond_1a

    .line 434
    move-object v9, v4

    check-cast v9, Lgnu/xml/a;

    .line 435
    iget-object v13, v9, Lgnu/xml/a;->c:Ljava/lang/String;

    .line 436
    iget-object v14, v9, Lgnu/xml/a;->d:Ljava/lang/String;

    if-lez v2, :cond_15

    .line 437
    const-string v15, "xmlns"

    if-nez v13, :cond_13

    if-eq v14, v15, :cond_14

    :cond_13
    if-ne v13, v15, :cond_15

    .line 442
    :cond_14
    const-string v15, "(namespace-node)"

    move-object/from16 v20, v4

    move-object v1, v13

    move-object v4, v14

    move-object v10, v15

    const/16 v17, 0x0

    const/16 v18, 0x1

    const/16 v21, 0x1

    goto/16 :goto_14

    :cond_15
    if-lez v2, :cond_16

    const/4 v15, 0x1

    goto :goto_b

    :cond_16
    const/4 v15, 0x0

    :goto_b
    if-eqz v15, :cond_18

    if-nez v13, :cond_18

    :cond_17
    :goto_c
    move-object v15, v7

    goto :goto_d

    .line 329
    :cond_18
    iget-object v15, v0, Lgnu/xml/XMLFilter;->d:Lgnu/xml/NamespaceBinding;

    invoke-virtual {v15, v13}, Lgnu/xml/NamespaceBinding;->resolve(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_19

    goto :goto_d

    :cond_19
    if-eqz v13, :cond_17

    .line 333
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v1, "unknown namespace prefix \'"

    invoke-direct {v15, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v10, v1}, Lgnu/xml/XMLFilter;->error(CLjava/lang/String;)V

    goto :goto_c

    :goto_d
    move-object/from16 v20, v4

    move-object v1, v13

    move-object v4, v14

    move-object v10, v15

    const/16 v17, 0x0

    const/16 v18, 0x1

    :goto_e
    const/16 v21, 0x0

    goto/16 :goto_14

    .line 449
    :cond_1a
    move-object v1, v4

    check-cast v1, Lgnu/mapping/Symbol;

    .line 1316
    invoke-virtual {v1}, Lgnu/mapping/Symbol;->getLocalPart()Ljava/lang/String;

    move-result-object v9

    .line 1317
    invoke-virtual {v1}, Lgnu/mapping/Symbol;->getPrefix()Ljava/lang/String;

    move-result-object v13

    if-ne v13, v7, :cond_1b

    const/4 v13, 0x0

    .line 1320
    :cond_1b
    invoke-virtual {v1}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v14

    .line 1644
    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v15

    if-eqz v13, :cond_1c

    .line 1646
    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    move-result v16

    xor-int v15, v15, v16

    :cond_1c
    and-int v16, v15, v11

    const/16 v17, 0x0

    .line 1323
    aget-object v6, v12, v16

    move-object v8, v6

    const/16 v18, 0x1

    :goto_f
    if-nez v8, :cond_1d

    .line 1330
    new-instance v8, Lgnu/xml/a;

    invoke-direct {v8}, Lgnu/xml/a;-><init>()V

    .line 1331
    iput-object v1, v8, Lgnu/xml/a;->f:Lgnu/mapping/Symbol;

    .line 1332
    iput-object v13, v8, Lgnu/xml/a;->c:Ljava/lang/String;

    .line 1333
    iput-object v14, v8, Lgnu/xml/a;->e:Ljava/lang/String;

    .line 1334
    iput-object v9, v8, Lgnu/xml/a;->d:Ljava/lang/String;

    .line 1335
    iput v15, v8, Lgnu/xml/a;->b:I

    .line 1336
    iput-object v6, v8, Lgnu/xml/a;->a:Lgnu/xml/a;

    .line 1337
    aput-object v6, v12, v16

    :goto_10
    move-object/from16 v20, v4

    :goto_11
    move-object v9, v8

    goto :goto_13

    .line 1340
    :cond_1d
    iget-object v10, v8, Lgnu/xml/a;->f:Lgnu/mapping/Symbol;

    if-ne v1, v10, :cond_1e

    goto :goto_10

    :cond_1e
    move-object/from16 v20, v4

    .line 1342
    iget-object v4, v8, Lgnu/xml/a;->d:Ljava/lang/String;

    if-ne v9, v4, :cond_1f

    if-nez v10, :cond_1f

    iget-object v4, v8, Lgnu/xml/a;->e:Ljava/lang/String;

    if-eq v14, v4, :cond_20

    if-nez v4, :cond_1f

    goto :goto_12

    :cond_1f
    const/16 v19, 0x65

    goto/16 :goto_21

    :cond_20
    :goto_12
    iget-object v4, v8, Lgnu/xml/a;->c:Ljava/lang/String;

    if-ne v13, v4, :cond_1f

    .line 1346
    iput-object v14, v8, Lgnu/xml/a;->e:Ljava/lang/String;

    .line 1347
    iput-object v1, v8, Lgnu/xml/a;->f:Lgnu/mapping/Symbol;

    goto :goto_11

    .line 451
    :goto_13
    iget-object v13, v9, Lgnu/xml/a;->c:Ljava/lang/String;

    .line 452
    iget-object v4, v9, Lgnu/xml/a;->d:Ljava/lang/String;

    .line 453
    invoke-virtual {v1}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    move-object v10, v1

    move-object v1, v13

    goto :goto_e

    .line 455
    :goto_14
    iget v6, v9, Lgnu/xml/a;->b:I

    and-int v22, v6, v11

    .line 458
    aget-object v8, v12, v22

    :goto_15
    if-nez v8, :cond_21

    .line 466
    new-instance v8, Lgnu/xml/a;

    invoke-direct {v8}, Lgnu/xml/a;-><init>()V

    .line 467
    iput v6, v8, Lgnu/xml/a;->b:I

    .line 468
    iput-object v1, v8, Lgnu/xml/a;->c:Ljava/lang/String;

    .line 469
    iput-object v4, v8, Lgnu/xml/a;->d:Ljava/lang/String;

    .line 470
    aget-object v6, v12, v22

    iput-object v6, v8, Lgnu/xml/a;->a:Lgnu/xml/a;

    .line 471
    aput-object v8, v12, v22

    .line 472
    iput-object v10, v8, Lgnu/xml/a;->e:Ljava/lang/String;

    .line 473
    invoke-static {v10, v4, v1}, Lgnu/mapping/Symbol;->make(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    iput-object v1, v8, Lgnu/xml/a;->f:Lgnu/mapping/Symbol;

    if-nez v2, :cond_27

    .line 476
    new-instance v1, Lgnu/xml/XName;

    iget-object v6, v8, Lgnu/xml/a;->f:Lgnu/mapping/Symbol;

    invoke-direct {v1, v6, v3}, Lgnu/xml/XName;-><init>(Lgnu/mapping/Symbol;Lgnu/xml/NamespaceBinding;)V

    .line 478
    iput-object v1, v8, Lgnu/xml/a;->h:Lgnu/xml/XName;

    .line 479
    iput-object v3, v8, Lgnu/xml/a;->g:Lgnu/xml/NamespaceBinding;

    goto :goto_17

    .line 483
    :cond_21
    iget v9, v8, Lgnu/xml/a;->b:I

    if-ne v9, v6, :cond_23

    iget-object v9, v8, Lgnu/xml/a;->d:Ljava/lang/String;

    if-ne v9, v4, :cond_23

    iget-object v9, v8, Lgnu/xml/a;->c:Ljava/lang/String;

    if-ne v9, v1, :cond_23

    .line 487
    iget-object v9, v8, Lgnu/xml/a;->e:Ljava/lang/String;

    if-nez v9, :cond_22

    .line 489
    iput-object v10, v8, Lgnu/xml/a;->e:Ljava/lang/String;

    .line 490
    invoke-static {v10, v4, v1}, Lgnu/mapping/Symbol;->make(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v9

    iput-object v9, v8, Lgnu/xml/a;->f:Lgnu/mapping/Symbol;

    goto :goto_16

    :cond_22
    if-eq v9, v10, :cond_24

    :cond_23
    const/16 v13, 0x65

    goto/16 :goto_20

    .line 494
    :cond_24
    iget-object v9, v8, Lgnu/xml/a;->f:Lgnu/mapping/Symbol;

    if-nez v9, :cond_25

    .line 495
    invoke-static {v10, v4, v1}, Lgnu/mapping/Symbol;->make(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v9

    iput-object v9, v8, Lgnu/xml/a;->f:Lgnu/mapping/Symbol;

    :cond_25
    :goto_16
    if-nez v2, :cond_27

    .line 498
    iget-object v9, v8, Lgnu/xml/a;->g:Lgnu/xml/NamespaceBinding;

    if-eq v9, v3, :cond_26

    if-nez v9, :cond_23

    .line 501
    :cond_26
    iget-object v1, v8, Lgnu/xml/a;->h:Lgnu/xml/XName;

    .line 502
    iput-object v3, v8, Lgnu/xml/a;->g:Lgnu/xml/NamespaceBinding;

    if-nez v1, :cond_27

    .line 505
    new-instance v1, Lgnu/xml/XName;

    iget-object v6, v8, Lgnu/xml/a;->f:Lgnu/mapping/Symbol;

    invoke-direct {v1, v6, v3}, Lgnu/xml/XName;-><init>(Lgnu/mapping/Symbol;Lgnu/xml/NamespaceBinding;)V

    .line 507
    iput-object v1, v8, Lgnu/xml/a;->h:Lgnu/xml/XName;

    .line 519
    :cond_27
    :goto_17
    iget-object v1, v0, Lgnu/xml/XMLFilter;->c:[Ljava/lang/Object;

    iget v6, v0, Lgnu/xml/XMLFilter;->nesting:I

    add-int/2addr v6, v2

    add-int/lit8 v6, v6, -0x1

    aput-object v8, v1, v6

    move-object v9, v4

    move-object v11, v10

    :goto_18
    const/4 v1, 0x1

    :goto_19
    if-ge v1, v2, :cond_2b

    .line 532
    iget-object v4, v0, Lgnu/xml/XMLFilter;->c:[Ljava/lang/Object;

    iget v6, v0, Lgnu/xml/XMLFilter;->nesting:I

    add-int/2addr v6, v1

    add-int/lit8 v6, v6, -0x1

    aget-object v4, v4, v6

    .line 534
    instance-of v6, v4, Lgnu/mapping/Symbol;

    if-eqz v6, :cond_28

    .line 535
    check-cast v4, Lgnu/mapping/Symbol;

    goto :goto_1a

    .line 536
    :cond_28
    instance-of v6, v4, Lgnu/xml/a;

    if-eqz v6, :cond_2a

    .line 537
    check-cast v4, Lgnu/xml/a;

    iget-object v4, v4, Lgnu/xml/a;->f:Lgnu/mapping/Symbol;

    .line 540
    :goto_1a
    invoke-virtual {v4}, Lgnu/mapping/Symbol;->getLocalPart()Ljava/lang/String;

    move-result-object v6

    if-ne v9, v6, :cond_2a

    invoke-virtual {v4}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v6

    if-ne v11, v6, :cond_2a

    .line 543
    iget-object v6, v0, Lgnu/xml/XMLFilter;->c:[Ljava/lang/Object;

    iget v10, v0, Lgnu/xml/XMLFilter;->nesting:I

    add-int/lit8 v10, v10, -0x1

    aget-object v6, v6, v10

    .line 544
    instance-of v10, v6, Lgnu/xml/a;

    if-eqz v10, :cond_29

    .line 545
    check-cast v6, Lgnu/xml/a;

    iget-object v6, v6, Lgnu/xml/a;->f:Lgnu/mapping/Symbol;

    .line 546
    :cond_29
    invoke-static {v4, v6}, Lgnu/xml/XMLFilter;->duplicateAttributeMessage(Lgnu/mapping/Symbol;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/16 v13, 0x65

    invoke-virtual {v0, v13, v4}, Lgnu/xml/XMLFilter;->error(CLjava/lang/String;)V

    goto :goto_1b

    :cond_2a
    const/16 v13, 0x65

    :goto_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 550
    :cond_2b
    iget-object v1, v0, Lgnu/xml/XMLFilter;->out:Lgnu/lists/Consumer;

    if-ne v1, v5, :cond_31

    if-nez v2, :cond_2c

    .line 552
    iget-object v1, v8, Lgnu/xml/a;->h:Lgnu/xml/XName;

    goto :goto_1c

    :cond_2c
    iget-object v1, v8, Lgnu/xml/a;->f:Lgnu/mapping/Symbol;

    .line 553
    :goto_1c
    iget v4, v8, Lgnu/xml/a;->i:I

    if-lez v4, :cond_2d

    .line 554
    iget-object v6, v5, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    aget-object v6, v6, v4

    if-eq v6, v1, :cond_2e

    .line 557
    :cond_2d
    invoke-virtual {v5, v1}, Lgnu/lists/TreeList;->find(Ljava/lang/Object;)I

    move-result v4

    .line 558
    iput v4, v8, Lgnu/xml/a;->i:I

    :cond_2e
    if-nez v2, :cond_2f

    .line 561
    iget v1, v5, Lgnu/lists/TreeList;->gapEnd:I

    invoke-virtual {v5, v1, v4}, Lgnu/lists/TreeList;->setElementName(II)V

    goto :goto_1f

    :cond_2f
    if-eqz v21, :cond_30

    .line 562
    iget-boolean v1, v0, Lgnu/xml/XMLFilter;->namespacePrefixes:Z

    if-eqz v1, :cond_37

    .line 563
    :cond_30
    iget-object v1, v0, Lgnu/xml/XMLFilter;->i:[I

    add-int/lit8 v6, v2, -0x1

    aget v1, v1, v6

    invoke-virtual {v5, v1, v4}, Lgnu/lists/TreeList;->setAttributeName(II)V

    goto :goto_1f

    :cond_31
    if-nez v8, :cond_32

    move-object/from16 v4, v20

    goto :goto_1d

    :cond_32
    if-nez v2, :cond_33

    .line 567
    iget-object v4, v8, Lgnu/xml/a;->h:Lgnu/xml/XName;

    goto :goto_1d

    :cond_33
    iget-object v4, v8, Lgnu/xml/a;->f:Lgnu/mapping/Symbol;

    :goto_1d
    if-nez v2, :cond_34

    .line 570
    invoke-interface {v1, v4}, Lgnu/lists/Consumer;->startElement(Ljava/lang/Object;)V

    goto :goto_1f

    :cond_34
    if-eqz v21, :cond_35

    .line 571
    iget-boolean v6, v0, Lgnu/xml/XMLFilter;->namespacePrefixes:Z

    if-eqz v6, :cond_37

    .line 573
    :cond_35
    invoke-interface {v1, v4}, Lgnu/lists/Consumer;->startAttribute(Ljava/lang/Object;)V

    .line 574
    iget-object v1, v0, Lgnu/xml/XMLFilter;->i:[I

    add-int/lit8 v4, v2, -0x1

    aget v4, v1, v4

    .line 575
    iget v6, v0, Lgnu/xml/XMLFilter;->j:I

    if-ge v2, v6, :cond_36

    aget v1, v1, v2

    goto :goto_1e

    :cond_36
    iget v1, v5, Lgnu/lists/TreeList;->gapStart:I

    :goto_1e
    add-int/lit8 v4, v4, 0x5

    add-int/lit8 v1, v1, -0x1

    .line 576
    iget-object v6, v0, Lgnu/xml/XMLFilter;->out:Lgnu/lists/Consumer;

    invoke-virtual {v5, v4, v1, v6}, Lgnu/lists/TreeList;->consumeIRange(IILgnu/lists/Consumer;)I

    .line 579
    iget-object v1, v0, Lgnu/xml/XMLFilter;->out:Lgnu/lists/Consumer;

    invoke-interface {v1}, Lgnu/lists/Consumer;->endAttribute()V

    :cond_37
    :goto_1f
    add-int/lit8 v2, v2, 0x1

    const/4 v1, 0x0

    const/4 v8, 0x1

    goto/16 :goto_9

    .line 461
    :goto_20
    iget-object v8, v8, Lgnu/xml/a;->a:Lgnu/xml/a;

    goto/16 :goto_15

    .line 1350
    :goto_21
    iget-object v8, v8, Lgnu/xml/a;->a:Lgnu/xml/a;

    move-object/from16 v4, v20

    const/16 v10, 0x65

    goto/16 :goto_f

    :cond_38
    const/16 v17, 0x0

    const/16 v18, 0x1

    .line 585
    iget-object v1, v0, Lgnu/xml/XMLFilter;->out:Lgnu/lists/Consumer;

    instance-of v2, v1, Lgnu/kawa/sax/ContentConsumer;

    if-eqz v2, :cond_39

    .line 586
    check-cast v1, Lgnu/kawa/sax/ContentConsumer;

    invoke-virtual {v1}, Lgnu/kawa/sax/ContentConsumer;->endStartTag()V

    :cond_39
    const/4 v1, 0x1

    .line 589
    :goto_22
    iget v2, v0, Lgnu/xml/XMLFilter;->j:I

    if-gt v1, v2, :cond_3a

    .line 590
    iget-object v2, v0, Lgnu/xml/XMLFilter;->c:[Ljava/lang/Object;

    iget v3, v0, Lgnu/xml/XMLFilter;->nesting:I

    add-int/2addr v3, v1

    add-int/lit8 v3, v3, -0x1

    aput-object v17, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    .line 591
    :cond_3a
    iget-object v1, v0, Lgnu/xml/XMLFilter;->out:Lgnu/lists/Consumer;

    if-eq v1, v5, :cond_3b

    .line 593
    iput-object v1, v0, Lgnu/xml/XMLFilter;->b:Lgnu/lists/Consumer;

    .line 595
    invoke-virtual {v5}, Lgnu/lists/TreeList;->clear()V

    :cond_3b
    const/4 v1, -0x1

    .line 597
    iput v1, v0, Lgnu/xml/XMLFilter;->j:I

    :cond_3c
    :goto_23
    return-void
.end method

.method public bridge synthetic append(C)Lgnu/lists/Consumer;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lgnu/xml/XMLFilter;->append(C)Lgnu/xml/XMLFilter;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Lgnu/lists/Consumer;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lgnu/xml/XMLFilter;->append(Ljava/lang/CharSequence;)Lgnu/xml/XMLFilter;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Lgnu/lists/Consumer;
    .locals 0

    .line 27
    invoke-virtual {p0, p1, p2, p3}, Lgnu/xml/XMLFilter;->append(Ljava/lang/CharSequence;II)Lgnu/xml/XMLFilter;

    move-result-object p1

    return-object p1
.end method

.method public append(C)Lgnu/xml/XMLFilter;
    .locals 0

    .line 1293
    invoke-virtual {p0, p1}, Lgnu/xml/XMLFilter;->write(I)V

    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;)Lgnu/xml/XMLFilter;
    .locals 2

    if-nez p1, :cond_0

    .line 1300
    const-string p1, "null"

    :cond_0
    const/4 v0, 0x0

    .line 1301
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lgnu/xml/XMLFilter;->append(Ljava/lang/CharSequence;II)Lgnu/xml/XMLFilter;

    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;II)Lgnu/xml/XMLFilter;
    .locals 0

    if-nez p1, :cond_0

    .line 1308
    const-string p1, "null"

    :cond_0
    sub-int/2addr p3, p2

    .line 1309
    invoke-virtual {p0, p1, p2, p3}, Lgnu/xml/XMLFilter;->write(Ljava/lang/CharSequence;II)V

    return-object p0
.end method

.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 27
    invoke-virtual {p0, p1}, Lgnu/xml/XMLFilter;->append(C)Lgnu/xml/XMLFilter;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 27
    invoke-virtual {p0, p1}, Lgnu/xml/XMLFilter;->append(Ljava/lang/CharSequence;)Lgnu/xml/XMLFilter;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 27
    invoke-virtual {p0, p1, p2, p3}, Lgnu/xml/XMLFilter;->append(Ljava/lang/CharSequence;II)Lgnu/xml/XMLFilter;

    move-result-object p1

    return-object p1
.end method

.method public final b(I)V
    .locals 3

    .line 1416
    iget-object v0, p0, Lgnu/xml/XMLFilter;->c:[Ljava/lang/Object;

    if-nez v0, :cond_0

    const/16 p1, 0x14

    .line 1418
    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lgnu/xml/XMLFilter;->c:[Ljava/lang/Object;

    return-void

    .line 1420
    :cond_0
    array-length v1, v0

    if-lt p1, v1, :cond_1

    .line 1422
    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 1423
    invoke-static {v0, v2, v1, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1424
    iput-object v1, p0, Lgnu/xml/XMLFilter;->c:[Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public beginEntity(Ljava/lang/Object;)V
    .locals 2

    .line 1280
    iget-object v0, p0, Lgnu/xml/XMLFilter;->b:Lgnu/lists/Consumer;

    instance-of v1, v0, Lgnu/lists/XConsumer;

    if-eqz v1, :cond_0

    .line 1281
    check-cast v0, Lgnu/lists/XConsumer;

    invoke-interface {v0, p1}, Lgnu/lists/XConsumer;->beginEntity(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final c()Z
    .locals 3

    .line 755
    iget v0, p0, Lgnu/xml/XMLFilter;->nesting:I

    :goto_0
    if-lez v0, :cond_0

    .line 757
    iget-object v1, p0, Lgnu/xml/XMLFilter;->c:[Ljava/lang/Object;

    add-int/lit8 v2, v0, -0x1

    aget-object v1, v1, v2

    if-nez v1, :cond_0

    add-int/lit8 v0, v0, -0x2

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public characters([CII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1532
    invoke-virtual {p0, p1, p2, p3}, Lgnu/xml/XMLFilter;->write([CII)V

    return-void
.end method

.method public checkValidComment([CII)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x1

    :goto_0
    add-int/lit8 p3, p3, -0x1

    if-ltz p3, :cond_2

    add-int v2, p2, p3

    .line 1133
    aget-char v2, p1, v2

    const/16 v3, 0x2d

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    const/16 p1, 0x65

    .line 1136
    const-string p2, "consecutive or final hyphen in XML comment"

    invoke-virtual {p0, p1, p2}, Lgnu/xml/XMLFilter;->error(CLjava/lang/String;)V

    return-void

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    return-void
.end method

.method public checkWriteAtomic()Z
    .locals 2

    const/4 v0, 0x0

    .line 602
    iput v0, p0, Lgnu/xml/XMLFilter;->h:I

    .line 603
    iget v1, p0, Lgnu/xml/XMLFilter;->ignoringLevel:I

    if-lez v1, :cond_0

    return v0

    .line 605
    :cond_0
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->a()V

    const/4 v0, 0x1

    return v0
.end method

.method public commentFromParser([CII)V
    .locals 2

    .line 1157
    iget v0, p0, Lgnu/xml/XMLFilter;->stringizingLevel:I

    if-nez v0, :cond_0

    .line 1159
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->a()V

    .line 1160
    iget-object v0, p0, Lgnu/xml/XMLFilter;->b:Lgnu/lists/Consumer;

    instance-of v1, v0, Lgnu/lists/XConsumer;

    if-eqz v1, :cond_1

    .line 1161
    check-cast v0, Lgnu/lists/XConsumer;

    invoke-interface {v0, p1, p2, p3}, Lgnu/lists/XConsumer;->writeComment([CII)V

    return-void

    .line 1163
    :cond_0
    iget v0, p0, Lgnu/xml/XMLFilter;->stringizingElementNesting:I

    if-gez v0, :cond_1

    .line 1164
    iget-object v0, p0, Lgnu/xml/XMLFilter;->b:Lgnu/lists/Consumer;

    invoke-interface {v0, p1, p2, p3}, Lgnu/lists/Consumer;->write([CII)V

    :cond_1
    return-void
.end method

.method public consume(Lgnu/lists/SeqPosition;)V
    .locals 1

    .line 653
    iget-object v0, p1, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    iget p1, p1, Lgnu/lists/SeqPosition;->ipos:I

    invoke-virtual {p0, v0, p1}, Lgnu/xml/XMLFilter;->writePosition(Lgnu/lists/AbstractSequence;I)V

    return-void
.end method

.method public final d([CII)Lgnu/xml/a;
    .locals 12

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/16 v5, 0x3a

    if-ge v2, p3, :cond_1

    add-int v6, p2, v2

    .line 1370
    aget-char v6, p1, v6

    if-ne v6, v5, :cond_0

    if-gez v1, :cond_0

    move v1, v2

    move v3, v4

    const/4 v4, 0x0

    goto :goto_1

    :cond_0
    mul-int/lit8 v4, v4, 0x1f

    add-int/2addr v4, v6

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    xor-int v2, v3, v4

    .line 1381
    iget v3, p0, Lgnu/xml/XMLFilter;->o:I

    and-int/2addr v3, v2

    .line 1382
    iget-object v4, p0, Lgnu/xml/XMLFilter;->n:[Lgnu/xml/a;

    aget-object v6, v4, v3

    move-object v7, v6

    :goto_2
    const/4 v8, 0x1

    if-nez v7, :cond_3

    .line 1389
    new-instance v0, Lgnu/xml/a;

    invoke-direct {v0}, Lgnu/xml/a;-><init>()V

    .line 1390
    iput v2, v0, Lgnu/xml/a;->b:I

    if-ltz v1, :cond_2

    .line 1393
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1, p2, v1}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lgnu/xml/a;->c:Ljava/lang/String;

    add-int/2addr v1, v8

    add-int/2addr p2, v1

    .line 1396
    new-instance v2, Ljava/lang/String;

    sub-int/2addr p3, v1

    invoke-direct {v2, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lgnu/xml/a;->d:Ljava/lang/String;

    goto :goto_3

    :cond_2
    const/4 v1, 0x0

    .line 1400
    iput-object v1, v0, Lgnu/xml/a;->c:Ljava/lang/String;

    .line 1401
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lgnu/xml/a;->d:Ljava/lang/String;

    .line 1403
    :goto_3
    iput-object v6, v0, Lgnu/xml/a;->a:Lgnu/xml/a;

    .line 1404
    aput-object v6, v4, v3

    return-object v0

    .line 1407
    :cond_3
    iget v9, v7, Lgnu/xml/a;->b:I

    if-ne v2, v9, :cond_6

    .line 1674
    iget-object v9, v7, Lgnu/xml/a;->c:Ljava/lang/String;

    if-eqz v9, :cond_5

    .line 1676
    iget-object v9, v7, Lgnu/xml/a;->d:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    .line 1677
    iget-object v10, v7, Lgnu/xml/a;->c:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v11, v10, 0x1

    add-int/2addr v11, v9

    if-ne p3, v11, :cond_4

    .line 1678
    aget-char v11, p1, v10

    if-ne v11, v5, :cond_4

    iget-object v11, v7, Lgnu/xml/a;->c:Ljava/lang/String;

    invoke-static {v11, p1, p2, v10}, Lgnu/xml/a;->a(Ljava/lang/String;[CII)Z

    move-result v11

    if-eqz v11, :cond_4

    iget-object v11, v7, Lgnu/xml/a;->d:Ljava/lang/String;

    add-int/2addr v10, p2

    add-int/2addr v10, v8

    invoke-static {v11, p1, v10, v9}, Lgnu/xml/a;->a(Ljava/lang/String;[CII)Z

    move-result v9

    if-eqz v9, :cond_4

    goto :goto_4

    :cond_4
    const/4 v8, 0x0

    goto :goto_4

    .line 1684
    :cond_5
    iget-object v8, v7, Lgnu/xml/a;->d:Ljava/lang/String;

    invoke-static {v8, p1, p2, p3}, Lgnu/xml/a;->a(Ljava/lang/String;[CII)Z

    move-result v8

    :goto_4
    if-eqz v8, :cond_6

    return-object v7

    .line 1410
    :cond_6
    iget-object v7, v7, Lgnu/xml/a;->a:Lgnu/xml/a;

    goto :goto_2
.end method

.method public final e(Lgnu/xml/NamespaceBinding;Lgnu/xml/NamespaceBinding;)Lgnu/xml/NamespaceBinding;
    .locals 2

    .line 905
    sget-object v0, Lgnu/xml/NamespaceBinding;->predefinedXML:Lgnu/xml/NamespaceBinding;

    if-ne p2, v0, :cond_0

    return-object p1

    .line 907
    :cond_0
    iget-object v1, p2, Lgnu/xml/NamespaceBinding;->c:Lgnu/xml/NamespaceBinding;

    invoke-virtual {p0, p1, v1}, Lgnu/xml/XMLFilter;->e(Lgnu/xml/NamespaceBinding;Lgnu/xml/NamespaceBinding;)Lgnu/xml/NamespaceBinding;

    move-result-object p1

    .line 908
    iget-object v1, p2, Lgnu/xml/NamespaceBinding;->b:Ljava/lang/String;

    if-nez p1, :cond_1

    if-nez v1, :cond_2

    return-object p1

    :cond_1
    move-object v0, p1

    .line 915
    :cond_2
    iget-object p1, p2, Lgnu/xml/NamespaceBinding;->a:Ljava/lang/String;

    .line 916
    invoke-virtual {v0, p1}, Lgnu/xml/NamespaceBinding;->resolve(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_3

    if-nez v1, :cond_4

    goto :goto_0

    .line 917
    :cond_3
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    :goto_0
    return-object v0

    .line 919
    :cond_4
    invoke-virtual {p0, p1, v1, v0}, Lgnu/xml/XMLFilter;->findNamespaceBinding(Ljava/lang/String;Ljava/lang/String;Lgnu/xml/NamespaceBinding;)Lgnu/xml/NamespaceBinding;

    move-result-object p1

    return-object p1
.end method

.method public emitCharacterReference(I[CII)V
    .locals 0

    const/high16 p2, 0x10000

    if-lt p1, p2, :cond_0

    .line 1122
    invoke-static {p1, p0}, Lgnu/text/Char;->print(ILgnu/lists/Consumer;)V

    return-void

    .line 1124
    :cond_0
    invoke-virtual {p0, p1}, Lgnu/xml/XMLFilter;->write(I)V

    return-void
.end method

.method public emitDoctypeDecl([CIIII)V
    .locals 0

    return-void
.end method

.method public emitEndAttributes()V
    .locals 1

    .line 1005
    iget-object v0, p0, Lgnu/xml/XMLFilter;->k:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1006
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->endAttribute()V

    .line 1007
    :cond_0
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->a()V

    return-void
.end method

.method public emitEndElement([CII)V
    .locals 6

    .line 1015
    iget-object v0, p0, Lgnu/xml/XMLFilter;->k:Ljava/lang/String;

    const/16 v1, 0x65

    if-eqz v0, :cond_0

    .line 1017
    const-string v0, "unclosed attribute"

    invoke-virtual {p0, v1, v0}, Lgnu/xml/XMLFilter;->error(CLjava/lang/String;)V

    .line 1018
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->endAttribute()V

    .line 1020
    :cond_0
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1022
    const-string p1, "unmatched end element"

    invoke-virtual {p0, v1, p1}, Lgnu/xml/XMLFilter;->error(CLjava/lang/String;)V

    return-void

    :cond_1
    if-eqz p1, :cond_4

    .line 1027
    invoke-virtual {p0, p1, p2, p3}, Lgnu/xml/XMLFilter;->d([CII)Lgnu/xml/a;

    move-result-object v0

    .line 1028
    iget-object v2, p0, Lgnu/xml/XMLFilter;->c:[Ljava/lang/Object;

    iget v3, p0, Lgnu/xml/XMLFilter;->nesting:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    aget-object v2, v2, v3

    .line 1029
    instance-of v3, v2, Lgnu/xml/a;

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lgnu/xml/XMLFilter;->p:Z

    if-nez v3, :cond_4

    .line 1031
    check-cast v2, Lgnu/xml/a;

    .line 1032
    iget-object v3, v0, Lgnu/xml/a;->d:Ljava/lang/String;

    iget-object v5, v2, Lgnu/xml/a;->d:Ljava/lang/String;

    if-ne v3, v5, :cond_2

    iget-object v0, v0, Lgnu/xml/a;->c:Ljava/lang/String;

    iget-object v3, v2, Lgnu/xml/a;->c:Ljava/lang/String;

    if-eq v0, v3, :cond_4

    .line 1034
    :cond_2
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v3, "</"

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1035
    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 1036
    const-string p1, "> matching <"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1037
    iget-object p1, v2, Lgnu/xml/a;->c:Ljava/lang/String;

    if-eqz p1, :cond_3

    .line 1040
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 p1, 0x3a

    .line 1041
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1043
    :cond_3
    iget-object p1, v2, Lgnu/xml/a;->d:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 p1, 0x3e

    .line 1044
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1045
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lgnu/xml/XMLFilter;->error(CLjava/lang/String;)V

    .line 1046
    iput-boolean v4, p0, Lgnu/xml/XMLFilter;->p:Z

    .line 1050
    :cond_4
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->a()V

    .line 1051
    iget p1, p0, Lgnu/xml/XMLFilter;->nesting:I

    if-gtz p1, :cond_5

    return-void

    .line 1053
    :cond_5
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->endElement()V

    return-void
.end method

.method public emitEntityReference([CII)V
    .locals 6

    .line 1088
    aget-char v0, p1, p2

    const/16 v1, 0x74

    const/4 v2, 0x2

    if-ne p3, v2, :cond_1

    add-int/lit8 v3, p2, 0x1

    .line 1090
    aget-char v3, p1, v3

    if-ne v3, v1, :cond_1

    const/16 p1, 0x6c

    if-ne v0, p1, :cond_0

    const/16 p1, 0x3c

    goto :goto_0

    :cond_0
    const/16 p1, 0x67

    if-ne v0, p1, :cond_4

    const/16 p1, 0x3e

    goto :goto_0

    :cond_1
    const/16 v3, 0x70

    const/16 v4, 0x61

    const/4 v5, 0x3

    if-ne p3, v5, :cond_2

    if-ne v0, v4, :cond_4

    add-int/lit8 p3, p2, 0x1

    .line 1100
    aget-char p3, p1, p3

    const/16 v0, 0x6d

    if-ne p3, v0, :cond_4

    add-int/2addr p2, v2

    aget-char p1, p1, p2

    if-ne p1, v3, :cond_4

    const/16 p1, 0x26

    goto :goto_0

    :cond_2
    const/4 v2, 0x4

    if-ne p3, v2, :cond_4

    add-int/lit8 p3, p2, 0x1

    .line 1105
    aget-char p3, p1, p3

    add-int/lit8 v2, p2, 0x2

    .line 1106
    aget-char v2, p1, v2

    add-int/2addr p2, v5

    .line 1107
    aget-char p1, p1, p2

    const/16 p2, 0x71

    const/16 v5, 0x6f

    if-ne v0, p2, :cond_3

    const/16 p2, 0x75

    if-ne p3, p2, :cond_3

    if-ne v2, v5, :cond_3

    if-ne p1, v1, :cond_3

    const/16 p1, 0x22

    goto :goto_0

    :cond_3
    if-ne v0, v4, :cond_4

    if-ne p3, v3, :cond_4

    if-ne v2, v5, :cond_4

    const/16 p2, 0x73

    if-ne p1, p2, :cond_4

    const/16 p1, 0x27

    goto :goto_0

    :cond_4
    const/16 p1, 0x3f

    .line 1113
    :goto_0
    invoke-virtual {p0, p1}, Lgnu/xml/XMLFilter;->write(I)V

    return-void
.end method

.method public emitStartAttribute([CII)V
    .locals 1

    .line 972
    iget-object v0, p0, Lgnu/xml/XMLFilter;->k:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 973
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->endAttribute()V

    .line 974
    :cond_0
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->g()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 977
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lgnu/xml/XMLFilter;->d([CII)Lgnu/xml/a;

    move-result-object p1

    .line 978
    iget-object p2, p0, Lgnu/xml/XMLFilter;->c:[Ljava/lang/Object;

    iget p3, p0, Lgnu/xml/XMLFilter;->nesting:I

    iget v0, p0, Lgnu/xml/XMLFilter;->j:I

    add-int/2addr p3, v0

    add-int/lit8 p3, p3, -0x1

    aput-object p1, p2, p3

    .line 979
    iget-object p2, p1, Lgnu/xml/a;->c:Ljava/lang/String;

    .line 980
    iget-object p1, p1, Lgnu/xml/a;->d:Ljava/lang/String;

    .line 981
    iput-object p1, p0, Lgnu/xml/XMLFilter;->k:Ljava/lang/String;

    .line 982
    iput-object p2, p0, Lgnu/xml/XMLFilter;->l:Ljava/lang/String;

    .line 983
    const-string p3, "xmlns"

    if-eqz p2, :cond_2

    if-ne p2, p3, :cond_3

    .line 987
    iput-object p1, p0, Lgnu/xml/XMLFilter;->m:Ljava/lang/String;

    goto :goto_0

    :cond_2
    if-ne p1, p3, :cond_3

    if-nez p2, :cond_3

    .line 994
    const-string p1, ""

    iput-object p1, p0, Lgnu/xml/XMLFilter;->m:Ljava/lang/String;

    .line 997
    :cond_3
    :goto_0
    iget-object p1, p0, Lgnu/xml/XMLFilter;->m:Ljava/lang/String;

    if-eqz p1, :cond_5

    iget-boolean p1, p0, Lgnu/xml/XMLFilter;->namespacePrefixes:Z

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    :goto_1
    return-void

    .line 998
    :cond_5
    :goto_2
    iget-object p1, p0, Lgnu/xml/XMLFilter;->a:Lgnu/lists/TreeList;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lgnu/lists/TreeList;->startAttribute(I)V

    return-void
.end method

.method public emitStartElement([CII)V
    .locals 0

    .line 840
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->a()V

    .line 841
    invoke-virtual {p0, p1, p2, p3}, Lgnu/xml/XMLFilter;->d([CII)Lgnu/xml/a;

    move-result-object p1

    .line 842
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->startElementCommon()V

    .line 843
    iget p2, p0, Lgnu/xml/XMLFilter;->nesting:I

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p0, p2}, Lgnu/xml/XMLFilter;->b(I)V

    .line 844
    iget-object p2, p0, Lgnu/xml/XMLFilter;->c:[Ljava/lang/Object;

    iget p3, p0, Lgnu/xml/XMLFilter;->nesting:I

    add-int/lit8 p3, p3, -0x1

    aput-object p1, p2, p3

    return-void
.end method

.method public endAttribute()V
    .locals 14

    .line 232
    iget-object v1, p0, Lgnu/xml/XMLFilter;->k:Ljava/lang/String;

    if-nez v1, :cond_0

    goto/16 :goto_6

    .line 234
    :cond_0
    iget v2, p0, Lgnu/xml/XMLFilter;->h:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v2, v3, :cond_1

    .line 236
    iput v4, p0, Lgnu/xml/XMLFilter;->h:I

    return-void

    .line 239
    :cond_1
    iget v2, p0, Lgnu/xml/XMLFilter;->stringizingElementNesting:I

    if-ltz v2, :cond_2

    .line 240
    iget v2, p0, Lgnu/xml/XMLFilter;->ignoringLevel:I

    sub-int/2addr v2, v3

    iput v2, p0, Lgnu/xml/XMLFilter;->ignoringLevel:I

    .line 241
    :cond_2
    iget v2, p0, Lgnu/xml/XMLFilter;->stringizingLevel:I

    sub-int/2addr v2, v3

    iput v2, p0, Lgnu/xml/XMLFilter;->stringizingLevel:I

    if-nez v2, :cond_c

    .line 243
    iget-object v2, p0, Lgnu/xml/XMLFilter;->a:Lgnu/lists/TreeList;

    const-string v5, "id"

    const v6, 0x9fff

    const v7, 0xffff

    if-ne v1, v5, :cond_6

    iget-object v1, p0, Lgnu/xml/XMLFilter;->l:Ljava/lang/String;

    const-string v5, "xml"

    if-ne v1, v5, :cond_6

    .line 246
    iget-object v1, p0, Lgnu/xml/XMLFilter;->i:[I

    iget v5, p0, Lgnu/xml/XMLFilter;->j:I

    sub-int/2addr v5, v3

    aget v1, v1, v5

    add-int/lit8 v1, v1, 0x5

    .line 248
    iget v5, v2, Lgnu/lists/TreeList;->gapStart:I

    .line 249
    iget-object v8, v2, Lgnu/lists/TreeList;->data:[C

    move v9, v1

    :goto_0
    if-lt v9, v5, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v10, v9, 0x1

    .line 257
    aget-char v9, v8, v9

    and-int v11, v9, v7

    if-gt v11, v6, :cond_5

    const/16 v11, 0x9

    if-eq v9, v11, :cond_5

    const/16 v11, 0xd

    if-eq v9, v11, :cond_5

    const/16 v11, 0xa

    if-eq v9, v11, :cond_5

    const/16 v11, 0x20

    if-ne v9, v11, :cond_4

    if-eq v10, v5, :cond_5

    .line 258
    aget-char v9, v8, v10

    if-ne v9, v11, :cond_4

    goto :goto_1

    :cond_4
    move v9, v10

    goto :goto_0

    .line 268
    :cond_5
    :goto_1
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 269
    invoke-virtual {v2, v1, v5, v8}, Lgnu/lists/TreeList;->stringValue(IILjava/lang/StringBuffer;)V

    .line 270
    iput v1, v2, Lgnu/lists/TreeList;->gapStart:I

    .line 271
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Lgnu/xml/TextUtils;->replaceWhitespace(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lgnu/lists/TreeList;->write(Ljava/lang/String;)V

    :cond_6
    :goto_2
    const/4 v8, 0x0

    .line 278
    iput-object v8, p0, Lgnu/xml/XMLFilter;->k:Ljava/lang/String;

    .line 279
    iput-object v8, p0, Lgnu/xml/XMLFilter;->l:Ljava/lang/String;

    .line 280
    iget-object v1, p0, Lgnu/xml/XMLFilter;->m:Ljava/lang/String;

    if-eqz v1, :cond_7

    iget-boolean v1, p0, Lgnu/xml/XMLFilter;->namespacePrefixes:Z

    if-eqz v1, :cond_8

    .line 281
    :cond_7
    invoke-virtual {v2}, Lgnu/lists/TreeList;->endAttribute()V

    .line 282
    :cond_8
    iget-object v1, p0, Lgnu/xml/XMLFilter;->m:Ljava/lang/String;

    if-eqz v1, :cond_c

    .line 285
    iget-object v1, p0, Lgnu/xml/XMLFilter;->i:[I

    iget v5, p0, Lgnu/xml/XMLFilter;->j:I

    sub-int/2addr v5, v3

    aget v1, v1, v5

    .line 287
    iget v3, v2, Lgnu/lists/TreeList;->gapStart:I

    sub-int v5, v3, v1

    .line 289
    iget-object v9, v2, Lgnu/lists/TreeList;->data:[C

    move v10, v1

    const/4 v11, 0x0

    :goto_3
    if-ge v10, v3, :cond_a

    .line 297
    aget-char v12, v9, v10

    and-int v13, v12, v7

    if-le v13, v6, :cond_9

    .line 300
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 301
    invoke-virtual {v2, v1, v3, v5}, Lgnu/lists/TreeList;->stringValue(IILjava/lang/StringBuffer;)V

    .line 302
    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v11

    .line 304
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    .line 305
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    new-array v9, v6, [C

    .line 306
    invoke-virtual {v5, v4, v3, v9, v4}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    move v4, v3

    const/4 v3, 0x0

    :goto_4
    move v5, v11

    goto :goto_5

    :cond_9
    mul-int/lit8 v11, v11, 0x1f

    add-int/2addr v11, v12

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_a
    move v3, v1

    move v4, v5

    goto :goto_4

    .line 311
    :goto_5
    iput v1, v2, Lgnu/lists/TreeList;->gapStart:I

    .line 313
    iget-object v1, p0, Lgnu/xml/XMLFilter;->m:Ljava/lang/String;

    const-string v2, ""

    if-ne v1, v2, :cond_b

    move-object v1, v8

    .line 315
    :cond_b
    iget-object v6, p0, Lgnu/xml/XMLFilter;->d:Lgnu/xml/NamespaceBinding;

    move-object v0, p0

    move-object v2, v9

    invoke-virtual/range {v0 .. v6}, Lgnu/xml/XMLFilter;->lookupNamespaceBinding(Ljava/lang/String;[CIIILgnu/xml/NamespaceBinding;)Lgnu/xml/a;

    move-result-object v1

    .line 318
    iget-object v1, v1, Lgnu/xml/a;->g:Lgnu/xml/NamespaceBinding;

    iput-object v1, p0, Lgnu/xml/XMLFilter;->d:Lgnu/xml/NamespaceBinding;

    .line 320
    iput-object v8, p0, Lgnu/xml/XMLFilter;->m:Ljava/lang/String;

    :cond_c
    :goto_6
    return-void
.end method

.method public endDocument()V
    .locals 4

    .line 1248
    iget v0, p0, Lgnu/xml/XMLFilter;->stringizingLevel:I

    if-lez v0, :cond_0

    .line 1250
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->writeJoiner()V

    return-void

    .line 1253
    :cond_0
    iget v0, p0, Lgnu/xml/XMLFilter;->nesting:I

    add-int/lit8 v1, v0, -0x2

    iput v1, p0, Lgnu/xml/XMLFilter;->nesting:I

    .line 1254
    iget-object v2, p0, Lgnu/xml/XMLFilter;->c:[Ljava/lang/Object;

    aget-object v3, v2, v1

    check-cast v3, Lgnu/xml/NamespaceBinding;

    iput-object v3, p0, Lgnu/xml/XMLFilter;->d:Lgnu/xml/NamespaceBinding;

    const/4 v3, 0x0

    .line 1255
    aput-object v3, v2, v1

    add-int/lit8 v0, v0, -0x1

    .line 1256
    aput-object v3, v2, v0

    if-nez v1, :cond_1

    .line 1258
    iget-object v0, p0, Lgnu/xml/XMLFilter;->b:Lgnu/lists/Consumer;

    invoke-interface {v0}, Lgnu/lists/Consumer;->endDocument()V

    return-void

    .line 1260
    :cond_1
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->writeJoiner()V

    return-void
.end method

.method public endElement()V
    .locals 4

    .line 1058
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->a()V

    .line 1059
    iget v0, p0, Lgnu/xml/XMLFilter;->nesting:I

    add-int/lit8 v1, v0, -0x2

    iput v1, p0, Lgnu/xml/XMLFilter;->nesting:I

    const/4 v2, 0x0

    .line 1060
    iput v2, p0, Lgnu/xml/XMLFilter;->h:I

    .line 1061
    iget v2, p0, Lgnu/xml/XMLFilter;->stringizingLevel:I

    if-nez v2, :cond_0

    .line 1063
    iget-object v2, p0, Lgnu/xml/XMLFilter;->c:[Ljava/lang/Object;

    aget-object v3, v2, v1

    check-cast v3, Lgnu/xml/NamespaceBinding;

    iput-object v3, p0, Lgnu/xml/XMLFilter;->d:Lgnu/xml/NamespaceBinding;

    const/4 v3, 0x0

    .line 1064
    aput-object v3, v2, v1

    add-int/lit8 v0, v0, -0x1

    .line 1065
    aput-object v3, v2, v0

    .line 1066
    iget-object v0, p0, Lgnu/xml/XMLFilter;->b:Lgnu/lists/Consumer;

    invoke-interface {v0}, Lgnu/lists/Consumer;->endElement()V

    return-void

    .line 1068
    :cond_0
    iget v0, p0, Lgnu/xml/XMLFilter;->stringizingElementNesting:I

    if-ne v0, v1, :cond_1

    const/4 v0, -0x1

    .line 1070
    iput v0, p0, Lgnu/xml/XMLFilter;->stringizingElementNesting:I

    const/4 v0, 0x2

    .line 1071
    iput v0, p0, Lgnu/xml/XMLFilter;->h:I

    :cond_1
    return-void
.end method

.method public endElement(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1526
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->endElement()V

    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1503
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->endElement()V

    return-void
.end method

.method public endEntity()V
    .locals 2

    .line 1286
    iget-object v0, p0, Lgnu/xml/XMLFilter;->b:Lgnu/lists/Consumer;

    instance-of v1, v0, Lgnu/lists/XConsumer;

    if-eqz v1, :cond_0

    .line 1287
    check-cast v0, Lgnu/lists/XConsumer;

    invoke-interface {v0}, Lgnu/lists/XConsumer;->endEntity()V

    :cond_0
    return-void
.end method

.method public endPrefixMapping(Ljava/lang/String;)V
    .locals 0

    .line 1559
    iget-object p1, p0, Lgnu/xml/XMLFilter;->d:Lgnu/xml/NamespaceBinding;

    invoke-virtual {p1}, Lgnu/xml/NamespaceBinding;->getNext()Lgnu/xml/NamespaceBinding;

    move-result-object p1

    iput-object p1, p0, Lgnu/xml/XMLFilter;->d:Lgnu/xml/NamespaceBinding;

    return-void
.end method

.method public error(CLjava/lang/String;)V
    .locals 2

    .line 1465
    iget-object v0, p0, Lgnu/xml/XMLFilter;->e:Lgnu/text/SourceMessages;

    if-eqz v0, :cond_1

    .line 1467
    iget-object v1, p0, Lgnu/xml/XMLFilter;->f:Lgnu/text/SourceLocator;

    if-eqz v1, :cond_0

    .line 1468
    invoke-virtual {v0, p1, v1, p2}, Lgnu/text/SourceMessages;->error(CLgnu/text/SourceLocator;Ljava/lang/String;)V

    return-void

    .line 1470
    :cond_0
    invoke-virtual {v0, p1, p2}, Lgnu/text/SourceMessages;->error(CLjava/lang/String;)V

    return-void

    .line 1466
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final f(Ljava/lang/String;[CII)V
    .locals 2

    .line 1198
    iget v0, p0, Lgnu/xml/XMLFilter;->stringizingLevel:I

    if-nez v0, :cond_0

    .line 1200
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->a()V

    .line 1201
    iget-object v0, p0, Lgnu/xml/XMLFilter;->b:Lgnu/lists/Consumer;

    instance-of v1, v0, Lgnu/lists/XConsumer;

    if-eqz v1, :cond_1

    .line 1202
    check-cast v0, Lgnu/lists/XConsumer;

    invoke-interface {v0, p1, p2, p3, p4}, Lgnu/lists/XConsumer;->writeProcessingInstruction(Ljava/lang/String;[CII)V

    return-void

    .line 1205
    :cond_0
    iget p1, p0, Lgnu/xml/XMLFilter;->stringizingElementNesting:I

    if-gez p1, :cond_1

    .line 1206
    iget-object p1, p0, Lgnu/xml/XMLFilter;->b:Lgnu/lists/Consumer;

    invoke-interface {p1, p2, p3, p4}, Lgnu/lists/Consumer;->write([CII)V

    :cond_1
    return-void
.end method

.method public findNamespaceBinding(Ljava/lang/String;Ljava/lang/String;Lgnu/xml/NamespaceBinding;)Lgnu/xml/NamespaceBinding;
    .locals 7

    if-nez p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 138
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    if-eqz p1, :cond_1

    .line 140
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 141
    :cond_1
    iget v1, p0, Lgnu/xml/XMLFilter;->o:I

    and-int/2addr v1, v0

    .line 142
    iget-object v2, p0, Lgnu/xml/XMLFilter;->n:[Lgnu/xml/a;

    aget-object v3, v2, v1

    :goto_1
    if-nez v3, :cond_3

    .line 147
    new-instance v3, Lgnu/xml/a;

    invoke-direct {v3}, Lgnu/xml/a;-><init>()V

    .line 148
    aget-object v4, v2, v1

    iput-object v4, v3, Lgnu/xml/a;->a:Lgnu/xml/a;

    .line 149
    aput-object v3, v2, v1

    .line 150
    iput v0, v3, Lgnu/xml/a;->b:I

    .line 151
    iput-object p1, v3, Lgnu/xml/a;->c:Ljava/lang/String;

    .line 152
    iput-object p2, v3, Lgnu/xml/a;->d:Ljava/lang/String;

    .line 153
    iput-object p2, v3, Lgnu/xml/a;->e:Ljava/lang/String;

    .line 154
    const-string v0, ""

    if-ne p2, v0, :cond_2

    const/4 p2, 0x0

    .line 156
    :cond_2
    new-instance v0, Lgnu/xml/NamespaceBinding;

    invoke-direct {v0, p1, p2, p3}, Lgnu/xml/NamespaceBinding;-><init>(Ljava/lang/String;Ljava/lang/String;Lgnu/xml/NamespaceBinding;)V

    .line 158
    iput-object v0, v3, Lgnu/xml/a;->g:Lgnu/xml/NamespaceBinding;

    return-object v0

    .line 162
    :cond_3
    iget v4, v3, Lgnu/xml/a;->b:I

    if-ne v4, v0, :cond_4

    iget-object v4, v3, Lgnu/xml/a;->c:Ljava/lang/String;

    if-ne v4, p1, :cond_4

    iget-object v4, v3, Lgnu/xml/a;->g:Lgnu/xml/NamespaceBinding;

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lgnu/xml/NamespaceBinding;->getNext()Lgnu/xml/NamespaceBinding;

    move-result-object v5

    iget-object v6, p0, Lgnu/xml/XMLFilter;->d:Lgnu/xml/NamespaceBinding;

    if-ne v5, v6, :cond_4

    invoke-virtual {v4}, Lgnu/xml/NamespaceBinding;->getPrefix()Ljava/lang/String;

    move-result-object v4

    if-ne v4, p1, :cond_4

    iget-object v4, v3, Lgnu/xml/a;->e:Ljava/lang/String;

    if-ne v4, p2, :cond_4

    .line 169
    iget-object p1, v3, Lgnu/xml/a;->g:Lgnu/xml/NamespaceBinding;

    return-object p1

    .line 143
    :cond_4
    iget-object v3, v3, Lgnu/xml/a;->a:Lgnu/xml/a;

    goto :goto_1
.end method

.method public final g()Z
    .locals 5

    .line 924
    iget v0, p0, Lgnu/xml/XMLFilter;->stringizingElementNesting:I

    const/4 v1, 0x1

    if-ltz v0, :cond_0

    .line 925
    iget v0, p0, Lgnu/xml/XMLFilter;->ignoringLevel:I

    add-int/2addr v0, v1

    iput v0, p0, Lgnu/xml/XMLFilter;->ignoringLevel:I

    .line 926
    :cond_0
    iget v0, p0, Lgnu/xml/XMLFilter;->stringizingLevel:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lgnu/xml/XMLFilter;->stringizingLevel:I

    const/4 v2, 0x0

    if-lez v0, :cond_1

    return v2

    .line 929
    :cond_1
    iget v0, p0, Lgnu/xml/XMLFilter;->j:I

    if-gez v0, :cond_2

    .line 930
    iput v2, p0, Lgnu/xml/XMLFilter;->j:I

    .line 931
    :cond_2
    iget v0, p0, Lgnu/xml/XMLFilter;->nesting:I

    iget v3, p0, Lgnu/xml/XMLFilter;->j:I

    add-int/2addr v0, v3

    invoke-virtual {p0, v0}, Lgnu/xml/XMLFilter;->b(I)V

    .line 932
    iget v0, p0, Lgnu/xml/XMLFilter;->j:I

    .line 1430
    iget-object v3, p0, Lgnu/xml/XMLFilter;->i:[I

    if-nez v3, :cond_3

    const/16 v0, 0x14

    .line 1432
    new-array v0, v0, [I

    iput-object v0, p0, Lgnu/xml/XMLFilter;->i:[I

    goto :goto_0

    .line 1434
    :cond_3
    array-length v4, v3

    if-lt v0, v4, :cond_4

    .line 1436
    array-length v4, v3

    mul-int/lit8 v4, v4, 0x2

    new-array v4, v4, [I

    .line 1437
    invoke-static {v3, v2, v4, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1438
    iput-object v4, p0, Lgnu/xml/XMLFilter;->i:[I

    .line 933
    :cond_4
    :goto_0
    iget-object v0, p0, Lgnu/xml/XMLFilter;->i:[I

    iget v2, p0, Lgnu/xml/XMLFilter;->j:I

    iget-object v3, p0, Lgnu/xml/XMLFilter;->a:Lgnu/lists/TreeList;

    iget v3, v3, Lgnu/lists/TreeList;->gapStart:I

    aput v3, v0, v2

    add-int/2addr v2, v1

    .line 934
    iput v2, p0, Lgnu/xml/XMLFilter;->j:I

    return v1
.end method

.method public getColumnNumber()I
    .locals 1

    .line 1593
    iget-object v0, p0, Lgnu/xml/XMLFilter;->g:Lgnu/text/LineBufferedReader;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lgnu/text/LineBufferedReader;->getColumnNumber()I

    move-result v0

    if-lez v0, :cond_0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 1579
    iget-object v0, p0, Lgnu/xml/XMLFilter;->g:Lgnu/text/LineBufferedReader;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lgnu/text/LineBufferedReader;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLineNumber()I
    .locals 2

    .line 1584
    iget-object v0, p0, Lgnu/xml/XMLFilter;->g:Lgnu/text/LineBufferedReader;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 1586
    :cond_0
    invoke-virtual {v0}, Lgnu/text/LineBufferedReader;->getLineNumber()I

    move-result v0

    if-gez v0, :cond_1

    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 1

    .line 1574
    iget-object v0, p0, Lgnu/xml/XMLFilter;->g:Lgnu/text/LineBufferedReader;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lgnu/text/LineBufferedReader;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ignorableWhitespace([CII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1538
    invoke-virtual {p0, p1, p2, p3}, Lgnu/xml/XMLFilter;->write([CII)V

    return-void
.end method

.method public ignoring()Z
    .locals 1

    .line 1475
    iget v0, p0, Lgnu/xml/XMLFilter;->ignoringLevel:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isStableSourceLocation()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public linefeedFromParser()V
    .locals 2

    .line 764
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->checkWriteAtomic()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 765
    iget-object v0, p0, Lgnu/xml/XMLFilter;->b:Lgnu/lists/Consumer;

    const/16 v1, 0xa

    invoke-interface {v0, v1}, Lgnu/lists/Consumer;->write(I)V

    :cond_0
    return-void
.end method

.method public lookupNamespaceBinding(Ljava/lang/String;[CIIILgnu/xml/NamespaceBinding;)Lgnu/xml/a;
    .locals 6

    if-nez p1, :cond_0

    goto :goto_0

    .line 186
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    xor-int/2addr p5, v0

    .line 192
    :goto_0
    iget v0, p0, Lgnu/xml/XMLFilter;->o:I

    and-int/2addr v0, p5

    .line 193
    iget-object v1, p0, Lgnu/xml/XMLFilter;->n:[Lgnu/xml/a;

    aget-object v2, v1, v0

    :goto_1
    if-nez v2, :cond_2

    .line 198
    new-instance v2, Lgnu/xml/a;

    invoke-direct {v2}, Lgnu/xml/a;-><init>()V

    .line 199
    aget-object v3, v1, v0

    iput-object v3, v2, Lgnu/xml/a;->a:Lgnu/xml/a;

    .line 200
    aput-object v2, v1, v0

    .line 201
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p2, p3, p4}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p2

    .line 206
    iput p5, v2, Lgnu/xml/a;->b:I

    .line 207
    iput-object p1, v2, Lgnu/xml/a;->c:Ljava/lang/String;

    .line 208
    iput-object p2, v2, Lgnu/xml/a;->d:Ljava/lang/String;

    .line 209
    iput-object p2, v2, Lgnu/xml/a;->e:Ljava/lang/String;

    .line 210
    const-string p3, ""

    if-ne p2, p3, :cond_1

    const/4 p2, 0x0

    .line 212
    :cond_1
    new-instance p3, Lgnu/xml/NamespaceBinding;

    invoke-direct {p3, p1, p2, p6}, Lgnu/xml/NamespaceBinding;-><init>(Ljava/lang/String;Ljava/lang/String;Lgnu/xml/NamespaceBinding;)V

    .line 214
    iput-object p3, v2, Lgnu/xml/a;->g:Lgnu/xml/NamespaceBinding;

    return-object v2

    .line 218
    :cond_2
    iget v3, v2, Lgnu/xml/a;->b:I

    if-ne v3, p5, :cond_3

    iget-object v3, v2, Lgnu/xml/a;->c:Ljava/lang/String;

    if-ne v3, p1, :cond_3

    iget-object v3, v2, Lgnu/xml/a;->g:Lgnu/xml/NamespaceBinding;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lgnu/xml/NamespaceBinding;->getNext()Lgnu/xml/NamespaceBinding;

    move-result-object v4

    iget-object v5, p0, Lgnu/xml/XMLFilter;->d:Lgnu/xml/NamespaceBinding;

    if-ne v4, v5, :cond_3

    invoke-virtual {v3}, Lgnu/xml/NamespaceBinding;->getPrefix()Ljava/lang/String;

    move-result-object v3

    if-ne v3, p1, :cond_3

    iget-object v3, v2, Lgnu/xml/a;->e:Ljava/lang/String;

    invoke-static {v3, p2, p3, p4}, Lgnu/xml/a;->a(Ljava/lang/String;[CII)Z

    move-result v3

    if-eqz v3, :cond_3

    return-object v2

    .line 194
    :cond_3
    iget-object v2, v2, Lgnu/xml/a;->a:Lgnu/xml/a;

    goto :goto_1
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1546
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    .line 1547
    array-length v0, p2

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1, v0}, Lgnu/xml/XMLFilter;->f(Ljava/lang/String;[CII)V

    return-void
.end method

.method public processingInstructionFromParser([CIIII)V
    .locals 2

    const/4 v0, 0x3

    if-ne p3, v0, :cond_0

    .line 1215
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->c()Z

    move-result v0

    if-nez v0, :cond_0

    aget-char v0, p1, p2

    const/16 v1, 0x78

    if-ne v0, v1, :cond_0

    add-int/lit8 v0, p2, 0x1

    aget-char v0, p1, v0

    const/16 v1, 0x6d

    if-ne v0, v1, :cond_0

    add-int/lit8 v0, p2, 0x2

    aget-char v0, p1, v0

    const/16 v1, 0x6c

    if-ne v0, v1, :cond_0

    return-void

    .line 1220
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .line 1221
    invoke-virtual {p0, v0, p1, p4, p5}, Lgnu/xml/XMLFilter;->f(Ljava/lang/String;[CII)V

    return-void
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .locals 1

    .line 1481
    instance-of v0, p1, Lgnu/text/SourceLocator;

    if-eqz v0, :cond_0

    .line 1482
    check-cast p1, Lgnu/text/SourceLocator;

    iput-object p1, p0, Lgnu/xml/XMLFilter;->f:Lgnu/text/SourceLocator;

    :cond_0
    return-void
.end method

.method public setMessages(Lgnu/text/SourceMessages;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lgnu/xml/XMLFilter;->e:Lgnu/text/SourceMessages;

    return-void
.end method

.method public setSourceLocator(Lgnu/text/LineBufferedReader;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lgnu/xml/XMLFilter;->g:Lgnu/text/LineBufferedReader;

    iput-object p0, p0, Lgnu/xml/XMLFilter;->f:Lgnu/text/SourceLocator;

    return-void
.end method

.method public setSourceLocator(Lgnu/text/SourceLocator;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lgnu/xml/XMLFilter;->f:Lgnu/text/SourceLocator;

    return-void
.end method

.method public skippedEntity(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public startAttribute(Ljava/lang/Object;)V
    .locals 5

    const/4 v0, 0x0

    .line 940
    iput v0, p0, Lgnu/xml/XMLFilter;->h:I

    .line 941
    instance-of v1, p1, Lgnu/mapping/Symbol;

    const/16 v2, 0x65

    if-eqz v1, :cond_1

    .line 943
    move-object v1, p1

    check-cast v1, Lgnu/mapping/Symbol;

    .line 944
    invoke-virtual {v1}, Lgnu/mapping/Symbol;->getLocalPart()Ljava/lang/String;

    move-result-object v3

    .line 945
    iput-object v3, p0, Lgnu/xml/XMLFilter;->k:Ljava/lang/String;

    .line 946
    invoke-virtual {v1}, Lgnu/mapping/Symbol;->getPrefix()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lgnu/xml/XMLFilter;->l:Ljava/lang/String;

    .line 947
    invoke-virtual {v1}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    .line 948
    const-string v4, "http://www.w3.org/2000/xmlns/"

    if-eq v1, v4, :cond_0

    const-string v4, ""

    if-ne v1, v4, :cond_1

    const-string v1, "xmlns"

    if-ne v3, v1, :cond_1

    .line 950
    :cond_0
    const-string v1, "arttribute name cannot be \'xmlns\' or in xmlns namespace"

    invoke-virtual {p0, v2, v1}, Lgnu/xml/XMLFilter;->error(CLjava/lang/String;)V

    .line 952
    :cond_1
    iget v1, p0, Lgnu/xml/XMLFilter;->nesting:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lgnu/xml/XMLFilter;->c:[Ljava/lang/Object;

    aget-object v1, v1, v4

    if-nez v1, :cond_2

    .line 953
    const-string v1, "attribute not allowed at document level"

    invoke-virtual {p0, v2, v1}, Lgnu/xml/XMLFilter;->error(CLjava/lang/String;)V

    .line 954
    :cond_2
    iget v1, p0, Lgnu/xml/XMLFilter;->j:I

    if-gez v1, :cond_3

    iget v1, p0, Lgnu/xml/XMLFilter;->nesting:I

    if-lez v1, :cond_3

    .line 955
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "attribute \'"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\' follows non-attribute content"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lgnu/xml/XMLFilter;->error(CLjava/lang/String;)V

    .line 956
    :cond_3
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->g()Z

    move-result v1

    if-nez v1, :cond_4

    return-void

    .line 958
    :cond_4
    iget-object v1, p0, Lgnu/xml/XMLFilter;->c:[Ljava/lang/Object;

    iget v2, p0, Lgnu/xml/XMLFilter;->nesting:I

    iget v3, p0, Lgnu/xml/XMLFilter;->j:I

    add-int/2addr v3, v2

    sub-int/2addr v3, v4

    aput-object p1, v1, v3

    if-nez v2, :cond_5

    .line 960
    iget-object v0, p0, Lgnu/xml/XMLFilter;->b:Lgnu/lists/Consumer;

    invoke-interface {v0, p1}, Lgnu/lists/Consumer;->startAttribute(Ljava/lang/Object;)V

    return-void

    .line 962
    :cond_5
    iget-object p1, p0, Lgnu/xml/XMLFilter;->a:Lgnu/lists/TreeList;

    invoke-virtual {p1, v0}, Lgnu/lists/TreeList;->startAttribute(I)V

    return-void
.end method

.method public startDocument()V
    .locals 4

    .line 1226
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->a()V

    .line 1227
    iget v0, p0, Lgnu/xml/XMLFilter;->stringizingLevel:I

    if-lez v0, :cond_0

    .line 1228
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->writeJoiner()V

    return-void

    .line 1232
    :cond_0
    iget v0, p0, Lgnu/xml/XMLFilter;->nesting:I

    if-nez v0, :cond_1

    .line 1233
    iget-object v0, p0, Lgnu/xml/XMLFilter;->b:Lgnu/lists/Consumer;

    invoke-interface {v0}, Lgnu/lists/Consumer;->startDocument()V

    goto :goto_0

    .line 1235
    :cond_1
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->writeJoiner()V

    .line 1236
    :goto_0
    iget v0, p0, Lgnu/xml/XMLFilter;->nesting:I

    invoke-virtual {p0, v0}, Lgnu/xml/XMLFilter;->b(I)V

    .line 1237
    iget-object v0, p0, Lgnu/xml/XMLFilter;->c:[Ljava/lang/Object;

    iget v1, p0, Lgnu/xml/XMLFilter;->nesting:I

    iget-object v2, p0, Lgnu/xml/XMLFilter;->d:Lgnu/xml/NamespaceBinding;

    aput-object v2, v0, v1

    add-int/lit8 v2, v1, 0x1

    const/4 v3, 0x0

    .line 1241
    aput-object v3, v0, v2

    add-int/lit8 v1, v1, 0x2

    .line 1242
    iput v1, p0, Lgnu/xml/XMLFilter;->nesting:I

    return-void
.end method

.method public startElement(Ljava/lang/Object;)V
    .locals 4

    .line 849
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->startElementCommon()V

    .line 850
    iget v0, p0, Lgnu/xml/XMLFilter;->stringizingLevel:I

    if-nez v0, :cond_b

    .line 852
    iget v0, p0, Lgnu/xml/XMLFilter;->nesting:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lgnu/xml/XMLFilter;->b(I)V

    .line 853
    iget-object v0, p0, Lgnu/xml/XMLFilter;->c:[Ljava/lang/Object;

    iget v2, p0, Lgnu/xml/XMLFilter;->nesting:I

    add-int/lit8 v3, v2, -0x1

    aput-object p1, v0, v3

    .line 854
    iget v0, p0, Lgnu/xml/XMLFilter;->copyNamespacesMode:I

    if-nez v0, :cond_0

    .line 855
    sget-object p1, Lgnu/xml/NamespaceBinding;->predefinedXML:Lgnu/xml/NamespaceBinding;

    iput-object p1, p0, Lgnu/xml/XMLFilter;->d:Lgnu/xml/NamespaceBinding;

    return-void

    :cond_0
    if-eq v0, v1, :cond_9

    const/4 v0, 0x2

    if-ne v2, v0, :cond_1

    goto :goto_3

    :cond_1
    const/4 v1, 0x2

    .line 867
    :goto_0
    iget v2, p0, Lgnu/xml/XMLFilter;->nesting:I

    if-ne v1, v2, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    .line 872
    :cond_2
    iget-object v2, p0, Lgnu/xml/XMLFilter;->c:[Ljava/lang/Object;

    add-int/lit8 v3, v1, 0x1

    aget-object v3, v2, v3

    if-eqz v3, :cond_8

    .line 874
    aget-object v1, v2, v1

    check-cast v1, Lgnu/xml/NamespaceBinding;

    :goto_1
    if-nez v1, :cond_4

    .line 881
    instance-of v0, p1, Lgnu/xml/XName;

    if-eqz v0, :cond_3

    check-cast p1, Lgnu/xml/XName;

    invoke-virtual {p1}, Lgnu/xml/XName;->getNamespaceNodes()Lgnu/xml/NamespaceBinding;

    move-result-object p1

    goto :goto_2

    :cond_3
    sget-object p1, Lgnu/xml/NamespaceBinding;->predefinedXML:Lgnu/xml/NamespaceBinding;

    :goto_2
    iput-object p1, p0, Lgnu/xml/XMLFilter;->d:Lgnu/xml/NamespaceBinding;

    return-void

    .line 885
    :cond_4
    iget v2, p0, Lgnu/xml/XMLFilter;->copyNamespacesMode:I

    if-ne v2, v0, :cond_5

    .line 886
    iput-object v1, p0, Lgnu/xml/XMLFilter;->d:Lgnu/xml/NamespaceBinding;

    return-void

    .line 887
    :cond_5
    instance-of v0, p1, Lgnu/xml/XName;

    if-eqz v0, :cond_7

    .line 889
    check-cast p1, Lgnu/xml/XName;

    invoke-virtual {p1}, Lgnu/xml/XName;->getNamespaceNodes()Lgnu/xml/NamespaceBinding;

    move-result-object p1

    .line 890
    invoke-static {v1, p1}, Lgnu/xml/NamespaceBinding;->commonAncestor(Lgnu/xml/NamespaceBinding;Lgnu/xml/NamespaceBinding;)Lgnu/xml/NamespaceBinding;

    move-result-object v0

    if-ne v0, v1, :cond_6

    .line 892
    iput-object p1, p0, Lgnu/xml/XMLFilter;->d:Lgnu/xml/NamespaceBinding;

    return-void

    .line 894
    :cond_6
    invoke-virtual {p0, v1, p1}, Lgnu/xml/XMLFilter;->e(Lgnu/xml/NamespaceBinding;Lgnu/xml/NamespaceBinding;)Lgnu/xml/NamespaceBinding;

    move-result-object p1

    iput-object p1, p0, Lgnu/xml/XMLFilter;->d:Lgnu/xml/NamespaceBinding;

    return-void

    .line 897
    :cond_7
    iput-object v1, p0, Lgnu/xml/XMLFilter;->d:Lgnu/xml/NamespaceBinding;

    return-void

    :cond_8
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 858
    :cond_9
    :goto_3
    instance-of v0, p1, Lgnu/xml/XName;

    if-eqz v0, :cond_a

    check-cast p1, Lgnu/xml/XName;

    invoke-virtual {p1}, Lgnu/xml/XName;->getNamespaceNodes()Lgnu/xml/NamespaceBinding;

    move-result-object p1

    goto :goto_4

    :cond_a
    sget-object p1, Lgnu/xml/NamespaceBinding;->predefinedXML:Lgnu/xml/NamespaceBinding;

    :goto_4
    iput-object p1, p0, Lgnu/xml/XMLFilter;->d:Lgnu/xml/NamespaceBinding;

    :cond_b
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1

    .line 1490
    invoke-static {p1, p2}, Lgnu/mapping/Symbol;->make(Ljava/lang/Object;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object p1

    invoke-virtual {p0, p1}, Lgnu/xml/XMLFilter;->startElement(Ljava/lang/Object;)V

    .line 1491
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result p1

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_0

    .line 1494
    invoke-interface {p4, p2}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p4, p2}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lgnu/mapping/Symbol;->make(Ljava/lang/Object;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object p3

    invoke-virtual {p0, p3}, Lgnu/xml/XMLFilter;->startAttribute(Ljava/lang/Object;)V

    .line 1495
    invoke-interface {p4, p2}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lgnu/xml/XMLFilter;->write(Ljava/lang/String;)V

    .line 1496
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->endAttribute()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public startElement(Ljava/lang/String;Lorg/xml/sax/AttributeList;)V
    .locals 3

    .line 1508
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    .line 1509
    invoke-virtual {p0, p1}, Lgnu/xml/XMLFilter;->startElement(Ljava/lang/Object;)V

    .line 1510
    invoke-interface {p2}, Lorg/xml/sax/AttributeList;->getLength()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 1513
    invoke-interface {p2, v0}, Lorg/xml/sax/AttributeList;->getName(I)Ljava/lang/String;

    move-result-object v1

    .line 1514
    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    .line 1515
    invoke-interface {p2, v0}, Lorg/xml/sax/AttributeList;->getType(I)Ljava/lang/String;

    .line 1516
    invoke-interface {p2, v0}, Lorg/xml/sax/AttributeList;->getValue(I)Ljava/lang/String;

    move-result-object v2

    .line 1517
    invoke-virtual {p0, v1}, Lgnu/xml/XMLFilter;->startAttribute(Ljava/lang/Object;)V

    .line 1518
    invoke-virtual {p0, v2}, Lgnu/xml/XMLFilter;->write(Ljava/lang/String;)V

    .line 1519
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->endAttribute()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public startElementCommon()V
    .locals 5

    .line 817
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->a()V

    .line 818
    iget v0, p0, Lgnu/xml/XMLFilter;->stringizingLevel:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 820
    iget v0, p0, Lgnu/xml/XMLFilter;->nesting:I

    invoke-virtual {p0, v0}, Lgnu/xml/XMLFilter;->b(I)V

    .line 821
    iget-object v0, p0, Lgnu/xml/XMLFilter;->c:[Ljava/lang/Object;

    iget v3, p0, Lgnu/xml/XMLFilter;->nesting:I

    iget-object v4, p0, Lgnu/xml/XMLFilter;->d:Lgnu/xml/NamespaceBinding;

    aput-object v4, v0, v3

    .line 822
    iget-object v0, p0, Lgnu/xml/XMLFilter;->a:Lgnu/lists/TreeList;

    invoke-virtual {v0, v2}, Lgnu/lists/TreeList;->startElement(I)V

    .line 823
    iput-object v0, p0, Lgnu/xml/XMLFilter;->b:Lgnu/lists/Consumer;

    .line 824
    iput v2, p0, Lgnu/xml/XMLFilter;->j:I

    goto :goto_0

    .line 828
    :cond_0
    iget v0, p0, Lgnu/xml/XMLFilter;->h:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lgnu/xml/XMLFilter;->stringizingElementNesting:I

    if-gez v0, :cond_1

    const/16 v0, 0x20

    .line 829
    invoke-virtual {p0, v0}, Lgnu/xml/XMLFilter;->write(I)V

    .line 830
    :cond_1
    iput v2, p0, Lgnu/xml/XMLFilter;->h:I

    .line 831
    iget v0, p0, Lgnu/xml/XMLFilter;->stringizingElementNesting:I

    if-gez v0, :cond_2

    .line 832
    iget v0, p0, Lgnu/xml/XMLFilter;->nesting:I

    iput v0, p0, Lgnu/xml/XMLFilter;->stringizingElementNesting:I

    .line 834
    :cond_2
    :goto_0
    iget v0, p0, Lgnu/xml/XMLFilter;->nesting:I

    add-int/2addr v0, v1

    iput v0, p0, Lgnu/xml/XMLFilter;->nesting:I

    return-void
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1552
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lgnu/xml/XMLFilter;->d:Lgnu/xml/NamespaceBinding;

    invoke-virtual {p0, p1, p2, v0}, Lgnu/xml/XMLFilter;->findNamespaceBinding(Ljava/lang/String;Ljava/lang/String;Lgnu/xml/NamespaceBinding;)Lgnu/xml/NamespaceBinding;

    move-result-object p1

    iput-object p1, p0, Lgnu/xml/XMLFilter;->d:Lgnu/xml/NamespaceBinding;

    return-void
.end method

.method public textFromParser([CII)V
    .locals 2

    .line 771
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->c()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    if-ne v0, p3, :cond_0

    goto :goto_1

    :cond_0
    add-int v1, p2, v0

    .line 777
    aget-char v1, p1, v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_1

    const/16 p1, 0x65

    .line 779
    const-string p2, "text at document level"

    invoke-virtual {p0, p1, p2}, Lgnu/xml/XMLFilter;->error(CLjava/lang/String;)V

    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    if-lez p3, :cond_4

    .line 786
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->checkWriteAtomic()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    .line 789
    :cond_3
    iget-object v0, p0, Lgnu/xml/XMLFilter;->b:Lgnu/lists/Consumer;

    invoke-interface {v0, p1, p2, p3}, Lgnu/lists/Consumer;->write([CII)V

    :cond_4
    :goto_1
    return-void
.end method

.method public write(I)V
    .locals 1

    .line 611
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->checkWriteAtomic()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 612
    iget-object v0, p0, Lgnu/xml/XMLFilter;->b:Lgnu/lists/Consumer;

    invoke-interface {v0, p1}, Lgnu/lists/Consumer;->write(I)V

    :cond_0
    return-void
.end method

.method public write(Ljava/lang/CharSequence;II)V
    .locals 1

    if-nez p3, :cond_0

    .line 748
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->writeJoiner()V

    return-void

    .line 749
    :cond_0
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->checkWriteAtomic()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 750
    iget-object v0, p0, Lgnu/xml/XMLFilter;->b:Lgnu/lists/Consumer;

    invoke-interface {v0, p1, p2, p3}, Lgnu/lists/Consumer;->write(Ljava/lang/CharSequence;II)V

    :cond_1
    return-void
.end method

.method public write(Ljava/lang/String;)V
    .locals 2

    .line 738
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lgnu/xml/XMLFilter;->write(Ljava/lang/CharSequence;II)V

    return-void
.end method

.method public write([CII)V
    .locals 1

    if-nez p3, :cond_0

    .line 731
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->writeJoiner()V

    return-void

    .line 732
    :cond_0
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->checkWriteAtomic()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 733
    iget-object v0, p0, Lgnu/xml/XMLFilter;->b:Lgnu/lists/Consumer;

    invoke-interface {v0, p1, p2, p3}, Lgnu/lists/Consumer;->write([CII)V

    :cond_1
    return-void
.end method

.method public writeBoolean(Z)V
    .locals 1

    .line 617
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->checkWriteAtomic()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 618
    iget-object v0, p0, Lgnu/xml/XMLFilter;->b:Lgnu/lists/Consumer;

    invoke-interface {v0, p1}, Lgnu/lists/Consumer;->writeBoolean(Z)V

    :cond_0
    return-void
.end method

.method public writeCDATA([CII)V
    .locals 2

    .line 806
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->checkWriteAtomic()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 808
    iget-object v0, p0, Lgnu/xml/XMLFilter;->b:Lgnu/lists/Consumer;

    instance-of v1, v0, Lgnu/lists/XConsumer;

    if-eqz v1, :cond_0

    .line 809
    check-cast v0, Lgnu/lists/XConsumer;

    invoke-interface {v0, p1, p2, p3}, Lgnu/lists/XConsumer;->writeCDATA([CII)V

    return-void

    .line 811
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lgnu/xml/XMLFilter;->write([CII)V

    :cond_1
    return-void
.end method

.method public writeComment([CII)V
    .locals 0

    .line 1148
    invoke-virtual {p0, p1, p2, p3}, Lgnu/xml/XMLFilter;->checkValidComment([CII)V

    .line 1149
    invoke-virtual {p0, p1, p2, p3}, Lgnu/xml/XMLFilter;->commentFromParser([CII)V

    return-void
.end method

.method public writeDocumentUri(Ljava/lang/Object;)V
    .locals 2

    .line 647
    iget v0, p0, Lgnu/xml/XMLFilter;->nesting:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lgnu/xml/XMLFilter;->b:Lgnu/lists/Consumer;

    instance-of v1, v0, Lgnu/lists/TreeList;

    if-eqz v1, :cond_0

    .line 648
    check-cast v0, Lgnu/lists/TreeList;

    invoke-virtual {v0, p1}, Lgnu/lists/TreeList;->writeDocumentUri(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public writeDouble(D)V
    .locals 1

    .line 629
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->checkWriteAtomic()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 630
    iget-object v0, p0, Lgnu/xml/XMLFilter;->b:Lgnu/lists/Consumer;

    invoke-interface {v0, p1, p2}, Lgnu/lists/Consumer;->writeDouble(D)V

    :cond_0
    return-void
.end method

.method public writeFloat(F)V
    .locals 1

    .line 623
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->checkWriteAtomic()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 624
    iget-object v0, p0, Lgnu/xml/XMLFilter;->b:Lgnu/lists/Consumer;

    invoke-interface {v0, p1}, Lgnu/lists/Consumer;->writeFloat(F)V

    :cond_0
    return-void
.end method

.method public writeInt(I)V
    .locals 1

    .line 635
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->checkWriteAtomic()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 636
    iget-object v0, p0, Lgnu/xml/XMLFilter;->b:Lgnu/lists/Consumer;

    invoke-interface {v0, p1}, Lgnu/lists/Consumer;->writeInt(I)V

    :cond_0
    return-void
.end method

.method public writeJoiner()V
    .locals 1

    const/4 v0, 0x0

    .line 795
    iput v0, p0, Lgnu/xml/XMLFilter;->h:I

    .line 796
    iget v0, p0, Lgnu/xml/XMLFilter;->ignoringLevel:I

    if-nez v0, :cond_0

    .line 797
    iget-object v0, p0, Lgnu/xml/XMLFilter;->b:Lgnu/lists/Consumer;

    check-cast v0, Lgnu/lists/TreeList;

    invoke-virtual {v0}, Lgnu/lists/TreeList;->writeJoiner()V

    :cond_0
    return-void
.end method

.method public writeLong(J)V
    .locals 1

    .line 641
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->checkWriteAtomic()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 642
    iget-object v0, p0, Lgnu/xml/XMLFilter;->b:Lgnu/lists/Consumer;

    invoke-interface {v0, p1, p2}, Lgnu/lists/Consumer;->writeLong(J)V

    :cond_0
    return-void
.end method

.method public writeObject(Ljava/lang/Object;)V
    .locals 2

    .line 674
    iget v0, p0, Lgnu/xml/XMLFilter;->ignoringLevel:I

    if-lez v0, :cond_0

    goto :goto_1

    .line 676
    :cond_0
    instance-of v0, p1, Lgnu/lists/SeqPosition;

    if-eqz v0, :cond_1

    .line 678
    check-cast p1, Lgnu/lists/SeqPosition;

    .line 679
    iget-object v0, p1, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    invoke-virtual {p1}, Lgnu/lists/SeqPosition;->getPos()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lgnu/xml/XMLFilter;->writePosition(Lgnu/lists/AbstractSequence;I)V

    return-void

    .line 681
    :cond_1
    instance-of v0, p1, Lgnu/lists/TreeList;

    if-eqz v0, :cond_2

    .line 682
    check-cast p1, Lgnu/lists/TreeList;

    invoke-virtual {p1, p0}, Lgnu/lists/TreeList;->consume(Lgnu/lists/Consumer;)V

    return-void

    .line 683
    :cond_2
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_4

    instance-of v0, p1, Lgnu/lists/CharSeq;

    if-nez v0, :cond_4

    .line 685
    check-cast p1, Ljava/util/List;

    .line 686
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 688
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 689
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/xml/XMLFilter;->writeObject(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    :goto_1
    return-void

    .line 691
    :cond_4
    instance-of v0, p1, Lgnu/expr/Keyword;

    if-eqz v0, :cond_5

    .line 693
    check-cast p1, Lgnu/expr/Keyword;

    .line 694
    invoke-virtual {p1}, Lgnu/expr/Keyword;->asSymbol()Lgnu/mapping/Symbol;

    move-result-object p1

    invoke-virtual {p0, p1}, Lgnu/xml/XMLFilter;->startAttribute(Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 695
    iput p1, p0, Lgnu/xml/XMLFilter;->h:I

    return-void

    .line 699
    :cond_5
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->a()V

    .line 700
    instance-of v0, p1, Lgnu/lists/UnescapedData;

    if-eqz v0, :cond_6

    .line 702
    iget-object v0, p0, Lgnu/xml/XMLFilter;->b:Lgnu/lists/Consumer;

    invoke-interface {v0, p1}, Lgnu/lists/Consumer;->writeObject(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 703
    iput p1, p0, Lgnu/xml/XMLFilter;->h:I

    return-void

    .line 707
    :cond_6
    iget v0, p0, Lgnu/xml/XMLFilter;->h:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/16 v0, 0x20

    .line 708
    invoke-virtual {p0, v0}, Lgnu/xml/XMLFilter;->write(I)V

    .line 709
    :cond_7
    invoke-static {p1, p0}, Lgnu/xml/TextUtils;->textValue(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    .line 710
    iput v1, p0, Lgnu/xml/XMLFilter;->h:I

    return-void
.end method

.method public writePosition(Lgnu/lists/AbstractSequence;I)V
    .locals 2

    .line 658
    iget v0, p0, Lgnu/xml/XMLFilter;->ignoringLevel:I

    if-lez v0, :cond_0

    goto :goto_0

    .line 660
    :cond_0
    iget v0, p0, Lgnu/xml/XMLFilter;->stringizingLevel:I

    const/4 v1, 0x2

    if-lez v0, :cond_2

    iget v0, p0, Lgnu/xml/XMLFilter;->h:I

    if-ne v0, v1, :cond_2

    .line 662
    iget v0, p0, Lgnu/xml/XMLFilter;->stringizingElementNesting:I

    if-gez v0, :cond_1

    const/16 v0, 0x20

    .line 663
    invoke-virtual {p0, v0}, Lgnu/xml/XMLFilter;->write(I)V

    :cond_1
    const/4 v0, 0x0

    .line 664
    iput v0, p0, Lgnu/xml/XMLFilter;->h:I

    .line 666
    :cond_2
    invoke-virtual {p1, p2, p0}, Lgnu/lists/AbstractSequence;->consumeNext(ILgnu/lists/Consumer;)Z

    .line 667
    iget p1, p0, Lgnu/xml/XMLFilter;->stringizingLevel:I

    if-lez p1, :cond_3

    iget p1, p0, Lgnu/xml/XMLFilter;->stringizingElementNesting:I

    if-gez p1, :cond_3

    .line 668
    iput v1, p0, Lgnu/xml/XMLFilter;->h:I

    :cond_3
    :goto_0
    return-void
.end method

.method public writeProcessingInstruction(Ljava/lang/String;[CII)V
    .locals 4

    const/4 v0, 0x1

    .line 1170
    invoke-static {p1, v0}, Lgnu/xml/TextUtils;->replaceWhitespace(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    add-int v0, p3, p4

    :cond_0
    :goto_0
    add-int/lit8 v0, v0, -0x1

    const/16 v1, 0x65

    if-lt v0, p3, :cond_2

    .line 1173
    aget-char v2, p2, v0

    :cond_1
    const/16 v3, 0x3e

    if-ne v2, v3, :cond_0

    add-int/lit8 v0, v0, -0x1

    if-lt v0, p3, :cond_0

    .line 1176
    aget-char v2, p2, v0

    const/16 v3, 0x3f

    if-ne v2, v3, :cond_1

    .line 1179
    const-string v2, "\'?>\' is not allowed in a processing-instruction"

    invoke-virtual {p0, v1, v2}, Lgnu/xml/XMLFilter;->error(CLjava/lang/String;)V

    goto :goto_0

    .line 1185
    :cond_2
    const-string v0, "xml"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1186
    const-string v0, "processing-instruction target may not be \'xml\' (ignoring case)"

    invoke-virtual {p0, v1, v0}, Lgnu/xml/XMLFilter;->error(CLjava/lang/String;)V

    .line 1188
    :cond_3
    invoke-static {p1}, Lgnu/xml/XName;->isNCName(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1189
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "processing-instruction target \'"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' is not a valid Name"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lgnu/xml/XMLFilter;->error(CLjava/lang/String;)V

    .line 1192
    :cond_4
    invoke-virtual {p0, p1, p2, p3, p4}, Lgnu/xml/XMLFilter;->f(Ljava/lang/String;[CII)V

    return-void
.end method
