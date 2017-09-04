.class Lcom/tl/uic/util/UICOnGlobalLayoutListener$1$1;
.super Ljava/lang/Object;
.source "UICOnGlobalLayoutListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tl/uic/util/UICOnGlobalLayoutListener$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tl/uic/util/UICOnGlobalLayoutListener$1;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/tl/uic/util/UICOnGlobalLayoutListener$1$1;

    const v1, 0x42b

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method constructor <init>(Lcom/tl/uic/util/UICOnGlobalLayoutListener$1;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tl/uic/util/UICOnGlobalLayoutListener$1$1;->this$1:Lcom/tl/uic/util/UICOnGlobalLayoutListener$1;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native run()V
.end method
