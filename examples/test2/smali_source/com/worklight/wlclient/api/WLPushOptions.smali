.class public Lcom/worklight/wlclient/api/WLPushOptions;
.super Ljava/lang/Object;
.source "WLPushOptions.java"


# instance fields
.field private alert:Z

.field private badge:Z

.field private parameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private sound:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/worklight/wlclient/api/WLPushOptions;

    const v1, 0x4e0

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-boolean v0, p0, Lcom/worklight/wlclient/api/WLPushOptions;->alert:Z

    .line 25
    iput-boolean v0, p0, Lcom/worklight/wlclient/api/WLPushOptions;->sound:Z

    .line 26
    iput-boolean v0, p0, Lcom/worklight/wlclient/api/WLPushOptions;->badge:Z

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/worklight/wlclient/api/WLPushOptions;->parameters:Ljava/util/Map;

    .line 36
    return-void
.end method


# virtual methods
.method public native addSubscriptionParameter(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public native addSubscriptionParameters(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public native getSubscriptionParameter(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public native getSubscriptionParameters()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method
