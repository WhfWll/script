.class Lcom/tl/uic/TLFCache$1;
.super Ljava/util/TimerTask;
.source "TLFCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tl/uic/TLFCache;->setupPostTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/tl/uic/TLFCache$1;

    const v1, 0x400

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method constructor <init>(Landroid/os/Handler;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tl/uic/TLFCache$1;->val$handler:Landroid/os/Handler;

    .line 341
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public native run()V
.end method
