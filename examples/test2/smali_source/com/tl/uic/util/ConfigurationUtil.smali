.class public final Lcom/tl/uic/util/ConfigurationUtil;
.super Ljava/lang/Object;
.source "ConfigurationUtil.java"


# static fields
.field private static final EMPTY_STRING:Ljava/lang/String; = ""

.field private static final EXCEPTION_LOG_TITLE:Ljava/lang/String; = "Key was "

.field private static final MILLISECOND_CONVERTER:I = 0x3e8

.field private static final MINIMUM_BOOLEAN_SIZE:I = 0x3

.field private static volatile _myInstance:Lcom/tl/uic/util/ConfigurationUtil;

.field private static application:Landroid/app/Application;

.field private static configurableItems:Ljava/util/Properties;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/tl/uic/util/ConfigurationUtil;

    const v1, 0x41d

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method public static native getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;
.end method

.method private static native getConfigurationSettings(Ljava/lang/String;)Ljava/util/Properties;
.end method

.method public static native getInstance()Lcom/tl/uic/util/ConfigurationUtil;
.end method

.method public static native getInt(Ljava/lang/String;)I
.end method

.method public static native getIntMS(Ljava/lang/String;)I
.end method

.method public static native getLong(Ljava/lang/String;)J
.end method

.method public static native getLongMS(Ljava/lang/String;)J
.end method

.method public static native getString(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native init(Landroid/app/Application;)V
.end method

.method public static native setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
.end method
