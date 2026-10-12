.class final Landroidx/fragment/app/a;
.super Landroidx/fragment/app/FragmentTransaction;
.source "SourceFile"

# interfaces
.implements Landroidx/fragment/app/FragmentManager$BackStackEntry;
.implements Landroidx/fragment/app/FragmentManager$j;


# instance fields
.field public final t:Landroidx/fragment/app/FragmentManager;

.field public u:Z

.field public v:I


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentManager;)V
    .locals 2

    .line 138
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->getFragmentFactory()Landroidx/fragment/app/FragmentFactory;

    move-result-object v0

    .line 2807
    iget-object v1, p1, Landroidx/fragment/app/FragmentManager;->r:Landroidx/fragment/app/FragmentHostCallback;

    if-eqz v1, :cond_0

    .line 139
    iget-object v1, v1, Landroidx/fragment/app/FragmentHostCallback;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 138
    :goto_0
    invoke-direct {p0, v0, v1}, Landroidx/fragment/app/FragmentTransaction;-><init>(Landroidx/fragment/app/FragmentFactory;Ljava/lang/ClassLoader;)V

    const/4 v0, -0x1

    .line 38
    iput v0, p0, Landroidx/fragment/app/a;->v:I

    .line 141
    iput-object p1, p0, Landroidx/fragment/app/a;->t:Landroidx/fragment/app/FragmentManager;

    return-void
.end method

.method public static j(Landroidx/fragment/app/FragmentTransaction$a;)Z
    .locals 2

    .line 679
    iget-object p0, p0, Landroidx/fragment/app/FragmentTransaction$a;->b:Landroidx/fragment/app/Fragment;

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 680
    iget-boolean v1, p0, Landroidx/fragment/app/Fragment;->l:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Landroidx/fragment/app/Fragment;->A:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Landroidx/fragment/app/Fragment;->z:Z

    if-nez v1, :cond_1

    .line 3418
    iget-object p0, p0, Landroidx/fragment/app/Fragment;->K:Landroidx/fragment/app/Fragment$e;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 3421
    :cond_0
    iget-boolean p0, p0, Landroidx/fragment/app/Fragment$e;->w:Z

    :goto_0
    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method


# virtual methods
.method public final c(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V
    .locals 0

    .line 183
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/fragment/app/FragmentTransaction;->c(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 184
    iget-object p1, p0, Landroidx/fragment/app/a;->t:Landroidx/fragment/app/FragmentManager;

    iput-object p1, p2, Landroidx/fragment/app/Fragment;->s:Landroidx/fragment/app/FragmentManager;

    return-void
.end method

.method public commit()I
    .locals 1

    const/4 v0, 0x0

    .line 294
    invoke-virtual {p0, v0}, Landroidx/fragment/app/a;->e(Z)I

    move-result v0

    return v0
.end method

.method public commitAllowingStateLoss()I
    .locals 1

    const/4 v0, 0x1

    .line 299
    invoke-virtual {p0, v0}, Landroidx/fragment/app/a;->e(Z)I

    move-result v0

    return v0
.end method

.method public commitNow()V
    .locals 2

    .line 304
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->disallowAddToBackStack()Landroidx/fragment/app/FragmentTransaction;

    .line 305
    iget-object v0, p0, Landroidx/fragment/app/a;->t:Landroidx/fragment/app/FragmentManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroidx/fragment/app/FragmentManager;->w(Landroidx/fragment/app/a;Z)V

    return-void
.end method

.method public commitNowAllowingStateLoss()V
    .locals 2

    .line 310
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->disallowAddToBackStack()Landroidx/fragment/app/FragmentTransaction;

    .line 311
    iget-object v0, p0, Landroidx/fragment/app/a;->t:Landroidx/fragment/app/FragmentManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroidx/fragment/app/FragmentManager;->w(Landroidx/fragment/app/a;Z)V

    return-void
.end method

.method public final d(I)V
    .locals 8

    .line 264
    iget-boolean v0, p0, Landroidx/fragment/app/FragmentTransaction;->i:Z

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x2

    .line 267
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->D(I)Z

    move-result v1

    const-string v2, "FragmentManager"

    if-eqz v1, :cond_1

    .line 268
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Bump nesting in "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " by "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    :cond_1
    iget-object v1, p0, Landroidx/fragment/app/FragmentTransaction;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    .line 272
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/FragmentTransaction$a;

    .line 273
    iget-object v6, v5, Landroidx/fragment/app/FragmentTransaction$a;->b:Landroidx/fragment/app/Fragment;

    if-eqz v6, :cond_2

    .line 274
    iget v7, v6, Landroidx/fragment/app/Fragment;->r:I

    add-int/2addr v7, p1

    iput v7, v6, Landroidx/fragment/app/Fragment;->r:I

    .line 275
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->D(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 276
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Bump nesting of "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v5, Landroidx/fragment/app/FragmentTransaction$a;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v5, Landroidx/fragment/app/FragmentTransaction$a;->b:Landroidx/fragment/app/Fragment;

    iget v5, v5, Landroidx/fragment/app/Fragment;->r:I

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public detach(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;
    .locals 3
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 223
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->s:Landroidx/fragment/app/FragmentManager;

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroidx/fragment/app/a;->t:Landroidx/fragment/app/FragmentManager;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 224
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot detach Fragment attached to a different FragmentManager. Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 225
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is already attached to a FragmentManager."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 228
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentTransaction;->detach(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    return-object p1
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 1

    const/4 v0, 0x1

    .line 58
    invoke-virtual {p0, p1, p2, v0}, Landroidx/fragment/app/a;->dump(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;Z)V
    .locals 6

    if-eqz p3, :cond_8

    .line 63
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mName="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/fragment/app/FragmentTransaction;->k:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 64
    const-string v0, " mIndex="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroidx/fragment/app/a;->v:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 65
    const-string v0, " mCommitted="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/a;->u:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 66
    iget v0, p0, Landroidx/fragment/app/FragmentTransaction;->h:I

    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTransition=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 68
    iget v0, p0, Landroidx/fragment/app/FragmentTransaction;->h:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 70
    :cond_0
    iget v0, p0, Landroidx/fragment/app/FragmentTransaction;->d:I

    if-nez v0, :cond_1

    iget v0, p0, Landroidx/fragment/app/FragmentTransaction;->e:I

    if-eqz v0, :cond_2

    .line 71
    :cond_1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mEnterAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 72
    iget v0, p0, Landroidx/fragment/app/FragmentTransaction;->d:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 73
    const-string v0, " mExitAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 74
    iget v0, p0, Landroidx/fragment/app/FragmentTransaction;->e:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 76
    :cond_2
    iget v0, p0, Landroidx/fragment/app/FragmentTransaction;->f:I

    if-nez v0, :cond_3

    iget v0, p0, Landroidx/fragment/app/FragmentTransaction;->g:I

    if-eqz v0, :cond_4

    .line 77
    :cond_3
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mPopEnterAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 78
    iget v0, p0, Landroidx/fragment/app/FragmentTransaction;->f:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 79
    const-string v0, " mPopExitAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 80
    iget v0, p0, Landroidx/fragment/app/FragmentTransaction;->g:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 82
    :cond_4
    iget v0, p0, Landroidx/fragment/app/FragmentTransaction;->l:I

    if-nez v0, :cond_5

    iget-object v0, p0, Landroidx/fragment/app/FragmentTransaction;->m:Ljava/lang/CharSequence;

    if-eqz v0, :cond_6

    .line 83
    :cond_5
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mBreadCrumbTitleRes=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 84
    iget v0, p0, Landroidx/fragment/app/FragmentTransaction;->l:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 85
    const-string v0, " mBreadCrumbTitleText="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Landroidx/fragment/app/FragmentTransaction;->m:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 88
    :cond_6
    iget v0, p0, Landroidx/fragment/app/FragmentTransaction;->n:I

    if-nez v0, :cond_7

    iget-object v0, p0, Landroidx/fragment/app/FragmentTransaction;->o:Ljava/lang/CharSequence;

    if-eqz v0, :cond_8

    .line 89
    :cond_7
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mBreadCrumbShortTitleRes=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 90
    iget v0, p0, Landroidx/fragment/app/FragmentTransaction;->n:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 91
    const-string v0, " mBreadCrumbShortTitleText="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Landroidx/fragment/app/FragmentTransaction;->o:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 96
    :cond_8
    iget-object v0, p0, Landroidx/fragment/app/FragmentTransaction;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_d

    .line 97
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Operations:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 98
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_d

    .line 100
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/FragmentTransaction$a;

    .line 102
    iget v4, v3, Landroidx/fragment/app/FragmentTransaction$a;->a:I

    packed-switch v4, :pswitch_data_0

    .line 114
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "cmd="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v3, Landroidx/fragment/app/FragmentTransaction$a;->a:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 113
    :pswitch_0
    const-string v4, "OP_SET_MAX_LIFECYCLE"

    goto :goto_1

    .line 112
    :pswitch_1
    const-string v4, "UNSET_PRIMARY_NAV"

    goto :goto_1

    .line 111
    :pswitch_2
    const-string v4, "SET_PRIMARY_NAV"

    goto :goto_1

    .line 110
    :pswitch_3
    const-string v4, "ATTACH"

    goto :goto_1

    .line 109
    :pswitch_4
    const-string v4, "DETACH"

    goto :goto_1

    .line 108
    :pswitch_5
    const-string v4, "SHOW"

    goto :goto_1

    .line 107
    :pswitch_6
    const-string v4, "HIDE"

    goto :goto_1

    .line 106
    :pswitch_7
    const-string v4, "REMOVE"

    goto :goto_1

    .line 105
    :pswitch_8
    const-string v4, "REPLACE"

    goto :goto_1

    .line 104
    :pswitch_9
    const-string v4, "ADD"

    goto :goto_1

    .line 103
    :pswitch_a
    const-string v4, "NULL"

    .line 116
    :goto_1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  Op #"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 117
    const-string v5, ": "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 118
    const-string v4, " "

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v3, Landroidx/fragment/app/FragmentTransaction$a;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    if-eqz p3, :cond_c

    .line 120
    iget v4, v3, Landroidx/fragment/app/FragmentTransaction$a;->c:I

    if-nez v4, :cond_9

    iget v4, v3, Landroidx/fragment/app/FragmentTransaction$a;->d:I

    if-eqz v4, :cond_a

    .line 121
    :cond_9
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "enterAnim=#"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 122
    iget v4, v3, Landroidx/fragment/app/FragmentTransaction$a;->c:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 123
    const-string v4, " exitAnim=#"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 124
    iget v4, v3, Landroidx/fragment/app/FragmentTransaction$a;->d:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 126
    :cond_a
    iget v4, v3, Landroidx/fragment/app/FragmentTransaction$a;->e:I

    if-nez v4, :cond_b

    iget v4, v3, Landroidx/fragment/app/FragmentTransaction$a;->f:I

    if-eqz v4, :cond_c

    .line 127
    :cond_b
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "popEnterAnim=#"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 128
    iget v4, v3, Landroidx/fragment/app/FragmentTransaction$a;->e:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 129
    const-string v4, " popExitAnim=#"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 130
    iget v3, v3, Landroidx/fragment/app/FragmentTransaction$a;->f:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_d
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final e(Z)I
    .locals 2

    .line 315
    iget-boolean v0, p0, Landroidx/fragment/app/a;->u:Z

    if-nez v0, :cond_2

    const/4 v0, 0x2

    .line 316
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->D(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Commit: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    new-instance v0, Landroidx/fragment/app/y0;

    invoke-direct {v0}, Landroidx/fragment/app/y0;-><init>()V

    .line 319
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 320
    const-string v0, "  "

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/a;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 321
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    :cond_0
    const/4 v0, 0x1

    .line 323
    iput-boolean v0, p0, Landroidx/fragment/app/a;->u:Z

    .line 324
    iget-boolean v0, p0, Landroidx/fragment/app/FragmentTransaction;->i:Z

    iget-object v1, p0, Landroidx/fragment/app/a;->t:Landroidx/fragment/app/FragmentManager;

    if-eqz v0, :cond_1

    .line 1920
    iget-object v0, v1, Landroidx/fragment/app/FragmentManager;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1920
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    .line 325
    iput v0, p0, Landroidx/fragment/app/a;->v:I

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    .line 327
    iput v0, p0, Landroidx/fragment/app/a;->v:I

    .line 329
    :goto_0
    invoke-virtual {v1, p0, p1}, Landroidx/fragment/app/FragmentManager;->t(Landroidx/fragment/app/FragmentManager$j;Z)V

    .line 330
    iget p1, p0, Landroidx/fragment/app/a;->v:I

    return p1

    .line 315
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "commit already called"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final f()V
    .locals 12

    .line 402
    iget-object v0, p0, Landroidx/fragment/app/FragmentTransaction;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x1

    .line 403
    iget-object v5, p0, Landroidx/fragment/app/a;->t:Landroidx/fragment/app/FragmentManager;

    if-ge v3, v1, :cond_4

    .line 404
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/fragment/app/FragmentTransaction$a;

    .line 405
    iget-object v7, v6, Landroidx/fragment/app/FragmentTransaction$a;->b:Landroidx/fragment/app/Fragment;

    if-eqz v7, :cond_2

    .line 3315
    iget-object v8, v7, Landroidx/fragment/app/Fragment;->K:Landroidx/fragment/app/Fragment$e;

    if-nez v8, :cond_0

    goto :goto_1

    .line 3318
    :cond_0
    invoke-virtual {v7}, Landroidx/fragment/app/Fragment;->c()Landroidx/fragment/app/Fragment$e;

    move-result-object v8

    iput-boolean v2, v8, Landroidx/fragment/app/Fragment$e;->c:Z

    .line 408
    :goto_1
    iget v8, p0, Landroidx/fragment/app/FragmentTransaction;->h:I

    .line 3329
    iget-object v9, v7, Landroidx/fragment/app/Fragment;->K:Landroidx/fragment/app/Fragment$e;

    if-nez v9, :cond_1

    if-nez v8, :cond_1

    goto :goto_2

    .line 3332
    :cond_1
    invoke-virtual {v7}, Landroidx/fragment/app/Fragment;->c()Landroidx/fragment/app/Fragment$e;

    .line 3333
    iget-object v9, v7, Landroidx/fragment/app/Fragment;->K:Landroidx/fragment/app/Fragment$e;

    iput v8, v9, Landroidx/fragment/app/Fragment$e;->h:I

    .line 409
    :goto_2
    iget-object v8, p0, Landroidx/fragment/app/FragmentTransaction;->p:Ljava/util/ArrayList;

    iget-object v9, p0, Landroidx/fragment/app/FragmentTransaction;->q:Ljava/util/ArrayList;

    .line 3354
    invoke-virtual {v7}, Landroidx/fragment/app/Fragment;->c()Landroidx/fragment/app/Fragment$e;

    .line 3355
    iget-object v10, v7, Landroidx/fragment/app/Fragment;->K:Landroidx/fragment/app/Fragment$e;

    iput-object v8, v10, Landroidx/fragment/app/Fragment$e;->i:Ljava/util/ArrayList;

    .line 3356
    iput-object v9, v10, Landroidx/fragment/app/Fragment$e;->j:Ljava/util/ArrayList;

    .line 411
    :cond_2
    iget v8, v6, Landroidx/fragment/app/FragmentTransaction$a;->a:I

    packed-switch v8, :pswitch_data_0

    .line 449
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown cmd: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v6, Landroidx/fragment/app/FragmentTransaction$a;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 446
    :pswitch_1
    iget-object v8, v6, Landroidx/fragment/app/FragmentTransaction$a;->h:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v5, v7, v8}, Landroidx/fragment/app/FragmentManager;->T(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/Lifecycle$State;)V

    goto :goto_3

    :pswitch_2
    const/4 v8, 0x0

    .line 443
    invoke-virtual {v5, v8}, Landroidx/fragment/app/FragmentManager;->U(Landroidx/fragment/app/Fragment;)V

    goto :goto_3

    .line 440
    :pswitch_3
    invoke-virtual {v5, v7}, Landroidx/fragment/app/FragmentManager;->U(Landroidx/fragment/app/Fragment;)V

    goto :goto_3

    .line 435
    :pswitch_4
    iget v8, v6, Landroidx/fragment/app/FragmentTransaction$a;->c:I

    iget v9, v6, Landroidx/fragment/app/FragmentTransaction$a;->d:I

    iget v10, v6, Landroidx/fragment/app/FragmentTransaction$a;->e:I

    iget v11, v6, Landroidx/fragment/app/FragmentTransaction$a;->f:I

    invoke-virtual {v7, v8, v9, v10, v11}, Landroidx/fragment/app/Fragment;->o(IIII)V

    .line 436
    invoke-virtual {v5, v7, v2}, Landroidx/fragment/app/FragmentManager;->S(Landroidx/fragment/app/Fragment;Z)V

    .line 437
    invoke-virtual {v5, v7}, Landroidx/fragment/app/FragmentManager;->d(Landroidx/fragment/app/Fragment;)V

    goto :goto_3

    .line 431
    :pswitch_5
    iget v8, v6, Landroidx/fragment/app/FragmentTransaction$a;->c:I

    iget v9, v6, Landroidx/fragment/app/FragmentTransaction$a;->d:I

    iget v10, v6, Landroidx/fragment/app/FragmentTransaction$a;->e:I

    iget v11, v6, Landroidx/fragment/app/FragmentTransaction$a;->f:I

    invoke-virtual {v7, v8, v9, v10, v11}, Landroidx/fragment/app/Fragment;->o(IIII)V

    .line 432
    invoke-virtual {v5, v7}, Landroidx/fragment/app/FragmentManager;->j(Landroidx/fragment/app/Fragment;)V

    goto :goto_3

    .line 426
    :pswitch_6
    iget v8, v6, Landroidx/fragment/app/FragmentTransaction$a;->c:I

    iget v9, v6, Landroidx/fragment/app/FragmentTransaction$a;->d:I

    iget v10, v6, Landroidx/fragment/app/FragmentTransaction$a;->e:I

    iget v11, v6, Landroidx/fragment/app/FragmentTransaction$a;->f:I

    invoke-virtual {v7, v8, v9, v10, v11}, Landroidx/fragment/app/Fragment;->o(IIII)V

    .line 427
    invoke-virtual {v5, v7, v2}, Landroidx/fragment/app/FragmentManager;->S(Landroidx/fragment/app/Fragment;Z)V

    .line 428
    invoke-static {v7}, Landroidx/fragment/app/FragmentManager;->W(Landroidx/fragment/app/Fragment;)V

    goto :goto_3

    .line 422
    :pswitch_7
    iget v8, v6, Landroidx/fragment/app/FragmentTransaction$a;->c:I

    iget v9, v6, Landroidx/fragment/app/FragmentTransaction$a;->d:I

    iget v10, v6, Landroidx/fragment/app/FragmentTransaction$a;->e:I

    iget v11, v6, Landroidx/fragment/app/FragmentTransaction$a;->f:I

    invoke-virtual {v7, v8, v9, v10, v11}, Landroidx/fragment/app/Fragment;->o(IIII)V

    .line 423
    invoke-virtual {v5, v7}, Landroidx/fragment/app/FragmentManager;->C(Landroidx/fragment/app/Fragment;)V

    goto :goto_3

    .line 418
    :pswitch_8
    iget v8, v6, Landroidx/fragment/app/FragmentTransaction$a;->c:I

    iget v9, v6, Landroidx/fragment/app/FragmentTransaction$a;->d:I

    iget v10, v6, Landroidx/fragment/app/FragmentTransaction$a;->e:I

    iget v11, v6, Landroidx/fragment/app/FragmentTransaction$a;->f:I

    invoke-virtual {v7, v8, v9, v10, v11}, Landroidx/fragment/app/Fragment;->o(IIII)V

    .line 419
    invoke-virtual {v5, v7}, Landroidx/fragment/app/FragmentManager;->N(Landroidx/fragment/app/Fragment;)V

    goto :goto_3

    .line 413
    :pswitch_9
    iget v8, v6, Landroidx/fragment/app/FragmentTransaction$a;->c:I

    iget v9, v6, Landroidx/fragment/app/FragmentTransaction$a;->d:I

    iget v10, v6, Landroidx/fragment/app/FragmentTransaction$a;->e:I

    iget v11, v6, Landroidx/fragment/app/FragmentTransaction$a;->f:I

    invoke-virtual {v7, v8, v9, v10, v11}, Landroidx/fragment/app/Fragment;->o(IIII)V

    .line 414
    invoke-virtual {v5, v7, v2}, Landroidx/fragment/app/FragmentManager;->S(Landroidx/fragment/app/Fragment;Z)V

    .line 415
    invoke-virtual {v5, v7}, Landroidx/fragment/app/FragmentManager;->b(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/k0;

    .line 451
    :goto_3
    iget-boolean v8, p0, Landroidx/fragment/app/FragmentTransaction;->r:Z

    if-nez v8, :cond_3

    iget v6, v6, Landroidx/fragment/app/FragmentTransaction$a;->a:I

    if-eq v6, v4, :cond_3

    if-eqz v7, :cond_3

    .line 452
    sget-boolean v4, Landroidx/fragment/app/FragmentManager;->O:Z

    if-nez v4, :cond_3

    .line 453
    invoke-virtual {v5, v7}, Landroidx/fragment/app/FragmentManager;->G(Landroidx/fragment/app/Fragment;)V

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 457
    :cond_4
    iget-boolean v0, p0, Landroidx/fragment/app/FragmentTransaction;->r:Z

    if-nez v0, :cond_5

    sget-boolean v0, Landroidx/fragment/app/FragmentManager;->O:Z

    if-nez v0, :cond_5

    .line 459
    iget v0, v5, Landroidx/fragment/app/FragmentManager;->q:I

    invoke-virtual {v5, v0, v4}, Landroidx/fragment/app/FragmentManager;->I(IZ)V

    :cond_5
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final g(Z)V
    .locals 10

    .line 471
    iget-object v0, p0, Landroidx/fragment/app/FragmentTransaction;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    iget-object v3, p0, Landroidx/fragment/app/a;->t:Landroidx/fragment/app/FragmentManager;

    if-ltz v1, :cond_7

    .line 472
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/FragmentTransaction$a;

    .line 473
    iget-object v5, v4, Landroidx/fragment/app/FragmentTransaction$a;->b:Landroidx/fragment/app/Fragment;

    if-eqz v5, :cond_5

    .line 3315
    iget-object v6, v5, Landroidx/fragment/app/Fragment;->K:Landroidx/fragment/app/Fragment$e;

    if-nez v6, :cond_0

    goto :goto_1

    .line 3318
    :cond_0
    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->c()Landroidx/fragment/app/Fragment$e;

    move-result-object v6

    iput-boolean v2, v6, Landroidx/fragment/app/Fragment$e;->c:Z

    .line 476
    :goto_1
    iget v6, p0, Landroidx/fragment/app/FragmentTransaction;->h:I

    const/16 v7, 0x2002

    const/16 v8, 0x1001

    if-eq v6, v8, :cond_3

    const/16 v9, 0x1003

    if-eq v6, v9, :cond_2

    if-eq v6, v7, :cond_1

    const/4 v7, 0x0

    goto :goto_2

    :cond_1
    const/16 v7, 0x1001

    goto :goto_2

    :cond_2
    const/16 v7, 0x1003

    .line 3329
    :cond_3
    :goto_2
    iget-object v6, v5, Landroidx/fragment/app/Fragment;->K:Landroidx/fragment/app/Fragment$e;

    if-nez v6, :cond_4

    if-nez v7, :cond_4

    goto :goto_3

    .line 3332
    :cond_4
    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->c()Landroidx/fragment/app/Fragment$e;

    .line 3333
    iget-object v6, v5, Landroidx/fragment/app/Fragment;->K:Landroidx/fragment/app/Fragment$e;

    iput v7, v6, Landroidx/fragment/app/Fragment$e;->h:I

    .line 478
    :goto_3
    iget-object v6, p0, Landroidx/fragment/app/FragmentTransaction;->q:Ljava/util/ArrayList;

    iget-object v7, p0, Landroidx/fragment/app/FragmentTransaction;->p:Ljava/util/ArrayList;

    .line 3354
    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->c()Landroidx/fragment/app/Fragment$e;

    .line 3355
    iget-object v8, v5, Landroidx/fragment/app/Fragment;->K:Landroidx/fragment/app/Fragment$e;

    iput-object v6, v8, Landroidx/fragment/app/Fragment$e;->i:Ljava/util/ArrayList;

    .line 3356
    iput-object v7, v8, Landroidx/fragment/app/Fragment$e;->j:Ljava/util/ArrayList;

    .line 480
    :cond_5
    iget v6, v4, Landroidx/fragment/app/FragmentTransaction$a;->a:I

    packed-switch v6, :pswitch_data_0

    .line 518
    :pswitch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown cmd: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v4, Landroidx/fragment/app/FragmentTransaction$a;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 515
    :pswitch_1
    iget-object v6, v4, Landroidx/fragment/app/FragmentTransaction$a;->g:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v3, v5, v6}, Landroidx/fragment/app/FragmentManager;->T(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/Lifecycle$State;)V

    goto :goto_4

    .line 512
    :pswitch_2
    invoke-virtual {v3, v5}, Landroidx/fragment/app/FragmentManager;->U(Landroidx/fragment/app/Fragment;)V

    goto :goto_4

    :pswitch_3
    const/4 v6, 0x0

    .line 509
    invoke-virtual {v3, v6}, Landroidx/fragment/app/FragmentManager;->U(Landroidx/fragment/app/Fragment;)V

    goto :goto_4

    .line 504
    :pswitch_4
    iget v6, v4, Landroidx/fragment/app/FragmentTransaction$a;->c:I

    iget v7, v4, Landroidx/fragment/app/FragmentTransaction$a;->d:I

    iget v8, v4, Landroidx/fragment/app/FragmentTransaction$a;->e:I

    iget v9, v4, Landroidx/fragment/app/FragmentTransaction$a;->f:I

    invoke-virtual {v5, v6, v7, v8, v9}, Landroidx/fragment/app/Fragment;->o(IIII)V

    .line 505
    invoke-virtual {v3, v5, v2}, Landroidx/fragment/app/FragmentManager;->S(Landroidx/fragment/app/Fragment;Z)V

    .line 506
    invoke-virtual {v3, v5}, Landroidx/fragment/app/FragmentManager;->j(Landroidx/fragment/app/Fragment;)V

    goto :goto_4

    .line 500
    :pswitch_5
    iget v6, v4, Landroidx/fragment/app/FragmentTransaction$a;->c:I

    iget v7, v4, Landroidx/fragment/app/FragmentTransaction$a;->d:I

    iget v8, v4, Landroidx/fragment/app/FragmentTransaction$a;->e:I

    iget v9, v4, Landroidx/fragment/app/FragmentTransaction$a;->f:I

    invoke-virtual {v5, v6, v7, v8, v9}, Landroidx/fragment/app/Fragment;->o(IIII)V

    .line 501
    invoke-virtual {v3, v5}, Landroidx/fragment/app/FragmentManager;->d(Landroidx/fragment/app/Fragment;)V

    goto :goto_4

    .line 495
    :pswitch_6
    iget v6, v4, Landroidx/fragment/app/FragmentTransaction$a;->c:I

    iget v7, v4, Landroidx/fragment/app/FragmentTransaction$a;->d:I

    iget v8, v4, Landroidx/fragment/app/FragmentTransaction$a;->e:I

    iget v9, v4, Landroidx/fragment/app/FragmentTransaction$a;->f:I

    invoke-virtual {v5, v6, v7, v8, v9}, Landroidx/fragment/app/Fragment;->o(IIII)V

    .line 496
    invoke-virtual {v3, v5, v2}, Landroidx/fragment/app/FragmentManager;->S(Landroidx/fragment/app/Fragment;Z)V

    .line 497
    invoke-virtual {v3, v5}, Landroidx/fragment/app/FragmentManager;->C(Landroidx/fragment/app/Fragment;)V

    goto :goto_4

    .line 491
    :pswitch_7
    iget v6, v4, Landroidx/fragment/app/FragmentTransaction$a;->c:I

    iget v7, v4, Landroidx/fragment/app/FragmentTransaction$a;->d:I

    iget v8, v4, Landroidx/fragment/app/FragmentTransaction$a;->e:I

    iget v9, v4, Landroidx/fragment/app/FragmentTransaction$a;->f:I

    invoke-virtual {v5, v6, v7, v8, v9}, Landroidx/fragment/app/Fragment;->o(IIII)V

    .line 492
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5}, Landroidx/fragment/app/FragmentManager;->W(Landroidx/fragment/app/Fragment;)V

    goto :goto_4

    .line 487
    :pswitch_8
    iget v6, v4, Landroidx/fragment/app/FragmentTransaction$a;->c:I

    iget v7, v4, Landroidx/fragment/app/FragmentTransaction$a;->d:I

    iget v8, v4, Landroidx/fragment/app/FragmentTransaction$a;->e:I

    iget v9, v4, Landroidx/fragment/app/FragmentTransaction$a;->f:I

    invoke-virtual {v5, v6, v7, v8, v9}, Landroidx/fragment/app/Fragment;->o(IIII)V

    .line 488
    invoke-virtual {v3, v5}, Landroidx/fragment/app/FragmentManager;->b(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/k0;

    goto :goto_4

    .line 482
    :pswitch_9
    iget v6, v4, Landroidx/fragment/app/FragmentTransaction$a;->c:I

    iget v7, v4, Landroidx/fragment/app/FragmentTransaction$a;->d:I

    iget v8, v4, Landroidx/fragment/app/FragmentTransaction$a;->e:I

    iget v9, v4, Landroidx/fragment/app/FragmentTransaction$a;->f:I

    invoke-virtual {v5, v6, v7, v8, v9}, Landroidx/fragment/app/Fragment;->o(IIII)V

    .line 483
    invoke-virtual {v3, v5, v2}, Landroidx/fragment/app/FragmentManager;->S(Landroidx/fragment/app/Fragment;Z)V

    .line 484
    invoke-virtual {v3, v5}, Landroidx/fragment/app/FragmentManager;->N(Landroidx/fragment/app/Fragment;)V

    .line 520
    :goto_4
    iget-boolean v6, p0, Landroidx/fragment/app/FragmentTransaction;->r:Z

    if-nez v6, :cond_6

    iget v4, v4, Landroidx/fragment/app/FragmentTransaction$a;->a:I

    const/4 v6, 0x3

    if-eq v4, v6, :cond_6

    if-eqz v5, :cond_6

    .line 521
    sget-boolean v4, Landroidx/fragment/app/FragmentManager;->O:Z

    if-nez v4, :cond_6

    .line 522
    invoke-virtual {v3, v5}, Landroidx/fragment/app/FragmentManager;->G(Landroidx/fragment/app/Fragment;)V

    :cond_6
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_0

    .line 526
    :cond_7
    iget-boolean v0, p0, Landroidx/fragment/app/FragmentTransaction;->r:Z

    if-nez v0, :cond_8

    if-eqz p1, :cond_8

    sget-boolean p1, Landroidx/fragment/app/FragmentManager;->O:Z

    if-nez p1, :cond_8

    .line 527
    iget p1, v3, Landroidx/fragment/app/FragmentManager;->q:I

    invoke-virtual {v3, p1, v2}, Landroidx/fragment/app/FragmentManager;->I(IZ)V

    :cond_8
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public generateOps(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 2
    .param p1    # Ljava/util/ArrayList;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/ArrayList;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/a;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x2

    .line 345
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->D(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 346
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Run: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    :cond_0
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 350
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 351
    iget-boolean p1, p0, Landroidx/fragment/app/FragmentTransaction;->i:Z

    if-eqz p1, :cond_2

    .line 2568
    iget-object p1, p0, Landroidx/fragment/app/a;->t:Landroidx/fragment/app/FragmentManager;

    iget-object p2, p1, Landroidx/fragment/app/FragmentManager;->d:Ljava/util/ArrayList;

    if-nez p2, :cond_1

    .line 2569
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p1, Landroidx/fragment/app/FragmentManager;->d:Ljava/util/ArrayList;

    .line 2571
    :cond_1
    iget-object p1, p1, Landroidx/fragment/app/FragmentManager;->d:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public getBreadCrumbShortTitle()Ljava/lang/CharSequence;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 175
    iget v0, p0, Landroidx/fragment/app/FragmentTransaction;->n:I

    if-eqz v0, :cond_0

    .line 2807
    iget-object v1, p0, Landroidx/fragment/app/a;->t:Landroidx/fragment/app/FragmentManager;

    iget-object v1, v1, Landroidx/fragment/app/FragmentManager;->r:Landroidx/fragment/app/FragmentHostCallback;

    .line 247
    iget-object v1, v1, Landroidx/fragment/app/FragmentHostCallback;->b:Landroid/content/Context;

    .line 176
    invoke-virtual {v1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 178
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentTransaction;->o:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getBreadCrumbShortTitleRes()I
    .locals 1

    .line 158
    iget v0, p0, Landroidx/fragment/app/FragmentTransaction;->n:I

    return v0
.end method

.method public getBreadCrumbTitle()Ljava/lang/CharSequence;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 165
    iget v0, p0, Landroidx/fragment/app/FragmentTransaction;->l:I

    if-eqz v0, :cond_0

    .line 2807
    iget-object v1, p0, Landroidx/fragment/app/a;->t:Landroidx/fragment/app/FragmentManager;

    iget-object v1, v1, Landroidx/fragment/app/FragmentManager;->r:Landroidx/fragment/app/FragmentHostCallback;

    .line 247
    iget-object v1, v1, Landroidx/fragment/app/FragmentHostCallback;->b:Landroid/content/Context;

    .line 166
    invoke-virtual {v1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 168
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentTransaction;->m:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getBreadCrumbTitleRes()I
    .locals 1

    .line 152
    iget v0, p0, Landroidx/fragment/app/FragmentTransaction;->l:I

    return v0
.end method

.method public getId()I
    .locals 1

    .line 146
    iget v0, p0, Landroidx/fragment/app/a;->v:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 687
    iget-object v0, p0, Landroidx/fragment/app/FragmentTransaction;->k:Ljava/lang/String;

    return-object v0
.end method

.method public final h(I)Z
    .locals 5

    .line 358
    iget-object v0, p0, Landroidx/fragment/app/FragmentTransaction;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    .line 360
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/FragmentTransaction$a;

    .line 361
    iget-object v4, v4, Landroidx/fragment/app/FragmentTransaction$a;->b:Landroidx/fragment/app/Fragment;

    if-eqz v4, :cond_0

    iget v4, v4, Landroidx/fragment/app/Fragment;->x:I

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_1

    if-ne v4, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;
    .locals 3
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 201
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->s:Landroidx/fragment/app/FragmentManager;

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroidx/fragment/app/a;->t:Landroidx/fragment/app/FragmentManager;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 202
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot hide Fragment attached to a different FragmentManager. Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 203
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is already attached to a FragmentManager."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 206
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    return-object p1
.end method

.method public final i(Ljava/util/ArrayList;II)Z
    .locals 10

    const/4 v0, 0x0

    if-ne p3, p2, :cond_0

    goto :goto_5

    .line 373
    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/FragmentTransaction;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_7

    .line 376
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/FragmentTransaction$a;

    .line 377
    iget-object v5, v5, Landroidx/fragment/app/FragmentTransaction$a;->b:Landroidx/fragment/app/Fragment;

    if-eqz v5, :cond_1

    iget v5, v5, Landroidx/fragment/app/Fragment;->x:I

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_6

    if-eq v5, v3, :cond_6

    move v3, p2

    :goto_2
    if-ge v3, p3, :cond_5

    .line 381
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/fragment/app/a;

    .line 382
    iget-object v7, v6, Landroidx/fragment/app/FragmentTransaction;->c:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x0

    :goto_3
    if-ge v8, v7, :cond_4

    .line 384
    iget-object v9, v6, Landroidx/fragment/app/FragmentTransaction;->c:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/fragment/app/FragmentTransaction$a;

    .line 385
    iget-object v9, v9, Landroidx/fragment/app/FragmentTransaction$a;->b:Landroidx/fragment/app/Fragment;

    if-eqz v9, :cond_2

    .line 386
    iget v9, v9, Landroidx/fragment/app/Fragment;->x:I

    goto :goto_4

    :cond_2
    const/4 v9, 0x0

    :goto_4
    if-ne v9, v5, :cond_3

    const/4 p1, 0x1

    return p1

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    move v3, v5

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_7
    :goto_5
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 692
    iget-object v0, p0, Landroidx/fragment/app/FragmentTransaction;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;
    .locals 3
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 190
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->s:Landroidx/fragment/app/FragmentManager;

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroidx/fragment/app/a;->t:Landroidx/fragment/app/FragmentManager;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 191
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot remove Fragment attached to a different FragmentManager. Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is already attached to a FragmentManager."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 195
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    return-object p1
.end method

.method public runOnCommitRunnables()V
    .locals 2

    .line 284
    iget-object v0, p0, Landroidx/fragment/app/FragmentTransaction;->s:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 285
    :goto_0
    iget-object v1, p0, Landroidx/fragment/app/FragmentTransaction;->s:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 286
    iget-object v1, p0, Landroidx/fragment/app/FragmentTransaction;->s:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 288
    iput-object v0, p0, Landroidx/fragment/app/FragmentTransaction;->s:Ljava/util/ArrayList;

    :cond_1
    return-void
.end method

.method public setMaxLifecycle(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/Lifecycle$State;)Landroidx/fragment/app/FragmentTransaction;
    .locals 3
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/lifecycle/Lifecycle$State;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 247
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->s:Landroidx/fragment/app/FragmentManager;

    iget-object v1, p0, Landroidx/fragment/app/a;->t:Landroidx/fragment/app/FragmentManager;

    if-ne v0, v1, :cond_3

    .line 251
    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->INITIALIZED:Landroidx/lifecycle/Lifecycle$State;

    const-string v1, "Cannot set maximum Lifecycle to "

    if-ne p2, v0, :cond_1

    iget v0, p1, Landroidx/fragment/app/Fragment;->a:I

    const/4 v2, -0x1

    if-gt v0, v2, :cond_0

    goto :goto_0

    .line 252
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " after the Fragment has been created"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 255
    :cond_1
    :goto_0
    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    if-eq p2, v0, :cond_2

    .line 260
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/FragmentTransaction;->setMaxLifecycle(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/Lifecycle$State;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    return-object p1

    .line 256
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ". Use remove() to remove the fragment from the FragmentManager and trigger its destruction."

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 248
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Cannot setMaxLifecycle for Fragment not attached to FragmentManager "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setPrimaryNavigationFragment(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;
    .locals 3
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    if-eqz p1, :cond_1

    .line 234
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->s:Landroidx/fragment/app/FragmentManager;

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroidx/fragment/app/a;->t:Landroidx/fragment/app/FragmentManager;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 236
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot setPrimaryNavigation for Fragment attached to a different FragmentManager. Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 237
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is already attached to a FragmentManager."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 240
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentTransaction;->setPrimaryNavigationFragment(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    return-object p1
.end method

.method public show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;
    .locals 3
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 212
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->s:Landroidx/fragment/app/FragmentManager;

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroidx/fragment/app/a;->t:Landroidx/fragment/app/FragmentManager;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 213
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot show Fragment attached to a different FragmentManager. Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 214
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is already attached to a FragmentManager."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 217
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 43
    const-string v1, "BackStackEntry{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    iget v1, p0, Landroidx/fragment/app/a;->v:I

    if-ltz v1, :cond_0

    .line 46
    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    iget v1, p0, Landroidx/fragment/app/a;->v:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/FragmentTransaction;->k:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 50
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    iget-object v1, p0, Landroidx/fragment/app/FragmentTransaction;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    :cond_1
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
