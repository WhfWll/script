.class public Lcom/worklight/common/WLUtils;
.super Ljava/lang/Object;
.source "WLUtils.java"


# static fields
.field public static final ANDROID_BUFFER_8K:I = 0x2000

.field public static final LOG_CAT:Ljava/lang/String; = "WLDroidGap"

.field public static final WL_CHALLENGE_DATA:Ljava/lang/String; = "WL-Challenge-Data"

.field public static final WL_CHALLENGE_RESPONSE_DATA:Ljava/lang/String; = "WL-Challenge-Response-Data"

.field public static final WL_INSTANCE_AUTH_ID:Ljava/lang/String; = "WL-Instance-Id"

.field public static final WL_PREFS:Ljava/lang/String; = "WLPrefs"

.field private static final WWW:Ljava/lang/String; = "www"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/worklight/common/WLUtils;

    const v1, 0x4b7

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native byteArrayToHexString([B)Ljava/lang/String;
.end method

.method private static native calculateCheckSum(Ljava/io/InputStream;Ljava/util/zip/Checksum;)V
.end method

.method public static native checkIfMediaFile(Ljava/io/File;)Z
.end method

.method private static native checkIfMediaFile(Ljava/lang/String;)Z
.end method

.method public static native checksumTestOnResources(Ljava/lang/String;Landroid/content/Context;Z)Z
.end method

.method public static native clearWLPref(Landroid/content/Context;)V
.end method

.method private static native computeChecksumOnBundle(Landroid/content/Context;)J
.end method

.method public static native computeChecksumOnExternal(Ljava/lang/String;)J
.end method

.method public static native convertGZIPStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
.end method

.method public static native convertJSONArrayToList(Lorg/json/JSONArray;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public static native convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
.end method

.method public static native convertStringToJSON(Ljava/lang/String;)Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation
.end method

.method public static native copyFile(Ljava/io/File;Ljava/io/File;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public static native copyFile(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public static native debug(Ljava/lang/String;)V
.end method

.method public static native debug(Ljava/lang/String;Ljava/lang/Throwable;)V
.end method

.method public static native deleteDirectory(Ljava/io/File;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public static native error(Ljava/lang/String;)V
.end method

.method public static native error(Ljava/lang/String;Ljava/lang/Throwable;)V
.end method

.method public static native findDrawableAsset(Lcom/worklight/androidgap/WLDroidGap;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
.end method

.method private static native getBundleTree(Ljava/lang/String;Landroid/content/res/AssetManager;Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/res/AssetManager;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public static native getFreeSpaceOnDevice()J
.end method

.method public static native getFullAppName(Landroid/content/Context;)Ljava/lang/String;
.end method

.method private static native getMsgNotNull(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/worklight/androidgap/NoSuchResourceException;
        }
    .end annotation
.end method

.method public static native getResourceString(Ljava/lang/String;Landroid/app/Activity;)Ljava/lang/String;
.end method

.method public static native getSDKVersion()I
.end method

.method public static native getTree(Ljava/io/File;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end method

.method private static native getTree(Ljava/io/File;Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end method

.method public static native hexStringToByteArray(Ljava/lang/String;)[B
.end method

.method public static native info(Ljava/lang/String;)V
.end method

.method public static native info(Ljava/lang/String;Ljava/lang/Throwable;)V
.end method

.method public static native isStringEmpty(Ljava/lang/String;)Z
.end method

.method public static native log(Ljava/lang/String;I)V
.end method

.method public static native readWLPref(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static native readZipToStringString(Ljava/io/InputStream;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public static native scaleImage(Landroid/graphics/drawable/Drawable;FF)Landroid/graphics/drawable/Drawable;
.end method

.method public static native showDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static native showDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
.end method

.method public static native unpack(Ljava/io/InputStream;Ljava/io/File;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public static native warning(Ljava/lang/String;)V
.end method

.method public static native warning(Ljava/lang/String;Ljava/lang/Throwable;)V
.end method

.method public static native writeWLPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end method
