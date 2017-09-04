.class Lcom/tl/uic/TLFCache$1$1;
.super Ljava/lang/Object;
.source "TLFCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tl/uic/TLFCache$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tl/uic/TLFCache$1;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/tl/uic/TLFCache$1$1;

    const v1, 0x3ff

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method constructor <init>(Lcom/tl/uic/TLFCache$1;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tl/uic/TLFCache$1$1;->this$1:Lcom/tl/uic/TLFCache$1;

    .line 344
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native run()V
.end method
