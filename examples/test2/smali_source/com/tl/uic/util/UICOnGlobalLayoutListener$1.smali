.class Lcom/tl/uic/util/UICOnGlobalLayoutListener$1;
.super Ljava/lang/Thread;
.source "UICOnGlobalLayoutListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tl/uic/util/UICOnGlobalLayoutListener;->onGlobalLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tl/uic/util/UICOnGlobalLayoutListener;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/tl/uic/util/UICOnGlobalLayoutListener$1;

    const v1, 0x42c

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method constructor <init>(Lcom/tl/uic/util/UICOnGlobalLayoutListener;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tl/uic/util/UICOnGlobalLayoutListener$1;->this$0:Lcom/tl/uic/util/UICOnGlobalLayoutListener;

    .line 49
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/tl/uic/util/UICOnGlobalLayoutListener$1;)Lcom/tl/uic/util/UICOnGlobalLayoutListener;
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/tl/uic/util/UICOnGlobalLayoutListener$1;->this$0:Lcom/tl/uic/util/UICOnGlobalLayoutListener;

    return-object v0
.end method


# virtual methods
.method public native run()V
.end method
