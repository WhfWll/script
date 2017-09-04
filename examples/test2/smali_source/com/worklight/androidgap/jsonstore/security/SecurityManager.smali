.class public Lcom/worklight/androidgap/jsonstore/security/SecurityManager;
.super Ljava/lang/Object;
.source "SecurityManager.java"


# static fields
.field private static final IV_NUM_BYTES:I = 0x10

.field private static final LOCAL_KEY_NUM_BYTES:I = 0x20

.field private static instance:Lcom/worklight/androidgap/jsonstore/security/SecurityManager;


# instance fields
.field private keychain:Lcom/worklight/androidgap/jsonstore/security/Keychain;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/worklight/androidgap/jsonstore/security/SecurityManager;

    const v1, 0x44c

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lcom/worklight/androidgap/jsonstore/security/Keychain;

    invoke-direct {v0, p1}, Lcom/worklight/androidgap/jsonstore/security/Keychain;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/worklight/androidgap/jsonstore/security/SecurityManager;->keychain:Lcom/worklight/androidgap/jsonstore/security/Keychain;

    .line 27
    return-void
.end method

.method public static native declared-synchronized getInstance(Landroid/content/Context;)Lcom/worklight/androidgap/jsonstore/security/SecurityManager;
.end method


# virtual methods
.method public native destroyKeychain()V
.end method

.method public native getDPK(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public native getSalt(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public native isDPKAvailable(Ljava/lang/String;)Z
.end method

.method public native storeDPK(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
