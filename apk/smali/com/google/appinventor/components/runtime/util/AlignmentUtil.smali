.class public Lcom/google/appinventor/components/runtime/util/AlignmentUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/LinearLayout;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;->viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;

    return-void
.end method


# virtual methods
.method public setHorizontalAlignment(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    if-ne p1, v0, :cond_0

    .line 41
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;->viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;

    invoke-virtual {p1, v1}, Lcom/google/appinventor/components/runtime/LinearLayout;->setHorizontalGravity(I)V

    return-void

    .line 44
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bad value to setHorizontalAlignment: "

    .line 0
    invoke-static {p1, v1}, L_COROUTINE/a;->d(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 44
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_1
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;->viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/LinearLayout;->setHorizontalGravity(I)V

    return-void

    .line 35
    :cond_2
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;->viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;

    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/LinearLayout;->setHorizontalGravity(I)V

    return-void
.end method

.method public setHorizontalAlignment(Lcom/google/appinventor/components/common/HorizontalAlignment;)V
    .locals 4

    .line 53
    sget-object v0, Lcom/google/appinventor/components/runtime/util/AlignmentUtil$1;->$SwitchMap$com$google$appinventor$components$common$HorizontalAlignment:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    if-ne v0, v1, :cond_0

    .line 61
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;->viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/LinearLayout;->setHorizontalGravity(I)V

    return-void

    .line 64
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Bad value to setHorizontalAlignment: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_1
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;->viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;

    invoke-virtual {p1, v2}, Lcom/google/appinventor/components/runtime/LinearLayout;->setHorizontalGravity(I)V

    return-void

    .line 55
    :cond_2
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;->viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;

    invoke-virtual {p1, v1}, Lcom/google/appinventor/components/runtime/LinearLayout;->setHorizontalGravity(I)V

    return-void
.end method

.method public setVerticalAlignment(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 82
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;->viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;

    const/16 v0, 0x50

    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/LinearLayout;->setVerticalGravity(I)V

    return-void

    .line 85
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bad value to setVerticalAlignment: "

    .line 0
    invoke-static {p1, v1}, L_COROUTINE/a;->d(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 85
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_1
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;->viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/LinearLayout;->setVerticalGravity(I)V

    return-void

    .line 76
    :cond_2
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;->viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;

    const/16 v0, 0x30

    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/LinearLayout;->setVerticalGravity(I)V

    return-void
.end method

.method public setVerticalAlignment(Lcom/google/appinventor/components/common/VerticalAlignment;)V
    .locals 3

    .line 94
    sget-object v0, Lcom/google/appinventor/components/runtime/util/AlignmentUtil$1;->$SwitchMap$com$google$appinventor$components$common$VerticalAlignment:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 102
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;->viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;

    const/16 v0, 0x50

    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/LinearLayout;->setVerticalGravity(I)V

    return-void

    .line 105
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Bad value to setVerticalAlignment: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_1
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;->viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/LinearLayout;->setVerticalGravity(I)V

    return-void

    .line 96
    :cond_2
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;->viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;

    const/16 v0, 0x30

    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/LinearLayout;->setVerticalGravity(I)V

    return-void
.end method
