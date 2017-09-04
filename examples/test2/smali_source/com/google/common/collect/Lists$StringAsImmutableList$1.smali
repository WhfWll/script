.class Lcom/google/common/collect/Lists$StringAsImmutableList$1;
.super Lcom/google/common/collect/AbstractIndexedListIterator;
.source "Lists.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Lists$StringAsImmutableList;->listIterator(I)Lcom/google/common/collect/UnmodifiableListIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractIndexedListIterator",
        "<",
        "Ljava/lang/Character;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/Lists$StringAsImmutableList;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/google/common/collect/Lists$StringAsImmutableList$1;

    const v1, 0x27a

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method constructor <init>(Lcom/google/common/collect/Lists$StringAsImmutableList;II)V
    .registers 4
    .param p2, "x0"    # I
    .param p3, "x1"    # I

    .prologue
    .line 557
    iput-object p1, p0, Lcom/google/common/collect/Lists$StringAsImmutableList$1;->this$0:Lcom/google/common/collect/Lists$StringAsImmutableList;

    invoke-direct {p0, p2, p3}, Lcom/google/common/collect/AbstractIndexedListIterator;-><init>(II)V

    return-void
.end method


# virtual methods
.method protected native get(I)Ljava/lang/Character;
.end method

.method protected bridge synthetic get(I)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 557
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Lists$StringAsImmutableList$1;->get(I)Ljava/lang/Character;

    move-result-object v0

    return-object v0
.end method
