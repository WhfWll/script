.class public Lcom/worklight/androidgap/jsonstore/security/DPKBean;
.super Ljava/lang/Object;
.source "DPKBean.java"


# static fields
.field private static final KEY_DPK:Ljava/lang/String; = "dpk"

.field private static final KEY_ITERATIONS:Ljava/lang/String; = "iterations"

.field private static final KEY_IV:Ljava/lang/String; = "iv"

.field private static final KEY_SALT:Ljava/lang/String; = "jsonSalt"

.field private static final KEY_VERSION:Ljava/lang/String; = "version"

.field private static final VERSION_NUM:Ljava/lang/String; = "1.0"


# instance fields
.field private obj:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/worklight/androidgap/jsonstore/security/DPKBean;

    const v1, 0x449

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "json"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    :try_start_3
    invoke-static {p1}, Lcom/worklight/androidgap/jsonstore/util/jackson/JsonOrgModule;->deserializeJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, p0, Lcom/worklight/androidgap/jsonstore/security/DPKBean;->obj:Lorg/json/JSONObject;
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_9} :catch_a

    .line 41
    return-void

    .line 38
    :catch_a
    move-exception v0

    .line 39
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Lorg/json/JSONException;

    invoke-direct {v1, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 8
    .param p1, "encryptedDPK"    # Ljava/lang/String;
    .param p2, "iv"    # Ljava/lang/String;
    .param p3, "salt"    # Ljava/lang/String;
    .param p4, "iterations"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lcom/worklight/androidgap/jsonstore/util/jackson/JacksonSerializedJSONObject;

    invoke-direct {v0}, Lcom/worklight/androidgap/jsonstore/util/jackson/JacksonSerializedJSONObject;-><init>()V

    iput-object v0, p0, Lcom/worklight/androidgap/jsonstore/security/DPKBean;->obj:Lorg/json/JSONObject;

    .line 49
    iget-object v0, p0, Lcom/worklight/androidgap/jsonstore/security/DPKBean;->obj:Lorg/json/JSONObject;

    const-string v1, "dpk"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 50
    iget-object v0, p0, Lcom/worklight/androidgap/jsonstore/security/DPKBean;->obj:Lorg/json/JSONObject;

    const-string v1, "iterations"

    invoke-virtual {v0, v1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 51
    iget-object v0, p0, Lcom/worklight/androidgap/jsonstore/security/DPKBean;->obj:Lorg/json/JSONObject;

    const-string v1, "iv"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 52
    iget-object v0, p0, Lcom/worklight/androidgap/jsonstore/security/DPKBean;->obj:Lorg/json/JSONObject;

    const-string v1, "jsonSalt"

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 53
    iget-object v0, p0, Lcom/worklight/androidgap/jsonstore/security/DPKBean;->obj:Lorg/json/JSONObject;

    const-string v1, "version"

    const-string v2, "1.0"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 54
    return-void
.end method


# virtual methods
.method public native getEncryptedDPK()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation
.end method

.method public native getIV()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation
.end method

.method public native getIterations()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation
.end method

.method public native getSalt()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation
.end method

.method public native getVersion()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation
.end method

.method public native toString()Ljava/lang/String;
.end method
