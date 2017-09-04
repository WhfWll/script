.class Lcom/google/common/collect/Constraints$ConstrainedListIterator;
.super Lcom/google/common/collect/ForwardingListIterator;
.source "Constraints.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Constraints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ConstrainedListIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ForwardingListIterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private final constraint:Lcom/google/common/collect/Constraint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Constraint",
            "<-TE;>;"
        }
    .end annotation
.end field

.field private final delegate:Ljava/util/ListIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ListIterator",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/google/common/collect/Constraints$ConstrainedListIterator;

    const v1, 0x1bb

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>(Ljava/util/ListIterator;Lcom/google/common/collect/Constraint;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ListIterator",
            "<TE;>;",
            "Lcom/google/common/collect/Constraint",
            "<-TE;>;)V"
        }
    .end annotation

    .prologue
    .line 288
    .local p0, "this":Lcom/google/common/collect/Constraints$ConstrainedListIterator;, "Lcom/google/common/collect/Constraints$ConstrainedListIterator<TE;>;"
    .local p1, "delegate":Ljava/util/ListIterator;, "Ljava/util/ListIterator<TE;>;"
    .local p2, "constraint":Lcom/google/common/collect/Constraint;, "Lcom/google/common/collect/Constraint<-TE;>;"
    invoke-direct {p0}, Lcom/google/common/collect/ForwardingListIterator;-><init>()V

    .line 289
    iput-object p1, p0, Lcom/google/common/collect/Constraints$ConstrainedListIterator;->delegate:Ljava/util/ListIterator;

    .line 290
    iput-object p2, p0, Lcom/google/common/collect/Constraints$ConstrainedListIterator;->constraint:Lcom/google/common/collect/Constraint;

    .line 291
    return-void
.end method


# virtual methods
.method public native add(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 283
    .local p0, "this":Lcom/google/common/collect/Constraints$ConstrainedListIterator;, "Lcom/google/common/collect/Constraints$ConstrainedListIterator<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Constraints$ConstrainedListIterator;->delegate()Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 283
    .local p0, "this":Lcom/google/common/collect/Constraints$ConstrainedListIterator;, "Lcom/google/common/collect/Constraints$ConstrainedListIterator<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Constraints$ConstrainedListIterator;->delegate()Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method protected native delegate()Ljava/util/ListIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator",
            "<TE;>;"
        }
    .end annotation
.end method

.method public native set(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation
.end method
