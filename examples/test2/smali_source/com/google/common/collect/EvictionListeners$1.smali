.class final Lcom/google/common/collect/EvictionListeners$1;
.super Ljava/lang/Object;
.source "EvictionListeners.java"

# interfaces
.implements Lcom/google/common/collect/MapEvictionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/EvictionListeners;->asynchronous(Lcom/google/common/collect/MapEvictionListener;Ljava/util/concurrent/Executor;)Lcom/google/common/collect/MapEvictionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/collect/MapEvictionListener",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic val$executor:Ljava/util/concurrent/Executor;

.field final synthetic val$listener:Lcom/google/common/collect/MapEvictionListener;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/google/common/collect/EvictionListeners$1;

    const v1, 0x1ef

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/Executor;Lcom/google/common/collect/MapEvictionListener;)V
    .registers 3

    .prologue
    .line 46
    iput-object p1, p0, Lcom/google/common/collect/EvictionListeners$1;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lcom/google/common/collect/EvictionListeners$1;->val$listener:Lcom/google/common/collect/MapEvictionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native onEviction(Ljava/lang/Object;Ljava/lang/Object;)V
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation
.end method
