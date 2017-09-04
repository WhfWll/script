.class public Lcom/worklight/androidgap/plugin/LoggerPlugin;
.super Lorg/apache/cordova/api/Plugin;
.source "LoggerPlugin.java"


# static fields
.field public static final ACTION_LOG:Ljava/lang/String; = "log"

.field public static final ACTION_SEND:Ljava/lang/String; = "send"

.field public static final ACTION_SET_NATIVE_OPTIONS:Ljava/lang/String; = "setNativeOptions"

.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/worklight/androidgap/plugin/LoggerPlugin;

    const v1, 0x45e

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    .line 0
    const-class v0, Lcom/worklight/androidgap/plugin/LoggerPlugin;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/worklight/androidgap/plugin/LoggerPlugin;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Lorg/apache/cordova/api/Plugin;-><init>()V

    return-void
.end method


# virtual methods
.method public native execute(Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;)Lorg/apache/cordova/api/PluginResult;
.end method

.method public native isSynch(Ljava/lang/String;)Z
.end method
