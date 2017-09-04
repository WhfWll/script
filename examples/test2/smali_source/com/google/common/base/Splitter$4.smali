.class final Lcom/google/common/base/Splitter$4;
.super Ljava/lang/Object;
.source "Splitter.java"

# interfaces
.implements Lcom/google/common/base/Splitter$Strategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/base/Splitter;->fixedLength(I)Lcom/google/common/base/Splitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$length:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/google/common/base/Splitter$4;

    const v1, 0x170

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method constructor <init>(I)V
    .registers 2

    .prologue
    .line 261
    iput p1, p0, Lcom/google/common/base/Splitter$4;->val$length:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native iterator(Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;)Lcom/google/common/base/Splitter$SplittingIterator;
.end method

.method public bridge synthetic iterator(Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .registers 4
    .param p1, "x0"    # Lcom/google/common/base/Splitter;
    .param p2, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 261
    invoke-virtual {p0, p1, p2}, Lcom/google/common/base/Splitter$4;->iterator(Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;)Lcom/google/common/base/Splitter$SplittingIterator;

    move-result-object v0

    return-object v0
.end method
