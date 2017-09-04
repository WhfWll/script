.class public Lorg/apache/cordova/GlobalizationError;
.super Ljava/lang/Exception;
.source "GlobalizationError.java"


# static fields
.field public static final FORMATTING_ERROR:Ljava/lang/String; = "FORMATTING_ERROR"

.field public static final PARSING_ERROR:Ljava/lang/String; = "PARSING_ERROR"

.field public static final PATTERN_ERROR:Ljava/lang/String; = "PATTERN_ERROR"

.field public static final UNKNOWN_ERROR:Ljava/lang/String; = "UNKNOWN_ERROR"

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field error:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/cordova/GlobalizationError;->error:I

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/cordova/GlobalizationError;->error:I

    .line 54
    const-string v0, "FORMATTING_ERROR"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 55
    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/cordova/GlobalizationError;->error:I

    .line 61
    :cond_11
    :goto_11
    return-void

    .line 56
    :cond_12
    const-string v0, "PARSING_ERROR"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 57
    const/4 v0, 0x2

    iput v0, p0, Lorg/apache/cordova/GlobalizationError;->error:I

    goto :goto_11

    .line 58
    :cond_1e
    const-string v0, "PATTERN_ERROR"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 59
    const/4 v0, 0x3

    iput v0, p0, Lorg/apache/cordova/GlobalizationError;->error:I

    goto :goto_11
.end method


# virtual methods
.method public getErrorCode()I
    .registers 2

    .prologue
    .line 91
    iget v0, p0, Lorg/apache/cordova/GlobalizationError;->error:I

    return v0
.end method

.method public getErrorString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 68
    const-string v0, ""

    .line 69
    .local v0, "msg":Ljava/lang/String;
    iget v1, p0, Lorg/apache/cordova/GlobalizationError;->error:I

    packed-switch v1, :pswitch_data_14

    .line 83
    :goto_7
    return-object v0

    .line 71
    :pswitch_8
    const-string v0, "UNKNOWN_ERROR"

    .line 72
    goto :goto_7

    .line 74
    :pswitch_b
    const-string v0, "FORMATTING_ERROR"

    .line 75
    goto :goto_7

    .line 77
    :pswitch_e
    const-string v0, "PARSING_ERROR"

    .line 78
    goto :goto_7

    .line 80
    :pswitch_11
    const-string v0, "PATTERN_ERROR"

    goto :goto_7

    .line 69
    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_8
        :pswitch_b
        :pswitch_e
        :pswitch_11
    .end packed-switch
.end method

.method public toJson()Lorg/json/JSONObject;
    .registers 4

    .prologue
    .line 99
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 101
    .local v0, "obj":Lorg/json/JSONObject;
    :try_start_5
    const-string v1, "code"

    invoke-virtual {p0}, Lorg/apache/cordova/GlobalizationError;->getErrorCode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 102
    const-string v1, "message"

    invoke-virtual {p0}, Lorg/apache/cordova/GlobalizationError;->getErrorString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_17
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_17} :catch_18

    .line 106
    :goto_17
    return-object v0

    .line 103
    :catch_18
    move-exception v1

    goto :goto_17
.end method
