.class public final Lcom/tl/uic/util/JsonUtil;
.super Ljava/lang/Object;
.source "JsonUtil.java"


# static fields
.field private static _messageTypes:Ljava/lang/String;

.field private static _messageTypesSet:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile _myInstance:Lcom/tl/uic/util/JsonUtil;

.field private static _pattern:Ljava/lang/String;

.field private static final pattern:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/tl/uic/util/JsonUtil;

    const v1, 0x424

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    .line 23
    .line 0
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 24
    sput-object v0, Lcom/tl/uic/util/JsonUtil;->_messageTypesSet:Ljava/util/Hashtable;

    const-string v0, "type(\"|\'):[\\d]+"

    sput-object v0, Lcom/tl/uic/util/JsonUtil;->_pattern:Ljava/lang/String;

    .line 19
    sget-object v0, Lcom/tl/uic/util/JsonUtil;->_pattern:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/tl/uic/util/JsonUtil;->pattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method private static native getAddMessageTypeHeader()Ljava/lang/Boolean;
.end method

.method private static native getFilterMessageTypes()Ljava/lang/Boolean;
.end method

.method public static native getHashValues(Ljava/util/Map;)Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation
.end method

.method public static native getInstance()Lcom/tl/uic/util/JsonUtil;
.end method

.method public static native testMessageType(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;
.end method
