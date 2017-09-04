.class Lcom/google/common/util/concurrent/Futures$ListenableFutureAdapter$1;
.super Ljava/lang/Object;
.source "Futures.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/Futures$ListenableFutureAdapter;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/util/concurrent/Futures$ListenableFutureAdapter;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/google/common/util/concurrent/Futures$ListenableFutureAdapter$1;

    const v1, 0x3b6

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method constructor <init>(Lcom/google/common/util/concurrent/Futures$ListenableFutureAdapter;)V
    .registers 2

    .prologue
    .line 852
    .local p0, "this":Lcom/google/common/util/concurrent/Futures$ListenableFutureAdapter$1;, "Lcom/google/common/util/concurrent/Futures$ListenableFutureAdapter.1;"
    iput-object p1, p0, Lcom/google/common/util/concurrent/Futures$ListenableFutureAdapter$1;->this$0:Lcom/google/common/util/concurrent/Futures$ListenableFutureAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native run()V
.end method
