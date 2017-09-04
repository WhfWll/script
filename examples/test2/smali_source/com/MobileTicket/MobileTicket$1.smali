.class Lcom/MobileTicket/MobileTicket$1;
.super Ljava/lang/Object;
.source "MobileTicket.java"

# interfaces
.implements Lcom/bontai/mobiads/ads/splash/WebViewListenerMA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/MobileTicket/MobileTicket;->onWLInitCompleted(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/MobileTicket/MobileTicket;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/MobileTicket/MobileTicket$1;

    const v1, 0x7

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method constructor <init>(Lcom/MobileTicket/MobileTicket;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/MobileTicket/MobileTicket$1;->this$0:Lcom/MobileTicket/MobileTicket;

    .line 332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native onPageFinished()V
.end method

.method public native onPageStart()V
.end method
