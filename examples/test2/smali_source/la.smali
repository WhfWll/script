.class public final Lla;
.super Lkp;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Llc;)V
    .registers 4

    const/4 v1, 0x0

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lkp;-><init>(B)V

    iput-object v1, p0, Lla;->a:Ljava/lang/String;

    iput-object v1, p0, Lla;->b:Ljava/lang/String;

    invoke-virtual {p1}, Llc;->c()I

    move-result v0

    iput v0, p0, Lla;->b:I

    return-void
.end method

.method public constructor <init>([B)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lkp;-><init>(B)V

    iput-object v1, p0, Lla;->a:Ljava/lang/String;

    iput-object v1, p0, Lla;->b:Ljava/lang/String;

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v1, Lko;

    invoke-direct {v1, v0}, Lko;-><init>(Ljava/io/InputStream;)V

    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v2

    iput v2, p0, Lla;->b:I

    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    array-length v2, p1

    invoke-virtual {v1}, Lko;->a()I

    move-result v3

    if-le v2, v3, :cond_49

    array-length v2, p1

    invoke-virtual {v1}, Lko;->a()I

    move-result v1

    sub-int v1, v2, v1

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Ljava/io/DataInputStream;->readFully([B)V

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    :try_start_39
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "msgId"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lla;->a:Ljava/lang/String;

    iput-object v0, p0, Lla;->b:Ljava/lang/String;
    :try_end_49
    .catch Lorg/json/JSONException; {:try_start_39 .. :try_end_49} :catch_4a

    :cond_49
    :goto_49
    return-void

    :catch_4a
    move-exception v0

    goto :goto_49
.end method


# virtual methods
.method protected final b_()[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljm;
        }
    .end annotation

    invoke-virtual {p0}, Lla;->d()[B

    move-result-object v0

    return-object v0
.end method
