.class public Lcom/arrownock/social/AnSocial;
.super Ljava/lang/Object;


# instance fields
.field private a:Lch;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/arrownock/social/AnSocial;

    const v1, 0xdc

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6
    .param p1, "androidContext"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/arrownock/exception/ArrownockException;
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/arrownock/social/AnSocial;->a:Lch;

    if-eqz p2, :cond_14

    const-string v0, ""

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    :cond_14
    new-instance v0, Lcom/arrownock/exception/ArrownockException;

    const-string v1, "Invalid value of com.arrownock.APP_KEY"

    const v2, -0x30d40

    invoke-direct {v0, v1, v2}, Lcom/arrownock/exception/ArrownockException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_1f
    new-instance v0, Lch;

    invoke-direct {v0, p2, p1}, Lch;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/arrownock/social/AnSocial;->a:Lch;

    iget-object v0, p0, Lcom/arrownock/social/AnSocial;->a:Lch;

    const v1, 0xea60

    invoke-virtual {v0, v1}, Lch;->a(I)V

    sget-object v0, Lcm;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3d

    :try_start_36
    invoke-static {p1, p2}, Lbe;->a(Landroid/content/Context;Ljava/lang/String;)Lbe;

    move-result-object v0

    invoke-virtual {v0}, Lbe;->a()V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_3d} :catch_3e

    :cond_3d
    :goto_3d
    return-void

    :catch_3e
    move-exception v0

    const-string v1, "DeviceManager"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3d
.end method


# virtual methods
.method public native sendRequest(Ljava/lang/String;Lcom/arrownock/social/AnSocialMethod;Ljava/util/Map;Lcom/arrownock/social/IAnSocialCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/arrownock/social/AnSocialMethod;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/arrownock/social/IAnSocialCallback;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/arrownock/exception/ArrownockException;
        }
    .end annotation
.end method

.method public native setHost(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/arrownock/exception/ArrownockException;
        }
    .end annotation
.end method

.method public native setSecureConnection(Ljava/lang/Boolean;)V
.end method

.method public native setTimeout(I)V
.end method
