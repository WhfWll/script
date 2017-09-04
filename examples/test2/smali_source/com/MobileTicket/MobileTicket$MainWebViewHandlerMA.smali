.class Lcom/MobileTicket/MobileTicket$MainWebViewHandlerMA;
.super Landroid/os/Handler;
.source "MobileTicket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/MobileTicket/MobileTicket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MainWebViewHandlerMA"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/MobileTicket/MobileTicket;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/MobileTicket/MobileTicket$MainWebViewHandlerMA;

    const v1, 0x9

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>(Lcom/MobileTicket/MobileTicket;)V
    .registers 2

    .prologue
    .line 371
    iput-object p1, p0, Lcom/MobileTicket/MobileTicket$MainWebViewHandlerMA;->this$0:Lcom/MobileTicket/MobileTicket;

    .line 372
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 373
    return-void
.end method

.method public constructor <init>(Lcom/MobileTicket/MobileTicket;Landroid/os/Looper;)V
    .registers 3
    .param p2, "mainLooper"    # Landroid/os/Looper;

    .prologue
    .line 375
    iput-object p1, p0, Lcom/MobileTicket/MobileTicket$MainWebViewHandlerMA;->this$0:Lcom/MobileTicket/MobileTicket;

    .line 376
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 377
    return-void
.end method


# virtual methods
.method public native handleMessage(Landroid/os/Message;)V
.end method
