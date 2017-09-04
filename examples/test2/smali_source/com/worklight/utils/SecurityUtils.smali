.class public Lcom/worklight/utils/SecurityUtils;
.super Ljava/lang/Object;
.source "SecurityUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/worklight/utils/SecurityUtils$PBKDF2;
    }
.end annotation


# static fields
.field public static final HASH_ALGORITH_MD5:Ljava/lang/String; = "MD5"

.field public static final HASH_ALGORITH_SHA1:Ljava/lang/String; = "SHA-1"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/worklight/utils/SecurityUtils;

    const v1, 0x4c0

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method public static native decryptData(Ljava/io/InputStream;[B)Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public static native hashData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native hashData([BLjava/lang/String;)[B
.end method

.method public static native hashDataFromJSON(Landroid/content/Context;Lorg/json/JSONArray;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation
.end method

.method public static native kpg(Landroid/content/Context;[Ljava/lang/String;)[B
.end method
