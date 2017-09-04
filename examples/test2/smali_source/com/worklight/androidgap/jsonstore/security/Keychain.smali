.class public Lcom/worklight/androidgap/jsonstore/security/Keychain;
.super Ljava/lang/Object;
.source "Keychain.java"


# static fields
.field private static final PREFS_NAME_DPK:Ljava/lang/String; = "dpkPrefs"

.field private static final PREF_NAME_DPK:Ljava/lang/String; = "dpk"


# instance fields
.field private prefs:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/worklight/androidgap/jsonstore/security/Keychain;

    const v1, 0x44b

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string v0, "dpkPrefs"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/worklight/androidgap/jsonstore/security/Keychain;->prefs:Landroid/content/SharedPreferences;

    .line 29
    return-void
.end method

.method private native buildTag(Ljava/lang/String;)Ljava/lang/String;
.end method


# virtual methods
.method public native destroy()V
.end method

.method public native getDPKBean(Ljava/lang/String;)Lcom/worklight/androidgap/jsonstore/security/DPKBean;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation
.end method

.method public native isDPKAvailable(Ljava/lang/String;)Z
.end method

.method public native setDPKBean(Ljava/lang/String;Lcom/worklight/androidgap/jsonstore/security/DPKBean;)V
.end method
