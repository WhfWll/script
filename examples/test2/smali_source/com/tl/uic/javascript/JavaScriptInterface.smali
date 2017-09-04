.class public Lcom/tl/uic/javascript/JavaScriptInterface;
.super Ljava/lang/Object;
.source "JavaScriptInterface.java"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/tl/uic/javascript/JavaScriptInterface;

    const v1, 0x408

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    move-object v0, p1

    .line 19
    .local v0, "_context":Landroid/content/Context;
    return-void
.end method


# virtual methods
.method public final native addMessage(Ljava/lang/String;)V
.end method
