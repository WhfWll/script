.class public Lcom/worklight/wlclient/api/WLProcedureInvocationResult;
.super Lcom/worklight/wlclient/api/WLResponse;
.source "WLProcedureInvocationResult.java"


# static fields
.field private static final JSON_KEY_IS_SUCCESSFUL:Ljava/lang/String; = "isSuccessful"


# instance fields
.field private jsonResult:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/worklight/wlclient/api/WLProcedureInvocationResult;

    const v1, 0x4d4

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method constructor <init>(Lcom/worklight/wlclient/api/WLResponse;)V
    .registers 2
    .param p1, "response"    # Lcom/worklight/wlclient/api/WLResponse;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/worklight/wlclient/api/WLResponse;-><init>(Lcom/worklight/wlclient/api/WLResponse;)V

    .line 33
    return-void
.end method


# virtual methods
.method public native getResult()Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation
.end method

.method public native isSuccessful()Z
.end method

.method public native toString()Ljava/lang/String;
.end method
