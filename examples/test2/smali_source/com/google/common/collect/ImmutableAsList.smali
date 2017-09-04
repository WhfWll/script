.class final Lcom/google/common/collect/ImmutableAsList;
.super Lcom/google/common/collect/RegularImmutableList;
.source "ImmutableAsList.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
    serializable = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/ImmutableAsList$SerializedForm;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/RegularImmutableList",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private final transient collection:Lcom/google/common/collect/ImmutableCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableCollection",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/google/common/collect/ImmutableAsList;

    const v1, 0x1fd

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method constructor <init>([Ljava/lang/Object;Lcom/google/common/collect/ImmutableCollection;)V
    .registers 5
    .param p1, "array"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            "Lcom/google/common/collect/ImmutableCollection",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p0, "this":Lcom/google/common/collect/ImmutableAsList;, "Lcom/google/common/collect/ImmutableAsList<TE;>;"
    .local p2, "collection":Lcom/google/common/collect/ImmutableCollection;, "Lcom/google/common/collect/ImmutableCollection<TE;>;"
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lcom/google/common/collect/RegularImmutableList;-><init>([Ljava/lang/Object;II)V

    .line 38
    iput-object p2, p0, Lcom/google/common/collect/ImmutableAsList;->collection:Lcom/google/common/collect/ImmutableCollection;

    .line 39
    return-void
.end method

.method private native readObject(Ljava/io/ObjectInputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation
.end method


# virtual methods
.method public native contains(Ljava/lang/Object;)Z
.end method

.method native writeReplace()Ljava/lang/Object;
.end method
