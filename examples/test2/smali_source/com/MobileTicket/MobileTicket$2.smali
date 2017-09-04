.class Lcom/MobileTicket/MobileTicket$2;
.super Ljava/lang/Object;
.source "MobileTicket.java"

# interfaces
.implements Lcom/bontai/mobiads/ads/splash/SplashAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/MobileTicket/MobileTicket;->initSplashAd()V
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

    const-class v0, Lcom/MobileTicket/MobileTicket$2;

    const v1, 0x8

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method constructor <init>(Lcom/MobileTicket/MobileTicket;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/MobileTicket/MobileTicket$2;->this$0:Lcom/MobileTicket/MobileTicket;

    .line 464
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native onSplashDismiss()V
.end method

.method public native onSplashJumpDetail(Lcom/bontai/mobiads/ads/entity/AdDomain;)V
.end method

.method public native onSplashLoadFailed()V
.end method

.method public native onSplashPresent()V
.end method
