.class public Landroidx/constraintlayout/widget/StateSet;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/widget/StateSet$b;,
        Landroidx/constraintlayout/widget/StateSet$a;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "ConstraintLayoutStates"


# instance fields
.field public final a:I

.field public final b:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 9

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 41
    iput v0, p0, Landroidx/constraintlayout/widget/StateSet;->a:I

    .line 46
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/widget/StateSet;->b:Landroid/util/SparseArray;

    .line 47
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 70
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    .line 71
    sget-object v2, Landroidx/constraintlayout/widget/R$styleable;->StateSet:[I

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 72
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    .line 75
    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v5

    .line 76
    sget v6, Landroidx/constraintlayout/widget/R$styleable;->StateSet_defaultState:I

    if-ne v5, v6, :cond_0

    .line 77
    iget v6, p0, Landroidx/constraintlayout/widget/StateSet;->a:I

    invoke-virtual {v1, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/widget/StateSet;->a:I

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 86
    :cond_1
    :try_start_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    :goto_1
    const/4 v4, 0x1

    if-eq v1, v4, :cond_9

    if-eqz v1, :cond_7

    .line 90
    const-string v5, "StateSet"

    const/4 v6, 0x3

    const/4 v7, 0x2

    if-eq v1, v7, :cond_3

    if-eq v1, v6, :cond_2

    goto/16 :goto_4

    .line 118
    :cond_2
    :try_start_1
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    goto/16 :goto_7

    :catch_0
    move-exception p1

    goto/16 :goto_5

    :catch_1
    move-exception p1

    goto/16 :goto_6

    .line 95
    :cond_3
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 96
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    goto :goto_2

    :sswitch_0
    const-string v5, "Variant"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v5, 0x3

    goto :goto_3

    :sswitch_1
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v5, 0x1

    goto :goto_3

    :sswitch_2
    const-string v5, "LayoutDescription"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v5, 0x0

    goto :goto_3

    :sswitch_3
    const-string v5, "State"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v5, 0x2

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v5, -0x1

    :goto_3
    if-eqz v5, :cond_8

    if-eq v5, v4, :cond_8

    if-eq v5, v7, :cond_6

    if-eq v5, v6, :cond_5

    .line 113
    const-string v4, "ConstraintLayoutStates"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unknown tag "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 106
    :cond_5
    new-instance v1, Landroidx/constraintlayout/widget/StateSet$b;

    invoke-direct {v1, p1, p2}, Landroidx/constraintlayout/widget/StateSet$b;-><init>(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    if-eqz v2, :cond_8

    .line 273
    iget-object v4, v2, Landroidx/constraintlayout/widget/StateSet$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 102
    :cond_6
    new-instance v2, Landroidx/constraintlayout/widget/StateSet$a;

    invoke-direct {v2, p1, p2}, Landroidx/constraintlayout/widget/StateSet$a;-><init>(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 103
    iget-object v1, p0, Landroidx/constraintlayout/widget/StateSet;->b:Landroid/util/SparseArray;

    iget v4, v2, Landroidx/constraintlayout/widget/StateSet$a;->a:I

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_4

    .line 92
    :cond_7
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 88
    :cond_8
    :goto_4
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 135
    :goto_5
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_7

    .line 133
    :goto_6
    invoke-virtual {p1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    :cond_9
    :goto_7
    return-void

    :sswitch_data_0
    .sparse-switch
        0x4c7d471 -> :sswitch_3
        0x4d92b252 -> :sswitch_2
        0x526c4e31 -> :sswitch_1
        0x7155a865 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public convertToConstraintSet(IIFF)I
    .locals 4

    .line 176
    iget-object v0, p0, Landroidx/constraintlayout/widget/StateSet;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/StateSet$a;

    if-nez v0, :cond_0

    return p2

    :cond_0
    const/high16 p2, -0x40800000    # -1.0f

    .line 180
    iget-object v1, v0, Landroidx/constraintlayout/widget/StateSet$a;->b:Ljava/util/ArrayList;

    iget v0, v0, Landroidx/constraintlayout/widget/StateSet$a;->c:I

    cmpl-float v2, p3, p2

    if-eqz v2, :cond_6

    cmpl-float p2, p4, p2

    if-nez p2, :cond_1

    goto :goto_1

    .line 192
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v1, 0x0

    :cond_2
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/widget/StateSet$b;

    .line 193
    invoke-virtual {v2, p3, p4}, Landroidx/constraintlayout/widget/StateSet$b;->a(FF)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 194
    iget v1, v2, Landroidx/constraintlayout/widget/StateSet$b;->e:I

    if-ne p1, v1, :cond_3

    goto :goto_2

    :cond_3
    move-object v1, v2

    goto :goto_0

    :cond_4
    if-eqz v1, :cond_5

    .line 201
    iget p1, v1, Landroidx/constraintlayout/widget/StateSet$b;->e:I

    return p1

    :cond_5
    return v0

    :cond_6
    :goto_1
    if-ne v0, p1, :cond_7

    goto :goto_2

    .line 184
    :cond_7
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_8
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_9

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/constraintlayout/widget/StateSet$b;

    .line 185
    iget p3, p3, Landroidx/constraintlayout/widget/StateSet$b;->e:I

    if-ne p1, p3, :cond_8

    :goto_2
    return p1

    :cond_9
    return v0
.end method

.method public needsToChange(IFF)Z
    .locals 3

    const/4 v0, -0x1

    if-eq v0, p1, :cond_0

    goto :goto_2

    .line 144
    :cond_0
    iget-object v1, p0, Landroidx/constraintlayout/widget/StateSet;->b:Landroid/util/SparseArray;

    const/4 v2, 0x0

    if-ne p1, v0, :cond_1

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    check-cast p1, Landroidx/constraintlayout/widget/StateSet$a;

    goto :goto_1

    :cond_1
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 152
    :goto_1
    invoke-virtual {p1, p2, p3}, Landroidx/constraintlayout/widget/StateSet$a;->findMatch(FF)I

    move-result p1

    if-ne v0, p1, :cond_2

    return v2

    :cond_2
    :goto_2
    const/4 p1, 0x1

    return p1
.end method

.method public setOnConstraintsChanged(Landroidx/constraintlayout/widget/ConstraintsChangedListener;)V
    .locals 0

    return-void
.end method

.method public stateGetConstraintID(III)I
    .locals 1

    int-to-float p2, p2

    int-to-float p3, p3

    const/4 v0, -0x1

    .line 163
    invoke-virtual {p0, v0, p1, p2, p3}, Landroidx/constraintlayout/widget/StateSet;->updateConstraints(IIFF)I

    move-result p1

    return p1
.end method

.method public updateConstraints(IIFF)I
    .locals 2

    .line 209
    iget-object v0, p0, Landroidx/constraintlayout/widget/StateSet;->b:Landroid/util/SparseArray;

    const/4 v1, -0x1

    if-ne p1, p2, :cond_4

    if-ne p2, v1, :cond_0

    const/4 p2, 0x0

    .line 212
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/constraintlayout/widget/StateSet$a;

    goto :goto_0

    .line 214
    :cond_0
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/constraintlayout/widget/StateSet$a;

    :goto_0
    if-nez p2, :cond_1

    goto :goto_1

    .line 220
    :cond_1
    iget-object v0, p2, Landroidx/constraintlayout/widget/StateSet$a;->b:Ljava/util/ArrayList;

    .line 225
    invoke-virtual {p2, p3, p4}, Landroidx/constraintlayout/widget/StateSet$a;->findMatch(FF)I

    move-result p3

    if-ne p1, p3, :cond_2

    return p1

    :cond_2
    if-ne p3, v1, :cond_3

    .line 230
    iget p1, p2, Landroidx/constraintlayout/widget/StateSet$a;->c:I

    return p1

    :cond_3
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/StateSet$b;

    iget p1, p1, Landroidx/constraintlayout/widget/StateSet$b;->e:I

    return p1

    .line 233
    :cond_4
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/StateSet$a;

    if-nez p1, :cond_5

    :goto_1
    return v1

    .line 237
    :cond_5
    invoke-virtual {p1, p3, p4}, Landroidx/constraintlayout/widget/StateSet$a;->findMatch(FF)I

    move-result p2

    if-ne p2, v1, :cond_6

    .line 238
    iget p1, p1, Landroidx/constraintlayout/widget/StateSet$a;->c:I

    return p1

    :cond_6
    iget-object p1, p1, Landroidx/constraintlayout/widget/StateSet$a;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/StateSet$b;

    iget p1, p1, Landroidx/constraintlayout/widget/StateSet$b;->e:I

    return p1
.end method
