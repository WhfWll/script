.class public Lcom/worklight/androidgap/jsonstore/util/jackson/JacksonSerializedJSONArray;
.super Lorg/json/JSONArray;
.source "JacksonSerializedJSONArray.java"


# instance fields
.field private wrappedArray:Lorg/json/JSONArray;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/worklight/androidgap/jsonstore/util/jackson/JacksonSerializedJSONArray;

    const v1, 0x450

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Lorg/json/JSONArray;-><init>()V

    .line 21
    return-void
.end method

.method protected constructor <init>(Lorg/json/JSONArray;)V
    .registers 2
    .param p1, "array"    # Lorg/json/JSONArray;

    .prologue
    .line 23
    invoke-direct {p0}, Lorg/json/JSONArray;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/worklight/androidgap/jsonstore/util/jackson/JacksonSerializedJSONArray;->wrappedArray:Lorg/json/JSONArray;

    .line 25
    return-void
.end method


# virtual methods
.method public native toString()Ljava/lang/String;
.end method

.method public native toString(I)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation
.end method
