.class public Landroidx/constraintlayout/widget/ConstraintLayoutStates;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/widget/ConstraintLayoutStates$b;,
        Landroidx/constraintlayout/widget/ConstraintLayoutStates$a;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "ConstraintLayoutStates"


# instance fields
.field public final a:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public b:I

.field public c:I

.field public final d:Landroid/util/SparseArray;

.field public final e:Landroid/util/SparseArray;

.field public f:Landroidx/constraintlayout/widget/ConstraintsChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/constraintlayout/widget/ConstraintLayout;I)V
    .locals 7

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 42
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->b:I

    .line 43
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->c:I

    .line 44
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->d:Landroid/util/SparseArray;

    .line 45
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->e:Landroid/util/SparseArray;

    const/4 v1, 0x0

    .line 46
    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->f:Landroidx/constraintlayout/widget/ConstraintsChangedListener;

    .line 49
    iput-object p2, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 285
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 286
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p2

    .line 292
    :try_start_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result p3

    :goto_0
    const/4 v2, 0x1

    if-eq p3, v2, :cond_7

    if-eqz p3, :cond_5

    const/4 v3, 0x2

    if-eq p3, v3, :cond_0

    goto/16 :goto_3

    .line 300
    :cond_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p3

    .line 301
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x4

    const/4 v6, 0x3

    sparse-switch v4, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v4, "Variant"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x3

    goto :goto_2

    :catch_0
    move-exception p1

    goto/16 :goto_4

    :catch_1
    move-exception p1

    goto/16 :goto_5

    :sswitch_1
    const-string v4, "layoutDescription"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    goto :goto_2

    :sswitch_2
    const-string v4, "StateSet"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_2

    :sswitch_3
    const-string v4, "State"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x2

    goto :goto_2

    :sswitch_4
    const-string v4, "ConstraintSet"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x4

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v4, -0x1

    :goto_2
    if-eqz v4, :cond_6

    if-eq v4, v2, :cond_6

    if-eq v4, v3, :cond_4

    if-eq v4, v6, :cond_3

    if-eq v4, v5, :cond_2

    .line 320
    const-string v2, "ConstraintLayoutStates"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unknown tag "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v2, p3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 317
    :cond_2
    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->a(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V

    goto :goto_3

    .line 311
    :cond_3
    new-instance p3, Landroidx/constraintlayout/widget/ConstraintLayoutStates$b;

    invoke-direct {p3, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayoutStates$b;-><init>(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    if-eqz v1, :cond_6

    .line 171
    iget-object v2, v1, Landroidx/constraintlayout/widget/ConstraintLayoutStates$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 307
    :cond_4
    new-instance v1, Landroidx/constraintlayout/widget/ConstraintLayoutStates$a;

    invoke-direct {v1, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayoutStates$a;-><init>(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 308
    iget-object p3, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->d:Landroid/util/SparseArray;

    iget v2, v1, Landroidx/constraintlayout/widget/ConstraintLayoutStates$a;->a:I

    invoke-virtual {p3, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_3

    .line 297
    :cond_5
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 294
    :cond_6
    :goto_3
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p3
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 342
    :goto_4
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_6

    .line 340
    :goto_5
    invoke-virtual {p1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    :cond_7
    :goto_6
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x50764adb -> :sswitch_4
        0x4c7d471 -> :sswitch_3
        0x526c4e31 -> :sswitch_2
        0x62ce7272 -> :sswitch_1
        0x7155a865 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V
    .locals 8

    .line 347
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {v0}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    .line 348
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    .line 350
    invoke-interface {p2, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "id"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 351
    invoke-interface {p2, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v1

    .line 354
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v5, -0x1

    if-eqz v2, :cond_0

    const/16 v2, 0x2f

    .line 355
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 356
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v2, v4, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    goto :goto_1

    :cond_0
    const/4 v2, -0x1

    :goto_1
    if-ne v2, v5, :cond_2

    .line 360
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v3, :cond_1

    .line 361
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_2

    .line 363
    :cond_1
    const-string v1, "ConstraintLayoutStates"

    const-string v3, "error in parsing id"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    :cond_2
    :goto_2
    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintSet;->load(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 370
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->e:Landroid/util/SparseArray;

    invoke-virtual {p1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public needsToChange(IFF)Z
    .locals 5

    .line 54
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->b:I

    const/4 v1, 0x1

    if-eq v0, p1, :cond_0

    return v1

    .line 58
    :cond_0
    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->d:Landroid/util/SparseArray;

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-ne p1, v3, :cond_1

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayoutStates$a;

    goto :goto_1

    :cond_1
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 60
    :goto_1
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->c:I

    if-eq v0, v3, :cond_2

    .line 61
    iget-object v2, p1, Landroidx/constraintlayout/widget/ConstraintLayoutStates$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$b;

    invoke-virtual {v0, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayoutStates$b;->a(FF)Z

    move-result v0

    if-eqz v0, :cond_2

    return v4

    .line 66
    :cond_2
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->c:I

    invoke-virtual {p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayoutStates$a;->findMatch(FF)I

    move-result p1

    if-ne v0, p1, :cond_3

    return v4

    :cond_3
    return v1
.end method

.method public setOnConstraintsChanged(Landroidx/constraintlayout/widget/ConstraintsChangedListener;)V
    .locals 0

    .line 133
    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->f:Landroidx/constraintlayout/widget/ConstraintsChangedListener;

    return-void
.end method

.method public updateConstraints(IFF)V
    .locals 6

    .line 73
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->b:I

    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->d:Landroid/util/SparseArray;

    const/4 v3, -0x1

    if-ne v0, p1, :cond_7

    if-ne p1, v3, :cond_0

    const/4 p1, 0x0

    .line 76
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayoutStates$a;

    goto :goto_0

    .line 78
    :cond_0
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayoutStates$a;

    .line 81
    :goto_0
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->c:I

    if-eq v0, v3, :cond_1

    .line 82
    iget-object v2, p1, Landroidx/constraintlayout/widget/ConstraintLayoutStates$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$b;

    invoke-virtual {v0, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayoutStates$b;->a(FF)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_5

    .line 86
    :cond_1
    invoke-virtual {p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayoutStates$a;->findMatch(FF)I

    move-result p2

    .line 87
    iget p3, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->c:I

    if-ne p3, p2, :cond_2

    goto/16 :goto_5

    .line 91
    :cond_2
    iget-object p3, p1, Landroidx/constraintlayout/widget/ConstraintLayoutStates$a;->b:Ljava/util/ArrayList;

    if-ne p2, v3, :cond_3

    const/4 v0, 0x0

    goto :goto_1

    .line 92
    :cond_3
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$b;

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$b;->f:Landroidx/constraintlayout/widget/ConstraintSet;

    :goto_1
    if-ne p2, v3, :cond_4

    .line 93
    iget p1, p1, Landroidx/constraintlayout/widget/ConstraintLayoutStates$a;->c:I

    goto :goto_2

    .line 94
    :cond_4
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayoutStates$b;

    iget p1, p1, Landroidx/constraintlayout/widget/ConstraintLayoutStates$b;->e:I

    :goto_2
    if-nez v0, :cond_5

    goto/16 :goto_5

    .line 98
    :cond_5
    iput p2, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->c:I

    .line 99
    iget-object p2, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->f:Landroidx/constraintlayout/widget/ConstraintsChangedListener;

    if-eqz p2, :cond_6

    .line 100
    invoke-virtual {p2, v3, p1}, Landroidx/constraintlayout/widget/ConstraintsChangedListener;->preLayoutChange(II)V

    .line 102
    :cond_6
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 103
    iget-object p2, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->f:Landroidx/constraintlayout/widget/ConstraintsChangedListener;

    if-eqz p2, :cond_c

    .line 104
    invoke-virtual {p2, v3, p1}, Landroidx/constraintlayout/widget/ConstraintsChangedListener;->postLayoutChange(II)V

    return-void

    .line 108
    :cond_7
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->b:I

    .line 109
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$a;

    .line 110
    invoke-virtual {v0, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayoutStates$a;->findMatch(FF)I

    move-result v2

    .line 111
    iget-object v4, v0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$a;->b:Ljava/util/ArrayList;

    if-ne v2, v3, :cond_8

    iget-object v5, v0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$a;->d:Landroidx/constraintlayout/widget/ConstraintSet;

    goto :goto_3

    .line 112
    :cond_8
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/widget/ConstraintLayoutStates$b;

    iget-object v5, v5, Landroidx/constraintlayout/widget/ConstraintLayoutStates$b;->f:Landroidx/constraintlayout/widget/ConstraintSet;

    :goto_3
    if-ne v2, v3, :cond_9

    .line 113
    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$a;->c:I

    goto :goto_4

    .line 114
    :cond_9
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$b;

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$b;->e:I

    :goto_4
    if-nez v5, :cond_a

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NO Constraint set found ! id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", dim ="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ConstraintLayoutStates"

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 120
    :cond_a
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->c:I

    .line 121
    iget-object p2, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->f:Landroidx/constraintlayout/widget/ConstraintsChangedListener;

    if-eqz p2, :cond_b

    .line 122
    invoke-virtual {p2, p1, v0}, Landroidx/constraintlayout/widget/ConstraintsChangedListener;->preLayoutChange(II)V

    .line 124
    :cond_b
    invoke-virtual {v5, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 125
    iget-object p2, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->f:Landroidx/constraintlayout/widget/ConstraintsChangedListener;

    if-eqz p2, :cond_c

    .line 126
    invoke-virtual {p2, p1, v0}, Landroidx/constraintlayout/widget/ConstraintsChangedListener;->postLayoutChange(II)V

    :cond_c
    :goto_5
    return-void
.end method
