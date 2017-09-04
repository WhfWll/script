.class public Lcom/bontai/mobiads/ads/gif/ByteArrayHttpClient;
.super Ljava/lang/Object;
.source "ByteArrayHttpClient.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ByteArrayHttpClient"

.field private static client:Lokhttp3/OkHttpClient;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/bontai/mobiads/ads/gif/ByteArrayHttpClient;

    const v1, 0xf1

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    .line 0
    new-instance v0, Lokhttp3/OkHttpClient;

    invoke-direct {v0}, Lokhttp3/OkHttpClient;-><init>()V

    sput-object v0, Lcom/bontai/mobiads/ads/gif/ByteArrayHttpClient;->client:Lokhttp3/OkHttpClient;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native get(Ljava/lang/String;)[B
.end method

.method private static final native input2byte(Ljava/io/InputStream;)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
