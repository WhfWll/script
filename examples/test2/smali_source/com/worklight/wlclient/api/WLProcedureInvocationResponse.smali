.class public Lcom/worklight/wlclient/api/WLProcedureInvocationResponse;
.super Lcom/worklight/wlclient/api/WLProcedureInvocationResult;
.source "WLProcedureInvocationResponse.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/worklight/wlclient/api/WLProcedureInvocationResponse;

    const v1, 0x4d5

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>(Lcom/worklight/wlclient/api/WLResponse;)V
    .registers 2
    .param p1, "response"    # Lcom/worklight/wlclient/api/WLResponse;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/worklight/wlclient/api/WLProcedureInvocationResult;-><init>(Lcom/worklight/wlclient/api/WLResponse;)V

    .line 32
    return-void
.end method


# virtual methods
.method public native getJSONResult()Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method
