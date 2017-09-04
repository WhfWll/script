.class public Lcom/MobileTicket/SocialSharing;
.super Lorg/apache/cordova/api/CordovaPlugin;
.source "SocialSharing.java"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/MobileTicket/SocialSharing;

    const v1, 0x12

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Lorg/apache/cordova/api/CordovaPlugin;-><init>()V

    return-void
.end method

.method public static native createPath(Ljava/lang/String;)Ljava/io/File;
.end method

.method public static native saveBitmap(Ljava/lang/String;Ljava/io/File;)Z
.end method

.method public static native stringtoBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
.end method


# virtual methods
.method public native execute(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/api/CallbackContext;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation
.end method
