.class Landroidx/fragment/app/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/LayoutInflater$Factory2;


# instance fields
.field public final a:Landroidx/fragment/app/FragmentManager;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentManager;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Landroidx/fragment/app/y;->a:Landroidx/fragment/app/FragmentManager;

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 9
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 51
    const-class v0, Landroidx/fragment/app/FragmentContainerView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p0, Landroidx/fragment/app/y;->a:Landroidx/fragment/app/FragmentManager;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_6

    .line 52
    new-instance p1, Landroidx/fragment/app/FragmentContainerView;

    .line 152
    invoke-direct {p1, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 109
    iput-boolean v2, p1, Landroidx/fragment/app/FragmentContainerView;->d:Z

    .line 154
    invoke-interface {p4}, Landroid/util/AttributeSet;->getClassAttribute()Ljava/lang/String;

    move-result-object p2

    .line 155
    sget-object v0, Landroidx/fragment/R$styleable;->FragmentContainerView:[I

    invoke-virtual {p3, p4, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    if-nez p2, :cond_0

    .line 157
    sget p2, Landroidx/fragment/R$styleable;->FragmentContainerView_android_name:I

    invoke-virtual {v0, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 159
    :cond_0
    sget v4, Landroidx/fragment/R$styleable;->FragmentContainerView_android_tag:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 160
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 162
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 163
    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v5

    if-eqz p2, :cond_3

    if-nez v5, :cond_3

    if-gtz v0, :cond_2

    if-eqz v4, :cond_1

    .line 169
    const-string p1, " with tag "

    invoke-virtual {p1, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 170
    :cond_1
    const-string p1, ""

    .line 171
    :goto_0
    new-instance p3, Ljava/lang/IllegalStateException;

    const-string p4, "FragmentContainerView must have an android:id to add Fragment "

    .line 0
    invoke-static {p4, p2, p1}, L_COROUTINE/a;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 171
    invoke-direct {p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 175
    :cond_2
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->getFragmentFactory()Landroidx/fragment/app/FragmentFactory;

    move-result-object v0

    invoke-virtual {p3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {v0, v5, p2}, Landroidx/fragment/app/FragmentFactory;->instantiate(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p2

    .line 176
    invoke-virtual {p2, p3, p4, v3}, Landroidx/fragment/app/Fragment;->onInflate(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 177
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p3

    .line 178
    invoke-virtual {p3, v2}, Landroidx/fragment/app/FragmentTransaction;->setReorderingAllowed(Z)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p3

    .line 179
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 240
    iput-object p1, p2, Landroidx/fragment/app/Fragment;->G:Landroid/view/ViewGroup;

    .line 241
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p4

    invoke-virtual {p3, p4, p2, v4}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p2

    .line 180
    invoke-virtual {p2}, Landroidx/fragment/app/FragmentTransaction;->commitNowAllowingStateLoss()V

    .line 1022
    :cond_3
    iget-object p2, v1, Landroidx/fragment/app/FragmentManager;->c:Landroidx/fragment/app/l0;

    invoke-virtual {p2}, Landroidx/fragment/app/l0;->d()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_4
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/fragment/app/k0;

    .line 149
    iget-object p4, p3, Landroidx/fragment/app/k0;->c:Landroidx/fragment/app/Fragment;

    .line 1024
    iget v0, p4, Landroidx/fragment/app/Fragment;->x:I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_4

    iget-object v0, p4, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 1025
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_4

    .line 1027
    iput-object p1, p4, Landroidx/fragment/app/Fragment;->G:Landroid/view/ViewGroup;

    .line 1028
    invoke-virtual {p3}, Landroidx/fragment/app/k0;->b()V

    goto :goto_1

    :cond_5
    return-object p1

    .line 55
    :cond_6
    const-string v0, "fragment"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_7

    goto/16 :goto_6

    .line 59
    :cond_7
    const-string p2, "class"

    invoke-interface {p4, v3, p2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 60
    sget-object v0, Landroidx/fragment/R$styleable;->Fragment:[I

    invoke-virtual {p3, p4, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    if-nez p2, :cond_8

    .line 62
    sget p2, Landroidx/fragment/R$styleable;->Fragment_android_name:I

    invoke-virtual {v0, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 64
    :cond_8
    sget v4, Landroidx/fragment/R$styleable;->Fragment_android_id:I

    const/4 v5, -0x1

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 65
    sget v6, Landroidx/fragment/R$styleable;->Fragment_android_tag:I

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 66
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz p2, :cond_17

    .line 68
    invoke-virtual {p3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v7, 0x0

    .line 70
    :try_start_0
    invoke-static {v0, p2}, Landroidx/fragment/app/FragmentFactory;->a(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 71
    const-class v8, Landroidx/fragment/app/Fragment;

    invoke-virtual {v8, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    nop

    const/4 v0, 0x0

    :goto_2
    if-nez v0, :cond_9

    goto/16 :goto_6

    :cond_9
    if-eqz p1, :cond_a

    .line 74
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v7

    :cond_a
    if-ne v7, v5, :cond_c

    if-ne v4, v5, :cond_c

    if-eqz v6, :cond_b

    goto :goto_3

    .line 76
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p4}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ": Must specify unique android:id, android:tag, or have a parent with an id for "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    :goto_3
    if-eq v4, v5, :cond_d

    .line 84
    invoke-virtual {v1, v4}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v3

    :cond_d
    if-nez v3, :cond_e

    if-eqz v6, :cond_e

    .line 86
    invoke-virtual {v1, v6}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v3

    :cond_e
    if-nez v3, :cond_f

    if-eq v7, v5, :cond_f

    .line 89
    invoke-virtual {v1, v7}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v3

    .line 93
    :cond_f
    const-string v0, "Fragment "

    const-string v5, "FragmentManager"

    const/4 v8, 0x2

    if-nez v3, :cond_11

    .line 94
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->getFragmentFactory()Landroidx/fragment/app/FragmentFactory;

    move-result-object v3

    .line 95
    invoke-virtual {p3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p3

    .line 94
    invoke-virtual {v3, p3, p2}, Landroidx/fragment/app/FragmentFactory;->instantiate(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v3

    .line 96
    iput-boolean v2, v3, Landroidx/fragment/app/Fragment;->n:Z

    if-eqz v4, :cond_10

    move p3, v4

    goto :goto_4

    :cond_10
    move p3, v7

    .line 97
    :goto_4
    iput p3, v3, Landroidx/fragment/app/Fragment;->w:I

    .line 98
    iput v7, v3, Landroidx/fragment/app/Fragment;->x:I

    .line 99
    iput-object v6, v3, Landroidx/fragment/app/Fragment;->y:Ljava/lang/String;

    .line 100
    iput-boolean v2, v3, Landroidx/fragment/app/Fragment;->o:Z

    .line 101
    iput-object v1, v3, Landroidx/fragment/app/Fragment;->s:Landroidx/fragment/app/FragmentManager;

    .line 2807
    iget-object p3, v1, Landroidx/fragment/app/FragmentManager;->r:Landroidx/fragment/app/FragmentHostCallback;

    .line 102
    iput-object p3, v3, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/FragmentHostCallback;

    .line 247
    iget-object p3, p3, Landroidx/fragment/app/FragmentHostCallback;->b:Landroid/content/Context;

    .line 103
    iget-object v2, v3, Landroidx/fragment/app/Fragment;->b:Landroid/os/Bundle;

    invoke-virtual {v3, p3, p4, v2}, Landroidx/fragment/app/Fragment;->onInflate(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 105
    invoke-virtual {v1, v3}, Landroidx/fragment/app/FragmentManager;->b(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/k0;

    move-result-object p3

    .line 106
    invoke-static {v8}, Landroidx/fragment/app/FragmentManager;->D(I)Z

    move-result p4

    if-eqz p4, :cond_12

    .line 107
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " has been inflated via the <fragment> tag: id=0x"

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 107
    invoke-static {v5, p4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 111
    :cond_11
    iget-boolean p3, v3, Landroidx/fragment/app/Fragment;->o:Z

    if-nez p3, :cond_16

    .line 121
    iput-boolean v2, v3, Landroidx/fragment/app/Fragment;->o:Z

    .line 122
    iput-object v1, v3, Landroidx/fragment/app/Fragment;->s:Landroidx/fragment/app/FragmentManager;

    .line 2807
    iget-object p3, v1, Landroidx/fragment/app/FragmentManager;->r:Landroidx/fragment/app/FragmentHostCallback;

    .line 123
    iput-object p3, v3, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/FragmentHostCallback;

    .line 247
    iget-object p3, p3, Landroidx/fragment/app/FragmentHostCallback;->b:Landroid/content/Context;

    .line 125
    iget-object v2, v3, Landroidx/fragment/app/Fragment;->b:Landroid/os/Bundle;

    invoke-virtual {v3, p3, p4, v2}, Landroidx/fragment/app/Fragment;->onInflate(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 127
    invoke-virtual {v1, v3}, Landroidx/fragment/app/FragmentManager;->i(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/k0;

    move-result-object p3

    .line 128
    invoke-static {v8}, Landroidx/fragment/app/FragmentManager;->D(I)Z

    move-result p4

    if-eqz p4, :cond_12

    .line 129
    new-instance p4, Ljava/lang/StringBuilder;

    const-string v1, "Retained Fragment "

    invoke-direct {p4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " has been re-attached via the <fragment> tag: id=0x"

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 129
    invoke-static {v5, p4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_12
    :goto_5
    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, v3, Landroidx/fragment/app/Fragment;->G:Landroid/view/ViewGroup;

    .line 140
    invoke-virtual {p3}, Landroidx/fragment/app/k0;->k()V

    .line 142
    invoke-virtual {p3}, Landroidx/fragment/app/k0;->j()V

    .line 144
    iget-object p1, v3, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    if-eqz p1, :cond_15

    if-eqz v4, :cond_13

    .line 149
    invoke-virtual {p1, v4}, Landroid/view/View;->setId(I)V

    .line 151
    :cond_13
    iget-object p1, v3, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_14

    .line 152
    iget-object p1, v3, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    invoke-virtual {p1, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 157
    :cond_14
    iget-object p1, v3, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    new-instance p2, Landroidx/fragment/app/y$a;

    invoke-direct {p2, p0, p3}, Landroidx/fragment/app/y$a;-><init>(Landroidx/fragment/app/y;Landroidx/fragment/app/k0;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 173
    iget-object p1, v3, Landroidx/fragment/app/Fragment;->H:Landroid/view/View;

    return-object p1

    .line 145
    :cond_15
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p3, " did not create a view."

    .line 0
    invoke-static {v0, p2, p3}, L_COROUTINE/a;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 145
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 114
    :cond_16
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p4}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ": Duplicate id 0x"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ", tag "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ", or parent id 0x"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " with another fragment for "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_17
    :goto_6
    return-object v3
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    .line 44
    invoke-virtual {p0, v0, p1, p2, p3}, Landroidx/fragment/app/y;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method
