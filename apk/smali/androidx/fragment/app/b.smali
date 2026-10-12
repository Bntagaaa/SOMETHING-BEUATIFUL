.class final Landroidx/fragment/app/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "BanParcelableUsage"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/fragment/app/b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:[I

.field public final b:Ljava/util/ArrayList;

.field public final c:[I

.field public final d:[I

.field public final e:I

.field public final f:Ljava/lang/String;

.field public final g:I

.field public final h:I

.field public final i:Ljava/lang/CharSequence;

.field public final j:I

.field public final k:Ljava/lang/CharSequence;

.field public final l:Ljava/util/ArrayList;

.field public final m:Ljava/util/ArrayList;

.field public final n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 169
    new-instance v0, Landroidx/fragment/app/b$a;

    invoke-direct {v0}, Landroidx/fragment/app/b$a;-><init>()V

    sput-object v0, Landroidx/fragment/app/b;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/b;->a:[I

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/b;->b:Ljava/util/ArrayList;

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/b;->c:[I

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/b;->d:[I

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/fragment/app/b;->e:I

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/b;->f:Ljava/lang/String;

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/fragment/app/b;->g:I

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/fragment/app/b;->h:I

    .line 92
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    iput-object v1, p0, Landroidx/fragment/app/b;->i:Ljava/lang/CharSequence;

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroidx/fragment/app/b;->j:I

    .line 94
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroidx/fragment/app/b;->k:Ljava/lang/CharSequence;

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/b;->l:Ljava/util/ArrayList;

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/b;->m:Ljava/util/ArrayList;

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Landroidx/fragment/app/b;->n:Z

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/a;)V
    .locals 8

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iget-object v0, p1, Landroidx/fragment/app/FragmentTransaction;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    mul-int/lit8 v1, v0, 0x5

    .line 50
    new-array v1, v1, [I

    iput-object v1, p0, Landroidx/fragment/app/b;->a:[I

    .line 52
    iget-boolean v1, p1, Landroidx/fragment/app/FragmentTransaction;->i:Z

    if-eqz v1, :cond_2

    .line 56
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Landroidx/fragment/app/b;->b:Ljava/util/ArrayList;

    .line 57
    new-array v1, v0, [I

    iput-object v1, p0, Landroidx/fragment/app/b;->c:[I

    .line 58
    new-array v1, v0, [I

    iput-object v1, p0, Landroidx/fragment/app/b;->d:[I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 61
    iget-object v3, p1, Landroidx/fragment/app/FragmentTransaction;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/FragmentTransaction$a;

    .line 62
    iget-object v4, p0, Landroidx/fragment/app/b;->a:[I

    add-int/lit8 v5, v2, 0x1

    iget v6, v3, Landroidx/fragment/app/FragmentTransaction$a;->a:I

    aput v6, v4, v2

    .line 63
    iget-object v4, p0, Landroidx/fragment/app/b;->b:Ljava/util/ArrayList;

    iget-object v6, v3, Landroidx/fragment/app/FragmentTransaction$a;->b:Landroidx/fragment/app/Fragment;

    if-eqz v6, :cond_0

    iget-object v6, v6, Landroidx/fragment/app/Fragment;->f:Ljava/lang/String;

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    :goto_1
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    iget-object v4, p0, Landroidx/fragment/app/b;->a:[I

    add-int/lit8 v6, v2, 0x2

    iget v7, v3, Landroidx/fragment/app/FragmentTransaction$a;->c:I

    aput v7, v4, v5

    add-int/lit8 v5, v2, 0x3

    .line 65
    iget v7, v3, Landroidx/fragment/app/FragmentTransaction$a;->d:I

    aput v7, v4, v6

    add-int/lit8 v6, v2, 0x4

    .line 66
    iget v7, v3, Landroidx/fragment/app/FragmentTransaction$a;->e:I

    aput v7, v4, v5

    add-int/lit8 v2, v2, 0x5

    .line 67
    iget v5, v3, Landroidx/fragment/app/FragmentTransaction$a;->f:I

    aput v5, v4, v6

    .line 68
    iget-object v4, p0, Landroidx/fragment/app/b;->c:[I

    iget-object v5, v3, Landroidx/fragment/app/FragmentTransaction$a;->g:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v5, v4, v1

    .line 69
    iget-object v4, p0, Landroidx/fragment/app/b;->d:[I

    iget-object v3, v3, Landroidx/fragment/app/FragmentTransaction$a;->h:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v3, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 71
    :cond_1
    iget v0, p1, Landroidx/fragment/app/FragmentTransaction;->h:I

    iput v0, p0, Landroidx/fragment/app/b;->e:I

    .line 72
    iget-object v0, p1, Landroidx/fragment/app/FragmentTransaction;->k:Ljava/lang/String;

    iput-object v0, p0, Landroidx/fragment/app/b;->f:Ljava/lang/String;

    .line 73
    iget v0, p1, Landroidx/fragment/app/a;->v:I

    iput v0, p0, Landroidx/fragment/app/b;->g:I

    .line 74
    iget v0, p1, Landroidx/fragment/app/FragmentTransaction;->l:I

    iput v0, p0, Landroidx/fragment/app/b;->h:I

    .line 75
    iget-object v0, p1, Landroidx/fragment/app/FragmentTransaction;->m:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroidx/fragment/app/b;->i:Ljava/lang/CharSequence;

    .line 76
    iget v0, p1, Landroidx/fragment/app/FragmentTransaction;->n:I

    iput v0, p0, Landroidx/fragment/app/b;->j:I

    .line 77
    iget-object v0, p1, Landroidx/fragment/app/FragmentTransaction;->o:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroidx/fragment/app/b;->k:Ljava/lang/CharSequence;

    .line 78
    iget-object v0, p1, Landroidx/fragment/app/FragmentTransaction;->p:Ljava/util/ArrayList;

    iput-object v0, p0, Landroidx/fragment/app/b;->l:Ljava/util/ArrayList;

    .line 79
    iget-object v0, p1, Landroidx/fragment/app/FragmentTransaction;->q:Ljava/util/ArrayList;

    iput-object v0, p0, Landroidx/fragment/app/b;->m:Ljava/util/ArrayList;

    .line 80
    iget-boolean p1, p1, Landroidx/fragment/app/FragmentTransaction;->r:Z

    iput-boolean p1, p0, Landroidx/fragment/app/b;->n:Z

    return-void

    .line 53
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Not on back stack"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public instantiate(Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/a;
    .locals 9

    .line 101
    new-instance v0, Landroidx/fragment/app/a;

    invoke-direct {v0, p1}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/FragmentManager;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 104
    :goto_0
    iget-object v3, p0, Landroidx/fragment/app/b;->a:[I

    array-length v4, v3

    if-ge v1, v4, :cond_2

    .line 105
    new-instance v4, Landroidx/fragment/app/FragmentTransaction$a;

    invoke-direct {v4}, Landroidx/fragment/app/FragmentTransaction$a;-><init>()V

    add-int/lit8 v5, v1, 0x1

    .line 106
    aget v6, v3, v1

    iput v6, v4, Landroidx/fragment/app/FragmentTransaction$a;->a:I

    const/4 v6, 0x2

    .line 107
    invoke-static {v6}, Landroidx/fragment/app/FragmentManager;->D(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 108
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Instantiate "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " op #"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " base fragment #"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v7, v3, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "FragmentManager"

    invoke-static {v7, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_0
    iget-object v6, p0, Landroidx/fragment/app/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-eqz v6, :cond_1

    .line 1839
    iget-object v7, p1, Landroidx/fragment/app/FragmentManager;->c:Landroidx/fragment/app/l0;

    invoke-virtual {v7, v6}, Landroidx/fragment/app/l0;->b(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v6

    .line 114
    iput-object v6, v4, Landroidx/fragment/app/FragmentTransaction$a;->b:Landroidx/fragment/app/Fragment;

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    .line 116
    iput-object v6, v4, Landroidx/fragment/app/FragmentTransaction$a;->b:Landroidx/fragment/app/Fragment;

    .line 118
    :goto_1
    invoke-static {}, Landroidx/lifecycle/Lifecycle$State;->values()[Landroidx/lifecycle/Lifecycle$State;

    move-result-object v6

    iget-object v7, p0, Landroidx/fragment/app/b;->c:[I

    aget v7, v7, v2

    aget-object v6, v6, v7

    iput-object v6, v4, Landroidx/fragment/app/FragmentTransaction$a;->g:Landroidx/lifecycle/Lifecycle$State;

    .line 119
    invoke-static {}, Landroidx/lifecycle/Lifecycle$State;->values()[Landroidx/lifecycle/Lifecycle$State;

    move-result-object v6

    iget-object v7, p0, Landroidx/fragment/app/b;->d:[I

    aget v7, v7, v2

    aget-object v6, v6, v7

    iput-object v6, v4, Landroidx/fragment/app/FragmentTransaction$a;->h:Landroidx/lifecycle/Lifecycle$State;

    add-int/lit8 v6, v1, 0x2

    .line 120
    aget v5, v3, v5

    iput v5, v4, Landroidx/fragment/app/FragmentTransaction$a;->c:I

    add-int/lit8 v7, v1, 0x3

    .line 121
    aget v6, v3, v6

    iput v6, v4, Landroidx/fragment/app/FragmentTransaction$a;->d:I

    add-int/lit8 v8, v1, 0x4

    .line 122
    aget v7, v3, v7

    iput v7, v4, Landroidx/fragment/app/FragmentTransaction$a;->e:I

    add-int/lit8 v1, v1, 0x5

    .line 123
    aget v3, v3, v8

    iput v3, v4, Landroidx/fragment/app/FragmentTransaction$a;->f:I

    .line 124
    iput v5, v0, Landroidx/fragment/app/FragmentTransaction;->d:I

    .line 125
    iput v6, v0, Landroidx/fragment/app/FragmentTransaction;->e:I

    .line 126
    iput v7, v0, Landroidx/fragment/app/FragmentTransaction;->f:I

    .line 127
    iput v3, v0, Landroidx/fragment/app/FragmentTransaction;->g:I

    .line 128
    invoke-virtual {v0, v4}, Landroidx/fragment/app/FragmentTransaction;->a(Landroidx/fragment/app/FragmentTransaction$a;)V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 131
    :cond_2
    iget p1, p0, Landroidx/fragment/app/b;->e:I

    iput p1, v0, Landroidx/fragment/app/FragmentTransaction;->h:I

    .line 132
    iget-object p1, p0, Landroidx/fragment/app/b;->f:Ljava/lang/String;

    iput-object p1, v0, Landroidx/fragment/app/FragmentTransaction;->k:Ljava/lang/String;

    .line 133
    iget p1, p0, Landroidx/fragment/app/b;->g:I

    iput p1, v0, Landroidx/fragment/app/a;->v:I

    const/4 p1, 0x1

    .line 134
    iput-boolean p1, v0, Landroidx/fragment/app/FragmentTransaction;->i:Z

    .line 135
    iget v1, p0, Landroidx/fragment/app/b;->h:I

    iput v1, v0, Landroidx/fragment/app/FragmentTransaction;->l:I

    .line 136
    iget-object v1, p0, Landroidx/fragment/app/b;->i:Ljava/lang/CharSequence;

    iput-object v1, v0, Landroidx/fragment/app/FragmentTransaction;->m:Ljava/lang/CharSequence;

    .line 137
    iget v1, p0, Landroidx/fragment/app/b;->j:I

    iput v1, v0, Landroidx/fragment/app/FragmentTransaction;->n:I

    .line 138
    iget-object v1, p0, Landroidx/fragment/app/b;->k:Ljava/lang/CharSequence;

    iput-object v1, v0, Landroidx/fragment/app/FragmentTransaction;->o:Ljava/lang/CharSequence;

    .line 139
    iget-object v1, p0, Landroidx/fragment/app/b;->l:Ljava/util/ArrayList;

    iput-object v1, v0, Landroidx/fragment/app/FragmentTransaction;->p:Ljava/util/ArrayList;

    .line 140
    iget-object v1, p0, Landroidx/fragment/app/b;->m:Ljava/util/ArrayList;

    iput-object v1, v0, Landroidx/fragment/app/FragmentTransaction;->q:Ljava/util/ArrayList;

    .line 141
    iget-boolean v1, p0, Landroidx/fragment/app/b;->n:Z

    iput-boolean v1, v0, Landroidx/fragment/app/FragmentTransaction;->r:Z

    .line 142
    invoke-virtual {v0, p1}, Landroidx/fragment/app/a;->d(I)V

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 153
    iget-object p2, p0, Landroidx/fragment/app/b;->a:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 154
    iget-object p2, p0, Landroidx/fragment/app/b;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 155
    iget-object p2, p0, Landroidx/fragment/app/b;->c:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 156
    iget-object p2, p0, Landroidx/fragment/app/b;->d:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 157
    iget p2, p0, Landroidx/fragment/app/b;->e:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    iget-object p2, p0, Landroidx/fragment/app/b;->f:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 159
    iget p2, p0, Landroidx/fragment/app/b;->g:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 160
    iget p2, p0, Landroidx/fragment/app/b;->h:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 161
    iget-object p2, p0, Landroidx/fragment/app/b;->i:Ljava/lang/CharSequence;

    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 162
    iget p2, p0, Landroidx/fragment/app/b;->j:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 163
    iget-object p2, p0, Landroidx/fragment/app/b;->k:Ljava/lang/CharSequence;

    invoke-static {p2, p1, v0}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 164
    iget-object p2, p0, Landroidx/fragment/app/b;->l:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 165
    iget-object p2, p0, Landroidx/fragment/app/b;->m:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 166
    iget-boolean p2, p0, Landroidx/fragment/app/b;->n:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
