.class public final Lcom/google/android/gcm/GCMRegistrar;
.super Ljava/lang/Object;
.source "GCMRegistrar.java"


# static fields
.field private static final BACKOFF_MS:Ljava/lang/String; = "backoff_ms"

.field private static final DEFAULT_BACKOFF_MS:I = 0xbb8

.field public static final DEFAULT_ON_SERVER_LIFESPAN_MS:J = 0x240c8400L

.field private static final GSF_PACKAGE:Ljava/lang/String; = "com.google.android.gsf"

.field private static final PREFERENCES:Ljava/lang/String; = "com.google.android.gcm"

.field private static final PROPERTY_APP_VERSION:Ljava/lang/String; = "appVersion"

.field private static final PROPERTY_ON_SERVER:Ljava/lang/String; = "onServer"

.field private static final PROPERTY_ON_SERVER_EXPIRATION_TIME:Ljava/lang/String; = "onServerExpirationTime"

.field private static final PROPERTY_ON_SERVER_LIFESPAN:Ljava/lang/String; = "onServerLifeSpan"

.field private static final PROPERTY_REG_ID:Ljava/lang/String; = "regId"

.field private static final TAG:Ljava/lang/String; = "GCMRegistrar"

.field private static sRetryReceiver:Lcom/google/android/gcm/GCMBroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/google/android/gcm/GCMRegistrar;

    const v1, 0x133

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 481
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 482
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public static native checkDevice(Landroid/content/Context;)V
.end method

.method public static native checkManifest(Landroid/content/Context;)V
.end method

.method private static native checkReceiver(Landroid/content/Context;Ljava/util/Set;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method static native clearRegistrationId(Landroid/content/Context;)Ljava/lang/String;
.end method

.method private static native getAppVersion(Landroid/content/Context;)I
.end method

.method static native getBackoff(Landroid/content/Context;)I
.end method

.method static varargs getFlatSenderIds([Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "senderIds"    # [Ljava/lang/String;

    .prologue
    .line 233
    if-eqz p0, :cond_5

    array-length v2, p0

    if-nez v2, :cond_d

    .line 234
    :cond_5
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "No senderIds"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 236
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    aget-object v2, p0, v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 237
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_16
    array-length v2, p0

    if-ge v1, v2, :cond_27

    .line 238
    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 240
    :cond_27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static native getGCMPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
.end method

.method public static native getRegisterOnServerLifespan(Landroid/content/Context;)J
.end method

.method public static native getRegistrationId(Landroid/content/Context;)Ljava/lang/String;
.end method

.method static varargs internalRegister(Landroid/content/Context;[Ljava/lang/String;)V
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "senderIds"    # [Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 221
    invoke-static {p1}, Lcom/google/android/gcm/GCMRegistrar;->getFlatSenderIds([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 222
    .local v0, "flatSenderIds":Ljava/lang/String;
    const-string v2, "GCMRegistrar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Registering app "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " of senders "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.android.c2dm.intent.REGISTER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 225
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.google.android.gsf"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 226
    const-string v2, "app"

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-static {p0, v5, v3, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 228
    const-string v2, "sender"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 229
    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 230
    return-void
.end method

.method static native internalUnregister(Landroid/content/Context;)V
.end method

.method public static native isRegistered(Landroid/content/Context;)Z
.end method

.method public static native isRegisteredOnServer(Landroid/content/Context;)Z
.end method

.method public static native declared-synchronized onDestroy(Landroid/content/Context;)V
.end method

.method public static varargs register(Landroid/content/Context;[Ljava/lang/String;)V
    .registers 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "senderIds"    # [Ljava/lang/String;

    .prologue
    .line 215
    invoke-static {p0}, Lcom/google/android/gcm/GCMRegistrar;->setRetryBroadcastReceiver(Landroid/content/Context;)V

    .line 216
    invoke-static {p0}, Lcom/google/android/gcm/GCMRegistrar;->resetBackoff(Landroid/content/Context;)V

    .line 217
    invoke-static {p0, p1}, Lcom/google/android/gcm/GCMRegistrar;->internalRegister(Landroid/content/Context;[Ljava/lang/String;)V

    .line 218
    return-void
.end method

.method static native resetBackoff(Landroid/content/Context;)V
.end method

.method static native setBackoff(Landroid/content/Context;I)V
.end method

.method public static native setRegisterOnServerLifespan(Landroid/content/Context;J)V
.end method

.method public static native setRegisteredOnServer(Landroid/content/Context;Z)V
.end method

.method static native setRegistrationId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static native declared-synchronized setRetryBroadcastReceiver(Landroid/content/Context;)V
.end method

.method public static native unregister(Landroid/content/Context;)V
.end method
