.class Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet$SerializedForm;
.super Ljava/lang/Object;
.source "ExplicitOrderedImmutableSortedSet.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SerializedForm"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final elements:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet$SerializedForm;

    const v1, 0x1f1

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;)V
    .registers 2
    .param p1, "elements"    # [Ljava/lang/Object;

    .prologue
    .line 211
    .local p0, "this":Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet$SerializedForm;, "Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet$SerializedForm<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    iput-object p1, p0, Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet$SerializedForm;->elements:[Ljava/lang/Object;

    .line 213
    return-void
.end method


# virtual methods
.method native readResolve()Ljava/lang/Object;
.end method
