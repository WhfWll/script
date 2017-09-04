.class public final Liw;
.super Ljava/lang/Object;


# static fields
.field private static final a:Liz;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lix;

    invoke-direct {v0}, Lix;-><init>()V

    sput-object v0, Liw;->a:Liz;

    return-void
.end method

.method public static a(Ljava/lang/String;)[B
    .registers 5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x3

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    :try_start_d
    sget-object v0, Liw;->a:Liz;

    invoke-interface {v0, p0, v1}, Liz;->a(Ljava/lang/String;Ljava/io/OutputStream;)I
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_12} :catch_17

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    :catch_17
    move-exception v0

    new-instance v1, Liy;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "unable to decode base64 string: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Liy;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
