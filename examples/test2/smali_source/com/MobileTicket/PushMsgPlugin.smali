.class public Lcom/MobileTicket/PushMsgPlugin;
.super Lorg/apache/cordova/api/CordovaPlugin;
.source "PushMsgPlugin.java"


# static fields
.field private static final DEC_ACTION:Ljava/lang/String; = "decrypt"

.field private static final ENC_ACTION:Ljava/lang/String; = "encrypt"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/MobileTicket/PushMsgPlugin;

    const v1, 0xf

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Lorg/apache/cordova/api/CordovaPlugin;-><init>()V

    return-void
.end method


# virtual methods
.method public native execute(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/api/CallbackContext;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation
.end method
